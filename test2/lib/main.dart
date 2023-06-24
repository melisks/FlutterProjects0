import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note1.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note2.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note3.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note4.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note5.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note6.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  final assetsAudioPlayer = AssetsAudioPlayer();

                  assetsAudioPlayer.open(
                    Audio("assets/note7.wav"),
                  );
                },
                child: const Text(''),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
