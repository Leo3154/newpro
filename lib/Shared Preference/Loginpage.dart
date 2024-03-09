import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Assignment%20Carosel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../List_Builder.dart';



void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: newlogin(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class newlogin extends StatefulWidget {
  @override
  State<newlogin> createState() => _newloginState();
}

class _newloginState extends State<newlogin> {

  late SharedPreferences data;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late bool newuser;


  @override
  void initState() {
    checkuser();
    super.initState();
  }
  void checkuser() async{

    data=await SharedPreferences.getInstance();
    newuser =(data.getBool("newuser")?? true);


    if(newuser == false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>List_seperate(),));
    }


  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image(image: AssetImage("Assets/Icons/Login.png"),height: 250,width: 250,),
          SizedBox(height: 20,),
          TextField(decoration: InputDecoration(hintText: "Email",prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(350
                  ))),),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(hintText: "Password",prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100)))),),
          SizedBox(height: 20,),
          ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: (){

                String uname = username.text;
                String pwd= password.text;

                if(uname != "" && pwd != ""){

                  print("login Success");

                  data.setString("username",uname);
                  data.setBool("newuser", false);
                  print(uname);

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>List_seperate(),));
                }
              }, child: Text("Login"))
        ],
      ),
    );
  }
}