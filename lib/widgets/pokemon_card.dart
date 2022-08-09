import 'package:flutter/material.dart';

import '../models/pokemons_model.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({required this.index,required this.pokemonsModel,Key? key}) : super(key: key);
  final PokemonsModel pokemonsModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed('/poke-details',arguments: index);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${index+1}.png',
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/${index+1}.gif',
                  height: 20,),
                  SizedBox(
                    width: 5,
                  ),
                  Text('${pokemonsModel.results[index].name}'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
