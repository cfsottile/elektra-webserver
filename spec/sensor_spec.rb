ENV['RACK_ENV'] = 'test'

require_relative "helpers"
require_relative "../models/sensor"
require "rspec"
require "json"
require "mongo"
require "pry"
Mongo::Logger.logger.level = Logger::FATAL

describe Sensor do
  include Helpers

  before(:all) do
    $db = Mongo::Client.new(["localhost:27017"], database: "iot_db_test")
    places_seed; devices_seed; sensors_seed
    @last_measures, @first_datetime, @last_datetime = measures_seed
    @sensor = Sensor.find_by(name: "a5d1s1")
  end

  after(:all) do
    drop_places; drop_devices; drop_sensors; drop_measures
  end

  describe "#last_measure" do
    it "returns sensor's last measure" do
      last_measure = @sensor.last_measure
      expect(last_measure["time"].iso8601(3)).to eql(@last_measures.first[:time].utc.iso8601(3))
      expect(last_measure["value"]).to eql(@last_measures.first[:value])
    end
  end

  describe "#average_consumptions" do
    it "returns last 24 hours average consumption per hour" do
      from = @last_datetime - 1
      to = @last_datetime
      current = @sensor.average_consumptions(
        date_to_arr(from, "hour"),
        date_to_arr(to, "hour"),
        "hour")
      expect(current).not_to be_nil
      expect(current.size).to eql(24)
      current.each_with_index do |c, i|
        expect(c[:date]).not_to be_nil
        expect(c[:date].split("-").last.to_i).to eql((from.hour + i) % 24)
        expect(c[:value]).not_to be_nil
      end
    end

    it "returns last 30 days average consumption per day" do
      from = @last_datetime - 30
      to = @last_datetime
      current = @sensor.average_consumptions(
        date_to_arr(from, "day"),
        date_to_arr(to, "day"),
        "day")
      expect(current).not_to be_nil
      expect(current.size).to eql(30)
      current.each_with_index do |c, i|
        expect(c[:date]).not_to be_nil
        expect(c[:date].split("-").last.to_i).to eql((from + i).day)
        expect(c[:value]).not_to be_nil
      end
    end

    it "returns previous month average consumption per day" do
      from = (@last_datetime << 1) - (@last_datetime.day - 1)
      to = @last_datetime - (@last_datetime.day - 1)
      current = @sensor.average_consumptions(
        date_to_arr(from, "day"),
        date_to_arr(to, "day"),
        "day")
      expect(current).not_to be_nil
      expect(current.size).to eql((to - 1).day)
      current.each_with_index do |c, i|
        expect(c[:date]).not_to be_nil
        expect(c[:date].split("-").last.to_i).to eql(from.day + i)
        expect(c[:value]).not_to be_nil
      end
    end

    it "returns previous 3 months average consumption per month" do
      from = (@last_datetime << 3) - (@last_datetime.day - 1)
      to = @last_datetime - (@last_datetime.day - 1)
      current = @sensor.average_consumptions(
        date_to_arr(from, "month"),
        date_to_arr(to, "month"),
        "month")
      expect(current).not_to be_nil
      expect(current.size).to eql(3)
      current.each_with_index do |c, i|
        expect(c[:date]).not_to be_nil
        expect(c[:date].split("-").last.to_i).to eql((from >> i).month)
        expect(c[:value]).not_to be_nil
      end
    end

    it "returns last 6 months average consumption per month" do
      from = @last_datetime << 6
      to = @last_datetime
      current = @sensor.average_consumptions(
        date_to_arr(from, "month"),
        date_to_arr(to, "month"),
        "month")
      expect(current).not_to be_nil
      expect(current.size).to eql(6)
      current.each_with_index do |c, i|
        expect(c[:date]).not_to be_nil
        expect(c[:date].split("-").last.to_i).to eql((from >> i).month)
        expect(c[:value]).not_to be_nil
      end
    end

    it "returns current year average consumption" do
      from = @last_datetime - (@last_datetime.month - 1)
      to = (@last_datetime >> 12) - (@last_datetime.month - 1)
      current = @sensor.average_consumptions(
        date_to_arr(from, "year"),
        date_to_arr(to, "year"),
        "year")
      expect(current).not_to be_nil
      expect(current.size).to eql(1)
      expect(current.first[:date]).not_to be_nil
      expect(current.first[:date].to_i).to eql(from.year)
      expect(current.first[:value]).not_to be_nil
    end
  end

  describe "#to_hash" do
    it "returns sensor's attributes" do
      hash = @sensor.to_hash
      expect(hash).not_to be_nil
      expect(hash["id"]).not_to be_nil
      expect(hash["name"]).to eql("a5d1s1")
      expect(hash["description"]).to eql("Sensor 1")
    end

    it "returns sensor's and related models' attributes" do
      hash = @sensor.to_hash(:assoc)
      expect(hash).not_to be_nil
      expect(hash["id"]).not_to be_nil
      expect(hash["name"]).to eql("a5d1s1")
      expect(hash["description"]).to eql("Sensor 1")
      expect(hash["device"]).not_to be_nil
      expect(hash["device"]["id"]).not_to be_nil
      expect(hash["device"]["name"]).to eql("a5d1")
      expect(hash["device"]["description"]).to eql("Dispositivo 1")
    end

    it "returns sensor's attributes and last measure" do
      hash = @sensor.to_hash(:last)
      expect(hash).not_to be_nil
      expect(hash["id"]).not_to be_nil
      expect(hash["name"]).to eql("a5d1s1")
      expect(hash["description"]).to eql("Sensor 1")
      expect(hash["last_measure"]).not_to be_nil
      expect(hash["last_measure"]["time"]).not_to be_nil
      expect(hash["last_measure"]["value"]).to eql(@last_measures.first[:value])
    end

    it "returns all posible data" do
      hash = @sensor.to_hash(:assoc, :last)
      expect(hash).not_to be_nil
      expect(hash["id"]).not_to be_nil
      expect(hash["name"]).to eql("a5d1s1")
      expect(hash["description"]).to eql("Sensor 1")
      expect(hash["device"]).not_to be_nil
      expect(hash["device"]["id"]).not_to be_nil
      expect(hash["device"]["name"]).to eql("a5d1")
      expect(hash["device"]["description"]).to eql("Dispositivo 1")
      expect(hash["last_measure"]).not_to be_nil
      expect(hash["last_measure"]["time"]).not_to be_nil
      expect(hash["last_measure"]["value"]).to eql(@last_measures.first[:value])
    end
  end
end
