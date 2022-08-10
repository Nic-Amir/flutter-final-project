import 'dart:convert';

class ItemModel {
  ItemModel({
    required this.attributes,
    required this.babyTriggerFor,
    required this.category,
    required this.cost,
    required this.effectEntries,
    required this.flavorTextEntries,
    required this.flingEffect,
    required this.flingPower,
    required this.gameIndices,
    required this.heldByPokemon,
    required this.id,
    required this.machines,
    required this.name,
    required this.names,
    required this.sprites,
  });

  final List<Category> attributes;
  final dynamic babyTriggerFor;
  final Category category;
  final int cost;
  final List<EffectEntry> effectEntries;
  final List<FlavorTextEntry> flavorTextEntries;
  final dynamic flingEffect;
  final dynamic flingPower;
  final List<GameIndex> gameIndices;
  final List<dynamic> heldByPokemon;
  final int id;
  final List<dynamic> machines;
  final String name;
  final List<Name> names;
  final Sprites sprites;

  factory ItemModel.fromJson(String str) => ItemModel.fromMap(json.decode(str));

  factory ItemModel.fromMap(Map<String, dynamic> json) => ItemModel(
        attributes: List<Category>.from(
            json["attributes"].map((x) => Category.fromMap(x))),
        babyTriggerFor: json["baby_trigger_for"],
        category: Category.fromMap(json["category"]),
        cost: json["cost"],
        effectEntries: List<EffectEntry>.from(
            json["effect_entries"].map((x) => EffectEntry.fromMap(x))),
        flavorTextEntries: List<FlavorTextEntry>.from(
            json["flavor_text_entries"].map((x) => FlavorTextEntry.fromMap(x))),
        flingEffect: json["fling_effect"],
        flingPower: json["fling_power"],
        gameIndices: List<GameIndex>.from(
            json["game_indices"].map((x) => GameIndex.fromMap(x))),
        heldByPokemon:
            List<dynamic>.from(json["held_by_pokemon"].map((x) => x)),
        id: json["id"],
        machines: List<dynamic>.from(json["machines"].map((x) => x)),
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromMap(x))),
        sprites: Sprites.fromMap(json["sprites"]),
      );
}

class Category {
  Category({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        name: json["name"],
        url: json["url"],
      );
}

class EffectEntry {
  EffectEntry({
    required this.effect,
    required this.language,
    required this.shortEffect,
  });

  final String effect;
  final Category language;
  final String shortEffect;

  factory EffectEntry.fromJson(String str) =>
      EffectEntry.fromMap(json.decode(str));

  factory EffectEntry.fromMap(Map<String, dynamic> json) => EffectEntry(
        effect: json["effect"],
        language: Category.fromMap(json["language"]),
        shortEffect: json["short_effect"],
      );
}

class FlavorTextEntry {
  FlavorTextEntry({
    required this.language,
    required this.text,
    required this.versionGroup,
  });

  final Category language;
  final String text;
  final Category versionGroup;

  factory FlavorTextEntry.fromJson(String str) =>
      FlavorTextEntry.fromMap(json.decode(str));

  factory FlavorTextEntry.fromMap(Map<String, dynamic> json) => FlavorTextEntry(
        language: Category.fromMap(json["language"]),
        text: json["text"],
        versionGroup: Category.fromMap(json["version_group"]),
      );
}

class GameIndex {
  GameIndex({
    required this.gameIndex,
    required this.generation,
  });

  final int gameIndex;
  final Category generation;

  factory GameIndex.fromJson(String str) => GameIndex.fromMap(json.decode(str));

  factory GameIndex.fromMap(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        generation: Category.fromMap(json["generation"]),
      );
}

class Name {
  Name({
    required this.language,
    required this.name,
  });

  final Category language;
  final String name;

  factory Name.fromJson(String str) => Name.fromMap(json.decode(str));

  factory Name.fromMap(Map<String, dynamic> json) => Name(
        language: Category.fromMap(json["language"]),
        name: json["name"],
      );
}

class Sprites {
  Sprites({
    required this.spritesDefault,
  });

  final String spritesDefault;

  factory Sprites.fromJson(String str) => Sprites.fromMap(json.decode(str));

  factory Sprites.fromMap(Map<String, dynamic> json) => Sprites(
        spritesDefault: json["default"],
      );
}
