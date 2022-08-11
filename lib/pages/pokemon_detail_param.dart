import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/pages/pokemon_detail.dart';

class PokemonDetailsParam extends StatelessWidget {
  const PokemonDetailsParam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokeId = ModalRoute.of(context)!.settings.arguments as String;
    final evolutionId = ModalRoute.of(context)!.settings.arguments as String;
    return PokemonDetails(pokeId: pokeId,evolutionId: evolutionId,);
  }
}
