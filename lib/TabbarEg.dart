import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: TabbarEg(),
    );
  }));
}

class TabbarEg extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabbarEg_state();
}

class TabbarEg_state extends State<TabbarEg> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("GeeksForGeeks"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Column(
                  children: [Icon(Icons.home_filled), Text("Home")],
                ),
              ),
              Tab(
                child: Column(
                  children: [Icon(Icons.account_box_outlined), Text("Account")],
                ),
              ),
              Tab(
                child: Column(
                  children: [Icon(Icons.alarm), Text("Alaram")],
                ),
              ),
              Tab(
                child: Column(
                  children: [Icon(Icons.home_filled), Text("Home")],
                ),
              ),
              Tab(
                child: Column(
                  children: [Icon(Icons.account_box_outlined), Text("Account")],
                ),
              ),
                Tab(child: Column(
                  children: [
                    Icon(Icons.alarm),Text("Alaram")
                  ],
                ),),
              Tab(child: Column(
                children: [
                  Icon(Icons.home_filled),Text("Home")
                ],
              ),),
              Tab(
                child: Column(
                  children: [Icon(Icons.account_box_outlined), Text("Account")],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Icon(Icons.home_filled,size: 60,),
          Icon(Icons.account_box_outlined,size: 60,),
          Icon(Icons.alarm,size: 60,),
          Icon(Icons.home_filled,size: 60,),
          Icon(Icons.account_box_outlined,size: 60,),
          Icon(Icons.alarm,size: 60,),
          Icon(Icons.home_filled,size: 60,),
          Icon(Icons.account_box_outlined,size: 60,),


        ],),
      ),
    );
  }
}
