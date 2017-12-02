require "mongo"

db = Mongo::Client.new(["localhost:27017"], database: "iotdb")

db["measures"].insert_many([
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470000200).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470000400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470000600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470000800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470001000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470001200).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470001400).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470001600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470001800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470002000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470002200).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470002400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470002600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470002800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470003000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470003200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470003400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470003600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470003800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470004000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470004200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470004400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470004600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470004800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470005000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470005200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470005400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470005600).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470005800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470006000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470006200).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470006400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470006600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470006800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470007000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470007200).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470007400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470007600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470007800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470008000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470008200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470008400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470008600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470008800).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470009000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470009200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470009400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470009600).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470009800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470010000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470010200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470010400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470010600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470010800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470011000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470011200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470011400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470011600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470011800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470012000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470012200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470012400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470012600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470012800).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470013000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470013200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470013400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470013600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470013800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470014000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470014200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470014400).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470014600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470014800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470015000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470015200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470015400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470015600).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470015800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470016000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470016200).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470016400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470016600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470016800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470017000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470017200).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470017400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470017600).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470017800).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470018000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470018200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470018400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470018600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470018800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470019000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470019200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470019400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470019600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 7.9
  },

  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470000200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470000400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470000600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470000800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470001000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470001200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470001400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470001600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470001800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470002000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470002200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470002400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470002600).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470002800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470003000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470003200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470003400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470003600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470003800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470004000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470004200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470004400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470004600).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470004800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470005000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470005200).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470005400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470005600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470005800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470006000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470006200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470006400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470006600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470006800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470007000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470007200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470007400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470007600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470007800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470008000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470008200).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470008400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470008600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470008800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470009000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470009200).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470009400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470009600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470009800).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470010000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470010200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470010400).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470010600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470010800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470011000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470011200).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470011400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470011600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470011800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470012000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470012200).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470012400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470012600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470012800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470013000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470013200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470013400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470013600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470013800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470014000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470014200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470014400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470014600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470014800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470015000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470015200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470015400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470015600).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470015800).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470016000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470016200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470016400).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470016600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470016800).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470017000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470017200).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470017400).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470017600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470017800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470018000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470018200).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470018400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470018600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470018800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470019000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470019200).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470019400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470019600).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 2.7
  },

  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470000200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470000400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470000600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470000800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470001000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470001200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470001400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470001600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470001800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470002000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470002200).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470002400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470002600).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470002800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470003000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470003200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470003400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470003600).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470003800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470004000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470004200).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470004400).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470004600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470004800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470005000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470005200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470005400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470005600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470005800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470006000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470006200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470006400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470006600).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470006800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470007000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470007200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470007400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470007600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470007800).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470008000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470008200).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470008400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470008600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470008800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470009000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470009200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470009400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470009600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470009800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470010000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470010200).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470010400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470010600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470010800).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470011000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470011200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470011400).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470011600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470011800).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470012000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470012200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470012400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470012600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470012800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470013000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470013200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470013400).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470013600).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470013800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470014000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470014200).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470014400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470014600).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470014800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470015000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470015200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470015400).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470015600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470015800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470016000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470016200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470016400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470016600).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470016800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470017000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470017200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470017400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470017600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470017800).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470018000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470018200).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470018400).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470018600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470018800).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470019000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470019200).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470019400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470019600).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 4.1
  },

  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470000200).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470000400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470000600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470000800).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470001000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470001200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470001400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470001600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470001800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470002000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470002200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470002400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470002600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470002800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470003000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470003200).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470003400).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470003600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470003800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470004000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470004200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470004400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470004600).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470004800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470005000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470005200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470005400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470005600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470005800).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470006000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470006200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470006400).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470006600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470006800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470007000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470007200).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470007400).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470007600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470007800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470008000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470008200).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470008400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470008600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470008800).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470009000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470009200).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470009400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470009600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470009800).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470010000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470010200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470010400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470010600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470010800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470011000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470011200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470011400).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470011600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470011800).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470012000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470012200).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470012400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470012600).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470012800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470013000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470013200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470013400).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470013600).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470013800).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470014000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470014200).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470014400).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470014600).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470014800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470015000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470015200).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470015400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470015600).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470015800).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470016000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470016200).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470016400).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470016600).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470016800).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470017000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470017200).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470017400).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470017600).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470017800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470018000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470018200).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470018400).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470018600).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470018800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470019000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470019200).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470019400).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470019600).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 6.4
  }
])

db["last_measures"].insert_many([
  {
    "sensor_name" => "a9d1s1",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_name" => "a9d1s2",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_name" => "a5d1s1",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_name" => "a5d1s2",
    "time" => Time.at(1470019800).utc.to_datetime,
    "value" => 6.4
  }
])
