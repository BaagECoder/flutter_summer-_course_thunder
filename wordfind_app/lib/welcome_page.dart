import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_letter.dart';
import 'package:wordfind_app/gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: SafeArea(
        child:
       Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back1.png"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 130),
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GradientLetter("W"), Padding(padding: EdgeInsets.only(right: 10)),
                      GradientLetter("O"), Padding(padding: EdgeInsets.only(right: 10)),
                      GradientLetter("R"),Padding(padding: EdgeInsets.only(right: 10)),
                      GradientLetter("D"),Padding(padding: EdgeInsets.only(right: 10)),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  GradientText("GAME", 31.6),
                  Container(
                    child: Image.asset(
                      "assets/images/iCodeGuy.png",
                      width: 374.0,
                      height: 374.0,
                    ),
                  ),
                  GradientText("READY", 28.0),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom:20 ),
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            "PLAY",
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
