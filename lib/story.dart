import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget{
  Story({Key key}): super(key:key);
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 45, 52, 71),
                  Color.fromARGB(255, 26, 30, 68),
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}