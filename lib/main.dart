import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getView(1, Colors.red),
              getView(2, Colors.orange),
              getView(3, Colors.yellow),
              getView(4, Colors.green),
              getView(5, Colors.lightBlue),
              getView(6, Colors.indigo),
              getView(7, Colors.purple),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget getView(int pos, Color color) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      onPressed: () {
        playSound(pos);
      },
      child: const Text(""),
    ),
  );
}

void playSound(int pos) {
  final audioPlayer = AudioCache();
  audioPlayer.play('note$pos.wav');
}
