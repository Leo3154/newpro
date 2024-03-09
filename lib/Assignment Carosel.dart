import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: workslider(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class workslider extends StatefulWidget {
  @override
  State<workslider> createState() => _worksliderState();
}

class _worksliderState extends State<workslider> {
  int index = 0;

  var image = [
    "Assets/Icons/赛亚人.png",
    "Assets/Icons/赛亚人.png",
    "Assets/Icons/赛亚人.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [Icon(Icons.location_on), Text("  Kochi")],
                ),
              ),
            ],
            title: Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(color: Colors.white),
            ),
            bottom: AppBar(
              backgroundColor: Colors.green,
              title: SizedBox(
                width: 500,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for vegetables and fruits",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.green,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.green),
                        ),
                        height: 20,
                        width: 120,
                        child: const Center(
                            child: Text(
                              "VEGETABLES",
                              style: TextStyle(fontSize: 12, color: Colors.green),
                            ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.green),
                        ),
                        height: 20,
                        width: 120,
                        child: const Center(
                            child: Text(
                              "FRUITS",
                              style: TextStyle(fontSize: 12, color: Colors.green),
                            ))),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                          border: Border.all(color: Colors.green),
                        ),
                        height: 20,
                        width: 120,
                        child: const Center(
                            child: Text(
                              "EXOTIC CUTS",
                              style: TextStyle(fontSize: 12, color: Colors.green),
                            ))),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              CarouselSlider(
                  options: CarouselOptions(
                    height: 250.0,
                    autoPlay: false,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.bounceOut,
                    enableInfiniteScroll: true,
                  ),
                  items: [
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage(
                              "Assets/Icons/denin-lawley-HaziTVzN4CU-unsplash.jpg"),
                        ),
                      ),
                    )
                  ]),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54, width: 1),
                    ),
                    height: 70,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.timer),
                            SizedBox(height: 20, child: Text("30 min policy"))
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.contacts),
                            SizedBox(height: 20, child: Text("tracebility"))
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.home),
                            SizedBox(height: 20, child: Text("local surrounding"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 10),
                    child: Text(
                      "Shop by Category",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              VegGrid(),

              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: BottomNavigationBar(
                    backgroundColor: Colors.white,
                    selectedItemColor: Colors.green,
                    unselectedItemColor: Colors.green,
                    currentIndex: index,
                    type: BottomNavigationBarType.fixed,
                    onTap: (tapindex) {
                      setState(() {
                        index = tapindex;
                      });
                    },
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: "Home"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.shopping_cart), label: "Cart"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_box), label: "Account")
                    ]),
              )
            ]),
          ),
        ]));
  }
}

class VegGrid extends StatelessWidget {
  List<String> images = [
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROvtRXHaAOMuDO_2oW95H17oDFf6zyfJ1fpA&usqp=CAU",
    "https://images.news18.com/ibnlive/uploads/2021/08/tomato1-16299798893x2.jpg",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),

            ],
          );
        });
  }
}