import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_ability_list.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_stats_list.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/poke_type_list.dart';
import 'package:flutter_project_pokemon_codex/widgets/poke_details/species.dart';

class PokemonInformation extends StatelessWidget {
  const PokemonInformation({required this.pokemonModel, Key? key})
      : super(key: key);

  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: pokemonModel.types.first.type.name == "grass"
          ? Colors.greenAccent
          : pokemonModel.types.first.type.name == "fire"
              ? Colors.redAccent
              : pokemonModel.types.first.type.name == "water"
                  ? Colors.blue
                  : pokemonModel.types.first.type.name == "poison"
                      ? Colors.deepPurpleAccent
                      : pokemonModel.types.first.type.name == "electric"
                          ? Colors.amber
                          : pokemonModel.types.first.type.name == "rock"
                              ? Colors.grey
                              : pokemonModel.types.first.type.name == "ground"
                                  ? Colors.brown
                                  : pokemonModel.types.first.type.name ==
                                          "psychic"
                                      ? Colors.indigo
                                      : pokemonModel.types.first.type.name ==
                                              "fighting"
                                          ? Colors.orange
                                          : pokemonModel
                                                      .types.first.type.name ==
                                                  "bug"
                                              ? Colors.lightGreenAccent
                                              : pokemonModel.types.first.type
                                                          .name ==
                                                      "ghost"
                                                  ? Colors.deepPurple
                                                  : pokemonModel.types.first
                                                              .type.name ==
                                                          "normal"
                                                      ? Colors.black26
                                                      : Colors.pink,
      child: ListView(children: [
        Container(
          height: 300,
          child: Image.network(
            'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemonModel.id}.png',
            scale: 2,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '#${pokemonModel.id}',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(166, 0, 0, 0)),
            ),
            SizedBox(width: 10),
            Text(
              '${pokemonModel.name.toUpperCase()}',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(166, 0, 0, 0)),
            )
          ]),
        ),
        SpeciesList(pokemonModel: pokemonModel),
        TypeList(pokemonModel: pokemonModel),
        AbilityList(pokemonModel: pokemonModel),
        StatsList(pokemonModel: pokemonModel),
        Container(
          height: 200,
        )
      ]),
    );
  }
}
