import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp());
  final Text text = Text(
    "Flutter Day 10",
    style: TextStyle(
      fontSize: 34,
      color: Colors.deepOrangeAccent,
      fontWeight: FontWeight.bold,
    ),
  );

  final Container container = Container(
    child: Center(
      child: text,
    ),
  );

  final Scaffold myScaffold = Scaffold(
    body: container,
    appBar: AppBar(
      title: Text("Hello Thunder"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.edit),
    ),
  );

  final MaterialApp app = MaterialApp(
    theme: ThemeData(fontFamily: "Ribeye"),
    home: myScaffold,
  );
  runApp(app);

  // Stateless Widget

}
