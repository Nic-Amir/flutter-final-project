import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class StatList extends StatelessWidget {
  StatList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
      Text('Stats'),
      Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
              itemCount: pokemonModel.stats.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(pokemonModel.stats[index].stat.name),
                    Text('${pokemonModel.stats[index].baseStat}'),
                  ],
                );
              }),
      )
    ]),
        ));
  }
}
