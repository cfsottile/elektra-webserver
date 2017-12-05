require_relative "base_controller"
require_relative "../models/user"

class UsersController < BaseController
  def initialize
    @model = User
    @permited_fields = %w(username password role)
  end

  def create(data)
    super(encrypt_password_field(data))
  end

  def update(data)
    super(encrypt_password_field(data))
  end

  def encrypt_password_field(hash)
    if hash.include?("password")
      hash.merge("password" => BCrypt::Password.create(hash["password"]))
    else
      hash
    end
  end
end
