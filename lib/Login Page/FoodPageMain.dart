import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Login%20Page/DummyProduct.dart';
import 'package:newpro/Login%20Page/FoodList.dart';


void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(home: FoodMain(),
        routes:{
          "listpage":(context)=>FoodList(),
        },
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      );
    }
  ));
}

class FoodMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food Home"),),
      body: ListView(
          padding: const EdgeInsets.all(15),
          children: dummyproducts2.map((product) => TextButton(onPressed: () => gotoNext(context, product["id"]),
              child: Text("${product["name"]}",
                style: const TextStyle(fontSize: 20),
              )))
              .toList()),
    );
  }

 void gotoNext(BuildContext context, product) {
   Navigator.of(context).pushNamed("listpage",arguments: product);
  }
}