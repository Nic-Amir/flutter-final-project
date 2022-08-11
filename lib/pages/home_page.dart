import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _cloudAnimation;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 5500));

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat(reverse: false);

    _cloudAnimation =
        Tween<Offset>(begin: Offset(400.0, 00), end: Offset(-400.0, 00))
            .animate(_animationController);

    audioPlayer.open(Audio('little_root_town.mp3'));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.topCenter, children: [
              Image.asset('assets/pokemon-logo.png', height: 400, width: 400),
              Transform.translate(
                offset: _cloudAnimation.value,
                child: Image.asset(
                  'assets/pokemon_cloud.png',
                  scale: 1,
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
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
