import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: BotTabNav(),
    );
  }));
}

class BotTabNav extends StatefulWidget {
  @override
  State<BotTabNav> createState() => _BotTabNavState();
}

class _BotTabNavState extends State<BotTabNav> {
  var screen=[
  Text("Home"),
    TabBarView(children: [lunches()]),
  Text("Cart"),
    Text("Account"),
  ];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(""),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text("Lunches"),
              ),
              Tab(
                child: Text("Cart"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              label: "Lunch",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: "Account",
            ),
          ],
        ),
        body: Center(child: screen[index]),
      ),
    );
  }
}
class lunches extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        ListTile(
          leading: Container(color: Colors.green,height: 300,width: 100,
          child: Column(children: [
            Text("1"),
            Text("Monday")
          ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.red,height: 300,width: 100,
              child: Column(children: [
                Text("2"),
                Text("Tuesday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.blue,height: 300,width: 100,
              child: Column(children: [
                Text("3"),
                Text("Wenesday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.purple,height: 300,width: 100,
              child: Column(children: [
                Text("4"),
                Text("Thusday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.indigo,height: 300,width: 100,
              child: Column(children: [
                Text("5"),
                Text("Friday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.orange,height: 300,width: 100,
              child: Column(children: [
                Text("6"),
                Text("Saturday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.teal,height: 300,width: 100,
              child: Column(children: [
                Text("7"),
                Text("Sunday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.green,height: 300,width: 100,
              child: Column(children: [
                Text("8"),
                Text("Monday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
        ListTile(
          leading: Container(color: Colors.red,height: 300,width: 100,
              child: Column(children: [
                Text("9"),
                Text("Tuesday")
              ],)),
          title: Text("Burger"),
        ),
        Divider(),
      ],),

    );

  }

}