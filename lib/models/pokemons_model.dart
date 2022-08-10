import 'dart:convert';

class PokemonsModel {
  PokemonsModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  final int count;
  final dynamic next;
  final dynamic previous;
  final List<PokeResult> results;

  factory PokemonsModel.fromJson(String str) =>
      PokemonsModel.fromMap(json.decode(str));

  factory PokemonsModel.fromMap(Map<String, dynamic> json) => PokemonsModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<PokeResult>.from(
            json["results"].map((x) => PokeResult.fromMap(x))),
      );
}

class PokeResult {
  PokeResult({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory PokeResult.fromJson(String str) =>
      PokeResult.fromMap(json.decode(str));

  factory PokeResult.fromMap(Map<String, dynamic> json) => PokeResult(
        name: json["name"],
        url: json["url"],
      );
}
