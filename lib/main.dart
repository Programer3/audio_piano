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
  void playsound(int filenum) {
    final player = AudioCache();
    player.play('assets_note$filenum.wav');
  }

  Expanded widgetcontainer({required Color color, required int notenum}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(notenum);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            widgetcontainer(color: Colors.amberAccent, notenum: 1),
            widgetcontainer(color: Colors.redAccent, notenum: 2),
            widgetcontainer(color: Colors.blueAccent, notenum: 3),
            widgetcontainer(color: Colors.greenAccent, notenum: 4),
            widgetcontainer(color: Colors.pinkAccent, notenum: 5),
            widgetcontainer(color: Colors.white, notenum: 6),
            widgetcontainer(color: Colors.indigoAccent, notenum: 7),
          ],
        ),
      ),
    );
  }
}
