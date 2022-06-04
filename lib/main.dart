import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color backgroundColor, int soundnumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: () async {
          playSound(soundnumber);
        },
        child: null,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(backgroundColor: Colors.red, soundnumber: 1),
              buildkey(backgroundColor: Colors.orange, soundnumber: 2),
              buildkey(backgroundColor: Colors.yellow, soundnumber: 3),
              buildkey(backgroundColor: Colors.green, soundnumber: 4),
              buildkey(backgroundColor: Colors.teal, soundnumber: 5),
              buildkey(backgroundColor: Colors.blue, soundnumber: 6),
              buildkey(backgroundColor: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
