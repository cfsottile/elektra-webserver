require_relative "../models/user"
require_relative "../models/place"
require_relative "../models/device"
require_relative "../models/sensor"

users = [
  { username: "admin", password: "admin", role: "admin" },
  { username: "user", password: "user", role: "user" }
]

users.each { |u| User.create(u) }

places = [
  { code: "a1", name: "Aula 1" },
  { code: "a4", name: "Aula 4" },
  { code: "a5", name: "Aula 5" },
  { code: "a9", name: "Aula 9" },
  { code: "a11", name: "Aula 11" }
]

places.each { |p| Place.create(p) }

devices = [
  { code: "a1d1", name: "Dispositivo 1", place: Place.find_by(code: "a1") },
  { code: "a1d2", name: "Dispositivo 2", place: Place.find_by(code: "a1") },
  { code: "a4d1", name: "Dispositivo 2", place: Place.find_by(code: "a4") },
  { code: "a4d2", name: "Dispositivo 2", place: Place.find_by(code: "a4") },
  { code: "a5d1", name: "Dispositivo 1", place: Place.find_by(code: "a5") },
  { code: "a5d2", name: "Dispositivo 2", place: Place.find_by(code: "a5") },
  { code: "a9d1", name: "Dispositivo 1", place: Place.find_by(code: "a9") },
  { code: "a9d2", name: "Dispositivo 2", place: Place.find_by(code: "a9") },
  { code: "a11d1", name: "Dispositivo 1", place: Place.find_by(code: "a11") },
  { code: "a11d2", name: "Dispositivo 2", place: Place.find_by(code: "a11") }
]

devices.each { |d| Device.create(d) }

sensors = [
  { code: "a1d1s1", name: "Sensor 1", device: Device.find_by(code: "a1d1") },
  { code: "a1d1s2", name: "Sensor 2", device: Device.find_by(code: "a1d1") },
  { code: "a1d1s3", name: "Sensor 3", device: Device.find_by(code: "a1d1") },
  { code: "a1d2s1", name: "Sensor 1", device: Device.find_by(code: "a1d2") },
  { code: "a1d2s2", name: "Sensor 2", device: Device.find_by(code: "a1d2") },
  { code: "a1d2s3", name: "Sensor 3", device: Device.find_by(code: "a1d2") },
  { code: "a4d1s1", name: "Sensor 1", device: Device.find_by(code: "a4d1") },
  { code: "a4d1s2", name: "Sensor 2", device: Device.find_by(code: "a4d1") },
  { code: "a4d1s3", name: "Sensor 3", device: Device.find_by(code: "a4d1") },
  { code: "a4d2s1", name: "Sensor 1", device: Device.find_by(code: "a4d2") },
  { code: "a4d2s2", name: "Sensor 2", device: Device.find_by(code: "a4d2") },
  { code: "a4d2s3", name: "Sensor 3", device: Device.find_by(code: "a4d2") },
  { code: "a5d1s1", name: "Sensor 1", device: Device.find_by(code: "a5d1") },
  { code: "a5d1s2", name: "Sensor 2", device: Device.find_by(code: "a5d1") },
  { code: "a5d1s3", name: "Sensor 3", device: Device.find_by(code: "a5d1") },
  { code: "a5d2s1", name: "Sensor 1", device: Device.find_by(code: "a5d2") },
  { code: "a5d2s2", name: "Sensor 2", device: Device.find_by(code: "a5d2") },
  { code: "a5d2s3", name: "Sensor 3", device: Device.find_by(code: "a5d2") },
  { code: "a9d1s1", name: "Sensor 1", device: Device.find_by(code: "a9d1") },
  { code: "a9d1s2", name: "Sensor 2", device: Device.find_by(code: "a9d1") },
  { code: "a9d1s3", name: "Sensor 3", device: Device.find_by(code: "a9d1") },
  { code: "a9d2s1", name: "Sensor 1", device: Device.find_by(code: "a9d2") },
  { code: "a9d2s2", name: "Sensor 2", device: Device.find_by(code: "a9d2") },
  { code: "a9d2s3", name: "Sensor 3", device: Device.find_by(code: "a9d2") },
  { code: "a11d1s1", name: "Sensor 1", device: Device.find_by(code: "a11d1") },
  { code: "a11d1s2", name: "Sensor 2", device: Device.find_by(code: "a11d1") },
  { code: "a11d1s3", name: "Sensor 3", device: Device.find_by(code: "a11d1") },
  { code: "a11d2s1", name: "Sensor 1", device: Device.find_by(code: "a11d2") },
  { code: "a11d2s2", name: "Sensor 2", device: Device.find_by(code: "a11d2") },
  { code: "a11d2s3", name: "Sensor 3", device: Device.find_by(code: "a11d2") }
]

sensors.each { |s| Sensor.create(s) }
