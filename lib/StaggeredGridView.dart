import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Staggered(),
    );
  }));
}

class Staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(
       // title: Text("Grid View"),
      //),
      body: StaggeredGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: 2,
        children: const [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.cyan,
              child: Image(
                image:
                AssetImage("Assets/Icons/OMEN season 3 winter edition.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Card(
                color: Colors.greenAccent,
                child: Image(
                  image: AssetImage(
                      "Assets/Icons/alex-knight-5-GNa303REg-unsplash.jpg"),
                  fit: BoxFit.fill,
                )),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
                color: Colors.blueGrey,
                child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 50,
                          ),
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ))),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.grey,
              child: Image(
                image: AssetImage(
                    "Assets/Icons/pawel-nolbert-4u2U8EO9OzY-unsplash.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.black,
              child: Image(
                image: AssetImage(
                    "Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png"),
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.lightBlueAccent,
              child: Image(
                image: AssetImage(
                    "Assets/Icons/denin-lawley-HaziTVzN4CU-unsplash.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
                color: Colors.red,
                child: Image(
                  image: AssetImage("Assets/Icons/ninja.jpg"),
                  fit: BoxFit.fill,
                )),
          ),
        ],
      ),
    );
  }
}
