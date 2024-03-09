import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("listview"),),
     body: ListView(
       children: [
     ListTile(
     leading: CircleAvatar(backgroundImage: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png"),),
    title: Text("arya"),
    subtitle: Text("2489572948"),
    trailing: Icon(Icons.call),
         ),
         ListTile(
           leading: Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png"),),
           title: Text("arun"),
           subtitle: Text("7184584545"),
           trailing: Icon(Icons.call),
         ) ,
         ListTile(
           leading: Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png"),),
           title: Text("jay"),
           subtitle: Text("3514548651"),
           trailing: Icon(Icons.call),
         ),
         ListTile(
           leading: CircleAvatar(backgroundImage: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png"),),
           title: Text("arya"),
           subtitle: Text("2489572948"),
           trailing: Icon(Icons.call),
         ),
         ListTile(
           leading: Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png"),),
           title: Text("arun"),
           subtitle: Text("7184584545"),
           trailing: Icon(Icons.call),
         ) ,
         ListTile(
           leading: Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png"),),
           title: Text("jay"),
           subtitle: Text("3514548651"),
           trailing: Icon(Icons.call),
         ),
       ],
     ),
   );
  }
}
