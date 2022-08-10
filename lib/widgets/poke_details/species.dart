import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class SpeciesList extends StatelessWidget {
  const SpeciesList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Species'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('HEIGHT: ${pokemonModel.height}m'),
              Text('WEIGHT: ${pokemonModel.weight}kg '),
            ]
        ),
      ]
    ),
    );
  }
}
