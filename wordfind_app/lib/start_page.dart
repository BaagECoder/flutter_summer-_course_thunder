import 'package:flutter/material.dart';
import 'package:wordfind_app/gradient_text.dart';
import 'package:wordfind_app/input_field.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset("assets/images/arrow_back.png"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50.0,
          child: Image.asset("assets/images/game_logo.png"),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/back2.png")),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                Image.asset("assets/images/iCodeGuyHead.png"),
                Padding(padding: EdgeInsets.only(top: 30)),
                GradientText("Player Name", 20.0),
                Padding(padding: EdgeInsets.only(top: 30)),
                InputField(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: StartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.centerRight,
          colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
        ),
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
          "START",
          style: TextStyle(
              fontFamily: "Nunito", fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
