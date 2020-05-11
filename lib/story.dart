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
          _buildBackground(),
          Column(
            children: <Widget>[
              _buildNavigationBar(),
              Container(
                child: Placeholder(),
              )
            ],
          )
        ],
      ),
    );
  }

  
  _buildNavigationBar(){
    return SafeArea(
       bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.menu,color: Colors.white,size: 30,),
              ),
              Spacer(),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.search,color: Colors.white,size: 30,),
              )
            ],
          ),
        )
    );
  }

  _buildBackground(){
    return Container(
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
    );
  }

}