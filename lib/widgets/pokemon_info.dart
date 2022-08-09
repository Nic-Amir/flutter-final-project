import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class PokemonInformation extends StatelessWidget {
  const PokemonInformation({required this.pokemonModel, Key? key})
      : super(key: key);

  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemonModel.id}.png'),
          Text('${pokemonModel.name}'),
          SizedBox(
            height: 20,
          ),
          Text('${pokemonModel.height}'),
          SizedBox(
            height: 20,
          ),
          Text('${pokemonModel.weight}'),
          Text('here is the weight'),
          SizedBox(
            height: 20,
          ),
          Text('Types'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
