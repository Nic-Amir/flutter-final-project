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

    return Scaffold(
        appBar: AppBar(
          title: Text('Poke Details'),
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: BlocBuilder<IdPokemonCubit, PokemonState>(
              bloc: cubit,
              builder: (context, state) {
                if (state is PokemonLoading) {
                  return Center(child: const CircularProgressIndicator());
                }
                if (state is PokemonLoaded) {
                  return PokemonInformation(pokemonModel: state.pokemonModel);
                }
                return Text(
                    state is PokemonError ? state.errorMsg : 'Unknown error');
              }),
        ));
  }
}
