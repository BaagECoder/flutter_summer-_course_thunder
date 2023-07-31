import 'package:flutter/material.dart';
class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
          leading: IconButton(
            icon: Image.asset("assets/image/arrow_back.png"),
            onPressed: () {
              Navigator.of(context).pop();
            },

          )
      ),
    );
  }

}
