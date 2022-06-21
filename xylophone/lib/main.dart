import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int no) {
    final player = AudioCache();
    player.load("note$no.wav");
  }

  Expanded buildKey({Color color, int no}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(no);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.pink, no: 1),
              buildKey(color: Colors.grey, no: 2),
              buildKey(color: Colors.green, no: 3),
              buildKey(color: Colors.red, no: 4),
              buildKey(color: Colors.black, no: 5),
              buildKey(color: Colors.blue, no: 6),
              buildKey(color: Colors.yellow, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
