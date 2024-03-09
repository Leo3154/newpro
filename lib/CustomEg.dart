import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomWidget.dart';


void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Customeg(),
    );
  }));
}

class Customeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Customwidget(
        onpress: () {},
        image: Image(
          image: AssetImage("Assets/Icons/ninja.jpg"),
        ),
        text: Text("Leo"),
        color: Colors.cyan,
      ),
    );
  }
}
