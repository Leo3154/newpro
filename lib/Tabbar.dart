import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'List_Builder.dart';
import 'List_View.dart';
import 'Login.dart';
import 'StaggeredGridView.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Tabbaar(),
      theme: ThemeData(

      ),
      );
    }
  ));
}

class Tabbaar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Tabbaar_state();
}

class Tabbaar_state extends State<Tabbaar>{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 4, child: Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.teal,
       title: Text("Whatsapp"),
       actions: [
         Padding(
           padding: const EdgeInsets.only(right: 15),
           child: Icon(Icons.camera_alt),
         ),
         Icon(Icons.search),
         PopupMenuButton(itemBuilder: (context){
           return[
             PopupMenuItem(child: Text("Settings")),
             PopupMenuItem(child: Text("Help")),
             PopupMenuItem(child: Text("New Group")),
             PopupMenuItem(child: Text("Logout")),
           ];
         }
         ),

       ],
       bottom: TabBar(tabs: [
         Tab(child: Icon(Icons.camera),),
         Tab(child: Text("Chat"),),
         Tab(child: Text("Status"),),
         Tab(child: Text("Contact"),),


       ],

         ),
     ),
     body: TabBarView(children: [
       List_seperate(),
       Loginpage(),
       Staggered(),
       ListVieww(),

     ],),
   ),
   );
  }
}

