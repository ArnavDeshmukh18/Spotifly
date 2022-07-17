// ignore: file_names

import 'package:flutter/material.dart' show BuildContext, Colors, Column, CrossAxisAlignment, EdgeInsets, FontWeight, Key, MediaQuery, Padding, SafeArea, SingleChildScrollView, Size, SizedBox, StatelessWidget, Text, TextStyle, Widget;
import 'package:spotifly/Widgets/AppBar.dart';
import 'package:spotifly/Widgets/HomeScreenWidgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(width: width),
          SizedBox(
            height: height/50
          ),
          gridCategory(),
          const Padding(
             padding: EdgeInsets.all(8.0),
             child: Text("Made For You",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 30),),
           ),
          albumList(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Your Playlists",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 30),),
          ),
          albumList(),
         
        ],
      ),
    )); 
  }
}



