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
  late Animation _cloudAnimation2;
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 7500));

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat(reverse: false);

    _cloudAnimation =
        Tween<Offset>(begin: Offset(400.0, 00), end: Offset(-400.0, 00))
            .animate(_animationController);

    _cloudAnimation2 =
        Tween<Offset>(begin: Offset(600.0, 00), end: Offset(-200.0, 00))
            .animate(_animationController);

    openPlayer();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void openPlayer() async {
    await audioPlayer.open(
      Audio('assets/little_root_town.mp3'),
      autoStart: true,
    );
  }

  @override
  void didChangeDependencies() {
    audioPlayer.play();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.topCenter, children: [
          Image.asset(
            'assets/pokebg.png',
            fit: BoxFit.fill,
            height: double.infinity,
          ),
          Positioned(
              top: 125,
              child: Image.asset('assets/pokemon-logo.png',
                  height: 400, width: 400)),
          Positioned(
            top: 80,
            child: Transform.translate(
              offset: _cloudAnimation.value,
              child: Image.asset(
                'assets/pokemon_cloud.png',
                scale: 2,
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Transform.translate(
              offset: _cloudAnimation2.value,
              child: Image.asset(
                'assets/pokemon_cloud.png',
                scale: 4,
              ),
            ),
          ),
          Positioned(
            top: 550,
            child: Row(children: [
              ElevatedButton(
                  onPressed: () async {
                    audioPlayer.pause();
                    await Navigator.of(context).pushNamed('/poke-list');
                    audioPlayer.play();
                  },
                  child: Text('Pokedex')),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () async {
                    await audioPlayer.pause();
                    Navigator.of(context).pushNamed('/item-list').then((value) {
                      audioPlayer.play();
                    });
                  },
                  child: Text('Items'))
            ]),
          ),
        ]),
      ),
    );
  }
}
