import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/states/item_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/item_state.dart';
import 'package:flutter_project_pokemon_codex/widgets/pokemon_item_card.dart';
import 'package:flutter_project_pokemon_codex/widgets/pokemon_item_info.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({required this.itemId, Key? key}) : super(key: key);

  final String itemId;

  void navigateItem(BuildContext context) {
    Navigator.of(context).pushNamed('/item-list');
  }

  @override
  Widget build(BuildContext context) {
    IdItemCubit cubit = BlocProvider.of<IdItemCubit>(context)
      ..fetchItemById(itemId);

    return Scaffold(
        appBar: AppBar(
          title: Text('Item Details'),
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: BlocBuilder<IdItemCubit, ItemState>(
              bloc: cubit,
              builder: (context, state) {
                if (state is ItemLoading) {
                  return Center(child: const CircularProgressIndicator());
                }
                if (state is ItemLoaded) {
                  return ItemInfo(itemModel: state.itemModel);
                }
                return Text(
                    state is ItemError ? state.errorMsg : 'Unknown error');
              }),
        ));
  }
}
