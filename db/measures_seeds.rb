require "mongo"
Mongo::Logger.logger.level = Logger::FATAL

db = Mongo::Client.new(["localhost:27017"], database: "elektra_db_test")

values = [3.5,3.6,3.7,3.8,3.9,4.0,4.1]
sensor_codes = ["a5d1s1"]
dates = (DateTime.now << 1).step(DateTime.now, Rational(1,24*60*30))

db["measures"].drop
db["measures"].insert_many(
  (sensor_codes.map do |sensor|
    dates.map do |date|
      { sensor_code: sensor, time: date, value: values.sample }
    end
  end).flatten
)

db["last_measures"].drop
db["last_measures"].insert_many(
  sensor_codes.map do |s|
    db["measures"].find({sensor_code: s}).sort({time: -1}).limit(1).to_a.first
  end
)
