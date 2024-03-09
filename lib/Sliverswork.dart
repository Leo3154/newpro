import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Sliverswork(),
    );
  }));
}

class Sliverswork extends StatelessWidget {
  var icon = [Icons.home, Icons.restaurant, Icons.local_cafe];
  var name = ["home", "restaurant", "Cafe"];
  var color = [Colors.pink, Colors.blueAccent, Colors.deepOrange];
  var image = [
    "Assets/Icons/images.jpeg",
    "Assets/Icons/download.jpeg",
    "Assets/Icons/images.jpeg",
    "Assets/Icons/download.jpeg",
  ];
  var text = [
    "Awesome Room near kakkanad",
    "Peacefull Rooms",
    "Beautifull Rooms",
    "Vintage Room near Kochi",
    "Beautifull Rooms",
    "Peacefull Rooms"
  ];
  var sub = [
    "Kakkanad,Kochi",
    "Kakkanad,Kochi",
    "Kakkanad,Kochi",
    "Kakkanad,Kochi",
    "Kakkanad,Kochi",
    "Kakkanad,Kochi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            leading: Icon(Icons.menu),
            title: Center(child: Text("Type your Location")),
            actions: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.only(
                  right: 30,
                  left: 30,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Kakkanad ,Kochi",
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 15, right: 10, left: 10, bottom: 15),
                  child: Card(
                    color: color[index],
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          children: [
                            Icon(icon[index], color: Colors.white),
                            Text(
                              name[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: color.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Card(elevation: 0,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage(image[index],
                                ),height: 170
                                ,width: double.infinity
                                ,fit: BoxFit.fill,
                              ),
                            ],
                          ),
                          ListTile(
                            title: Text(
                              text[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              sub[index],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(child:Row(children: [
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star,color: Colors.green,),
                              Icon(Icons.star_half,color: Colors.green,),
                              Text("(220 reviews)")
                            ],),),
                          )
                        ],
                      )),
                ),
              );
            },
            childCount: image.length,
          ))
        ],
      ),
    );
  }
}
