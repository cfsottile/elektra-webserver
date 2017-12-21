ENV['RACK_ENV'] = 'test'

require_relative "helpers"
require_relative "../models/device"
require "rspec"
require "json"
require "pry"

describe Device do
  include Helpers

  before(:all) do
    places_seed; devices_seed; sensors_seed
    @device = Device.find_by(code: "a5d1")
  end

  after(:all) do
    drop_places; drop_devices; drop_sensors
  end

  describe "#to_hash" do
    it "returns device's attributes" do
      hash = @device.to_hash
      expect(hash).not_to be_nil
      expect(hash["id"]).not_to be_nil
      expect(hash["code"]).to eql("a5d1")
      expect(hash["description"]).to eql("Dispositivo 1")
    end

    it "returns device's and related models' attributes" do
      hash = @device.to_hash(:assoc)
      expect(hash).not_to be_nil
      expect(hash["id"]).not_to be_nil
      expect(hash["code"]).to eql("a5d1")
      expect(hash["description"]).to eql("Dispositivo 1")
      expect(hash["place"]).not_to be_nil
      expect(hash["place"]["id"]).not_to be_nil
      expect(hash["place"]["code"]).to eql("a5")
      expect(hash["place"]["description"]).to eql("Aula 5")
      expect(hash["sensors"]).not_to be_nil
      hash["sensors"].each_with_index do |sensor, i|
        expect(sensor["id"]).not_to be_nil
        expect(sensor["code"]).to eql("a5d1s" + (i + 1).to_s)
        expect(sensor["description"]).to eql("Sensor " + (i + 1).to_s)
        expect(sensor["status"]).to eql(1)
      end
    end
  end
end
