import 'package:flutter/material.dart';
import 'package:spotifly/DataModels/MusicCategory.dart';
import 'package:spotifly/Screens/Home.dart';
import 'package:spotifly/Screens/Library.dart';
import 'package:spotifly/Screens/search.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final tabScreen=const [Home(),SearchScreen(),YourLibrary()];
 int currentTabIndex=0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff525C65),Colors.black,Colors.black,Colors.black],
          )),
child:  Scaffold(
  body: tabScreen[currentTabIndex],
  backgroundColor: Colors.transparent,
  bottomNavigationBar: Column(
    mainAxisSize: MainAxisSize.min,
    children: [

      MusicPlayer(),
      BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex){
          currentTabIndex=currentIndex;
          setState(() {

          });
        },
        backgroundColor: Colors.black12,
        //selectedLabelStyle: const TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,

        items: const [

        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.my_library_music_outlined,color: Colors.white,),label: 'Your Library',),
      ],


      ),
    ],
  ),
),

    );
  }
}


class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key, this.width}) : super(key: key);
  final  width;

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(duration: const Duration(milliseconds: 500),
      color: Colors.blueGrey.shade800,
      width: widget.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network('https://is1-ssl.mzstatic.com/image/thumb/Purple123/v4/0e/09/c4/0e09c462-c0cd-0a6c-d748-ea69b70442b7/source/256x256bb.jpg',fit: BoxFit.cover,),
          const Text('Hall Of Fame',style: TextStyle(color: Colors.white),),
          IconButton(onPressed: (){}, icon:const  Icon(Icons.play_arrow,color: Colors.white,))
        ],
      ),
    );
  }
}
