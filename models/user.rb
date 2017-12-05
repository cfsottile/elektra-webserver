require "bcrypt"
require "sinatra/activerecord"
require "securerandom"
require_relative "jsonize"

class User < ActiveRecord::Base
  include Jsonize
  include BCrypt

  validates :username, presence: true, uniqueness: true, length: { in: 1..50 }
  validates :password, presence: true
  validates :role, presence: true, length: { in: 1..30 }

  private
  def hash_data
    { id: id, username: username, role: role }
  end

  # shouldn't be needed; check BaseController#index
  def hash_assoc; {}; end

end
