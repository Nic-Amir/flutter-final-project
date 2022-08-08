import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
import 'package:http/http.dart' as http;

class PokemonService {
  Future<PokemonModel> fetchPokeInfoById(String pokeId) async {
    final Uri pokeUrl = Uri(
      scheme: 'https',
      host: 'pokeapi.co',
      path: 'api/v2/pokemon/$pokeId',);

    http.Response response = await http.get(pokeUrl);

    if (response.statusCode == 200) {
      return PokemonModel.fromJson(response.body);
    } else {
      throw Exception('error error error please try again');
    }
  }
}