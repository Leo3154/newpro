import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: ListVieww(),
    ),
  ));
}

class ListVieww extends StatelessWidget {
  var Steps = ["Step1", "Step2", "Step3", "Step4", "Step5","Step6"];
  var Stepdue = [
    "Step 01 due in 1day",
    "Step 02 due in 2day",
    "Step 03 due in 3day",
    "Step 04 due in 4day",
    "Step 05 due in 5day",
    "Step 06 due in 6day"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("List Seperate")),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(Steps[index]),
                subtitle: Text(Stepdue[index]),
                trailing: Icon(Icons.check_box_outline_blank),

            );
          },

        separatorBuilder: (context,index){
            return Card(
              child: ListTile(leading: Icon(Icons.description),
              title: Text("this is the very short description of the step"),
              subtitle: Text("Description"),),
            );


          },itemCount: Steps.length,



      ),
    );
  }
}
