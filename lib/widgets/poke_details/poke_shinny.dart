
import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class PokeShinny extends StatelessWidget {
  const PokeShinny({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: pokemonModel.types.first.type.name == "grass"
          ? Colors.greenAccent.shade400
          : pokemonModel.types.first.type.name == "fire"
          ? Colors.redAccent.shade400
          : pokemonModel.types.first.type.name == "water"
          ? Colors.blue.shade300
          : pokemonModel.types.first.type.name == "poison"
          ? Colors.deepPurpleAccent.shade400
          : pokemonModel.types.first.type.name == "electric"
          ? Colors.amber.shade300
          : pokemonModel.types.first.type.name == "rock"
          ? Colors.grey.shade300
          : pokemonModel.types.first.type.name == "ground"
          ? Colors.brown.shade300
          : pokemonModel.types.first.type.name ==
          "psychic"
          ? Colors.indigo.shade300
          : pokemonModel.types.first.type.name ==
          "fighting"
          ? Colors.orange.shade300
          : pokemonModel
          .types.first.type.name ==
          "bug"
          ? Colors.lightGreenAccent.shade400
          : pokemonModel.types.first.type
          .name ==
          "ghost"
          ? Colors.deepPurple.shade300
          : pokemonModel.types.first
          .type.name ==
          "normal"
          ? Colors.black26
          : Colors.pink.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical:15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Normal Form',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(166, 0, 0, 0)),
                ),
                Container(
                  height: 100,
                  child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${pokemonModel.id}.png',
                    scale: 1,),
                ),
              ],
            ),

            Column(
              children: [
                Text(
                  'Shiny Form',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(166, 0, 0, 0)),
                ),
                Container(
                  height: 100,
                  child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${pokemonModel.id}.png',
                  scale: 1,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

