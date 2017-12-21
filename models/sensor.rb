require "sinatra/activerecord"
require_relative "device"
require_relative "measure"
require_relative "jsonize"

class Sensor < ActiveRecord::Base
  include Jsonize

  belongs_to :device

  validates :code, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }
  validates :status, inclusion: { within: [0,1] }
  validates :device, presence: true

  def average_consumptions(from, to, precision)
    Measure.average_consumptions(code, from, to, precision)
  end

  def last_measure
    Measure.last_for(code)
  end

  private
  def hash_last
    { "last_measure" => last_measure }
  end

  def hash_assoc
    {
      "device" => device.to_hash,
      "place" => device.place.to_hash
    }
  end
end
