ENV['RACK_ENV'] = 'test'

require_relative "../models/measure"
require_relative "helpers"
require "rspec"
require "json"
require "mongo"
require "pry"
Mongo::Logger.logger.level = Logger::FATAL

describe Measure do
  include Helpers

  before(:all) do
    $db = Mongo::Client.new(["localhost:27017"], database: "iot_db_test")
    places_seed; devices_seed; sensors_seed
  end

  after(:all) do
    drop_places; drop_devices; drop_sensors; drop_measures
  end

  describe "#store" do
    it "stores a well formed request" do
      errors = Measure.store({ "sensor_code" => "a5d1s1", "time" => DateTime.now, "value" => 3.9 })
      expect(errors).to eql([])
    end

    it "refuses a bad request" do
      errors = Measure.store({ "sensor_code" => "aaaaaa", "time" => DateTime.now, "value" => 3.9 })
      expect(errors.size).to eql(1)
    end

    it "refuses an empty request" do
      errors = Measure.store({})
      expect(errors.size).to eql(1)
    end
  end

  describe "#store_many" do
    it "stores a well formed request" do
      values = [3.5,3.6,3.7,3.8,3.9,4.0,4.1]
      first_datetime = DateTime.now - Rational(1,24*60*60)
      last_datetime = DateTime.now
      dates = first_datetime.step(last_datetime, Rational(1,24*60*120))
      measures = dates.map { |d| { "sensor_code" => "a5d1s1", "time" => d, "value" => values.sample } }
      errors = Measure.store_many(measures)
      expect(errors).to eql([])
    end

    it "refuses a bad request" do
      values = [3.5,3.6,3.7,3.8,3.9,4.0,4.1]
      first_datetime = DateTime.now - Rational(1,24*60*60)
      last_datetime = DateTime.now
      dates = first_datetime.step(last_datetime, Rational(1,24*60*120))
      measures = dates.map { |d| { "sensor_code" => "aaaaaa", "time" => d, "value" => values.sample } }
      errors = Measure.store_many(measures)
      expect(errors.size).to eql(measures.size)
      errors.each do |e|
        expect(e[0]["sensor_code"]).not_to be_nil
        expect(e[0]["time"]).not_to be_nil
        expect(e[0]["value"]).not_to be_nil
        expect(e[1].size).to eql(1)
      end
    end

    it "refuses an empty request" do
      measures = [{}] * 100
      errors = Measure.store_many(measures)
      expect(errors.size).to eql(measures.size)
      errors.each do |e|
        expect(e[0]).to eql({})
        expect(e[1].size).to eql(1)
      end
    end
  end
end
