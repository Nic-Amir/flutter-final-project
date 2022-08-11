import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/pokemon_model.dart';

class AbilityList extends StatelessWidget {
  const AbilityList({required this.pokemonModel, Key? key}) : super(key: key);
  final PokemonModel pokemonModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Text('Ability',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
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