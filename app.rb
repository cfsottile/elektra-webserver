require_relative "controllers/users_controller"
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
    SensorsController.instance.index
  end

  get "/sensors/:id" do |id|
    SensorsController.instance.show(id)
  end

  post "/sensors" do
    SensorsController.instance.create(parse_body)
  end

  patch "/sensors/:id" do |id|
    SensorsController.instance.update(id, parse_body)
  end

  delete "/sensors/:id" do |id|
    SensorsController.instance.destroy(id)
  end

  get "/sensors/:id/last" do |id|
    SensorsController.instance.last_measure(id)
  end

  get "/sensors/:id/lapse/from/:from/to/:to/precision/:precision" do |id, from, to, precision|
    SensorsController.instance.consumption_from_to(id, from, to, precision)
  end

  get "/sensors/:id/turn_on" do |id|
    SensorsController.instance.turn_on(id)
  end

  get "/sensors/:id/turn_off" do |id|
    SensorsController.instance.turn_off(id)
  end

  post "/measures/one" do
    MeasureController.store(env)
  end

  post "/measures/many" do
    MeasureController.store_many(env)
  end

  get "/places" do
    PlacesController.instance.index
  end

  get "/places/:id" do |id|
    PlacesController.instance.show(id)
  end

  post "/places" do
    PlacesController.instance.create(parse_body)
  end

  patch "/places/:id" do |id|
    PlacesController.instance.update(id, parse_body)
  end

  delete "/places/:id" do |id|
    PlacesController.instance.destroy(id)
  end

  get "/devices" do
    DevicesController.instance.index
  end

  get "/devices/:id" do |id|
    DevicesController.instance.show(id)
  end

  post "/devices" do
    DevicesController.instance.create(parse_body)
  end

  patch "/devices/:id" do |id|
    DevicesController.instance.update(id, parse_body)
  end

  delete "/devices/:id" do |id|
    DevicesController.instance.destroy(id)
  end
end
