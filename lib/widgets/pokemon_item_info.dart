import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/item_model.dart';
import 'package:flutter_project_pokemon_codex/widgets/item_details/item_category.dart';
import 'package:flutter_project_pokemon_codex/widgets/item_details/item_description.dart';
import 'package:flutter_project_pokemon_codex/widgets/item_details/item_effect.dart';


class ItemInfo extends StatelessWidget {
  const ItemInfo({required this.itemModel, Key? key})
      : super(key: key);

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListView(

      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/${itemModel.name}.png',scale: 0.3,),
                SizedBox(
                  height: 20,
                ),
                Text('${itemModel.names[7].name}', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 30,
                ),
                ItemDescription(itemModel: itemModel),
                SizedBox(
                  height: 10,
                ),
                ItemCategory(itemModel: itemModel),
                SizedBox(
                  height: 10,
                ),
                ItemEffect(itemModel: itemModel),

              ],
            ),
          ),
        )
      ],
    );
  }
}
