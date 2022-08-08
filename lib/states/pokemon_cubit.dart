import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/services/pokemon_service.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_states.dart';

import '../models/pokemon_model.dart';

class IdPokemonCubit extends Cubit<PokemonState> {
  IdPokemonCubit() : super(PokemonLoading());

  Future<void> fetchPokemonById(String pokeId) async {
    PokemonService pokemonService = PokemonService();

    emit(PokemonLoading());

    try {
      PokemonModel pokemonModel =
          await pokemonService.fetchPokeInfoById(pokeId);

      emit(PokemonLoaded(pokemonModel: pokemonModel));
    } catch (e) {
      emit(PokemonError(errorMsg: e.toString()));
    }
  }
}

class AllPokemonCubit extends Cubit<PokemonState> {
  AllPokemonCubit() : super(PokemonLoading());

  Future<void> fetchPokemons() async {
    PokemonService pokemonService = PokemonService();

    emit(PokemonLoading());

    try {
      PokemonModel pokemonModel = await pokemonService.fetchPokeInfo();

      emit(PokemonLoaded(pokemonModel: pokemonModel));
    } catch (e) {
      emit(PokemonError(errorMsg: e.toString()));
    }
  }
}
