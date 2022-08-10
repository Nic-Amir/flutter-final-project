import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
class TypeList extends StatelessWidget {
  const TypeList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,children: [
          Text('Type'),
          Expanded(
            // height: 80,
            // width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: pokemonModel.types.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[Text(pokemonModel.types[index].type.name),]
                      );
                }),
          )
        ]));
  }
}

