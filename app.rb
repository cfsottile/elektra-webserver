require_relative "controllers/places_controller"
require_relative "controllers/devices_controller"
require_relative "controllers/sensors_controller"

# require 'sinatra'
# require 'sinatra/base'
# require "sinatra/activerecord"

class App < Sinatra::Base
  # register Sinatra::ActiveRecordExtension

  before do
    content_type 'application/json'
  end

  helpers do
    def parse_body
      JSON.parse(request.body.read)
    end
  end

  get "/prueba" do
    send_file "pruebas/index.html"
  end

  get "/sensors" do
    SensorsController.index
  end

  get "/sensors/:id" do |id|
    SensorsController.show(id)
  end

  post "/sensors" do
    SensorsController.create(parse_body)
  end

  patch "/sensors/:id" do |id|
    SensorsController.update(id, parse_body)
  end

  delete "/sensors/:id" do |id|
    SensorsController.destroy(id)
  end

  get "/sensors/:id/last" do |id|
    SensorsController.last_measure(id)
  end

  get "/sensors/:id/lapse/from/:from/to/:to/precision/:precision" do |id, from, to, precision|
    SensorsController.consumption_from_to(id, from, to, precision)
  end

  get "/sensors/:id/turn_on" do |id|
    SensorsController.turn_on(id)
  end

  get "/sensors/:id/turn_off" do |id|
    SensorsController.turn_off(id)
  end

  post "/measures/one" do
    MeasureController.store(env)
  end

  post "/measures/many" do
    MeasureController.store_many(env)
  end

  get "/places" do
    PlacesController.index
  end

  get "/places/:id" do |id|
    PlacesController.show(id)
  end

  post "/places" do
    PlacesController.create(parse_body)
  end

  patch "/places/:id" do |id|
    PlacesController.update(id, parse_body)
  end

  delete "/places/:id" do |id|
    PlacesController.destroy(id)
  end

  get "/devices" do
    DevicesController.index
  end

  get "/devices/:id" do |id|
    DevicesController.show(id)
  end

  post "/devices" do
    DevicesController.create(parse_body)
  end

  patch "/devices/:id" do |id|
    DevicesController.update(id, parse_body)
  end

  delete "/devices/:id" do |id|
    DevicesController.destroy(id)
  end
end
