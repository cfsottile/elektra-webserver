class SensorsController < BaseController
  def initialize
    @model = Sensor
    @permited_fields = %w(name description status device_id)
  end

  def index
    Sensor.all.map {|s| s.to_hash(:assoc, :last)}.to_json
  end

  def show(id)
    find_or_return(id) {|sensor| sensor.json(:assoc, :last)}
  end

  def last_measure(id)
    find_or_return(id) {|sensor| sensor.last_measure.to_json}
  end

  def consumption_from_to(from, to, precision, id)
    find_or_return(id) {|sensor| sensor.consumption_from_to(from, to, precision).to_json}
  end

  def turn_on(id)
    "WIP".to_json
  end

  def turn_off(id)
    "WIP".to_json
  end
end
