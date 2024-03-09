import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: alertbox(),
    );
  }));
}

class alertbox extends StatefulWidget {
  @override
  State<alertbox> createState() => _alertboxState();
}

class _alertboxState extends State<alertbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Exit"),
                    content: Text(
                      "Do you want to exit",
                      style: TextStyle(backgroundColor: Colors.purpleAccent),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("YES")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "NO",
                            style: TextStyle(color: Colors.yellow),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("CANCEL KARO BHAI")),
                    ],
                  );
                });
          },
          child: Text("Press Me"),
        ),
      ),
    );
  }
}