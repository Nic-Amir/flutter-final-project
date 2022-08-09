import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/pages/home_page.dart';
import 'package:flutter_project_pokemon_codex/pages/pokemon_detail.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_cubit.dart';

void main() {
  runApp(const MyApp());
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => IdPokemonCubit()),
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
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
      ),
      home: PokemonDetails(
        pokeId: 'rayquaza',
      ),
    );
  }
}
