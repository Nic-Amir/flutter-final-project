import 'dart:convert';

class PokemonModel {
  PokemonModel({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  final List<dynamic> abilities;
  final int baseExperience;
  final List<Form> forms;
  final List<dynamic> gameIndices;
  final int height;
  final List<dynamic> heldItems;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final List<dynamic> moves;
  final String name;
  final int order;
  final List<PastType> pastTypes;
  final Species species;
  final Species sprites;
  final List<Stat> stats;
  final List<Type> types;
  final int weight;

  factory PokemonModel.fromJson(String str) =>
      PokemonModel.fromMap(json.decode(str));

  factory PokemonModel.fromMap(Map<String, dynamic> json) => PokemonModel(
        abilities: List<dynamic>.from(json["abilities"].map((x) => x)),
        baseExperience: json["base_experience"],
        forms: List<Form>.from(json["forms"].map((x) => Form.fromMap(x))),
        gameIndices: List<dynamic>.from(json["game_indices"].map((x) => x)),
        height: json["height"],
        heldItems: List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<dynamic>.from(json["moves"].map((x) => x)),
        name: json["name"],
        order: json["order"],
        pastTypes: List<PastType>.from(
            json["past_types"].map((x) => PastType.fromMap(x))),
        species: Species.fromMap(json["species"]),
        sprites: Species.fromMap(json["sprites"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromMap(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromMap(x))),
        weight: json["weight"],
      );
}

class Form {
  Form({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Form.fromJson(String str) => Form.fromMap(json.decode(str));

  factory Form.fromMap(Map<String, dynamic> json) => Form(
        name: json["name"],
        url: json["url"],
      );
}

class PastType {
  PastType({
    required this.generation,
    required this.types,
  });

  final Form generation;
  final List<Type> types;

  factory PastType.fromJson(String str) => PastType.fromMap(json.decode(str));

  factory PastType.fromMap(Map<String, dynamic> json) => PastType(
        generation: Form.fromMap(json["generation"]),
        types: List<Type>.from(json["types"].map((x) => Type.fromMap(x))),
      );
}

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  final int slot;
  final Form type;

  factory Type.fromJson(String str) => Type.fromMap(json.decode(str));

  factory Type.fromMap(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Form.fromMap(json["type"]),
      );
}

class Species {
  Species();

  factory Species.fromJson(String str) => Species.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Species.fromMap(Map<String, dynamic> json) => Species();

  Map<String, dynamic> toMap() => {};
}

class Stat {
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  final int baseStat;
  final int effort;
  final Form stat;

  factory Stat.fromJson(String str) => Stat.fromMap(json.decode(str));

  factory Stat.fromMap(Map<String, dynamic> json) => Stat(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: Form.fromMap(json["stat"]),
      );
}
