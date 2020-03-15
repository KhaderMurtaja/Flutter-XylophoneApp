import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded noteKey({Color color, int noteNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNum);
        },
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
              noteKey(color: Colors.red, noteNum: 1),
              noteKey(color: Colors.orange, noteNum: 2),
              noteKey(color: Colors.yellow, noteNum: 3),
              noteKey(color: Colors.green, noteNum: 4),
              noteKey(color: Colors.teal, noteNum: 5),
              noteKey(color: Colors.blue, noteNum: 6),
              noteKey(color: Colors.purple, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
