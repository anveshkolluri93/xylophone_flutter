import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createXylophoneTab(soundCount: 1, color: Colors.red),
              createXylophoneTab(soundCount: 2, color: Colors.orange),
              createXylophoneTab(soundCount: 3, color: Colors.yellow),
              createXylophoneTab(soundCount: 4, color: Colors.green),
              createXylophoneTab(soundCount: 5, color: Colors.teal),
              createXylophoneTab(soundCount: 6, color: Colors.blue),
              createXylophoneTab(soundCount: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }

  void playSound(int count) {
    final player = AudioCache();
    player.play('note$count.wav');
  }

  Widget createXylophoneTab({int soundCount, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundCount);
        },
        color: color,
      ),
    );
  }
}
