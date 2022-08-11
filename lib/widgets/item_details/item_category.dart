import 'package:flutter/material.dart';

import '../../models/item_model.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({ required this.itemModel,Key? key}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.cyan,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Text(
              'Category',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(itemModel.category.name)

          ]),
        ),
      ),
    );
  }
}