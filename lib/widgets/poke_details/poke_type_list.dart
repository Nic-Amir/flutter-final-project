import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class TypeList extends StatelessWidget {
  const TypeList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: pokemonModel.types.length,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(pokemonModel.types[index].type.name),
              ),
            );
          }),
    );
  }
}
