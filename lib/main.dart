import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

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
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            child: Card(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Hiiii',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
