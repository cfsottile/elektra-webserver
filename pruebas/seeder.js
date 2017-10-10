db.places.insert([
  {
    "id": "a5",
    "name": "Aula 5",
  },
  {
    "id": "a11",
    "name": "Aula 11",
  },
  {
    "id": "a9",
    "name": "Aula 9",
  },
  {
    "id": "a4",
    "name": "Aula 4",
  },
  {
    "id": "b1",
    "name": "Biblioteca",
  },
]);

db.motes.insert([
  {
    "id": "a51",
    "name": "Mota en aula 5",
    "location": "a5",
    "sensors": [],
  },
  {
    "id": "a41",
    "name": "Mota en aula 4",
    "location": "a4",
    "sensors": [],
  },
  {
    "id": "a91",
    "name": "Mota en aula 9",
    "location": "a9",
    "sensors": [],
  },
  {
    "id": "b11",
    "name": "Mota en biblioteca",
    "location": "b1",
    "sensors": [],
  },
]);

db.sensor_types.insert([
  {
    "id": "0",
    "name": "electricity",
    "relation": 1.2, // transformation from measure value to real world value
  },
  {
    "id": "1",
    "name": "light",
    "relation": 1.3, // transformation from measure value to real world value
  },
]);

db.sensors.insert([
  {
    "id": "a511",
    "mote": "a51",
    "type": "0",
  },
  {
    "id": "a512",
    "mote": "a51",
    "type": "0",
  },
  {
    "id": "a513",
    "mote": "a51",
    "type": "0",
  },
  {
    "id": "a514",
    "mote": "a51",
    "type": "0",
  },
  {
    "id": "a515",
    "mote": "a51",
    "type": "1",
  },
  {
    "id": "a411",
    "mote": "a41",
    "type": "0",
  },
  {
    "id": "a412",
    "mote": "a41",
    "type": "0",
  },
  {
    "id": "a413",
    "mote": "a41",
    "type": "0",
  },
  {
    "id": "a414",
    "mote": "a41",
    "type": "1",
  },
  {
    "id": "a911",
    "mote": "a91",
    "type": "0",
  },
  {
    "id": "a912",
    "mote": "a91",
    "type": "0",
  },
  {
    "id": "a913",
    "mote": "a91",
    "type": "0",
  },
  {
    "id": "a914",
    "mote": "a91",
    "type": "0",
  },
  {
    "id": "a915",
    "mote": "a91",
    "type": "1",
  },
  {
    "id": "b111",
    "mote": "b11",
    "type": "0",
  },
  {
    "id": "b112",
    "mote": "b11",
    "type": "0",
  },
  {
    "id": "b113",
    "mote": "b11",
    "type": "1",
  },
]);

db.measures.insert([
  {
    "sensor": "a911",
    "time": new Date(1470000000000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470000200000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470000400000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470000600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470000800000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470001000000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470001200000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470001400000),
    "value": 8.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470001600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470001800000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470002000000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470002200000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470002400000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470002600000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470002800000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470003000000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470003200000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470003400000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470003600000),
    "value": 8.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470003800000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470004000000),
    "value": 8.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470004200000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470004400000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470004600000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470004800000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470005000000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470005200000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470005400000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470005600000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470005800000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470006000000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470006200000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470006400000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470006600000),
    "value": 8.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470006800000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470007000000),
    "value": 8.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470007200000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470007400000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470007600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470007800000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470008000000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470008200000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470008400000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470008600000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470008800000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470009000000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470009200000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470009400000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470009600000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470009800000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470010000000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470010200000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470010400000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470010600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470010800000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470011000000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470011200000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470011400000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470011600000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470011800000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470012000000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470012200000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470012400000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470012600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470012800000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470013000000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470013200000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470013400000),
    "value": 3.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470013600000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470013800000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470014000000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470014200000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470014400000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470014600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470014800000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470015000000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470015200000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470015400000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470015600000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470015800000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470016000000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470016200000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470016400000),
    "value": 6.4
  },
  {
    "sensor": "a911",
    "time": new Date(1470016600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470016800000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470017000000),
    "value": 1.3
  },
  {
    "sensor": "a911",
    "time": new Date(1470017200000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470017400000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470017600000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470017800000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470018000000),
    "value": 5.0
  },
  {
    "sensor": "a911",
    "time": new Date(1470018200000),
    "value": 8.2
  },
  {
    "sensor": "a911",
    "time": new Date(1470018400000),
    "value": 3.5
  },
  {
    "sensor": "a911",
    "time": new Date(1470018600000),
    "value": 5.6
  },
  {
    "sensor": "a911",
    "time": new Date(1470018800000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470019000000),
    "value": 4.1
  },
  {
    "sensor": "a911",
    "time": new Date(1470019200000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470019400000),
    "value": 7.9
  },
  {
    "sensor": "a911",
    "time": new Date(1470019600000),
    "value": 2.7
  },
  {
    "sensor": "a911",
    "time": new Date(1470019800000),
    "value": 7.9
  },

  {
    "sensor": "a915",
    "time": new Date(1470000000000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470000200000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470000400000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470000600000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470000800000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470001000000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470001200000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470001400000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470001600000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470001800000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470002000000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470002200000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470002400000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470002600000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470002800000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470003000000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470003200000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470003400000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470003600000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470003800000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470004000000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470004200000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470004400000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470004600000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470004800000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470005000000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470005200000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470005400000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470005600000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470005800000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470006000000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470006200000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470006400000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470006600000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470006800000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470007000000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470007200000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470007400000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470007600000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470007800000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470008000000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470008200000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470008400000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470008600000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470008800000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470009000000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470009200000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470009400000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470009600000),
    "value": 6.4
  },
  {
    "sensor": "a915",
    "time": new Date(1470009800000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470010000000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470010200000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470010400000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470010600000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470010800000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470011000000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470011200000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470011400000),
    "value": 6.4
  },
  {
    "sensor": "a915",
    "time": new Date(1470011600000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470011800000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470012000000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470012200000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470012400000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470012600000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470012800000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470013000000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470013200000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470013400000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470013600000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470013800000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470014000000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470014200000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470014400000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470014600000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470014800000),
    "value": 6.4
  },
  {
    "sensor": "a915",
    "time": new Date(1470015000000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470015200000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470015400000),
    "value": 1.3
  },
  {
    "sensor": "a915",
    "time": new Date(1470015600000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470015800000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470016000000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470016200000),
    "value": 4.1
  },
  {
    "sensor": "a915",
    "time": new Date(1470016400000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470016600000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470016800000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470017000000),
    "value": 8.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470017200000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470017400000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470017600000),
    "value": 6.4
  },
  {
    "sensor": "a915",
    "time": new Date(1470017800000),
    "value": 6.4
  },
  {
    "sensor": "a915",
    "time": new Date(1470018000000),
    "value": 7.9
  },
  {
    "sensor": "a915",
    "time": new Date(1470018200000),
    "value": 6.4
  },
  {
    "sensor": "a915",
    "time": new Date(1470018400000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470018600000),
    "value": 5.6
  },
  {
    "sensor": "a915",
    "time": new Date(1470018800000),
    "value": 2.7
  },
  {
    "sensor": "a915",
    "time": new Date(1470019000000),
    "value": 3.5
  },
  {
    "sensor": "a915",
    "time": new Date(1470019200000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470019400000),
    "value": 3.2
  },
  {
    "sensor": "a915",
    "time": new Date(1470019600000),
    "value": 5.0
  },
  {
    "sensor": "a915",
    "time": new Date(1470019800000),
    "value": 2.7
  },

  {
    "sensor": "a511",
    "time": new Date(1470000000000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470000200000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470000400000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470000600000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470000800000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470001000000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470001200000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470001400000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470001600000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470001800000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470002000000),
    "value": 5.0
  },
  {
    "sensor": "a511",
    "time": new Date(1470002200000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470002400000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470002600000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470002800000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470003000000),
    "value": 5.0
  },
  {
    "sensor": "a511",
    "time": new Date(1470003200000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470003400000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470003600000),
    "value": 5.0
  },
  {
    "sensor": "a511",
    "time": new Date(1470003800000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470004000000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470004200000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470004400000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470004600000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470004800000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470005000000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470005200000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470005400000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470005600000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470005800000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470006000000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470006200000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470006400000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470006600000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470006800000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470007000000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470007200000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470007400000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470007600000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470007800000),
    "value": 5.0
  },
  {
    "sensor": "a511",
    "time": new Date(1470008000000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470008200000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470008400000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470008600000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470008800000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470009000000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470009200000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470009400000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470009600000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470009800000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470010000000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470010200000),
    "value": 5.0
  },
  {
    "sensor": "a511",
    "time": new Date(1470010400000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470010600000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470010800000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470011000000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470011200000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470011400000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470011600000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470011800000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470012000000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470012200000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470012400000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470012600000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470012800000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470013000000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470013200000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470013400000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470013600000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470013800000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470014000000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470014200000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470014400000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470014600000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470014800000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470015000000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470015200000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470015400000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470015600000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470015800000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470016000000),
    "value": 2.7
  },
  {
    "sensor": "a511",
    "time": new Date(1470016200000),
    "value": 3.5
  },
  {
    "sensor": "a511",
    "time": new Date(1470016400000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470016600000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470016800000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470017000000),
    "value": 7.9
  },
  {
    "sensor": "a511",
    "time": new Date(1470017200000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470017400000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470017600000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470017800000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470018000000),
    "value": 8.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470018200000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470018400000),
    "value": 5.0
  },
  {
    "sensor": "a511",
    "time": new Date(1470018600000),
    "value": 6.4
  },
  {
    "sensor": "a511",
    "time": new Date(1470018800000),
    "value": 5.6
  },
  {
    "sensor": "a511",
    "time": new Date(1470019000000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470019200000),
    "value": 3.2
  },
  {
    "sensor": "a511",
    "time": new Date(1470019400000),
    "value": 1.3
  },
  {
    "sensor": "a511",
    "time": new Date(1470019600000),
    "value": 4.1
  },
  {
    "sensor": "a511",
    "time": new Date(1470019800000),
    "value": 4.1
  },

  {
    "sensor": "a514",
    "time": new Date(1470000000000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470000200000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470000400000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470000600000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470000800000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470001000000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470001200000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470001400000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470001600000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470001800000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470002000000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470002200000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470002400000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470002600000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470002800000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470003000000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470003200000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470003400000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470003600000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470003800000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470004000000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470004200000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470004400000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470004600000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470004800000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470005000000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470005200000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470005400000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470005600000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470005800000),
    "value": 5.6
  },
  {
    "sensor": "a514",
    "time": new Date(1470006000000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470006200000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470006400000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470006600000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470006800000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470007000000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470007200000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470007400000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470007600000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470007800000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470008000000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470008200000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470008400000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470008600000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470008800000),
    "value": 5.6
  },
  {
    "sensor": "a514",
    "time": new Date(1470009000000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470009200000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470009400000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470009600000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470009800000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470010000000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470010200000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470010400000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470010600000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470010800000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470011000000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470011200000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470011400000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470011600000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470011800000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470012000000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470012200000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470012400000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470012600000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470012800000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470013000000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470013200000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470013400000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470013600000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470013800000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470014000000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470014200000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470014400000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470014600000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470014800000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470015000000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470015200000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470015400000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470015600000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470015800000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470016000000),
    "value": 5.6
  },
  {
    "sensor": "a514",
    "time": new Date(1470016200000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470016400000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470016600000),
    "value": 4.1
  },
  {
    "sensor": "a514",
    "time": new Date(1470016800000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470017000000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470017200000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470017400000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470017600000),
    "value": 3.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470017800000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470018000000),
    "value": 5.6
  },
  {
    "sensor": "a514",
    "time": new Date(1470018200000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470018400000),
    "value": 2.7
  },
  {
    "sensor": "a514",
    "time": new Date(1470018600000),
    "value": 5.0
  },
  {
    "sensor": "a514",
    "time": new Date(1470018800000),
    "value": 7.9
  },
  {
    "sensor": "a514",
    "time": new Date(1470019000000),
    "value": 8.2
  },
  {
    "sensor": "a514",
    "time": new Date(1470019200000),
    "value": 6.4
  },
  {
    "sensor": "a514",
    "time": new Date(1470019400000),
    "value": 1.3
  },
  {
    "sensor": "a514",
    "time": new Date(1470019600000),
    "value": 3.5
  },
  {
    "sensor": "a514",
    "time": new Date(1470019800000),
    "value": 6.4
  },
]);
