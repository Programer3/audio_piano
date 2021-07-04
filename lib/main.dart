import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void audiofunc(int filenum) {
    final AudioCache player = AudioCache();
    player.play('note$filenum.wav');
  }

  Expanded longbar({color: Color, required int filenum}) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        audiofunc(filenum);
      },
      child: Card(
        color: color,
      ),
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
            children: <Widget>[
              longbar(color: Colors.blue, filenum: 1),
              longbar(color: Colors.red, filenum: 2),
              longbar(color: Colors.deepOrange, filenum: 3),
              longbar(color: Colors.pinkAccent, filenum: 4),
              longbar(color: Colors.brown, filenum: 5),
              longbar(color: Colors.green, filenum: 6),
              longbar(color: Colors.yellowAccent, filenum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
