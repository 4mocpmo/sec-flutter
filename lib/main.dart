
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  SizedBox buildKey({Color color, int soundNumber ,String  txt}) {
    return SizedBox(
        height: 50,
        child: RaisedButton.icon(
        label: Text(txt),
        icon:Icon(Icons.play_arrow , color: Colors.red[900],), 
        onPressed: () {
          playSound(soundNumber);
        },
        shape: RoundedRectangleBorder(side: BorderSide(
          color: Colors.blue,
          width: 1.5,
          style: BorderStyle.solid
        ), 
        borderRadius: BorderRadius.circular(25)),
        color : color,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar( 
          actions: [
            IconButton(
              icon: Icon(Icons.dehaze , color: Colors.white),
              onPressed: () => {},  
            ),
          ],
          title: Center(
            child: Text('          my app')
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: new ListView(
          children: <Widget>[
            buildKey(color: Colors.grey[850], soundNumber: 8 , txt : '01.Hala Dari Miri'),
            buildKey(color: Colors.red , soundNumber: 5, txt : 'play'),
            buildKey(color: Colors.red, soundNumber: 1, txt : 'play'),
            buildKey(color: Colors.orange, soundNumber: 2, txt : 'play'),
            buildKey(color: Colors.yellow, soundNumber: 3, txt : 'play'),
            buildKey(color: Colors.green, soundNumber: 4, txt : 'play'),
            buildKey(color: Colors.teal, soundNumber: 5, txt : 'play'),
            buildKey(color: Colors.grey[850], soundNumber: 6, txt : 'play'),
            buildKey(color: Colors.purple, soundNumber: 7, txt : 'play'),
            buildKey(color: Colors.black, soundNumber: 1, txt : 'play'),
            buildKey(color: Colors.purple[900], soundNumber: 7, txt : 'play'),
            buildKey(color: Colors.green, soundNumber: 4, txt : 'play'),
            buildKey(color: Colors.teal, soundNumber: 5, txt : 'play'),
            buildKey(color: Colors.red , soundNumber: 5, txt : 'play'),
            buildKey(color: Colors.red, soundNumber: 1, txt : 'play'),
            buildKey(color: Colors.orange, soundNumber: 2, txt : 'play'),
            buildKey(color: Colors.yellow, soundNumber: 3, txt : 'play'),
            buildKey(color: Colors.green, soundNumber: 4, txt : 'play'),
            buildKey(color: Colors.teal, soundNumber: 5, txt : 'play'),
            buildKey(color: Colors.grey[850], soundNumber: 6, txt : 'play'),
          ],
        ),
        // SafeArea(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.stretch,
        //     children: <Widget>[
        //       buildKey(color: Colors.grey[850], soundNumber: 6),
        //       buildKey(color: Colors.red, soundNumber: 1),
        //       buildKey(color: Colors.orange, soundNumber: 2),
        //       buildKey(color: Colors.yellow, soundNumber: 3),
        //       buildKey(color: Colors.green, soundNumber: 4),
        //       buildKey(color: Colors.teal, soundNumber: 5),
        //       buildKey(color: Colors.blue[900], soundNumber: 6),
        //       buildKey(color: Colors.purple, soundNumber: 7),
        //       buildKey(color: Colors.black, soundNumber: 1),
        //       buildKey(color: Colors.purple[900], soundNumber: 7),
        //     ],
        //   ),
        // ),   
      ),
    );
  }
}
