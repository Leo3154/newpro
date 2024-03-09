
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void  main(){
  runApp(MaterialApp(home: logipages(),));
}
class logipages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>LoginnState();


}

class LoginnState extends State<logipages>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(title: Text("gf"),) ,
    body: Center(child: Text("chhxfc"),)
    );
  }
}