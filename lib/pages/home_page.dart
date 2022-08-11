import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/pokemon-logo.png', height: 400, width: 400),
                Image.asset('assets/pokemon_cloud.png', scale: 3,),

        ]
                ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/poke-list');
                  },
                  child: Text('Pokedex')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/item-list');
                  },
                  child: Text('Items'))
            ]),
          ],
        ),
      ),
    );
  }
}
