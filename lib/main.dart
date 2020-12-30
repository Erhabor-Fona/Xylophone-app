import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playsound(int sound) {
  final player = AudioCache();
  player.play('note$sound.wav');
}

Expanded buildKey(colour, int sound) {
  return Expanded(
    child: FlatButton(
      color: colour,
      onPressed: () {
        playsound(sound);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.deepOrange, 2),
              buildKey(Colors.yellowAccent, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
