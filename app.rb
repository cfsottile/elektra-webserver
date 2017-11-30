require_relative "controllers/sensor_controller"

require 'sinatra/base'

class App < Sinatra::Base

  set :bind, '0.0.0.0'
  configure do
    enable :cross_origin
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  # routes...
  options "*" do
    response.headers["Allow"] = "GET, POST, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end

  get "/prueba" do
    send_file "pruebas/index.html"
  end

  get "/sensor" do
    SensorController.index
  end

  get "/sensor/:id" do |id|
    SensorController.show(id)
  end

  get "/sensor/:id/last" do |id|
    SensorController.last_measure(id)
  end

  get "/sensor/:id/lapse/from/:from/to/:to/precision/:precision" do |id, from, to, precision|
    SensorController.consumption_from_to(id, from, to, precision)
  end

  get "/sensor/:id/turn_on" do |id|
    SensorController.turn_on(id)
  end

  get "/sensor/:id/turn_off" do |id|
    SensorController.turn_off(id)
  end

  post "/measure/one" do
    MeasureController.store(env)
  end

  post "/measure/many" do
    MeasureController.store_many(env)
  end
end
