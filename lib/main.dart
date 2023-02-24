import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int a) {
    final player = AudioPlayer();
    player.play(AssetSource('note$a.wav'));
  }

  //function to create button
  Expanded buildButton({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color: Colors.red, soundNumber: 1),
              buildButton(color: Colors.orange, soundNumber: 2),
              buildButton(color: Colors.yellow, soundNumber: 3),
              buildButton(color: Colors.lightGreen, soundNumber: 4),
              buildButton(color: Colors.green, soundNumber: 5),
              buildButton(color: Colors.blue, soundNumber: 6),
              buildButton(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
