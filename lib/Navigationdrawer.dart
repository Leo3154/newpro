import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Navigationdrawer(),
    );
  }));
}

class Navigationdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Leo"),
                accountEmail: Text(
                  "sirajulhaq3154@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("Assets/Icons/ninja.jpg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "Assets/Icons/denin-lawley-HaziTVzN4CU-unsplash.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("Assets/Icons/赛亚人.png"),
                  )
                ],
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "Assets/Icons/OMEN season 3 winter edition.jpg"))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.inbox,
                  color: Colors.white,
                ),
                title: Text(
                  "Inbox",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.white,
                ),
                title: Text(
                  "Help",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
