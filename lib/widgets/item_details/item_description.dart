import 'package:flutter/material.dart';

import '../../models/item_model.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({ required this.itemModel,Key? key}) : super(key: key);
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
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(itemModel.flavorTextEntries.first.text)

          ]),
        ),
      ),
    );
  }
}
