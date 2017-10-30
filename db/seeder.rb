require "mongo"

db = Mongo::Client.new(["localhost:27017"], database: "iotdb")

db["places"].insert_many([
  {
    "id" => "a5",
    "name" => "Aula 5",
  },
  {
    "id" => "a11",
    "name" => "Aula 11",
  },
  {
    "id" => "a9",
    "name" => "Aula 9",
  },
  {
    "id" => "a4",
    "name" => "Aula 4",
  },
  {
    "id" => "b1",
    "name" => "Biblioteca",
  }
])

db["motes"].insert_many([
  {
    "id" => "a51",
    "name" => "Mota en aula 5",
    "location" => "a5",
    "sensors" => [],
  },
  {
    "id" => "a41",
    "name" => "Mota en aula 4",
    "location" => "a4",
    "sensors" => [],
  },
  {
    "id" => "a91",
    "name" => "Mota en aula 9",
    "location" => "a9",
    "sensors" => [],
  },
  {
    "id" => "b11",
    "name" => "Mota en biblioteca",
    "location" => "b1",
    "sensors" => [],
  }
])

db["sensors"].insert_many([
  {
    "id" => "a511",
    "name" => "sensor a511",
    "mote_id" => "a51"
  },
  {
    "id" => "a512",
    "name" => "sensor a512",
    "mote_id" => "a51"
  },
  {
    "id" => "a513",
    "name" => "sensor a513",
    "mote_id" => "a51"
  },
  {
    "id" => "a514",
    "name" => "sensor a514",
    "mote_id" => "a51"
  },
  {
    "id" => "a515",
    "name" => "sensor a515",
    "mote_id" => "a51"
  },
  {
    "id" => "a411",
    "name" => "sensor a411",
    "mote_id" => "a41"
  },
  {
    "id" => "a412",
    "name" => "sensor a412",
    "mote_id" => "a41"
  },
  {
    "id" => "a413",
    "name" => "sensor a413",
    "mote_id" => "a41"
  },
  {
    "id" => "a414",
    "name" => "sensor a414",
    "mote_id" => "a41"
  },
  {
    "id" => "a911",
    "name" => "sensor a911",
    "mote_id" => "a91"
  },
  {
    "id" => "a912",
    "name" => "sensor a912",
    "mote_id" => "a91"
  },
  {
    "id" => "a913",
    "name" => "sensor a913",
    "mote_id" => "a91"
  },
  {
    "id" => "a914",
    "name" => "sensor a914",
    "mote_id" => "a91"
  },
  {
    "id" => "a915",
    "name" => "sensor a915",
    "mote_id" => "a91"
  },
  {
    "id" => "b111",
    "name" => "sensor b111",
    "mote_id" => "b11"
  },
  {
    "id" => "b112",
    "name" => "sensor b112",
    "mote_id" => "b11"
  },
  {
    "id" => "b113",
    "name" => "sensor b113",
    "mote_id" => "b11"
  }
])

db["measures"].insert_many([
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470000000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470000200000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470000400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470000600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470000800000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470001000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470001200000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470001400000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470001600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470001800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470002000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470002200000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470002400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470002600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470002800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470003000000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470003200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470003400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470003600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470003800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470004000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470004200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470004400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470004600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470004800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470005000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470005200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470005400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470005600000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470005800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470006000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470006200000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470006400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470006600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470006800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470007000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470007200000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470007400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470007600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470007800000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470008000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470008200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470008400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470008600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470008800000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470009000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470009200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470009400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470009600000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470009800000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470010000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470010200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470010400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470010600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470010800000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470011000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470011200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470011400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470011600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470011800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470012000000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470012200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470012400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470012600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470012800000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470013000000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470013200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470013400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470013600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470013800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470014000000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470014200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470014400000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470014600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470014800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470015000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470015200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470015400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470015600000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470015800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470016000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470016200000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470016400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470016600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470016800000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470017000000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470017200000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470017400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470017600000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470017800000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470018000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470018200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470018400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470018600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470018800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470019000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470019200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470019400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470019600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a911",
    "time" => Time.at(1470019800000).utc.to_datetime,
    "value" => 7.9
  },

  {
    "sensor_id" => "a915",
    "time" => Time.at(1470000000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470000200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470000400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470000600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470000800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470001000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470001200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470001400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470001600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470001800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470002000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470002200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470002400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470002600000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470002800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470003000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470003200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470003400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470003600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470003800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470004000000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470004200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470004400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470004600000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470004800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470005000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470005200000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470005400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470005600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470005800000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470006000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470006200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470006400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470006600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470006800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470007000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470007200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470007400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470007600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470007800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470008000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470008200000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470008400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470008600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470008800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470009000000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470009200000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470009400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470009600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470009800000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470010000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470010200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470010400000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470010600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470010800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470011000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470011200000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470011400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470011600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470011800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470012000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470012200000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470012400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470012600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470012800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470013000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470013200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470013400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470013600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470013800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470014000000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470014200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470014400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470014600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470014800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470015000000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470015200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470015400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470015600000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470015800000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470016000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470016200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470016400000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470016600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470016800000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470017000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470017200000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470017400000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470017600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470017800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470018000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470018200000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470018400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470018600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470018800000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470019000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470019200000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470019400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470019600000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a915",
    "time" => Time.at(1470019800000).utc.to_datetime,
    "value" => 2.7
  },

  {
    "sensor_id" => "a511",
    "time" => Time.at(1470000000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470000200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470000400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470000600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470000800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470001000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470001200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470001400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470001600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470001800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470002000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470002200000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470002400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470002600000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470002800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470003000000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470003200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470003400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470003600000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470003800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470004000000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470004200000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470004400000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470004600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470004800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470005000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470005200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470005400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470005600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470005800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470006000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470006200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470006400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470006600000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470006800000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470007000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470007200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470007400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470007600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470007800000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470008000000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470008200000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470008400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470008600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470008800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470009000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470009200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470009400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470009600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470009800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470010000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470010200000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470010400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470010600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470010800000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470011000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470011200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470011400000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470011600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470011800000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470012000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470012200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470012400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470012600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470012800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470013000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470013200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470013400000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470013600000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470013800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470014000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470014200000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470014400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470014600000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470014800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470015000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470015200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470015400000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470015600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470015800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470016000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470016200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470016400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470016600000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470016800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470017000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470017200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470017400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470017600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470017800000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470018000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470018200000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470018400000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470018600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470018800000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470019000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470019200000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470019400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470019600000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a511",
    "time" => Time.at(1470019800000).utc.to_datetime,
    "value" => 4.1
  },

  {
    "sensor_id" => "a514",
    "time" => Time.at(1470000000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470000200000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470000400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470000600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470000800000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470001000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470001200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470001400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470001600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470001800000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470002000000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470002200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470002400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470002600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470002800000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470003000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470003200000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470003400000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470003600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470003800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470004000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470004200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470004400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470004600000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470004800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470005000000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470005200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470005400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470005600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470005800000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470006000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470006200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470006400000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470006600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470006800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470007000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470007200000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470007400000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470007600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470007800000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470008000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470008200000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470008400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470008600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470008800000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470009000000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470009200000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470009400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470009600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470009800000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470010000000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470010200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470010400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470010600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470010800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470011000000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470011200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470011400000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470011600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470011800000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470012000000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470012200000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470012400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470012600000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470012800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470013000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470013200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470013400000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470013600000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470013800000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470014000000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470014200000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470014400000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470014600000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470014800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470015000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470015200000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470015400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470015600000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470015800000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470016000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470016200000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470016400000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470016600000).utc.to_datetime,
    "value" => 4.1
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470016800000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470017000000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470017200000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470017400000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470017600000).utc.to_datetime,
    "value" => 3.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470017800000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470018000000).utc.to_datetime,
    "value" => 5.6
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470018200000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470018400000).utc.to_datetime,
    "value" => 2.7
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470018600000).utc.to_datetime,
    "value" => 5.0
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470018800000).utc.to_datetime,
    "value" => 7.9
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470019000000).utc.to_datetime,
    "value" => 8.2
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470019200000).utc.to_datetime,
    "value" => 6.4
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470019400000).utc.to_datetime,
    "value" => 1.3
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470019600000).utc.to_datetime,
    "value" => 3.5
  },
  {
    "sensor_id" => "a514",
    "time" => Time.at(1470019800000).utc.to_datetime,
    "value" => 6.4
  }
])
