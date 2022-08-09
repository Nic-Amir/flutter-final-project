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
        child : Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/poke-list');
                },
                child: Text('Pokedex')),
          ],
        ),
      ),
    );
  }
}
