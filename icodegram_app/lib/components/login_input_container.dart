import 'package:flutter/material.dart';
import 'package:icodegram_app/components/button_widget.dart';
import 'package:icodegram_app/components/text_field_input_widget.dart';
import 'package:icodegram_app/pages/login_screen.dart';
import 'package:icodegram_app/pages/signUp_screen.dart';

import '../resources/auth_method.dart';

class LoginInput extends StatefulWidget {
  const LoginInput({super.key});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  Future<void> loginUser() async {
    setState(() {
      _isLoading = true;
    });

    String result = await AuthMethods().loginUser(
      email: _emailController.text,
      password: _passwordController.text,
    );

    setState(() {
      _isLoading = false;
    });

    if (result == 'success') {
      print("Logged in");
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignUpPage(),
          ),
        );
      });
    } else {
      print('Not logged in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFieldInput(
            hintText: "Нэвтрэх нэр",
            isPassword: false,
            textEditingController: _emailController,
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 24,
          ),
          TextFieldInput(
              hintText: "Нууц үг",
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text),
          SizedBox(
            height: 48,
          ),
          AvailableButton(onTap: loginUser)

        ],
      ),
    );
  }
}
