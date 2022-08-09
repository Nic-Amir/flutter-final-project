import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/pokemons_model.dart';
import 'package:flutter_project_pokemon_codex/services/pokemon_service.dart';
import 'package:flutter_project_pokemon_codex/states/pokemons_states.dart';

class PokemonsCubit extends Cubit<PokemonsState> {
  PokemonsCubit() : super(PokemonsLoading());

  Future<void> fetchPokemons() async {
    PokemonsService pokemonsService = PokemonsService();

    emit(PokemonsLoading());

    try {
      PokemonsModel pokemonsModel = await pokemonsService.fetchPokemons();

      emit(PokemonsLoaded(pokemonsModel: pokemonsModel));
    } catch (e) {
      emit(PokemonsError(errorMsg: e.toString()));
    }
  }
}
