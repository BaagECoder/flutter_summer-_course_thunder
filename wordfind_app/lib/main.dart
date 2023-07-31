import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Word Find Game',
        theme: ThemeData(
          fontFamily: "Ribeye",
        ),
        home: Scaffold(
          floatingActionButton: Container(
            width: 310,
            height: 60,
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Color(0xFFE86B02) , Color(0xFFFA9541)]


              ),
              borderRadius: BorderRadius.circular(25),


            ),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: ),
            ),

          ),
          body: Center(

          ),
        ));
  }
}
