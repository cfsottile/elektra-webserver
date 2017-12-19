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

  def average_consumptions(from, to, precision)
    Measure.average_consumptions(name, from, to, precision)
  end

  def last_measure
    Measure.last_for(name)
  end

  private
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
