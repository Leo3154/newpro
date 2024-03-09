
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() {
  runApp(MaterialApp(
    home: Login_validate(),
  ));
}

class Login_validate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_validate_state();
}

class Login_validate_state extends State<Login_validate> {
  @override
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage(
                    "Assets/Icons/Iconarchive-Incognito-Animal-2-Wolf.512.png"),
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (Uname) {
                    if (Uname!.isEmpty ||
                        !Uname.contains('@') ||
                        !Uname.contains('.')) {
                      return 'Enter valid Username';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  obscureText: showpass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (Password) {
                    if(Password!.isEmpty || Password.length<6){
                      return "enter a valid Password";
                    }
                    else
                      return null;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Homepage()));
                    }
                  },
                  child: Text("Login")),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text("create a new Account"))
            ],
          ),
        ),
      ),
    );
  }
}
