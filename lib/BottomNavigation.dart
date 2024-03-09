import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login With Validate.dart';


void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }));
}

class BottomNav extends StatefulWidget {
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var screen = [
    Text("Home"),
    Text("Search"),
    Text("People"),
    Text("Favorites"),
    Text("Login"),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Bottom Navigation",
          style: TextStyle(
              color: Colors.white70, fontSize: 25, fontStyle: FontStyle.italic),
        )),
        backgroundColor: Colors.black87,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.black,
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.cyan),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "People",
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "favorites",
              backgroundColor: Colors.yellow[700]),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_validate()));
              }, icon: Icon(Icons.login),), label: "login",
              backgroundColor: Colors.indigoAccent),
        ],
      ),
      body: Center(child: screen[index]),
    );
  }
}
