import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Shared%20preference%202/Home2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home2.dart';

void main(){
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Loginpageee(),));
}

class Loginpageee extends StatefulWidget {
  @override
  State<Loginpageee> createState() => _LoginpageeeState();
}

class _LoginpageeeState extends State<Loginpageee> {

  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String uname;
  late String pswd;
  late String name;
  late String emaill;
  @override

  void initState() {

    check_if_already_login();
    getvalue();
  }
  void check_if_already_login () async {
    logindata = await SharedPreferences.getInstance();
    newuser =(logindata.getBool("newuser") ?? true);
    if(newuser==false){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homee()));
    }
  }

  void getvalue() async {
    logindata =await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString("name")!;
      uname = logindata.getString("usermane")!;
      pswd = logindata.getString("password")!;
      emaill =logindata.getString("email")!;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(child: Text("WATER BODY")),
          ),
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),labelText: "Username"
            ),
          ),
          TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),labelText: "password"
          ),),
          ElevatedButton(onPressed: (){
            String username = username_controller.text;
            String password = password_controller.text;

            if(username != "" && password !="" && username == uname && password == pswd ){
              print("Suuccefl");
              logindata.setBool("newuser", false);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Homee()));
            }

          }, child: Text("LOGIN"))
        ],
      ),
    );
  }


}