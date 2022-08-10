// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_project_pokemon_codex/states/items_cubit.dart';
// import 'package:flutter_project_pokemon_codex/states/items_state.dart';
// import 'package:flutter_project_pokemon_codex/widgets/item_card.dart';
//
// class ItemList extends StatelessWidget {
//   const ItemList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     ItemsCubit cubit = BlocProvider.of<ItemsCubit>(context)..fetchItems();
//
//     return BlocBuilder(
//         bloc: cubit,
//         builder: ((context, state) {
//           if (state is ItemsLoading) {
//             return Center(child: const CircularProgressIndicator());
//           }
//
//           if (state is ItemsLoaded) {
//             return Scaffold(
//               appBar: AppBar(
//                 title: Text('Items Codex'),
//               ),
//               body: GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 4),
//                   itemCount: state.itemsModel.count,
//                   itemBuilder: ((context, index) {
//                     return ItemCard(
//                       itemsModel: state.itemsModel,
//                       index: index,
//                     );
//                   })),
//             );
//           }
//
//           return Text(state is ItemsError ? state.errorMsg : 'Unknown Error');
//         }));
//   }
// }
