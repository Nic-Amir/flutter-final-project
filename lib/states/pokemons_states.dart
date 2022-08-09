import 'package:flutter_project_pokemon_codex/models/pokemons_model.dart';

abstract class PokemonsState {}

class PokemonsInitial extends PokemonsState {}

class PokemonsLoading extends PokemonsState {}

class PokemonsLoaded extends PokemonsState {
  final PokemonsModel pokemonsModel;

  PokemonsLoaded({required this.pokemonsModel});
}

class PokemonsError extends PokemonsState {
  final String errorMsg;

  PokemonsError({required this.errorMsg});
}
