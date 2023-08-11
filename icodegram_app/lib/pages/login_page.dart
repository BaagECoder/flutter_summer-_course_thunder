import 'package:flutter/material.dart';
import 'package:icodegram_app/components/input.dart';
import 'package:icodegram_app/components/logo.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF121212),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLogo(),
          SizedBox(
            height: 28,
          ),
          AppInput(),



        ],
      ),

    );

  }
}
