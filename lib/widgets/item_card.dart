//
// import 'package:flutter/material.dart';
// import 'package:flutter_project_pokemon_codex/models/items_model.dart';
//
// class ItemCard extends StatelessWidget {
//   const ItemCard({required this.index, required this.itemsModel, Key? key})
//       : super(key: key);
//
//   final ItemsModel itemsModel;
//   final int index;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: GridTile(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Image.network(
//               'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/${itemsModel.results[index].name}.png'),
//           Text('${itemsModel.results[index].name}'),
//         ],
//       ),
//     ));
//   }
// }
