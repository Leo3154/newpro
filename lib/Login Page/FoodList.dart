import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Login%20Page/DummyProduct.dart';

class FoodList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts2.firstWhere((product) => product["id"] == id);
    return Scaffold(
      appBar: AppBar(title: Text("Food Menu"),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(product["image"]),
            ),
            Text("${product["name"]}",
              style: TextStyle(fontSize: 30),
            ),
            Text("${product["description"]}"),
            Text("${product["PRICE"]}"),
            Text("${product["PRICE1"]}")
          ],
        ),
      ),
    );
  }

}