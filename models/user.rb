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

  def login(password)
    if Password.new(self.password) == password
      t = { token: SecureRandom.urlsafe_base64(64) }
      update(t.merge(token_issued_at: @@expire_times[role]))
      t.to_json
    else
      404
    end
  end

  def filtered_attributes
    json
  end

  private
  def hash_data
    { id: id, username: username, role: role }
  end

  # shouldn't be needed; check BaseController#index
  def hash_assoc; {}; end

  @@expire_times = {
    "user" => (DateTime.now + 0.5).to_time,
    "admin" => (DateTime.now + 1).to_time,
    "device" => (DateTime.now >> 1).to_time
  }
end
