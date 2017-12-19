require "mongo"
Mongo::Logger.logger.level = Logger::FATAL

db = Mongo::Client.new(["localhost:27017"], database: "iot_db")

values = [3.5,3.6,3.7,3.8,3.9,4.0,4.1]
sensor_names = ["a9d1s1"]
dates = (DateTime.now << 1).step(DateTime.now, Rational(1,24*60*30))

db["measures"].insert_many(
  (sensor_names.map do |sensor|
    dates.map do |date|
      { sensor_name: sensor, time: date, value: values.sample }
    end
  end).flatten
)

#
# db["last_measures"].insert_many([
#   {
#     "sensor_name" => "a9d1s1",
#     "time" => Time.at(1470019800).utc.to_datetime,
#     "value" => 7.9
#   },
#   {
#     "sensor_name" => "a9d1s2",
#     "time" => Time.at(1470019800).utc.to_datetime,
#     "value" => 2.7
#   },
#   {
#     "sensor_name" => "a5d1s1",
#     "time" => Time.at(1470019800).utc.to_datetime,
#     "value" => 4.1
#   },
#   {
#     "sensor_name" => "a5d1s2",
#     "time" => Time.at(1470019800).utc.to_datetime,
#     "value" => 6.4
#   }
# ])
