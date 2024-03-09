import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newpro/Login%20With%20Validate.dart';
import 'package:newpro/Shared%20preference%202/Login2.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Homee extends StatefulWidget {
  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  get name => null;

  get logindata => null;

  @override
  void initState() {
    initial();
  }
  void initial() async{
    var logindata = await SharedPreferences.getInstance();
    setState(() {
      var name = logindata.getString("name")!;

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("vdfvvscv"),),
      body: Column(
        children: [
          Text("hii $name Welcome"),
          ElevatedButton(onPressed: () {
            logindata.setbool("newuser",true);
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Loginpageee()));
          }, child: const Text("LogOut"),
          )
        ],
      ),

    );
  }
}