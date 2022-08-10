import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/items_model.dart';
import 'package:flutter_project_pokemon_codex/states/items_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/items_state.dart';
import 'package:flutter_project_pokemon_codex/widgets/pokemon_item_card.dart';

class ItemList extends StatefulWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<String> items = List.empty(growable: true);
  late TextEditingController controller;
  bool get canSelectMore => items.length < 2;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    ItemsCubit cubit = BlocProvider.of<ItemsCubit>(context)..fetchItems();
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Codex'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (_) {
              setState(() {});
            },
            controller: controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search Item',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(color: Colors.blueAccent),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<ItemsCubit, ItemsState>(
                bloc: cubit,
                builder: (((context, state) {
                  if (state is ItemsLoading) {
                    return Center(child: const CircularProgressIndicator());
                  }
                  if (state is ItemsLoaded) {
                    List<Result> toRender = controller.text.isNotEmpty
                        ? List.from(state.itemsModel.results.expand((element) {
                            if (element.name.contains(controller.text)) {
                              return [element];
                            }
                            return <Result>[];
                          }))
                        : (state.itemsModel.results);

                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemCount: toRender.length,
                        itemBuilder: ((context, index) {
                          return ItemCard(
                            itemsModel: toRender[index],
                          );
                        }));
                  }

                  return Text(
                      state is ItemsError ? state.errorMsg : 'Unknown Error');
                }))),
          ),
        ],
      ),
    );
  }
}
