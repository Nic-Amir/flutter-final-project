
import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/items_model.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({required this.index, required this.itemsModel, Key? key})
      : super(key: key);

  final ItemsModel itemsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: GridTile(

          child: GestureDetector(
            onTap: (){
              Navigator.of(context)
                  .pushNamed('/item-details', arguments: (index+1).toString());
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/${itemsModel.results[index].name}.png', scale: 0.5,),
                Text('${itemsModel.results[index].name}'),
              ],
            ),
          ),
        )
    );
  }
}
