import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/item_model.dart';


class ItemInfo extends StatelessWidget {
  const ItemInfo({required this.itemModel, Key? key})
      : super(key: key);

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/${itemModel.name}.png',scale: 0.5,),
            ),
          Text('${itemModel.names[7].name}'),

        ],
      ),
    );
  }
}
