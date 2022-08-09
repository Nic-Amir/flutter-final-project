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
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemonModel.id}.png',
          height: 200,),
          Text('${pokemonModel.id}'),
          Text('${pokemonModel.name}'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Text('HEIGHT: ${pokemonModel.height}m'),
              Text('WEIGHT: ${pokemonModel.weight}kg '),
              Text('TYPE:'),
              Text('${pokemonModel.types.first.type.name}')
            ],
          ),
          Container(
            child: Text('Abilities: ${pokemonModel.abilities.}'),
          )
        ],
      ),
    );
  }
}
