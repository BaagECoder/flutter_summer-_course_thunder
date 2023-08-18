import 'package:flutter/material.dart';
import 'package:icodegram_app/components/button.dart';
import 'package:icodegram_app/components/text_field_input.dart';
import 'package:icodegram_app/pages/login_page.dart';

import '../resources/auth_method.dart';

class AppInput extends StatefulWidget {
  const AppInput({super.key});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
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
            builder: (context) => LoginPage(),
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
