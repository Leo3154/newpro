import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context)
      =>
          MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: Gridview(),)
  ),
  );
}

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        crossAxisSpacing:20,mainAxisSpacing:20,
      ),
        children: [
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png")),


        ],
      ),
    );
  }
}