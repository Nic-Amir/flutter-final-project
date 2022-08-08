import 'package:flutter/material.dart';

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
  }
}
