import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoading extends PokemonState {}

class PokemonLoaded extends PokemonState {
  final PokemonModel pokemonModel;

  PokemonLoaded({required this.pokemonModel});
}

class PokemonError extends PokemonState {
  final String errorMsg;

  PokemonError({required this.errorMsg});
}
