import 'package:flutter/material.dart';

class SearchBar extends SearchDelegate{
  final songs=[
    'Jab Tak',
    'Shape of You',
    'What makes you beautiful',
    'Rait Jara si',
    'Hall of Fame',
    'Animal',
    'Middle of Night',
    'Dandelions',
  ];
  final recentSong=[
    'Hall of Fame',
    'Animal',
    'Middle of Night',
    'Dandelions',

  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    //Actions
    return [IconButton(onPressed: (){

    }, icon: Icon(Icons.search))];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    //leading icon
    return IconButton(onPressed: (){close(context, null);}, icon: AnimatedIcon(
      icon: AnimatedIcons.menu_arrow,
      progress: transitionAnimation,


    ),
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults

    //show some result based on selection
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //suggestion
    // TODO: implement buildSuggestions

    //suggestion List
    final suggestionList=query.isEmpty?recentSong:songs.where((name)=>name.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      leading:  Icon(Icons.music_note),
      title: Text(suggestionList[index]),

    ),itemCount:suggestionList.length ,);
    throw UnimplementedError();
  }

}