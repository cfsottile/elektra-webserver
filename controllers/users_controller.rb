require_relative "base_controller"
require_relative "../models/user"

class UsersController < BaseController
  def initialize
    @model = User
    @permited_fields = %w(username password role)
    @index_aggregation = []
    @show_aggregation = []
  end

  def login(data)
    find_by_or_return(username: data["username"]) { |user| user.login(data["password"]) }
  end

  def auth(token)
    find_by_or_return(token: token) do |user|
      if user.token_valid_through >= Time.now then user else 401 end
    end
  end
end
