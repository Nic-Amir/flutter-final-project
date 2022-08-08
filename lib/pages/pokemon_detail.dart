import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/states/pokemon_cubit.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({required this.pokeId, Key? key}) : super(key: key);

  final String pokeId;
  
  @override
  Widget build(BuildContext context) {
    IdPokemonCubit cubit = BlocProvider.of<IdPokemonCubit>(context)..fetchPokemonById(pokeId)

    return Scaffold()
=======

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({Key? key}) : super(key: key);

  void navigateHome(BuildContext context) {
    Navigator.of(context).pushNamed('/MyHomePage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onTap: () {
              navigateHome(context);
            }),
      ),
      extendBodyBehindAppBar: true,

      body: Column(
        children: [
          Container(
            //img container
            height: 200,
          ),
          Column(
            children: [
              Text('Pokemon name'),
              SizedBox(
                height: 20,
              ),
              Text('height'),
              SizedBox(
                height: 20,
              ),
              Text('weight'),
              SizedBox(
                height: 20,
              ),
              Text('Types'),
              SizedBox(
                height: 20,
              ),

            ],
          )
        ],
      ),
    );
>>>>>>> 682acef45469aaecc0e6f4c4fb1a420700af42de
  }
}
