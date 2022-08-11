import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/evolution_model.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
import 'package:flutter_project_pokemon_codex/states/evolution_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/evolution_state.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/evolution_chain.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_ability_list.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_stats_list.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_type_list.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/species.dart';

class PokemonInformation extends StatelessWidget {
  const PokemonInformation(
      {required this.pokemonModel, required this.evolutionId, Key? key})
      : super(key: key);
  final String evolutionId;
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    IdEvolutionCubit cubitEvolution = BlocProvider.of<IdEvolutionCubit>(context)
      ..fetchEvolution(evolutionId);

    return Container(
      child: Stack(children: [
        Positioned(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Color.fromRGBO(107, 4, 4, 1.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemonModel.id}.png',
                          scale: 2,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '#${pokemonModel.id}',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${pokemonModel.name}',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        SpeciesList(pokemonModel: pokemonModel),
                        SizedBox(
                          height: 10,
                        ),
                        TypeList(pokemonModel: pokemonModel),
                        SizedBox(
                          height: 10,
                        ),
                        AbilityList(pokemonModel: pokemonModel),
                        SizedBox(
                          height: 10,
                        ),
                        StatList(pokemonModel: pokemonModel),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
