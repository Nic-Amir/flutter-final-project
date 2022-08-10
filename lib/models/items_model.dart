import 'dart:convert';

class ItemsModel {
  ItemsModel({
    required this.count,
    required this.results,
  });

  final int count;

  final List<Result> results;

  factory ItemsModel.fromJson(String str) =>
      ItemsModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ItemsModel.fromMap(Map<String, dynamic> json) => ItemsModel(
        count: json["count"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "count": count,
        "results": List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

class Result {
  Result({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "url": url,
      };
}
