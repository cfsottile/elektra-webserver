require "sinatra/activerecord"
require_relative "place"
require_relative "jsonize"
require_relative "sensor"

class Device < ActiveRecord::Base
  include Jsonize

  belongs_to :place
  has_many :sensors, dependent: :destroy

  validates :code, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }
  validates :place, presence: true

  private
  def hash_assoc
    {
      "place" => place.to_hash,
      "sensors" => sensors.map {|sensor| sensor.to_hash}
    }
  end
end
