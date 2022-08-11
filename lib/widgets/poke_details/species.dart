import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class SpeciesList extends StatelessWidget {
  const SpeciesList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Species',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('HEIGHT: ${pokemonModel.height}m'),
                Text('WEIGHT: ${pokemonModel.weight}kg '),
              ]
          ),
      ]
    ),
        ),
    );
  }
}
