import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Gridbuilder(),
    );
  }));
}

class Gridbuilder extends StatelessWidget {
  var img = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera_alt_outlined,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.speaker_notes_outlined,
    Icons.music_note
  ];
  var name = [
    "Home",
    "E-mail",
    "Alarm",
    "Wallet",
    "Backup",
    "Book",
    "Camera",
    "Person",
    "Print",
    "Phone",
    "Notes",
    "Music"
  ];
  var col = [
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.brown,
    Colors.redAccent,
    Colors.grey,
    Colors.green,
    Colors.deepPurple,
    Colors.brown,
    Colors.lightBlueAccent,
    Colors.purpleAccent,
    Colors.deepOrangeAccent,
    Colors.cyan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("GridBuilder")),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Card(
                color: (col[index]),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Icon(img[index],size: 70,),
                    ),
                    Text(name[index]),

                  ],
                ),

              );
            },
            itemCount: img.length,
            ),
    );
  }
}
