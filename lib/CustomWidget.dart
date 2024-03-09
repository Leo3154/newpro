import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
  final Color? color;
  final Image? image;
  final Text? text;
  VoidCallback onpress;

  Customwidget({this.color, this.image, this.text, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        color: color,
        child: ListTile(
          leading: image,
          title: text,
          onTap: onpress,
        ),
      ),
    );
  }
}
