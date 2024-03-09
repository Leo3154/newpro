import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Passing%20Data%20Between%20Screen/DummyData.dart';

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = dummyproducts.firstWhere((product) => product["id"] == id);
    return Scaffold(
      appBar: AppBar(title: Text("Product"),),
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
            Text("${product["description"]}")
          ],
        ),
      ),
    );
  }
  
}