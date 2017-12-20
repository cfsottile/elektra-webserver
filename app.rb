require_relative "controllers/users_controller"
require_relative "controllers/places_controller"
require_relative "controllers/devices_controller"
require_relative "controllers/sensors_controller"

# require 'sinatra'
# require 'sinatra/base'
# require "sinatra/activerecord"

class App < Sinatra::Base
  # register Sinatra::ActiveRecordExtension

  set(:auth) do |*roles|
    condition do
      if env["HTTP_AUTHORIZATION"].nil? then halt 401 end
      user = UsersController.instance.auth(env["HTTP_AUTHORIZATION"])
      if [400,401,404].include?(user) || !roles.include?(user.role.to_sym) then halt 401 end
    end
  end

  before do
    content_type 'application/json'
  end

  helpers do
    def parse_body
      body = request.body.read
      request.body.rewind
      if body != "" then JSON.parse(body) else {} end
    end
  end

  post "/login" do
    UsersController.instance.login(parse_body)
  end

  get "/sensors", auth: %i(admin user) do
    SensorsController.instance.index(1)
  end

  get "/sensors/page/:page", auth: %i(admin user) do |page|
    SensorsController.instance.index(page)
  end

  get "/sensors/page/:page/per/:per", auth: %i(admin user) do |page,per|
    SensorsController.instance.index(page, per)
  end

  get "/sensors/:id", auth: %i(admin user) do |id|
    SensorsController.instance.show(id)
  end

  post "/sensors", auth: %i(admin) do
    SensorsController.instance.create(parse_body)
  end

  patch "/sensors/:id", auth: %i(admin) do |id|
    SensorsController.instance.update(id, parse_body)
  end

  delete "/sensors/:id", auth: %i(admin) do |id|
    SensorsController.instance.destroy(id)
  end

  get "/sensors/:id/last", auth: %i(admin user) do |id|
    SensorsController.instance.last_measure(id)
  end

  get "/sensors/:id/average/from/:y1/to/:y2/per/:precision", auth: %i(admin user) do |id, y1, y2, precision|
    SensorsController.instance.average_consumptions(id, [y1], [y2], precision)
  end

  get "/sensors/:id/average/from/:y1/:m1/to/:y2/:m2/per/:precision", auth: %i(admin user) do |id, y1, m1, y2, m2, precision|
    SensorsController.instance.average_consumptions(id, [y1,m1], [y2,m2], precision)
  end

  get "/sensors/:id/average/from/:y1/:m1/:d1/to/:y2/:m2/:d2/per/:precision", auth: %i(admin user) do |id, y1, m1, d1, y2, m2, d2, precision|
    SensorsController.instance.average_consumptions(id, [y1,m1,d1], [y2,m2,d2], precision)
  end

  get "/sensors/:id/average/from/:y1/:m1/:d1/:h1/to/:y2/:m2/:d2/:h2", auth: %i(admin user) do |id, y1, m1, d1, h1, y2, m2, d2, h2|
    SensorsController.instance.average_consumptions(id, [y1,m1,d1,h1], [y2,m2,d2,h2], "hour")
  end

  get "/sensors/:id/turn_on", auth: %i(admin user) do |id|
    SensorsController.instance.turn_on(id)
  end

  get "/sensors/:id/turn_off", auth: %i(admin user) do |id|
    SensorsController.instance.turn_off(id)
  end

  post "/measures/one", auth: %i(device) do
    MeasureController.store(env)
  end

  post "/measures/many", auth: %i(device) do
    MeasureController.store_many(env)
  end

  get "/places", auth: %i(admin user) do
    PlacesController.instance.index(1)
  end

  get "/places/page/:page", auth: %i(admin user) do |page|
    PlacesController.instance.index(page)
  end

  get "/places/page/:page/per/:per", auth: %i(admin user) do |page,per|
    PlacesController.instance.index(page, per)
  end

  get "/places/:id", auth: %i(admin user) do |id|
    PlacesController.instance.show(id)
  end

  post "/places", auth: %i(admin) do
    PlacesController.instance.create(parse_body)
  end

  patch "/places/:id", auth: %i(admin) do |id|
    PlacesController.instance.update(id, parse_body)
  end

  delete "/places/:id", auth: %i(admin) do |id|
    PlacesController.instance.destroy(id)
  end

  get "/devices", auth: %i(admin user) do
    DevicesController.instance.index(1)
  end

  get "/devices/page/:page", auth: %i(admin user) do |page|
    DevicesController.instance.index(page)
  end

  get "/devices/page/:page/per/:per", auth: %i(admin user) do |page,per|
    DevicesController.instance.index(page, per)
  end

  get "/devices/:id", auth: %i(admin user) do |id|
    DevicesController.instance.show(id)
  end

  post "/devices", auth: %i(admin) do
    DevicesController.instance.create(parse_body)
  end

  patch "/devices/:id", auth: %i(admin) do |id|
    DevicesController.instance.update(id, parse_body)
  end

  delete "/devices/:id", auth: %i(admin) do |id|
    DevicesController.instance.destroy(id)
  end

  get "/users", auth: %i(admin) do
    UsersController.instance.index(1)
  end

  get "/users/page/:page", auth: %i(admin) do |page|
    UsersController.instance.index(page)
  end

  get "/users/page/:page/per/:per", auth: %i(admin) do |page,per|
    UsersController.instance.index(page, per)
  end

  get "/users/:id", auth: %i(admin) do |id|
    UsersController.instance.show(id)
  end

  post "/users", auth: %i(admin) do
    UsersController.instance.create(parse_body)
  end

  patch "/users/:id", auth: %i(admin) do |id|
    UsersController.instance.update(id, parse_body)
  end

  delete "/users/:id", auth: %i(admin) do |id|
    UsersController.instance.destroy(id)
  end
end
