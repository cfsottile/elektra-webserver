class Sensor
    def self.json_show(id)
        sensor = $db["sensors"].find({id: id}).to_a.first
        return nil unless sensor
        last_measure = $db["measures"].find({sensor: id}).sort({time: -1}).limit(1).to_a.first
        return nil unless last_measure
        location_id = $db["motes"].find({id: sensor["mote"]}).to_a.first["location"]
        location = $db["places"].find({id: location_id}).to_a.first["name"]
        JSON.generate({
            sensor_id: sensor["id"],
            location: location
            # last_measure: {
            #     time: last_measure["time"],
            #     value: last_measure["value"] },
            # is_on: sensor["status"] == "on"
        })
    end

    def self.json_last_measure(id)
        measure = $db["measures"].find({sensor: id}).sort({time: -1}).limit(1).to_a.first
        return nil unless measure
        JSON.generate({
            # sensor: measure["sensor"],
            time: measure["time"],
            value: measure["value"]
        })
    end

    def self.json_index
        JSON.generate($db["sensors"].aggregate([
            {"$lookup": {from: "motes", localField: "mote", foreignField: "id", as: "mote"}},
            {"$lookup": {from: "sensor_types", localField: "type", foreignField: "id", as: "type"}},
            {"$lookup": {from: "places", localField: "location", foreignField: "id", as: "place"}}
            ]).to_a.map do |s|
                {
                    id: s["id"],
                    mote_id: s["mote"].first["id"],
                    mote_name: s["mote"].first["name"],
                    mote_location: $db["places"].find({id: s["mote"].first["location"]}).to_a.first["name"],
                    type: s["type"].first["name"]
                }
            end)
    end
end