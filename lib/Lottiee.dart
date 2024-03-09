import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: Lottiee(),);
    }
  ));
}

class Lottiee extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Lottiee")),),
    body: ListView(children: [
      Lottie.asset("Assets/Animation/Animation - 1697435384929.json"),
      Lottie.network("https://lottie.host/2daf86d0-9e81-4c7c-9f60-cc4fe15151d1/iWHGkODaP5.json")
    ],),
    
    );

  }
}