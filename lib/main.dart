import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioPlayer();

  Future<void> playSound(int noteNumber) async {
    await player.setAsset('assets/note$noteNumber.wav');
    await player.play();
  }

  Expanded buildKey(int soundNumber) {
    return Expanded(
      child: GestureDetector(
        onTap: () => playSound(soundNumber),
        child:
            Container(color: soundNumber.isOdd ? Colors.white : Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            buildKey(1),
            buildKey(2),
            buildKey(3),
            buildKey(4),
            buildKey(5),
            buildKey(6),
            buildKey(7),
          ],
        )),
      ),
    );
  }
}
