import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Chatpage(),
    );
  }));
}

class Chatpage extends StatefulWidget {
  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  var chats = [
    TabBarView(children: [chatspage()]),
    Text("Channel"),
    Text("Profile")
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
    child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Conversations",
            style: TextStyle(color: Colors.black,fontSize: 25),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                color: Colors.red[100]),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.add,color: Colors.pink,),
                  ),
                  Text("Add New",style: TextStyle(color: Colors.pink),),
                  SizedBox(width: 20,)
                ],
              ),),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (chatpage) {
            setState(() {
              index = chatpage;
            });
          },
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: ("Chats")),
            BottomNavigationBarItem(
                icon: Icon(Icons.group_work), label: ("Channels")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: ("Profile")),
          ],
        ),
        body: Center(child: chats[index]),
    ),
    );
  }
}

class chatspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Kriss Benwat",),
            subtitle: Text("Good to know"),
            trailing: Text("Today"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Rezi Makarov",),
            subtitle: Text("Its been a while"),
            trailing: Text("Today"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Gustav Lemelo",),
            subtitle: Text("Hey, where are you"),
            trailing: Text("Yesterday"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Bob Ryder",),
            subtitle: Text("Its over!"),
            trailing: Text("28 Jan"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Ken Simada",),
            subtitle: Text("Your welcome"),
            trailing: Text("24 Jan"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Emma Walkins",),
            subtitle: Text("I am going out"),
            trailing: Text("19 Jan"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Gilbert Hamminway",),
            subtitle: Text("Just attach the image"),
            trailing: Text("12 Jan"),
          ),Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                  "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
            ),
            title: Text("Bella Hammers",),
            subtitle: Text("The UI is nice"),
            trailing: Text("5 Jan"),
          ),
        ],
      ),
    );
  }
}
