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
  { name: "a1", description: "Aula 1" },
  { name: "a4", description: "Aula 4" },
  { name: "a5", description: "Aula 5" },
  { name: "a9", description: "Aula 9" },
  { name: "a11", description: "Aula 11" }
]

places.each { |p| Place.create(p) }

devices = [
  { name: "a1d1", description: "Dispositivo 1", place: Place.find_by(name: "a1") },
  { name: "a1d2", description: "Dispositivo 2", place: Place.find_by(name: "a1") },
  { name: "a4d1", description: "Dispositivo 2", place: Place.find_by(name: "a4") },
  { name: "a4d2", description: "Dispositivo 2", place: Place.find_by(name: "a4") },
  { name: "a5d1", description: "Dispositivo 1", place: Place.find_by(name: "a5") },
  { name: "a5d2", description: "Dispositivo 2", place: Place.find_by(name: "a5") },
  { name: "a9d1", description: "Dispositivo 1", place: Place.find_by(name: "a9") },
  { name: "a9d2", description: "Dispositivo 2", place: Place.find_by(name: "a9") },
  { name: "a11d1", description: "Dispositivo 1", place: Place.find_by(name: "a11") },
  { name: "a11d2", description: "Dispositivo 2", place: Place.find_by(name: "a11") }
]

devices.each { |d| Device.create(d) }

sensors = [
  { name: "a1d1s1", description: "Sensor 1", device: Device.find_by(name: "a1d1") },
  { name: "a1d1s2", description: "Sensor 1", device: Device.find_by(name: "a1d1") },
  { name: "a1d1s3", description: "Sensor 1", device: Device.find_by(name: "a1d1") },
  { name: "a1d2s1", description: "Sensor 2", device: Device.find_by(name: "a1d2") },
  { name: "a1d2s2", description: "Sensor 2", device: Device.find_by(name: "a1d2") },
  { name: "a1d2s3", description: "Sensor 2", device: Device.find_by(name: "a1d2") },
  { name: "a4d1s1", description: "Sensor 1", device: Device.find_by(name: "a4d1") },
  { name: "a4d1s2", description: "Sensor 1", device: Device.find_by(name: "a4d1") },
  { name: "a4d1s3", description: "Sensor 1", device: Device.find_by(name: "a4d1") },
  { name: "a4d2s1", description: "Sensor 2", device: Device.find_by(name: "a4d2") },
  { name: "a4d2s2", description: "Sensor 2", device: Device.find_by(name: "a4d2") },
  { name: "a4d2s3", description: "Sensor 2", device: Device.find_by(name: "a4d2") },
  { name: "a5d1s1", description: "Sensor 1", device: Device.find_by(name: "a5d1") },
  { name: "a5d1s2", description: "Sensor 1", device: Device.find_by(name: "a5d1") },
  { name: "a5d1s3", description: "Sensor 1", device: Device.find_by(name: "a5d1") },
  { name: "a5d2s1", description: "Sensor 2", device: Device.find_by(name: "a5d2") },
  { name: "a5d2s2", description: "Sensor 2", device: Device.find_by(name: "a5d2") },
  { name: "a5d2s3", description: "Sensor 2", device: Device.find_by(name: "a5d2") },
  { name: "a9d1s1", description: "Sensor 1", device: Device.find_by(name: "a9d1") },
  { name: "a9d1s2", description: "Sensor 1", device: Device.find_by(name: "a9d1") },
  { name: "a9d1s3", description: "Sensor 1", device: Device.find_by(name: "a9d1") },
  { name: "a9d2s1", description: "Sensor 2", device: Device.find_by(name: "a9d2") },
  { name: "a9d2s2", description: "Sensor 2", device: Device.find_by(name: "a9d2") },
  { name: "a9d2s3", description: "Sensor 2", device: Device.find_by(name: "a9d2") },
  { name: "a11d1s1", description: "Sensor 1", device: Device.find_by(name: "a11d1") },
  { name: "a11d1s2", description: "Sensor 1", device: Device.find_by(name: "a11d1") },
  { name: "a11d1s3", description: "Sensor 1", device: Device.find_by(name: "a11d1") },
  { name: "a11d2s1", description: "Sensor 2", device: Device.find_by(name: "a11d2") },
  { name: "a11d2s2", description: "Sensor 2", device: Device.find_by(name: "a11d2") },
  { name: "a11d2s3", description: "Sensor 2", device: Device.find_by(name: "a11d2") }
]

sensors.each { |s| Sensor.create(s) }
