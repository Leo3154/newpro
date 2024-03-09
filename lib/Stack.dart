import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Stackk(),
    );
  }));
}

class Stackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child:
          Container(
            color: Colors.yellow,


          ),),

         Positioned(child:  Container(
            color: Colors.white70,
            height: 800,
            width: 550,
          ),

           top: 200,
         ),
          Positioned(child:
          Container(child: Image.asset("Assets/Icons/denin-lawley-HaziTVzN4CU-unsplash.jpg",fit: BoxFit.fill,),
            color: Colors.white,
            height: 140,
            width: 140,
          ),bottom: 580,left: 130,),
        ],
      ),
    );
  }
}
