import 'package:flutter/material.dart';
import 'package:icodegram_app/components/button_widget.dart';
import 'package:icodegram_app/components/login_input_container.dart';
import 'package:icodegram_app/components/logo_widget.dart';
import 'package:icodegram_app/components/login_register_widget.dart';
import '../resources/auth_method.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLogo(),
            SizedBox(
              height: 60,
            ),
            LoginInput(),
            SizedBox(
              height: 28,
            ),
            SizedBox(
              height: 28,
            ),
            LoginRegister(),
          ],
        ),
      ),
    );
  }
}
