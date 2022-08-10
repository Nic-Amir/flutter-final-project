import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/items_model.dart';
import 'package:flutter_project_pokemon_codex/services/pokemon_service.dart';
import 'package:flutter_project_pokemon_codex/states/items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit() : super(ItemsLoading());

  Future<void> fetchItems() async {
    ItemsService itemsService = ItemsService();

    emit(ItemsLoading());

    try {
      ItemsModel itemsModel = await itemsService.fetchItems();

      emit(ItemsLoaded(itemsModel: itemsModel));
    } catch (e) {
      emit(ItemsError(errorMsg: e.toString()));
    }
  }
}
