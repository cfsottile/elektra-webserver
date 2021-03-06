require_relative "../models/user"
require_relative "../models/place"
require_relative "../models/device"
require_relative "../models/sensor"

module Helpers
  def users_seed
    users = [
      { username: "admin", password: "admin", role: "admin" },
      { username: "user", password: "user", role: "user" }
    ]
    users.each { |u| User.create(u) }
  end

  def places_seed
    places = [
      { code: "a1", name: "Aula 1" },
      { code: "a5", name: "Aula 5" },
    ]
    places.each { |p| Place.create(p) }
  end

  def devices_seed
    devices = [
      { code: "a1d1", name: "Dispositivo 1", place: Place.find_by(code: "a1") },
      { code: "a1d2", name: "Dispositivo 2", place: Place.find_by(code: "a1") },
      { code: "a5d1", name: "Dispositivo 1", place: Place.find_by(code: "a5") },
      { code: "a5d2", name: "Dispositivo 2", place: Place.find_by(code: "a5") }
    ]
    devices.each { |d| Device.create(d) }
  end

  def sensors_seed
    sensors = [
      { code: "a1d1s1", name: "Sensor 1", device: Device.find_by(code: "a1d1") },
      { code: "a1d1s2", name: "Sensor 2", device: Device.find_by(code: "a1d1") },
      { code: "a1d1s3", name: "Sensor 3", device: Device.find_by(code: "a1d1") },
      { code: "a1d2s1", name: "Sensor 1", device: Device.find_by(code: "a1d2") },
      { code: "a1d2s2", name: "Sensor 2", device: Device.find_by(code: "a1d2") },
      { code: "a1d2s3", name: "Sensor 3", device: Device.find_by(code: "a1d2") },
      { code: "a5d1s1", name: "Sensor 1", device: Device.find_by(code: "a5d1") },
      { code: "a5d1s2", name: "Sensor 2", device: Device.find_by(code: "a5d1") },
      { code: "a5d1s3", name: "Sensor 3", device: Device.find_by(code: "a5d1") },
      { code: "a5d2s1", name: "Sensor 2", device: Device.find_by(code: "a5d2") },
      { code: "a5d2s2", name: "Sensor 2", device: Device.find_by(code: "a5d2") },
      { code: "a5d2s3", name: "Sensor 3", device: Device.find_by(code: "a5d2") }
    ]
    sensors.each { |s| Sensor.create(s) }
  end

  def measures_seed
    values = [3.5,3.6,3.7,3.8,3.9,4.0,4.1]
    sensors = ["a5d1s1"]
    first_datetime = DateTime.now << 6
    last_datetime = DateTime.now
    dates = first_datetime.step(last_datetime, Rational(1,24*12))
    measures = sensors.map {|s| dates.map {|d| { sensor_code: s, time: d, value: values.sample } }}
    flattened_measures = measures.flatten
    last_measures = measures.map {|ms| ms.last}
    $db["measures"].insert_many(flattened_measures)
    $db["last_measures"].insert_many(last_measures)
    [last_measures, first_datetime, last_datetime]
  end

  def drop_places
    Place.delete_all
  end

  def drop_devices
    Device.delete_all
  end

  def drop_sensors
    Sensor.delete_all
  end

  def drop_users
    User.delete_all
  end

  def drop_measures
    $db["measures"].drop
    $db["last_measures"].drop
  end

  def date_to_arr(date, precision)
    arr = %i(year month day hour)
    n = case precision
        when "hour" then 4
        when "day" then 3
        when "month" then 2
        when "year" then 1
        end
    arr.map { |m| date.send(m) }.take(n)
  end
end
