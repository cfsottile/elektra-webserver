require_relative "sensor"

class Measure
  def self.store(measure)
    if (errors = validate(measure)).empty? then save(measure) end
    errors
  end

  def self.store_many(measures)
    with_errors = measures.map { |m| [m, validate(m)] }
    if with_errors.map { |we| we[1].empty? }.all?
      measures.each { |m| save(m) }
    end
    with_errors.select { |we| !we[1].empty? }
  end

  def self.last_for(sensor_code)
    $db["last_measures"]
      .find({sensor_code: sensor_code})
      .projection({_id: 0})
      .to_a
      .first
  end

  def self.average_consumptions(sensor_code, raw_from, raw_to, precision)
    averaged_measures(
      sensor_code,
      instance_date(raw_from),
      instance_date(raw_to),
      precision
    ).to_a
  end

  private
  def self.save(measure)
    $db[:measures].insert_one(measure)
    self.update_last_measure(measure)
  end

  def self.validate(measure)
    [
      [measure, :nil?, "the measure object can not be nil"],
      [measure["sensor_code"], :nil?, "the sensor's code can not be nil"],
      [measure["time"], :nil?, "the sensor's time can not be nil"],
      [measure["value"], :nil?, "the sensor's value can not be nil"],
      [Sensor.exists?(code: measure["sensor_code"]), :!, "the code does not correspond to an existing sensor"]
    ].select { |e| e[0].send(e[1]) }.map(&:last)
  end

  def self.update_last_measure(measure)
    $db[:last_measures].update_one(
      {"sensor_code" => measure["sensor_code"]},
      {"$set" => measure},
      upsert: true)
  end

  def self.instance_date(details)
    DateTime.new(*details.map(&:to_i)) + Rational(3,24)
  end

  PRECISION_GROUP = {
      "hour" => { "$hour" => "$time" },
      "day" => { "$dayOfMonth" => "$time" },
      "month" => { "$month" => "$time" },
      "year" => { "$year" => "$time" }
  }

  def self.precision_query(precision)
    PRECISION_GROUP.drop_while { |k,v| k != precision }.to_h
  end

  PRECISION_FORMAT = {
    "hour" => "%H",
    "day" => "%d",
    "month" => "%m",
    "year" => "%Y"
  }

  def self.format_date(precision)
    PRECISION_FORMAT
      .drop_while { |k,v| k != precision }
      .to_h
      .values
      .reverse
      .join("-")
  end

  OFFSET = 3 * 60 * 60 * 1000

  def self.averaged_measures(code, from, to, precision)
    $db["measures"]
      .aggregate([
        { "$match" => {
          "sensor_code" => code,
          "time" => { "$gt" => from, "$lt" => to}}},
        { "$project" => {
          "time" => { "$subtract" => ["$time", OFFSET]},
          "value" => "$value"}},
        { "$group" => {
          "_id" => precision_query(precision),
          "value" => { "$avg" => "$value" },
          "time" => { "$first" => "$time" }
          }},
        { "$sort" => { "time" => 1 }},
        { "$project" => {
          "_id" => 0,
          "date" => {
            "$dateToString" => { "format" => format_date(precision), "date" => "$time" }},
          "value" => 1}}
        ])
  end
end
