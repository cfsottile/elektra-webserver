require "sinatra/activerecord"
require_relative "jsonize"
require_relative "device"

class Place < ActiveRecord::Base
  include Jsonize

  has_many :devices, dependent: :destroy
  has_many :sensors, through: :devices

  validates :code, presence: true, uniqueness: true, length: { in: 1..30 }
  validates :description, presence: true, length: { in: 1..50 }

  private
  def hash_assoc
    { "devices" => devices.map {|device| device.to_hash} }
  end
end
