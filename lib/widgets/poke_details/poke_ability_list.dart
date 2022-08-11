import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class AbilityList extends StatelessWidget {
  const AbilityList({required this.pokemonModel, Key? key}) : super(key: key);
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
                                            : pokemonModel.types.first.type
                                                        .name ==
                                                    "bug"
                                                ? Colors
                                                    .lightGreenAccent.shade400
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ability',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: pokemonModel.abilities.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(pokemonModel.abilities[index].ability.name),
                          ],
                        );
                      }),
                )
              ]),
        ));
  }
}