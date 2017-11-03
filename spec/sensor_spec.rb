Bundler.require
Mongo::Logger.logger.level = Logger::FATAL

require_relative "../models/sensor"

describe Sensor do

  before(:all) do
    $db = Mongo::Client.new(["localhost:27017"], database: "iot_testing_db")
    $db[:sensors].drop
    $db[:measures].drop
    $db[:last_measures].drop
    $db[:motes].drop
  end

  context "There are no sensors in the DB" do

    it "returns an empty list when asked for all sensors data" do
      expect(JSON.parse(Sensor.json_index).size).to eq 0
    end

    it "raise an exception when asked for a sensor data" do
      expect{Sensor.json_show("a1")}.to raise_error(NoMethodError)
    end

    it "returns nil when asked for a sensor existence" do
      expect(Sensor.exists("a1")).to be_falsey
    end

    it "adds a new sensor" do

    end

  end

  context "'a1' is a sensor in the DB" do

    before(:all) do
      $db[:sensors].insert_one({id: "a1", name: "sensor a1", mote_id: "a"})
      $db[:motes].insert_one({id: "a", name: "mote a", location: "a", sensors: []})
    end

    after(:all) do
      $db[:sensors].delete_one({id: "a1"})
      $db[:motes].delete_one({id: "a"})
    end

    # it "returns a list with one element when asked for all sensors data"
    it "serves all sensors data" do
      expect(JSON.parse(Sensor.json_index).size).to be 1
    end

    it "checks a1 existance" do
      expect(Sensor.exists("a1")).not_to be_nil
    end

    context "a1 has no measures" do

      it "serves a1 data" do
        sensor_data = JSON.parse(Sensor.json_show("a1"))
        expect(sensor_data).not_to be_nil
        expect(sensor_data["id"]).not_to be_nil
        expect(sensor_data["name"]).not_to be_nil
        expect(sensor_data["status"]).not_to be_nil
        expect(sensor_data["mote_name"]).not_to be_nil
        expect{sensor_data["last_measure"]["time"]}.to raise_error(NoMethodError)
        expect{sensor_data["last_measure"]["value"]}.to raise_error(NoMethodError)
      end

    end

    context "a1 has one measure" do

      before(:all) do
        measure = {
          sensor_id: "a1",
          time: Time.at(1470009600).utc.to_datetime,
          value: 7.9
        }
        $db[:measures].insert_one(measure)
        $db[:last_measures].update_one(
          {"sensor_id" => measure[:sensor_id]},
          {"$set" => measure},
          upsert: true)
      end

      after(:all) do
        $db[:measures].delete_one({sensor_id: "a1"})
        $db[:last_measures].delete_one({sensor_id: "a1"})
      end

      it "serves a1 data" do
        sensor_data = JSON.parse(Sensor.json_show("a1"))
        expect(sensor_data).not_to be_nil
        expect(sensor_data["id"]).not_to be_nil
        expect(sensor_data["name"]).not_to be_nil
        expect(sensor_data["status"]).not_to be_nil
        expect(sensor_data["mote_name"]).not_to be_nil
        expect(sensor_data["last_measure"]["time"]).not_to be_nil
        expect(sensor_data["last_measure"]["value"]).not_to be_nil
      end

    end
  end
end
