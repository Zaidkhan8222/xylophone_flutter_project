import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildkey ({required Color color,required int soundNumber}) {
    return Expanded(
      child: TextButton(
        child: Container(color: color,),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundNumber: 1,),
              buildkey(color: Colors.orange, soundNumber: 2,),
              buildkey(color: Colors.yellow, soundNumber: 3,),
              buildkey(color: Colors.green, soundNumber: 4,),
              buildkey(color: Colors.teal, soundNumber: 5,),
              buildkey(color: Colors.blue, soundNumber: 6,),
              buildkey(color: Colors.purple, soundNumber: 7,),
           ],
          ),
        ),
      ),
    );
  }
}
