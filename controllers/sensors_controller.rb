class SensorsController < BaseController
  def initialize
    @model = Sensor
    @permited_fields = %w(code name status device_id)
    @index_aggregation = %i(assoc last)
    @show_aggregation = %i(assoc last)
  end

  def last_measure(id)
    find_or_return(id) {|sensor| sensor.last_measure.to_json}
  end

  def average_consumptions(id, from, to, precision)
    find_or_return(id) {|sensor| sensor.average_consumptions(from, to, precision).to_json}
  end

  def turn_on(id)
    "WIP".to_json
  end

  def turn_off(id)
    "WIP".to_json
  end
end
