import 'package:flutter/material.dart';
import 'package:spotifly/DataModels/Category.dart';
import 'package:spotifly/DataModels/MusicCategory.dart';
import 'package:spotifly/Services/MusicOperations.dart';
import 'package:spotifly/Services/Operations.dart';

Widget createCategory(Category category)
{
  return Container(
      color: Colors.blueGrey.shade800,
      child: Row(
        children: [
          Image.network(category.imgURl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              category.title,
              style:const  TextStyle(color: Colors.white),
            ),
          )
        ],
      ));

}

List <Widget> createListCategory()
{
  List<Category>categoryList=Operations.getCategory();
  List<Widget>categories= categoryList.map((Category category)=>createCategory(category)).toList();
  return categories;
}

Widget gridCategory()
{
  return Container(
    padding: const EdgeInsets.all(10),
    height: 280,
    child: GridView.count(
      childAspectRatio: 5 / 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: createListCategory(),
      crossAxisCount: 2,
    ),
  );
}

class Album extends StatelessWidget {
  const Album({Key? key, required this. music}) : super(key: key);
  final MusicCategory music;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 200,
              width: 200,
              child: Image.network(music.imgURL,fit: BoxFit.cover,)),
          const SizedBox(
            height: 5,
          ),
          Text(music.title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

          Text(music.discription,style:const TextStyle(color: Colors.white,),)
        ],
      ),
    );
  }
}


Widget albumList()
{
  List<MusicCategory>musicList=MusicOperation.getMusicCategory();
  return SizedBox(
    height:300 ,

    child: ListView.builder(
      itemBuilder: (BuildContext context,int index){
        return Album(music: musicList[index]);

      },
      itemCount: musicList.length,
      scrollDirection: Axis.horizontal,),
  );
}

class VerticleList extends StatelessWidget {
  const VerticleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Made For You",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 30),),
        ),
        albumList()
      ],
    );
  }
}

Widget verticleAlbumList()
{
  return SizedBox(
    height:300 ,

    child: ListView.builder(
      itemBuilder: (BuildContext context,int index){
        return VerticleList();

      },
      itemCount:10,
      scrollDirection: Axis.vertical,),
  );
}