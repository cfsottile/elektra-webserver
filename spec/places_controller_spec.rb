ENV['RACK_ENV'] = 'test'

require_relative "../app"
require_relative "helpers"
require_relative "../models/place"
require "rspec"
require "rack/test"
require "json"
require "pry"
require "kaminari/activerecord"

describe "Places controller" do
  include Rack::Test::Methods
  include Helpers

  def app
    App
  end

  before(:all) do
    users_seed; places_seed; devices_seed
    post "/login", {"username" => "admin", "password" => "admin"}.to_json
    @token_header = {"HTTP_AUTHORIZATION" => JSON.parse(last_response.body)["token"]}
    @place_id = Place.find_by(name: "a1").id.to_s
  end

  after(:all) do
    drop_users; drop_places; drop_devices
  end

  describe "#index" do
    it "returns JSON object with places' data" do
      get "/places", {}, @token_header
      expect(last_response.status).to eql(200)
      expect(last_response.body).not_to be_empty
      places = JSON.parse(last_response.body)
      expect(places.length).to eql(2)
      expect(places.first["id"]).not_to be_nil
      expect(places.first["name"]).to eql("a1")
      expect(places.first["description"]).to eql("Aula 1")
      expect(places.first["devices"].length).to eql(2)
      expect(places.first["devices"].first["id"]).not_to be_nil
      expect(places.first["devices"].first["name"]).to eql("a1d1")
      expect(places.first["devices"].first["description"]).to eql("Dispositivo 1")
    end
  end

  describe "#show" do
    it "returns JSON object with place's data" do
      get "/places/" + @place_id, {}, @token_header
      expect(last_response.status).to eql(200)
      expect(last_response.body).not_to be_empty
      place = JSON.parse(last_response.body)
      expect(place["id"]).not_to be_nil
      expect(place["name"]).to eql("a1")
      expect(place["description"]).to eql("Aula 1")
      expect(place["devices"].length).to eql(2)
      expect(place["devices"].first["id"]).not_to be_nil
      expect(place["devices"].first["name"]).to eql("a1d1")
      expect(place["devices"].first["description"]).to eql("Dispositivo 1")
    end

    it "fails to retrieve an inexistent place" do
      get "/places/0", {}, @token_header
      expect(last_response.status).to eql(404)
    end
  end

  describe "#create" do
    it "successfully creates a place" do
      place_data = {
        "name" => "tp1",
        "description" => "Test Place 1"
      }
      post "/places", place_data.to_json, @token_header
      expect(last_response.status).to eql(201)
      expect(last_response.body).not_to be_empty
      place = JSON.parse(last_response.body)
      expect(place["id"]).not_to be_nil
      expect(place["name"]).to eql(place_data["name"])
      expect(place["description"]).to eql(place_data["description"])
    end

    it "fails to create a place with no given data" do
      post "/places", {}, @token_header
      expect(last_response.status).to eql(400)
    end

    it "fails to create a place with invalid fields" do
      place_data = {
        "_name" => "tp1",
        "_description" => "Test Place 1"
      }
      post "/places", {}, @token_header
      expect(last_response.status).to eql(400)
    end

    it "fails to create a place with invalid data" do
      place_data = {
        "name" => 1332,
        "description" => 31223
      }
      post "/places", {}, @token_header
      expect(last_response.status).to eql(400)
    end
  end

  describe "#update" do
    it "successfully updates place's data" do
      patch_data = {
        "name" => "A1",
        "description" => "AULA 1"
      }
      patch "/places/" + @place_id, patch_data.to_json, @token_header
      expect(last_response.status).to eql(200)
      expect(last_response.body).not_to be_empty
      place = JSON.parse(last_response.body)
      expect(place["id"]).not_to be_nil
      expect(place["name"]).to eql(patch_data["name"])
      expect(place["description"]).to eql(patch_data["description"])
    end

    it "fails to update an inexistent place" do
      patch "/places/0", {}, @token_header
      expect(last_response.status).to eql(404)
    end
  end

  describe "#destroy" do
    it "successfully deletes a place" do
      delete "/places/" + @place_id, {}, @token_header
      expect(last_response.status).to eql(200)
    end

    it "fails to delete an inexistent place" do
      delete "/places/0", {}, @token_header
      expect(last_response.status).to eql(404)
    end
  end

end
