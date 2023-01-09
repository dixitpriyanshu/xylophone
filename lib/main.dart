import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildkey(Color color, int noteNumber) {
    return Expanded(
        child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      child: const Text(''),
      onPressed: () {
        playSound(noteNumber);
      },
    ));
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
              buildkey(Colors.red, 1),
              buildkey(Colors.orange, 2),
              buildkey(Colors.yellow, 3),
              buildkey(Colors.green, 4),
              buildkey(Colors.teal, 5),
              buildkey(Colors.blue, 6),
              buildkey(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
