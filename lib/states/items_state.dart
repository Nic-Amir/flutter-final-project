import 'package:flutter_project_pokemon_codex/models/items_model.dart';

abstract class ItemsState {}

class ItemsInitial extends ItemsState {}

class ItemsLoading extends ItemsState {}

class ItemsLoaded extends ItemsState {
  final ItemsModel itemsModel;

  ItemsLoaded({required this.itemsModel});
}

class ItemsError extends ItemsState {
  final String errorMsg;

  ItemsError({required this.errorMsg});
}
