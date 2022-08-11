import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class StatsList extends StatefulWidget {
  const StatsList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  State<StatsList> createState() => _StatsListState();
}

class _StatsListState extends State<StatsList> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: widget.pokemonModel.types.first.type.name == "grass"
            ? Colors.greenAccent.shade400
            : widget.pokemonModel.types.first.type.name == "fire"
                ? Colors.redAccent.shade400
                : widget.pokemonModel.types.first.type.name == "water"
                    ? Colors.blue.shade300
                    : widget.pokemonModel.types.first.type.name == "poison"
                        ? Colors.deepPurpleAccent.shade400
                        : widget.pokemonModel.types.first.type.name ==
                                "electric"
                            ? Colors.amber.shade300
                            : widget.pokemonModel.types.first.type.name ==
                                    "rock"
                                ? Colors.grey.shade300
                                : widget.pokemonModel.types.first.type.name ==
                                        "ground"
                                    ? Colors.brown.shade300
                                    : widget.pokemonModel.types.first.type
                                                .name ==
                                            "psychic"
                                        ? Colors.indigo.shade300
                                        : widget.pokemonModel.types.first.type
                                                    .name ==
                                                "fighting"
                                            ? Colors.orange.shade300
                                            : widget.pokemonModel.types.first
                                                        .type.name ==
                                                    "bug"
                                                ? Colors
                                                    .lightGreenAccent.shade400
                                                : widget.pokemonModel.types
                                                            .first.type.name ==
                                                        "ghost"
                                                    ? Colors.deepPurple.shade300
                                                    : widget
                                                                .pokemonModel
                                                                .types
                                                                .first
                                                                .type
                                                                .name ==
                                                            "normal"
                                                        ? Colors.black26
                                                        : Colors.pink.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Text(
              'Stats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.pokemonModel.stats.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.pokemonModel.stats[index].stat.name),
                        Text('${widget.pokemonModel.stats[index].baseStat}'),
                      ],
                    );
                  }),
            )
          ]),
        ));
  }
}
