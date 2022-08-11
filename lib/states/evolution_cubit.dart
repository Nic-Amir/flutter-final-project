import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/evolution_model.dart';
import 'package:flutter_project_pokemon_codex/services/pokemon_service.dart';
import 'package:flutter_project_pokemon_codex/states/evolution_state.dart';

class IdEvolutionCubit extends Cubit<EvolutionState> {
  IdEvolutionCubit() : super(EvolutionLoading());

  Future<void> fetchEvolution(String evolutionId) async {
    Evolution evolution = Evolution();

    emit(EvolutionLoading());

    try {
      EvolutionModel evolutionModel =
      await evolution.fetchEvolution(evolutionId);

      emit(EvolutionLoaded(evolutionModel: evolutionModel));
    } catch (e) {
      emit(EvolutionError(errorMsg: e.toString()));
    }
  }
}
