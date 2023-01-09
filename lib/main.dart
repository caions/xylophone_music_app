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
  final player2 = AudioPlayer();
  final player3 = AudioPlayer();
  final player4 = AudioPlayer();
  final player5 = AudioPlayer();
  final player6 = AudioPlayer();
  final player7 = AudioPlayer();

  Future<void> playNote1() async {
    await player.setAsset('assets/note1.wav');
    await player.play();
  }

  Future<void> playNote2() async {
    await player2.setAsset('assets/note2.wav');
    await player2.play();
  }

  Future<void> playNote3() async {
    await player3.setAsset('assets/note3.wav');
    await player3.play();
  }

  Future<void> playNote4() async {
    await player4.setAsset('assets/note4.wav');
    await player4.play();
  }

  Future<void> playNote5() async {
    await player5.setAsset('assets/note5.wav');
    await player5.play();
  }

  Future<void> playNote6() async {
    await player6.setAsset('assets/note6.wav');
    await player6.play();
  }

  Future<void> playNote7() async {
    await player7.setAsset('assets/note7.wav');
    await player7.play();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: playNote1,
                child: Container(height: 100, color: Colors.white),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: playNote2,
                child: Container(height: 100, color: Colors.black),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: playNote3,
                child: Container(height: 100, color: Colors.white),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: playNote4,
                child: Container(height: 100, color: Colors.black),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: playNote5,
                child: Container(height: 100, color: Colors.white),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: playNote6,
                child: Container(height: 100, color: Colors.black),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: playNote7,
                child: Container(height: 100, color: Colors.white),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
