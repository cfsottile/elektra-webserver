ENV['RACK_ENV'] = 'test'

require_relative "../app"
require_relative "../models/user"
require_relative "../models/sensor"
require_relative "../controllers/users_controller"
require_relative "helpers"
require "rspec"
require "rack/test"
require "json"

describe "Users controller" do
  include Rack::Test::Methods
  include Helpers

  def app
    App
  end

  before(:all) do
    users_seed; places_seed
  end

  after(:all) do
    drop_users; drop_places
  end

  describe "#login" do
    it "logs user in" do
      post "/login", {"username" => "user", "password" => "user"}.to_json
      expect(last_response.status).to eql(200)
      expect(last_response.body).not_to be_empty
      response_data = JSON.parse(last_response.body)
      expect(response_data["token"]).not_to be_nil
    end

    it "logs admin in" do
      post "/login", {"username" => "admin", "password" => "admin"}.to_json
      expect(last_response.status).to eql(200)
      expect(last_response.body).not_to be_empty
      response_data = JSON.parse(last_response.body)
      expect(response_data["token"]).not_to be_nil
    end

    it "fails to log incorrect username and password" do
      post "/login", {"username" => "incorrect", "password" => "incorrect"}.to_json
      expect(last_response.status).to eql(404)
    end

    it "fails to log with no password" do
      post "/login", {"username" => "user"}.to_json
      expect(last_response.status).to eql(404)
    end

    it "fails to log in" do
      post "/login"
      expect(last_response.status).to eql(404)
    end
  end

  describe "#auth" do
    user_required_auth_path = "/places"
    admin_required_auth_path = "/users"

    context "user is authenticated" do
      before :all do
        post "/login", {"username" => "user", "password" => "user"}.to_json
        @token_header = {"HTTP_AUTHORIZATION" => JSON.parse(last_response.body)["token"]}
      end

      it "authorizes a path which requires user credentials" do
        get user_required_auth_path, {}, @token_header
        expect(last_response.status).to eql(200)
      end

      it "does not authorize a path which requires admin credentials" do
        get admin_required_auth_path, {}, @token_header
        expect(last_response.status).to eql(401)
      end
    end

    context "admin is authenticated" do
      before :all do
        post "/login", {"username" => "admin", "password" => "admin"}.to_json
        @token_header = {"HTTP_AUTHORIZATION" => JSON.parse(last_response.body)["token"]}
      end

      it "authorizes a path which requires admin credentials" do
        get admin_required_auth_path, {}, @token_header
        expect(last_response.status).to eql(200)
      end

      it "authorizes a path which requires user credentials" do
        get admin_required_auth_path, {}, @token_header
        expect(last_response.status).to eql(200)
      end
    end

    context "not authenticated" do
      it "does not authorize a path which requires user credentials" do
        get user_required_auth_path
        expect(last_response.status).to eql(401)
      end

      it "does not authorize a path which requires admin credentials" do
        get admin_required_auth_path
        expect(last_response.status).to eql(401)
      end
    end
  end
end
