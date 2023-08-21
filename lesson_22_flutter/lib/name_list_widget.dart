import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    'John', 'Alice', 'Bob', 'Emily', 'David',
    'Linda', 'Michael', 'Sophia', 'Daniel', 'Olivia',
    'William', 'Ava', 'James', 'Emma', 'Benjamin',
    'Mia', 'Joseph', 'Isabella', 'Johnathan', 'Ella',
    'Christopher', 'Grace', 'Andrew', 'Chloe', 'Samuel'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
            child: Center(
              child: Text(names[index]),
            ),
          );
        },
      ),
    );
  }
}


