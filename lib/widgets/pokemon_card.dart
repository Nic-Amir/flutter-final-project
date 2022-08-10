import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_states.dart';

import '../models/pokemons_model.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard(
      {required this.index, required this.pokemonsModel, Key? key})
      : super(key: key);
  final PokemonsModel pokemonsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: state.pokemonModel.types.first.type.name == "grass"
      //     ? Colors.greenAccent
      //     : state.pokemonModel.types.first.type.name == "fire"
      //         ? Colors.redAccent
      //         : state.pokemonModel.types.first.type.name == "water"
      //             ? Colors.blue
      //             : state.pokemonModel.types.first.type.name == "poison"
      //                 ? Colors.deepPurpleAccent
      //                 : state.pokemonModel.types.first.type.name ==
      //                         "electric"
      //                     ? Colors.amber
      //                     : state.pokemonModel.types.first.type.name ==
      //                             "rock"
      //                         ? Colors.grey
      //                         : state.pokemonModel.types.first.type
      //                                     .name ==
      //                                 "ground"
      //                             ? Colors.brown
      //                             : state.pokemonModel.types.first.type
      //                                         .name ==
      //                                     "psychic"
      //                                 ? Colors.indigo
      //                                 : state.pokemonModel.types.first
      //                                             .type.name ==
      //                                         "fighting"
      //                                     ? Colors.orange
      //                                     : state.pokemonModel.types.first
      //                                                 .type.name ==
      //                                             "bug"
      //                                         ? Colors.lightGreenAccent
      //                                         : state
      //                                                     .pokemonModel
      //                                                     .types
      //                                                     .first
      //                                                     .type
      //                                                     .name ==
      //                                                 "ghost"
      //                                             ? Colors.deepPurple
      //                                             : state
      //                                                         .pokemonModel
      //                                                         .types
      //                                                         .first
      //                                                         .type
      //                                                         .name ==
      //                                                     "normal"
      //                                                 ? Colors.black26
      //                                                 : Colors.pink,
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed('/poke-details', arguments: (index + 1).toString());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index + 1}.png',
                scale: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/${index + 1}.gif',
                    height: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${pokemonsModel.results[index].name}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
