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
      body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20,maxCrossAxisExtent: 200,
      ),
        children: [
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),
          Image(image: AssetImage("Assets/Icons/Iconarchive-Incognito-Animal-2-Lion.512.png")),


        ],
      ),
    );
  }
}