import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../states/pokemon_cubit.dart';
import '../states/pokemon_states.dart';
import '../widgets/pokemon_info.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({required this.pokeId, Key? key}) : super(key: key);

  final String pokeId;

  void navigatePokeDex(BuildContext context) {
    Navigator.of(context).pushNamed('/poke-list');
  }

  @override
  Widget build(BuildContext context) {
    IdPokemonCubit cubit = BlocProvider.of<IdPokemonCubit>(context)
      ..fetchPokemonById(pokeId);

    return Center(
      child: BlocBuilder<IdPokemonCubit, PokemonState>(
          bloc: cubit,
          builder: (context, state) {
            if (state is PokemonLoading) {
              return Center(child: const CircularProgressIndicator());
            }
            if (state is PokemonLoaded) {
              return Scaffold(
                  appBar: AppBar(
                    title: Text('${state.pokemonModel.name.toUpperCase()}'),
                    backgroundColor: state.pokemonModel.types.first.type.name ==
                            "grass"
                        ? Colors.greenAccent.shade400
                        : state.pokemonModel.types.first.type.name == "fire"
                            ? Colors.redAccent.shade400
                            : state.pokemonModel.types.first.type.name ==
                                    "water"
                                ? Colors.blue.shade300
                                : state.pokemonModel.types.first.type.name ==
                                        "poison"
                                    ? Colors.deepPurpleAccent.shade400
                                    : state.pokemonModel.types.first.type.name ==
                                            "electric"
                                        ? Colors.amber.shade300
                                        : state.pokemonModel.types.first.type.name ==
                                                "rock"
                                            ? Colors.grey.shade300
                                            : state.pokemonModel.types.first.type.name ==
                                                    "ground"
                                                ? Colors.brown.shade300
                                                : state.pokemonModel.types.first
                                                            .type.name ==
                                                        "psychic"
                                                    ? Colors.indigo.shade300
                                                    : state
                                                                .pokemonModel
                                                                .types
                                                                .first
                                                                .type
                                                                .name ==
                                                            "fighting"
                                                        ? Colors.orange.shade300
                                                        : state
                                                                    .pokemonModel
                                                                    .types
                                                                    .first
                                                                    .type
                                                                    .name ==
                                                                "bug"
                                                            ? Colors
                                                                .lightGreenAccent
                                                                .shade400
                                                            : state
                                                                        .pokemonModel
                                                                        .types
                                                                        .first
                                                                        .type
                                                                        .name ==
                                                                    "ghost"
                                                                ? Colors
                                                                    .deepPurple
                                                                    .shade300
                                                                : state.pokemonModel.types.first.type.name == "normal"
                                                                    ? Colors.black26
                                                                    : Colors.pink.shade300,
                  ),
                  body: Center(
                      child: PokemonInformation(
                    pokemonModel: state.pokemonModel,
                  )));
            }
            return Text(
                state is PokemonError ? state.errorMsg : 'Unknown error');
          }),
    );
  }
}
