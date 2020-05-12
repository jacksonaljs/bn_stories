import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget{
  Story({Key key}): super(key:key);
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story>{

  List<StoryInfo> _storyInfoList = [];

  PageController pageController = PageController(initialPage: 0);
  double currentPage =0.0;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _storyInfoList.add(StoryInfo(
        imageURL: "https:\/\/broker-network.imgix.net\/stories\/Godrej%20Exquisite%20-%20Thane\/thumbnail_image\/Mm5LdWw3bERzTWc9\/Godrej%20Exquisite%20-%20Thane.png"
            ,title: ""
    ));

    _storyInfoList.add(StoryInfo(
        imageURL: "https:\/\/broker-network.imgix.net\/stories\/Kanakia%20Pixel\/thumbnail_image\/Ly83YmRVVkhFRms9\/Codename%20Future%20-%20344x366.png"
        ,title: ""
    ));

    _storyInfoList.add(StoryInfo(
        imageURL: "https:\/\/broker-network.imgix.net\/stories\/Lodha%20CASA%20Zest\/thumbnail_image\/Z0Q3OFhaZDBpZms9\/Lodha%20Developers-%20344x366%20(2).png"
        ,title: ""
    ));

    _storyInfoList.add(StoryInfo(
        imageURL: "https://broker-network.imgix.net//stories//Codename%20winwin//thumbnail_image//cm5kT041R3FGSjg9//Codename%20Winwin%20-%20344x366.png"
        ,title: ""
    ));

    _storyInfoList.add(StoryInfo(
        imageURL: "https://broker-network.imgix.net//stories//Emerald%20Isle%20II//thumbnail_image//L0FGRlhiMW9GbWc9//Emerald%20isle%202360%20-%20344x366.png"
        ,title: ""
    ));

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page;
      });
      //print("currentPage= ${currentPage}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildBackground(),
          Column(
            children: <Widget>[
              _buildNavigationBar(),
              Expanded(
                  child:SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        _buildTrending(),
                        _buildStoryCards(),
                        //_buildSaved(),
                      ],
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }

  _buildSaved(){
    return Container(
      padding: EdgeInsets.only(left: 10,right: 30,top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Saved Stories",style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              )),
              SizedBox(
                height: 10,),

//              Row(
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
//                    decoration: ShapeDecoration(
//                      color: Color.fromARGB(255, 248, 112, 111),
//                      shape: StadiumBorder(),
//                    ),
//                    child: Text("Animated",style: TextStyle(
//                        fontSize: 14,
//                        color: Colors.white,
//                        fontWeight: FontWeight.w600
//                    ),),
//                  ),
//                  SizedBox(width: 10,),
//                  Text("10+ Stories", style: TextStyle(
//                      fontSize: 15,
//                      fontWeight: FontWeight.w700,
//                      color: Color.fromARGB(255, 79,  113, 164)
//                  ),)
//                ],
//              )
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),
    );

  }

  _buildStoryCards(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      //color: Colors.red.withOpacity(0.4),
      height: 490,
      child: Stack(
        children: <Widget>[
          Cards(
            currentPage: currentPage,
            storyInfoList: _storyInfoList,),
          Positioned.fill(
            child: PageView.builder(
              controller: pageController,
              itemCount: _storyInfoList.length,
              itemBuilder: (context,idx){
                return Container();
                //return Container(color: Color(Random().nextInt(0xffffffff)));
    }),
          )
        ],
      ),
    );
  }

  _buildTrending(){
    return Container(
      padding: EdgeInsets.only(left: 10,right: 30,top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("All Stories",style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              )),
//              SizedBox(
//                height: 10,),
//
//              Row(
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
//                    decoration: ShapeDecoration(
//                      color: Color.fromARGB(255, 248, 112, 111),
//                      shape: StadiumBorder(),
//                    ),
//                    child: Text("Animated",style: TextStyle(
//                      fontSize: 14,
//                      color: Colors.white,
//                      fontWeight: FontWeight.w600
//                    ),),
//                  ),
//                  SizedBox(width: 10,),
//                  Text("10+ Stories", style: TextStyle(
//                    fontSize: 15,
//                    fontWeight: FontWeight.w700,
//                    color: Color.fromARGB(255, 79,  113, 164)
//                  ),)
//                ],
//              )
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 40,
            ))
  ],
    ),
    );}

  _buildNavigationBar(){
    return SafeArea(
       bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
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

class Cards extends StatefulWidget {
  List<StoryInfo> storyInfoList;
  double currentPage;
  Cards({Key key, this.currentPage,this.storyInfoList}): super(key: key);

  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){

          List<Widget> stackWidgets = [];

          double cardsAspectRatio = 1.0/1.5;

          double width  = constraints.maxWidth;
          double height = constraints.maxHeight;

          double padding = 10.0;
          double cardsAreaWidth = width -padding*2;
          double cardsAreaHeight = height -padding*2;

          double cardHeight = cardsAreaHeight;
          double cardWidth = cardHeight*cardsAspectRatio;

          double intervalLeft = cardWidth + padding;
          double intervalRight = (cardsAreaWidth - cardWidth)/2.0;

          for (var i = 0; i < widget.storyInfoList.length; i++){

            StoryInfo storyInfo = widget.storyInfoList[i];

            double end = 0;
            double currentPosition = -(widget.currentPage-i);
            
            print("i=${i}, currentPosition=${currentPosition}");

            if(currentPosition<=0){
                end = padding + intervalRight*2-(intervalLeft*currentPosition);
            }
            else{
              end = padding + intervalRight*(2-currentPosition);
            }

            if(end<padding){
              end = padding;
            }

            Widget card = Positioned.directional(
              top: padding + 20*max(currentPosition,0),
              bottom: padding + 20*max(currentPosition,0),
              end: end,
              textDirection: TextDirection.ltr,
              child: AspectRatio(
              aspectRatio: cardsAspectRatio,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(storyInfo.imageURL)
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 20,bottom: 30,right: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(storyInfo.title,
                      style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white))
                ),

              ))
              )
            );
            stackWidgets.add(card);
          }

          stackWidgets = stackWidgets.reversed.toList();

          return Stack(children: stackWidgets,);
        },
      ),
    );
  }
}


class StoryInfo{
   String imageURL;
   String title;
   StoryInfo({this.imageURL,this.title});
}