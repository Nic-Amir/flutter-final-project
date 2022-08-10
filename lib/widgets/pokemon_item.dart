import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/items_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({required this.itemsModel, Key? key}) : super(key: key);

  final Result itemsModel;

  @override
  Widget build(BuildContext context) {
    final rgx = RegExp(r'/([\d]+)[/]{0,1}$');
    final String id = rgx.firstMatch(itemsModel.url)?.group(1) ?? "1";

    return Card(
        child: GridTile(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/${itemsModel.name}.png',
            scale: 0.5,
          ),
          Text('${itemsModel.name}'),
        ],
      ),
    ));
  }
}
