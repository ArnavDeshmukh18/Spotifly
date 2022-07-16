import 'package:flutter/material.dart';
import 'package:spotifly/Widgets/SearchBar.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Row(
          children: [
           const Padding(
              padding: EdgeInsets.only(top: 80.0,left: 20),
              child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 35),),
            ),

            Padding(
              padding:const  EdgeInsets.only(top: 40.0,left: 20),
              child: SafeArea(
                child: IconButton(onPressed: () {
                  showSearch(context: context, delegate: SearchBar());
                }, icon:const Icon(Icons.search,color: Colors.white,),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

