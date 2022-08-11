import 'package:flutter/material.dart';
import 'package:flutter_project_pokemon_codex/models/evolution_model.dart';

class EvolutionChain extends StatelessWidget {
  const EvolutionChain({required this.evolutionModel, Key? key}) : super(key: key);
  final EvolutionModel evolutionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      // child: ListView.builder(
      //     shrinkWrap: true,
      //     itemCount: evolutionModel.chain.evolvesTo.length,
      //     itemBuilder: (context, index) {
      //       return Center(
      //         child: Container(
      //           padding: EdgeInsets.only(bottom: 10),
      //           child: Text(evolutionModel.chain.evolvesTo.[index].name),
      //         ),
      //       );
      //     }),
      child: Row(
        children: [
          Text(evolutionModel.chain.evolvesTo.first.species.name),
        ],
      ),
    );
  }
}
