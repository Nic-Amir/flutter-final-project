import 'package:flutter_project_pokemon_codex/models/item_model.dart';

abstract class ItemState {}

class ItemInitial extends ItemState {}

class ItemLoading extends ItemState {}

class ItemLoaded extends ItemState {
  final ItemModel itemModel;

  ItemLoaded({required this.itemModel});
}

class ItemError extends ItemState {
  final String errorMsg;

  ItemError({required this.errorMsg});
}
