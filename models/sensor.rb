require "sinatra/activerecord"
require_relative "device"
require_relative "measure"
require_relative "jsonize"

class Sensor < ActiveRecord::Base
  include Jsonize

  belongs_to :device

  validates :name, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }
  validates :status, inclusion: { within: [0,1] }
  validates :device, presence: true

  def consumption_from_to(raw_from, raw_to, precision)
    Measure.consumption_from_to(
      self.name,
      DateTime.rfc3339(raw_from),
      DateTime.rfc3339(raw_to),
      precision)
  end

  def last_measure
    Measure.last_for(self.name)
  end

  private
  def hash_data
    {
      id: id,
      name: name,
      description: description,
      status: status
    }
  end

  def hash_last
    { last_measure: last_measure }
  end

  def hash_assoc
    {
      device_name: device.name,
      device_description: device.description,
      place_name: device.place.name,
      place_description: device.place.description,
    }
  end
end
