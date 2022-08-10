import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/pages/pokemon_item_detail.dart';


class ItemDetailsParam extends StatelessWidget {
  const ItemDetailsParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String itemId = ModalRoute.of(context)!.settings.arguments as String;
    return ItemDetails(itemId: itemId,);
  }
}
