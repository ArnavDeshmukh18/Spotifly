
import 'package:flutter/material.dart';
import 'package:spotifly/DataModels/Category.dart';
import 'package:spotifly/DataModels/MusicCategory.dart';
import 'package:spotifly/Services/MusicOperations.dart';
import 'package:spotifly/Services/Operations.dart';
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



