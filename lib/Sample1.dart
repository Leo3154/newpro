/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(*/

     /*   color: Colors.white,
        child: Column(
          children: [
            Center(
              child: Text(
                "Welcome to flutter",
                style: TextStyle(color: Colors.blueGrey,fontSize: 30),
              ),
            ),
            Row(
              children: [
                Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png"),height: 80,width: 70,),


                Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png"),height: 80,width: 70,),


              ],
            ),
          ],
        ),

      ),
    );
  }
}*/

/*import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/main.dart';

import 'Login.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginpage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image(
                  image: AssetImage(
                      "Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png"),
                  height: 300,
                  width: 300,
                ),
              ),
              Text(
                "Welcome to flutter",
                style: TextStyle(color: Colors.blueGrey, fontSize: 40,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
              ),


            ],
          ),
        ),
      ),
    );
  }
}*/


/*import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: List_builder(),
    ),
  ));
}

class List_builder extends StatelessWidget {
  var name = ["Akshay", "Ram", "Anu"];
  var phone = ["9633014998", "7665445342", "09874543432"];
  var Image = [
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png",
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png",
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List builder"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                trailing: Icon(Icons.call),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(Image[index]),
                ),
              ),
            );
          },
          itemCount: name.length),
    );
  }
}*/
