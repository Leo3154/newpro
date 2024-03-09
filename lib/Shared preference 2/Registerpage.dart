import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Shared%20preference%202/Login2.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login2.dart';

void main() {
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
    home: Regnpage(),
  ));
}

class Regnpage extends StatefulWidget {
  @override
  State<Regnpage> createState() => _RegnpageState();
}

class _RegnpageState extends State<Regnpage> {
  final name_controller = TextEditingController();
  final username_controller = TextEditingController();
  final email_controller = TextEditingController();
  final password_comntroller = TextEditingController();
  late SharedPreferences logindate;

  @override
  void dispose() {
    name_controller.dispose();
    username_controller.dispose();
    email_controller.dispose();
    password_comntroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REGN"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(child: Text("WATER BODY")),
            ),
            TextField(
              controller: name_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Name"),
            ),
            TextField(
              controller: username_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Username"),
            ),
            TextField(
              controller: email_controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "email"),
            ),
            TextField(
              controller: password_comntroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Password"),
            ),
            ElevatedButton(onPressed: (){

            },
                child:  const Text("REG"))

          ],
        ));
  }
  void registerr() async{
    logindate = await SharedPreferences.getInstance();

    String name = name_controller.text;
    String username = username_controller.text;
    String email = email_controller.text;
    String password = password_comntroller.text;

    if( username !="" && password != ""){
      logindate.setString("name", name);
      logindate.setString("username", username);
      logindate.setString("email", email);
      logindate.setString("password", password);
      Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context) => Loginpageee(),));
    }
  }
}