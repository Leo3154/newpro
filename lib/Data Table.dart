import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Datatablee(),
    );
  }));
}

class Datatablee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.blueGrey),
        child: Center(
          child: DataTable(
            columns: [
              DataColumn(
                  label: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label:
                      Text("Age", style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text("Role",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text("Salary",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("Anu")),
                DataCell(Text("25")),
                DataCell(Text("Student")),
                DataCell(Text("5000")),
              ]),
              DataRow(cells: [
                DataCell(Text("Anil")),
                DataCell(Text("26")),
                DataCell(Text("Student")),
                DataCell(Text("5500")),
              ]),
              DataRow(cells: [
                DataCell(Text("Lena")),
                DataCell(Text("25")),
                DataCell(Text("Student")),
                DataCell(Text("6000")),
              ]),
              DataRow(cells: [
                DataCell(Text("Anas")),
                DataCell(Text("24")),
                DataCell(Text("Student")),
                DataCell(Text("7000")),
              ]),
              DataRow(cells: [
                DataCell(Text("Jina")),
                DataCell(Text("25")),
                DataCell(Text("Student")),
                DataCell(Text("5000")),
              ]),
              DataRow(cells: [
                DataCell(Text("Tara")),
                DataCell(Text("26")),
                DataCell(Text("Traine")),
                DataCell(Text("10000")),
              ]),
              DataRow(cells: [
                DataCell(Text("Smith")),
                DataCell(Text("35")),
                DataCell(Text("Manager")),
                DataCell(Text("60000")),
              ]),
              DataRow(cells: [
                DataCell(Text("Rekha")),
                DataCell(Text("24")),
                DataCell(Text("Student")),
                DataCell(Text("7000")),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
