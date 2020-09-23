import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber, String text) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: RotatedBox(
          quarterTurns: 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 270.0),
            child: Text(
              '$text',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1, "C"),
              buildKey(Colors.orange, 2, "D"),
              buildKey(Colors.yellow, 3, "E"),
              buildKey(Colors.green, 4, "F"),
              buildKey(Colors.teal, 5, "G"),
              buildKey(Colors.blue, 6, "A"),
              buildKey(Colors.purple, 7, "B"),
            ],
          ),
        ),
      ),
    );
  }
}
