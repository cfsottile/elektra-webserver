require "pry"
require "faye/websocket"
require_relative "../models/sensor"

class EventSourceHandler
  def initialize(app)
    @app = app
    $db = Mongo::Client.new(["localhost:27017"], database: "iotdb")
  end

  def call(env)
    if Faye::EventSource.eventsource?(env)
      es = Faye::EventSource.new(env, :headers => {'Access-Control-Allow-Origin' => '*'})

      id = target(env)
      loop = EM.add_periodic_timer(1) { es.send(Sensor.json_last_measure(id)) }

      es.on :close do |ev|
        EM.cancel_timer(loop)
        es = nil
      end

      es.rack_response
    else
      @app.call(env)
    end
  end

  def target(env)
    Rack::Request.new(env).base_url.split('/').last
  end
end
