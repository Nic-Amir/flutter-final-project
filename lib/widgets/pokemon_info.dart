import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_stats_list.dart';

// import '../models/pokemon/stats.dart';

class PokemonInformation extends StatelessWidget {
  const PokemonInformation({required this.pokemonModel, Key? key})
      : super(key: key);

  final PokemonModel pokemonModel;
  // late Future<List<Stat>> stats;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemonModel.id}.png',
            height: 200,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                '#${pokemonModel.id}',
              style: TextStyle(
                fontSize: 12,
              ),),
              Text('${pokemonModel.name}')
            ]),
          SizedBox(
            height: 20,
          ),
          Text('Species'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('HEIGHT: ${pokemonModel.height}m'),
              Text('WEIGHT: ${pokemonModel.weight}kg '),
            ],
          ),
          Row(
            children: [
              Text('TYPE:'),
              Text('${pokemonModel.types.first.type.name}'),
              Text(' ${pokemonModel.types.last.type.name}'),
            ],
          ),
          Row(
            children:[
              Text('Abilities:'),
              Text(' ${pokemonModel.abilities.first.ability.name}'),
              Text(' ${pokemonModel.abilities.last.ability.name}'),
            ]
          ),
          Column(
            children: [
              StatList(pokemonModel: pokemonModel),
            ],
          ),
        ],
      ),
    );
  }
}
