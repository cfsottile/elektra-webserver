require_relative "sensor"

class Measure
  def self.store(measure)
    if self.validate(measure)
      $db[:measures].insert_one(measure)
      self.update_last_measure(measure)
    end
  end

  def self.store_many(measures)
    measures.each { |m| self.store(m) }
  end

  def self.last_for(sensor_name)
    $db["last_measures"].find({sensor_name: sensor_name}).projection({_id: 0}).to_a.first
  end

  def self.consumption_from_to(sensor_name, raw_from, raw_to, precision)
    averaged_measures(sensor_name, DateTime.rfc3339(raw_from), DateTime.rfc3339(raw_to), precision)
      .to_a
      .map {|m| format_averaged_measure(m)}
  end

  private
  def self.validate(measure)
    Sensor.exists(name: measure["sensor_name"])
  end

  def self.update_last_measure(measure)
    $db[:last_measures].update_one(
      {"sensor_name" => measure["sensor_name"]},
      {"$set" => measure},
      upsert: true)
  end

  PRECISION_GROUP = {
      "hour" => { "$hour" => "$time" },
      "day" => { "$dayOfMonth" => "$time" },
      "month" => { "$month" => "$time" },
      "year" => { "$year" => "$time" }
  }

  def self.precision_query(precision)
    PRECISION_GROUP.drop_while {|k,v| k != precision}.to_h
  end

  PRECISION_FORMAT = {
    "hour" => "%H",
    "day" => "%d",
    "month" => "%m",
    "year" => "%Y"
  }

  def self.format_date(precision)
    PRECISION_FORMAT
      .drop_while {|k,v| k != precision}
      .to_h
      .values
      .reverse
      .join("-")
  end

  OFFSET = 3 * 60 * 60 * 1000

  def averaged_measures(id, from, to, precision)
    $db["measures"]
      .find({sensor_name: id})
      .aggregate([
        { "$match" => { "time" => { "$gt" => from, "$lt" => to}}},
        { "$group" => {
          "_id" => precision_query(precision),
          "avg" => { "$avg" => "$value" },
          "time" => { "$first" => "$time" } }},
        { "$sort" => { "time" => 1 }},
        { "$project" => {
          "time" => { "$subtract" => ["$time", OFFSET]},
          "avg" => 1}},
        { "$project" => {
          "date" => {
            "$dateToString" => { "format" => format_date(precision), "date" => "$time" }},
            "avg" => 1}}
        ])
  end

  def self.format_averaged_measure(measure)
    { value: measure["avg"], date: measure["date"] }
  end
end
