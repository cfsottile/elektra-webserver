require "bundler"
Bundler.require
require_relative "controllers/sensor_controller"

require 'sinatra/base'

class App < Sinatra::Base
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
        MeasureController.consumption_from_to(from, to, precision, id)
    end

    post "/measure/one" do
        MeasureController.store(env)
    end

    post "/measure/many" do
        MeasureController.store_many(env)
    end
end