import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}

class Loginpage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Loginpage> {
  bool showpass =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Container(
          child: Center(
              child: Column(
                children: [
                SizedBox(
                height:30,
              ),
              Text(
                "Login Page",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),

                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: TextField(
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }
                        else
                          {
                            showpass=true;
                          }
                      });
                    }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),),
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))
                ),),
              ),
              SizedBox(height: 50,),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan,side: BorderSide(width: 1.0,color: Colors.blueAccent) ,),
                  onPressed: (){}, child: Text("Login")),
                  SizedBox(height: 30,),
                  TextButton(onPressed: (){}, child: Text("Not a user ? create a new  account")),
            ],
    ),
          ),

    ),

    );
  }
}
