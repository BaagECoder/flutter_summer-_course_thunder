import 'package:flutter/material.dart';
import 'package:icodegram_app/components/button.dart';
import 'package:icodegram_app/components/input.dart';
import 'package:icodegram_app/components/logo.dart';
import 'package:icodegram_app/components/register_container.dart';
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
            AppInput(),
            SizedBox(
              height: 28,
            ),
            SizedBox(
              height: 28,
            ),
            Register(),
          ],
        ),
      ),
    );
  }
}
