require "bcrypt"
require "sinatra/activerecord"
require "securerandom"
require_relative "jsonize"

class User < ActiveRecord::Base
  include Jsonize
  include BCrypt

  validates :username, presence: true, uniqueness: true, length: { in: 1..50 }
  validates :password_hash, presence: true
  validates :role, presence: true, inclusion: { in: %w(user admin device) }

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def login(password)
    if self.password == password
      t = { token: SecureRandom.urlsafe_base64(64) }
      update(t.merge(token_valid_through: @@expire_times[role]))
      t.to_json
    else
      404
    end
  end

  private
  def hash_data
    { id: id, username: username, role: role }
  end

  @@expire_times = {
    "user" => (DateTime.now + 0.5).to_time,
    "admin" => (DateTime.now + 1).to_time,
    "device" => (DateTime.now >> 1).to_time
  }
end
