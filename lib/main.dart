import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(XylophoneApp());

void audio(int audionum)
async {
  final player = AudioPlayer();
  final duration = await player.setUrl('assets/note$audionum.wav');
  player.play();
}

Expanded buildkit({ required color , audionum}){
  return Expanded(

    child: MaterialButton(
      color: color,


      onPressed: ()
      {
        audio(audionum);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              buildkit(color:Colors.redAccent , audionum: 1),
              buildkit(color:Colors.blueGrey , audionum: 2),
              buildkit(color:Colors.yellow , audionum: 3),
              buildkit(color:Colors.brown , audionum: 4),
              buildkit(color:Colors.lightGreen , audionum: 5),
              buildkit(color:Colors.purpleAccent , audionum: 6),
              buildkit(color:Colors.orange , audionum: 7),
            ],
          ),
        ),
      ),
    );
  }
}