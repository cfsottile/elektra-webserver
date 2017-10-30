class Sensor
  def self.json_show(id)
    self.gen_json_sensor(self.find_with_data(id))
  end

  def self.json_last_measure(id)
    self
      .last_measure_for(id)
      .to_a
      .first
      .to_json
  end

  def self.json_index
    self
      .all_with_data
      .to_a
      .map { |s| self.gen_json_sensor(s) }
      .to_json
  end

  def self.consumption_from_to(id, raw_from, raw_to, precision)
    binding.pry
    self
      .averaged_measures(id, DateTime.rfc3339(raw_from), DateTime.rfc3339(raw_to), precision)
      .to_a
      .map {|m| self.format_averaged_measure(m)}
      .to_json
  end

  private
  def self.gen_json_sensor(sensor_data)
    result = {
      id: sensor_data["id"],
      name: sensor_data["name"],
      status: sensor["status"] == 1 ? "on" : "off",
      # location: $db["places"].find({id: sensor_data["mote"].first["location"]}).to_a.first["name"],
      # mote_id: sensor_data["mote"].first["id"],
      mote_name: sensor_data["mote"].first["name"]
    }
    if sensor_data["last_measure"].first
      result["last_measure"] = {
        time: sensor_data["last_measure"].first["time"],
        value: sensor_data["last_measure"].first["value"]
      }
    end
    result.to_json
  end

  LAST_MEASURES_AGGREGATION =
    {"$lookup":
      {from: "last_measures", localField: "sensor_id", foreignField: "id", as: "last_measure"}
    }
  MOTES_AGGREGATION =
    {"$lookup":
      {from: "motes", localField: "mote_id", foreignField: "id", as: "mote"}
    }

def self.find_with_data(id)
    $db["sensors"]
      .find({id: id})
      .aggregate([MOTES_AGGREGATION, LAST_MEASURES_AGGREGATION])
      .to_a.first
  end

  def self.all_with_data
    $db["sensors"].aggregate([MOTES_AGGREGATION, LAST_MEASURES_AGGREGATION])
  end

  def self.last_measure_for(id)
    $db["last_measures"].find({sensor_id: id})
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

  def self.averaged_measures(id, from, to, precision)
    $db["measures"]
      .find({sensor_id: id})
      .aggregate([
        { "$match" => { "time" => { "$gt" => from, "$lt" => to}}},
        { "$group" => {
          "_id" => self.precision_query(precision),
          "avg" => { "$avg" => "$value" },
          "time" => { "$first" => "$time" } }},
        { "$sort" => { "time" => 1 }},
        { "$project" => { 
          "time" => { "$subtract" => ["$time", OFFSET]},
          "avg" => 1}},
        { "$project" => { 
          "date" => { 
            "$dateToString" => { "format" => self.format_date(precision), "date" => "$time" }},
          "avg" => 1}}
      ])
  end

  def self.format_averaged_measure(measure)
    { value: measure["avg"], date: measure["date"] }
  end
end
