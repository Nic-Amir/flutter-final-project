import 'dart:convert';

import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class Ability {
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  final Species ability;
  final bool isHidden;
  final int slot;

  factory Ability.fromJson(String str) => Ability.fromMap(json.decode(str));

  factory Ability.fromMap(Map<String, dynamic> json) => Ability(
    ability: Species.fromMap(json["ability"]),
    isHidden: json["is_hidden"],
    slot: json["slot"],
  );
}