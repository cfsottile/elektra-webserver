require_relative "../models/sensor"

class SensorsController
  def self.index
    Sensor.all.map {|s| s.to_hash(:assoc, :last)}.to_json
  end

  def self.show(id)
    find_or_return(id) {|sensor| sensor.json(:assoc, :last)}
  end

  def self.create(data)
    sensor = Sensor.new(filter_permited_fields(data))
    if sensor.save then [201, sensor.to_json] else [400, sensor.errors.messages.to_json] end
  end

  def self.update(id, data)
    find_or_return(id) do |sensor|
      sensor.update(filter_permited_fields(data))
      if sensor.save then [200, sensor.to_json] else [400, sensor.errors.messages.to_json] end
    end
  end

  def self.destroy(id)
    find_or_return(id) do |sensor|
      if sensor.destroy then 200 else 400 end
    end
  end

  def self.last_measure(id)
    find_or_return(id) {|sensor| sensor.last_measure.to_json}
  end

  def self.consumption_from_to(from, to, precision, id)
    find_or_return(id) {|sensor| sensor.consumption_from_to(from, to, precision).to_json}
  end

  def self.turn_on(id)
    "WIP".to_json
  end

  def self.turn_off(id)
    "WIP".to_json
  end

  private
  @@permited_fields = %w(name description status device_id)

  def self.find_or_return(id, &f)
    p = Sensor.find_by(id: id)
    if p then f.call(p) else 404 end
  end

  def self.filter_permited_fields(hash)
    hash.select {|field,_| @@permited_fields.include?(field)}
  end
end
