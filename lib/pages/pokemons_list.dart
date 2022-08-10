import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/states/pokemons_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/pokemons_states.dart';
import 'package:flutter_project_pokemon_codex/widgets/pokemon_card.dart';

class PokemonList extends StatelessWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PokemonsCubit cubit = BlocProvider.of<PokemonsCubit>(context)
      ..fetchPokemons();
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon Codex'),
        ),
        body: BlocBuilder<PokemonsCubit, PokemonsState>(
          bloc: cubit,
          builder: ((context, state) {
            if (state is PokemonsLoading) {
              return Center(child: const CircularProgressIndicator());
            }
            if (state is PokemonsLoaded) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: state.pokemonsModel.count,
                  itemBuilder: ((context, index) {
                    return PokemonCard(
                      pokemonsModel: state.pokemonsModel,
                      index: index,
                    );
                  }));
            }
            return Text(
                state is PokemonsError ? state.errorMsg : 'Unknown Error');
          }),
        ));
  }
}
