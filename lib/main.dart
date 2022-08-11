import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/pages/home_page.dart';
import 'package:flutter_project_pokemon_codex/pages/pokemon_detail_param.dart';
import 'package:flutter_project_pokemon_codex/pages/pokemon_item_detail_param.dart';
import 'package:flutter_project_pokemon_codex/pages/pokemon_list.dart';
import 'package:flutter_project_pokemon_codex/states/evolution_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/item_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/items_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/pokemons_cubit.dart';
import 'pages/pokemon_item_list.dart';

void main() {
  runApp(const MyApp());
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => IdPokemonCubit()),
    BlocProvider(create: (context) => PokemonsCubit()),
    BlocProvider(create: (context) => ItemsCubit()),
    BlocProvider(create: (context) => IdItemCubit()),
    BlocProvider(create: (context) => IdEvolutionCubit()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
      routes: {
        '/poke-details': (context) => PokemonDetailsParam(),
        '/poke-list': (context) => PokemonList(),
        '/item-list': (context) => ItemList(),
        '/item-details': (context) => ItemDetailsParam(),
      },
    );
  }
}
