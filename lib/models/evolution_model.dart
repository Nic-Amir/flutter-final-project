import 'dart:convert';

class EvolutionModel {
  EvolutionModel({
    required this.id,
    required this.babyTriggerItem,
    required this.chain,
  });

  final int id;
  final dynamic babyTriggerItem;
  final Chain chain;

  factory EvolutionModel.fromJson(String str) => EvolutionModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EvolutionModel.fromMap(Map<String, dynamic> json) => EvolutionModel(
    id: json["id"],
    babyTriggerItem: json["baby_trigger_item"],
    chain: Chain.fromMap(json["chain"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "baby_trigger_item": babyTriggerItem,
    "chain": chain.toMap(),
  };
}

class Chain {
  Chain({
    required this.isBaby,
    required this.species,
    required this.evolutionDetails,
    required this.evolvesTo,
  });

  final bool isBaby;
  final Species species;
  final List<EvolutionDetail> evolutionDetails;
  final List<Chain> evolvesTo;

  factory Chain.fromJson(String str) => Chain.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Chain.fromMap(Map<String, dynamic> json) => Chain(
    isBaby: json["is_baby"],
    species: Species.fromMap(json["species"]),
    evolutionDetails: List<EvolutionDetail>.from(json["evolution_details"].map((x) => EvolutionDetail.fromMap(x))),
    evolvesTo: List<Chain>.from(json["evolves_to"].map((x) => Chain.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "is_baby": isBaby,
    "species": species.toMap(),
    "evolution_details": evolutionDetails == null ? null : List<dynamic>.from(evolutionDetails.map((x) => x.toMap())),
    "evolves_to": List<dynamic>.from(evolvesTo.map((x) => x.toMap())),
  };
}

class EvolutionDetail {
  EvolutionDetail({
    required this.item,
    required this.trigger,
    required this.gender,
    required this.heldItem,
    required this.knownMove,
    required this.knownMoveType,
    required this.location,
    required this.minLevel,
    required this.minHappiness,
    required this.minBeauty,
    required this.minAffection,
    required this.needsOverworldRain,
    required this.partySpecies,
    required this.partyType,
    required this.relativePhysicalStats,
    required this.timeOfDay,
    required this.tradeSpecies,
    required this.turnUpsideDown,
  });

  final dynamic item;
  final Species trigger;
  final dynamic gender;
  final dynamic heldItem;
  final dynamic knownMove;
  final dynamic knownMoveType;
  final dynamic location;
  final int minLevel;
  final dynamic minHappiness;
  final dynamic minBeauty;
  final dynamic minAffection;
  final bool needsOverworldRain;
  final dynamic partySpecies;
  final dynamic partyType;
  final dynamic relativePhysicalStats;
  final String timeOfDay;
  final dynamic tradeSpecies;
  final bool turnUpsideDown;

  factory EvolutionDetail.fromJson(String str) => EvolutionDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EvolutionDetail.fromMap(Map<String, dynamic> json) => EvolutionDetail(
    item: json["item"],
    trigger: Species.fromMap(json["trigger"]),
    gender: json["gender"],
    heldItem: json["held_item"],
    knownMove: json["known_move"],
    knownMoveType: json["known_move_type"],
    location: json["location"],
    minLevel: json["min_level"],
    minHappiness: json["min_happiness"],
    minBeauty: json["min_beauty"],
    minAffection: json["min_affection"],
    needsOverworldRain: json["needs_overworld_rain"],
    partySpecies: json["party_species"],
    partyType: json["party_type"],
    relativePhysicalStats: json["relative_physical_stats"],
    timeOfDay: json["time_of_day"],
    tradeSpecies: json["trade_species"],
    turnUpsideDown: json["turn_upside_down"],
  );

  Map<String, dynamic> toMap() => {
    "item": item,
    "trigger": trigger.toMap(),
    "gender": gender,
    "held_item": heldItem,
    "known_move": knownMove,
    "known_move_type": knownMoveType,
    "location": location,
    "min_level": minLevel,
    "min_happiness": minHappiness,
    "min_beauty": minBeauty,
    "min_affection": minAffection,
    "needs_overworld_rain": needsOverworldRain,
    "party_species": partySpecies,
    "party_type": partyType,
    "relative_physical_stats": relativePhysicalStats,
    "time_of_day": timeOfDay,
    "trade_species": tradeSpecies,
    "turn_upside_down": turnUpsideDown,
  };
}

class Species {
  Species({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Species.fromJson(String str) => Species.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Species.fromMap(Map<String, dynamic> json) => Species(
    name: json["name"],
    url: json["url"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "url": url,
  };
}
