import 'package:flutter/material.dart';

import '../../models/item_model.dart';

class ItemEffect extends StatelessWidget {
  const ItemEffect({ required this.itemModel,Key? key}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Text(
            'Effect',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Text(itemModel.effectEntries.first.effect)

        ]),
      ),
    );
  }
}