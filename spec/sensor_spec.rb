ENV['RACK_ENV'] = 'test'

require_relative "helpers"
require_relative "../models/sensor"
require "rspec"
require "json"
require "mongo"
Mongo::Logger.logger.level = Logger::FATAL

describe Sensor do
  include Helpers

  before(:all) do
    $db = Mongo::Client.new(["localhost:27017"], database: "iot_db_test")
    places_seed; devices_seed; sensors_seed
    @last_measures = measures_seed
  end

  after(:all) do
    drop_places; drop_devices; drop_sensors; measures_drop
  end

  describe "#last_measure" do
    it "returns sensor's last measure" do
      last_measure = Sensor.find_by(name: "a5d1s1").last_measure
      expect(last_measure["time"].iso8601(3)).to eql(@last_measures.first[:time].utc.iso8601(3))
      expect(last_measure["value"]).to eql(@last_measures.first[:value])
    end
  end

  describe "#average_consumptions" do
    pending "returns last day average consumption per hour" do
      # expected =
      # average_consumptions = @sensor.average_consumptions
    end
  end

  describe "#json" do
    it "returns sensor's attributes" do
      
    end

    it "returns sensor's and related models' attributes" do

    end

    it "returns sensor's attributes and last measure" do

    end

    it "returns all posible data" do

    end
  end
end
