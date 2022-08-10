import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
// import '../../models/pokemon/stats.dart';

class StatList extends StatelessWidget {
  StatList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  // late Future<List<Stat>> stats;

  // final Stats stats;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Text('Stats'),
      // BlocBuilder <List<Stat>>(
      //     future: stats,
      //     builder: (context, Stat){
      Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          shrinkWrap: true,
            itemCount: pokemonModel.stats.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(pokemonModel.stats[index].stat.name),
                  Text('${pokemonModel.stats[index].baseStat}'),
                ],
              );
            }),
      )
    ]));
  }
}
