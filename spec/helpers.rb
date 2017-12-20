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
      { name: "a1", description: "Aula 1" },
      { name: "a5", description: "Aula 5" },
    ]
    places.each { |p| Place.create(p) }
  end

  def devices_seed
    devices = [
      { name: "a1d1", description: "Dispositivo 1", place: Place.find_by(name: "a1") },
      { name: "a1d2", description: "Dispositivo 2", place: Place.find_by(name: "a1") },
      { name: "a5d1", description: "Dispositivo 1", place: Place.find_by(name: "a5") },
      { name: "a5d2", description: "Dispositivo 2", place: Place.find_by(name: "a5") }
    ]
    devices.each { |d| Device.create(d) }
  end

  def sensors_seed
    sensors = [
      { name: "a1d1s1", description: "Sensor 1", device: Device.find_by(name: "a1d1") },
      { name: "a1d1s2", description: "Sensor 2", device: Device.find_by(name: "a1d1") },
      { name: "a1d1s3", description: "Sensor 3", device: Device.find_by(name: "a1d1") },
      { name: "a1d2s1", description: "Sensor 1", device: Device.find_by(name: "a1d2") },
      { name: "a1d2s2", description: "Sensor 2", device: Device.find_by(name: "a1d2") },
      { name: "a1d2s3", description: "Sensor 3", device: Device.find_by(name: "a1d2") },
      { name: "a5d1s1", description: "Sensor 1", device: Device.find_by(name: "a5d1") },
      { name: "a5d1s2", description: "Sensor 2", device: Device.find_by(name: "a5d1") },
      { name: "a5d1s3", description: "Sensor 3", device: Device.find_by(name: "a5d1") },
      { name: "a5d2s1", description: "Sensor 2", device: Device.find_by(name: "a5d2") },
      { name: "a5d2s2", description: "Sensor 2", device: Device.find_by(name: "a5d2") },
      { name: "a5d2s3", description: "Sensor 3", device: Device.find_by(name: "a5d2") }
    ]
    sensors.each { |s| Sensor.create(s) }
  end

  def measures_seed
    values = [3.5,3.6,3.7,3.8,3.9,4.0,4.1]
    sensors = ["a5d1s1"]
    first_datetime = DateTime.now << 6
    last_datetime = DateTime.now
    dates = first_datetime.step(last_datetime, Rational(1,24*12))
    measures = sensors.map {|s| dates.map {|d| { sensor_name: s, time: d, value: values.sample } }}
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

  def measures_drop
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
