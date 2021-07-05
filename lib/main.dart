import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AudioApp(),
    );
  }
}

class AudioApp extends StatefulWidget {
  const AudioApp({Key? key}) : super(key: key);
  @override
  _AudioAppState createState() => _AudioAppState();
}

class _AudioAppState extends State<AudioApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(150, 240, 200, 150),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note1.wav');
                },
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note2.wav');
                },
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note3.wav');
                },
                child: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note4.wav');
                },
                child: Text(
                  '4',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note5.wav');
                },
                child: Text(
                  '5',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note6.wav');
                },
                child: Text(
                  '6',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Card(
              child: TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('assets_note7.wav');
                },
                child: Text(
                  '7',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
