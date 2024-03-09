import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: foodwork(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class foodwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back_ios,color: Colors.black,),
              title: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  "Search Food",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              trailing: GestureDetector(onTap: (){},
                child:

              Container(
                decoration: BoxDecoration(
                    color: Colors.orange, borderRadius: BorderRadius.circular(0)),
                child: Icon(Icons.person),
              ),),

            ),
            AppBar(
              backgroundColor: Colors.white,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white70, borderRadius: BorderRadius.circular(10)),
                child:ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text("Spice Food",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),leading: Icon(Icons.search,color: Colors.black,),


                ),
              ),
            ),
            StaggeredGrid.count(
              crossAxisCount: 2,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        children: [
                          Text(
                            "Found 80 results ",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: SizedBox(
                              height: 150,
                              width: 150,
                              child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "Assets/Icons/burger.jpeg",
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "One Burger ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "one combo",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "6.72",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("Assets/Icons/sandwich.jpeg"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Sandwich",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "one Comco",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "8.86",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
                ),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: Card(
                      color: Colors.white,

                      child: Column(
                        children: [
                          SizedBox(height: 150,width: 150,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage("Assets/Icons/alfam.jpeg"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("Alfahm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("one combo",style: TextStyle(color: Colors.red),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("9.80",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                          )
                        ],
                      ),
                    )),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Card(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                              height: 150,
                              width: 150,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    "Assets/Icons/broast.jpeg"),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Broast",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "one Combo",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "6.9",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}