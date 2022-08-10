import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/item_model.dart';
import 'package:flutter_project_pokemon_codex/services/pokemon_service.dart';
import 'package:flutter_project_pokemon_codex/states/item_state.dart';

class IdItemCubit extends Cubit<ItemState> {
  IdItemCubit() : super(ItemLoading());

  Future<void> fetchItemById(String itemId) async {
    ItemService itemService = ItemService();

    emit(ItemLoading());

    try {
      ItemModel itemModel = await itemService.fetchItembyId(itemId);

      emit(ItemLoaded(itemModel: itemModel));
    } catch (e) {
      emit(ItemError(errorMsg: e.toString()));
    }
  }
}
