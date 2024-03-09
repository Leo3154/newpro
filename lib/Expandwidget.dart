import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: sliverswork2(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class sliverswork2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              child: Column(
            children: [
              ListTile(
                trailing: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                leading: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.black,
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                    "Assets/Icons/WhatsApp Image 2023-07-21 at 11.05.21.jpg"),
                radius: 80,
              ),
              Container(
                margin: const EdgeInsets.only(left: 70, right: 70, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "Assets/Svg/fb.svg",
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "Assets/Svg/googleplus.svg",
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "Assets/Svg/twitter.svg",
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      "Assets/Svg/linkedin.svg",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  title: Center(
                      child: Text(
                    "Sirajul Haq",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
                  subtitle: Center(
                      child: Text(
                    "@sirajs",
                    style: TextStyle(fontSize: 15),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  "Mobile App Developer and Open Source enthusiastic",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 250,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Privacy",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.privacy_tip,
                          color: Colors.black,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 250,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Purchase History",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.history,
                          color: Colors.black,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 250,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Help&Support",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.help,
                          color: Colors.black,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 250,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Settings",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.settings,
                          color: Colors.black,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 250,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(400),
                          color: Colors.grey),
                      child: ListTile(
                        title: Text(
                          "Invite Friend",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        leading: Icon(
                          Icons.insert_invitation,
                          color: Colors.black,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      )),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
