import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/wedgets/category.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
     appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.menu),
         color: Colors.white,
         iconSize: 30.0,
          onPressed: () {},
       ),
       title: Text(
         'Chat',
         style: TextStyle(
           fontSize: 28.0,
           fontWeight: FontWeight.bold
         ),
       ),
       elevation: 0.0,
       actions: <Widget>[
          IconButton(
         icon: Icon(Icons.search),
         color: Colors.white,
         iconSize: 30.0,
          onPressed: () {}
        )
       ],
     ),
     body: Column(
       children: <Widget>[
        Category(),
        Expanded(
           child: Container(
            decoration: BoxDecoration(
              color:Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)
              )
              ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                 Text('Favorit Contact'),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz
                  ),
                  onPressed: (){

                  },
                )
                  ],
  
                )
              ],
            ),
          ),
        )
       ],
     ),
    );
  }
}
