import 'package:flutter_project_pokemon_codex/models/items_model.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
import 'package:flutter_project_pokemon_codex/models/pokemons_model.dart';
import 'package:http/http.dart' as http;

import '../models/item_model.dart';

class PokemonService {
  Future<PokemonModel> fetchPokeInfoById(String pokeId) async {
    final Uri pokeUrl = Uri(
      scheme: 'https',
      host: 'pokeapi.co',
      path: 'api/v2/pokemon/$pokeId',
    );

    http.Response response = await http.get(pokeUrl);

    if (response.statusCode == 200) {
      return PokemonModel.fromJson(response.body);
    } else {
      throw Exception('error error error please try again');
    }
  }
}

class PokemonsService {
  Future<PokemonsModel> fetchPokemons() async {
    final Uri pokeUrl = Uri(
      scheme: 'https',
      host: 'pokeapi.co',
      path: 'api/v2/pokemon/',
      queryParameters: {
        'limit': '2000',
        'offset': '0',
      },
    );

    http.Response response = await http.get(pokeUrl);

    if (response.statusCode == 200) {
      return PokemonsModel.fromJson(response.body);
    } else {
      throw Exception('error error error please try again');
    }
  }
}

class ItemService {
  Future<ItemModel> fetchItembyId(String itemId) async {
    final Uri itemUrl = Uri(
      scheme: 'https',
      host: 'pokeapi.co',
      path: 'api/v2/item/$itemId',
    );

    http.Response response = await http.get(itemUrl);

    if (response.statusCode == 200) {
      return ItemModel.fromJson(response.body);
    } else {
      throw Exception('error error error please try again');
    }
  }
}

class ItemsService {
  Future<ItemsModel> fetchItems() async {
    final Uri itemUrl = Uri(
      scheme: 'https',
      host: 'pokeapi.co',
      path: 'api/v2/item/',
      queryParameters: {
        'limit': '2000',
        'offset': '0',
      },
    );

    http.Response response = await http.get(itemUrl);

    if (response.statusCode == 200) {
      return ItemsModel.fromJson(response.body);
    } else {
      throw Exception('error error error please try again');
    }
  }
}
