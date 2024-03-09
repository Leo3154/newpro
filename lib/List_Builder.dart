import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: List_seperate(),
    ),
  ));
}

class List_seperate extends StatelessWidget {
  var name = ["Akshay", "Ram", "Anu"];
  var phone = ["9633014998", "7665445342", "09874543432"];
  var colors=[100,200,300,];
  var color=[Colors.yellow,Colors.deepOrange,Colors.purple];
  var Image = [
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png",
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png",
    "assets/icons/Sensibleworld-Starwars-Darth-Vader.512.png"
  ];

  var clas = ["c1","c2","c3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Seperate"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(color:color[index],
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(Icons.call),
              leading: CircleAvatar(
                backgroundImage: AssetImage(Image[index]),
              ),
            ),
          );
        },
        // separatorBuilder: (context,index){
        //         return Text(clas[index]);
        separatorBuilder: (context,index){
          return Divider(color: Colors.cyan,thickness: 1,);
        },itemCount: name.length,
      ),
    );
  }
}