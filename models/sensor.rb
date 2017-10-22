class Sensor
  def self.json_show(id)
    sensor = $db["sensors"].find({id: id}).to_a.first
    return nil unless sensor
    last_measure = $db["measures"].find({sensor_id: id}).sort({time: -1}).limit(1).to_a.first
    return nil unless last_measure
    location_id = $db["motes"].find({id: sensor["mote_id"]}).to_a.first["location"]
    location = $db["places"].find({id: location_id}).to_a.first["name"]
    JSON.generate({
      sensor_id: sensor["id"],
      name: sensor["name"],
      location: location,
      status: sensor["status"] == 1 ? "on" : "off"
      # last_measure: {
      #     time: last_measure["time"],
      #     value: last_measure["value"] },
    })
  end

  def self.json_last_measure(id)
    measure = $db["measures"].find({sensor_id: id}).sort({time: -1}).limit(1).to_a.first
    return nil unless measure
    JSON.generate({
      sensor: measure["sensor_id"],
      time: measure["time"],
      value: measure["value"]
    })
  end

  def self.json_index
    JSON.generate($db["sensors"].aggregate([
      {"$lookup": {from: "motes", localField: "mote_id", foreignField: "id", as: "mote"}},
      # {"$lookup": {from: "places", localField: "location", foreignField: "id", as: "place"}}
      ]).to_a.map do |s|
        last_measure = $db["measures"].find({sensor_id: s["id"]}).sort({time: -1}).limit(1).to_a.first
        result = {
          id: s["id"],
          name: s["name"],
          location: $db["places"].find({id: s["mote"].first["location"]}).to_a.first["name"],
          mote_id: s["mote"].first["id"],
          mote_name: s["mote"].first["name"],
          last_measure: {}
        }
        if last_measure
          result["last_measure"] = {
            time: last_measure["time"],
            value: last_measure["value"]
          }
        end
        result
      end)
  end

  def self.consumption_from_to(id, raw_from, raw_to, raw_precision)
    precision = self.instantiate_precision(raw_precision)
    from = DateTime.rfc3339("#{raw_from}")
    to = from + precision
    result = {}
    while to <= DateTime.rfc3339("#{raw_to}") do
      result[from.to_s] = self.from_to(from, to, id)
      from = to
      to = to + precision
    end
    JSON.generate(result)
  end

  private
  def self.from_to(from, to, id)
    r = $db["measures"].aggregate([
      {"$match" => { "$and" => [
          {"sensor" => id},
          { time: { "$gt" => from, "$lt" => to}}
        ]}},
      {"$group" => {"_id" => "$sensor", "avg" => { "$avg" => "$value" }}}])
    if r.first.nil? then nil else r.first["avg"] end
  end

  def self.instantiate_precision(precision)
    case precision
    when "hour"
      Rational(1, 24)
    when "day"
      1
    when "year"
      365
    end
  end
end