require "sinatra/activerecord"
require_relative "place"
require_relative "jsonize"

class Device < ActiveRecord::Base
  include Jsonize

  belongs_to :place
  has_many :sensors, dependent: :destroy

  validates :name, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }
  validates :place, presence: true

  private
  def hash_data
    {
      id: id,
      name: name,
      description: description
    }
  end

  def hash_assoc
    {
      place_name: place.name,
      place_description: place.description,
      sensors: sensors.map {|sensor| sensor.to_hash}
    }
  end
end
