import 'package:flutter_project_pokemon_codex/models/evolution_model.dart';

abstract class EvolutionState {}

class EvolutionInitial extends EvolutionState {}

class EvolutionLoading extends EvolutionState {}

class EvolutionLoaded extends EvolutionState {
  final EvolutionModel evolutionModel;

  EvolutionLoaded({required this.evolutionModel});
}

class EvolutionError extends EvolutionState {
  final String errorMsg;

  EvolutionError({required this.errorMsg});
}
