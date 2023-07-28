import 'package:flutter/material.dart';

void main() {
  final MySuperApp myApp = MySuperApp();
  runApp(myApp);
}

// Stateless Widget
class MySuperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Ribeye"),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hello Baagii"),
          ),
          body: Container(
            child: Center(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  "Hello Body",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 34),
                ),
                  Text(
                    "Hello Body",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 34),
                  ),
                  Text(
                    "Hello Body",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 34),
                  ),
                ],

              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: printMe ,
            child: Image.asset("assets/images/Facebook.png", fit: BoxFit.cover
              ,
           ),

          ),
        ));
  }
}
void printMe(){
  print("Hello me");
}
