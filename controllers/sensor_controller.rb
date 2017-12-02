require_relative "../models/sensor"

class SensorController
  def self.index
    Sensor.all.map {|s| s.hash(:assoc, :last)}.to_json
  end

  def self.show(name)
    Sensor.find_by(name: name).json(:assoc)
  end

  def self.last_measure(name)
    Sensor.find_by(name: name).last_measure.to_json
  end

  def self.consumption_from_to(from, to, precision, sensor_name)
    Sensor.find_by(name: sensor_name)
      .consumption_from_to(from, to, precision)
      .to_json
  end

  def self.turn_on(id)
    "WIP".to_json
  end

  def self.turn_off(id)
    "WIP".to_json
  end
end
