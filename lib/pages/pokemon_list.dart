import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_pokemon_codex/models/items_model.dart';
import 'package:flutter_project_pokemon_codex/models/pokemons_model.dart';
import 'package:flutter_project_pokemon_codex/states/pokemons_cubit.dart';
import 'package:flutter_project_pokemon_codex/states/pokemons_states.dart';
import 'package:flutter_project_pokemon_codex/widgets/pokemon_card.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({Key? key}) : super(key: key);

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  List<String> pokemons = List.empty(growable: true);
  late TextEditingController controller;
  bool get canSelectMore => pokemons.length < 2;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    PokemonsCubit cubit = BlocProvider.of<PokemonsCubit>(context)
      ..fetchPokemons();
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon Codex'),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (_) {
                setState(() {});
              },
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search Pokemon',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.blueAccent),
                ),
              ),
            ),
            Expanded(
              child: BlocBuilder<PokemonsCubit, PokemonsState>(
                bloc: cubit,
                builder: ((context, state) {
                  if (state is PokemonsLoading) {
                    return Center(child: const CircularProgressIndicator());
                  }
                  if (state is PokemonsLoaded) {
                    List<PokeResult> toRender = controller.text.isNotEmpty
                        ? List.from(
                            state.pokemonsModel.results.expand((element) {
                            if (element.name.contains(controller.text)) {
                              return [element];
                            }
                            return <Result>[];
                          }))
                        : (state.pokemonsModel.results);

                    return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemCount: toRender.length,
                        itemBuilder: ((context, index) {
                          return PokemonCard(
                            pokemonsModel: toRender[index],
                          );
                        }));
                  }
                  return Text(state is PokemonsError
                      ? state.errorMsg
                      : 'Unknown Error');
                }),
              ),
            ),
          ],
        ));
  }
}
