import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class AbilityList extends StatelessWidget {
  const AbilityList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
          Text('Ability'),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: pokemonModel.abilities.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(pokemonModel.abilities[index].ability.name),
                    ],
                  );
                }),
          )
        ]));
  }
}