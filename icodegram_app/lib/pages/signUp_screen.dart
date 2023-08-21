import 'package:flutter/material.dart';
import 'package:icodegram_app/components/button_widget.dart';
import 'package:icodegram_app/components/logo_widget.dart';
import 'package:icodegram_app/components/login_register_widget.dart';
import 'package:icodegram_app/components/signUp_input_container.dart';
import 'package:icodegram_app/components/signUp_register_widget.dart';
import 'package:icodegram_app/resources/auth_method.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Container(
              ), flex: 2,),
              AppLogo(),
              SizedBox(
                height: 18,
              ),
              SignUpInput(),
              Flexible(child: Container(), flex: 1,),

              SignUpRegister(),
              Flexible(child: Container(), flex: 2,),

            ],
          ),
        ),
      ),
    );
  }
}
