import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

   Expanded buildKey({required Color color, required int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Songs'),
      ),
    );
  }
  void playSound(int SoundNumber){
    final player = AudioCache();
    player.play('note$SoundNumber.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 2),
              buildKey(color: Colors.yellowAccent, soundNumber: 3),
              buildKey(color: Colors.pinkAccent, soundNumber: 4),
              buildKey(color: Colors.orange, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.tealAccent, soundNumber: 7),
              buildKey(color: Colors.red, soundNumber: 8),
              buildKey(color: Colors.green, soundNumber: 9),
              buildKey(color: Colors.lightGreenAccent, soundNumber: 10),
              buildKey(color: Colors.pinkAccent.shade700, soundNumber: 11),
              buildKey(color: Colors.orange.shade700, soundNumber: 12),
              buildKey(color: Colors.blue.shade700, soundNumber: 13),
              buildKey(color: Colors.tealAccent.shade400, soundNumber: 14),
              buildKey(color: Colors.red.shade700, soundNumber: 15),
              buildKey(color: Colors.green.shade400, soundNumber: 16),
              buildKey(color: Colors.yellowAccent.shade200, soundNumber: 17),
              buildKey(color: Colors.pinkAccent.shade400, soundNumber: 18),
              buildKey(color: Colors.orange.shade500, soundNumber: 19),
              buildKey(color: Colors.blue.shade50, soundNumber: 20),
              buildKey(color: Colors.tealAccent.shade200, soundNumber: 21),
              buildKey(color: Colors.red.shade600, soundNumber: 22),
            ],
          ),
        ),
      ),
    );
  }
}
