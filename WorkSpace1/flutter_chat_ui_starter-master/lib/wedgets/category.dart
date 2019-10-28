import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex=0;
  final List<String> categories =['Message','Online','Group','Request'];
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color:Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int idx){
         return GestureDetector(
            onTap: (){
               setState(() {
                selectedIndex=idx; 
               });
           },
            child: Padding(
             padding: EdgeInsets.symmetric(
               vertical: 30.0,
               horizontal: 20.0
             ),
             child: Text(categories[idx],
             style: TextStyle(
               color: Colors.white,
               fontSize: 20.2,
               fontWeight: FontWeight.bold,
               letterSpacing: 1.2
               ))
           ),
         );
        },
      ),
    );
  }
}