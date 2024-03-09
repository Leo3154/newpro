import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Dismissiblee(),
    );
  }));
}

class Dismissiblee extends StatelessWidget {
  var datas = ["data 1", "data 2", "data 3"];
  var colors = [600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: ValueKey(datas),
              child: ListTile(
                title: Center(child: Text(datas[index])),
              ),
              background: Container(
                color: Colors.cyan,
              ),
              secondaryBackground: Container(
                color: Colors.yellow,
              ),
            );
          }),
    );
  }
}
