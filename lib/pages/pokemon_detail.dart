import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_cubit.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({required this.pokeId, Key? key}) : super(key: key);

  final String pokeId;
  
  @override
  Widget build(BuildContext context) {
    IdPokemonCubit cubit = BlocProvider.of<IdPokemonCubit>(context)..fetchPokemonById(pokeId)

    return Scaffold()
  }
}
