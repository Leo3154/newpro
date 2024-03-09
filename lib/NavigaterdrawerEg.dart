import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: NavigationdrawerEg(),
    );
  }));
}

class NavigationdrawerEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email"),
      ),
      drawer: Drawer(
          child: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "Mail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              subtitle: Text(
                "sirajulhaq3154@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.forward_to_inbox_rounded),
              title: Text("Inbox"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Outbox"),
            ),
            ListTile(
              leading: Icon(Icons.favorite_rounded),
              title: Text("Favorites"),
            ),
            ListTile(
              leading: Icon(Icons.archive),
              title: Text("Archive"),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Trash"),
            ),
            ListTile(
              leading: Icon(Icons.crisis_alert_rounded),
              title: Text("Spam"),
            ),
            Divider(),
            ListTile(title: Text("Labels"),),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Family"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Friends"),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Work"),
            ),
            Divider(),

          ],
        ),
      )),
    );
  }
}
