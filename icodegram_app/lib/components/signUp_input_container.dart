import 'package:flutter/material.dart';
import 'package:icodegram_app/components/button_widget.dart';
import 'package:icodegram_app/components/logo_widget.dart';
import 'package:icodegram_app/components/text_field_input_widget.dart';
import 'package:icodegram_app/resources/auth_method.dart';

class SignUpInput extends StatefulWidget {
  const SignUpInput({super.key});

  @override
  State<SignUpInput> createState() => _SignUpInputState();
}

class _SignUpInputState extends State<SignUpInput> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFieldInput(
              hintText: "Хэрэглэгчийн и-мэйл",
              isPassword: false,
              textEditingController: _emailController,
              textInputType: TextInputType.emailAddress),
          SizedBox(
            height: 22,
          ),
          TextFieldInput(
              hintText: "Хэрэглэгчийн нэр",
              isPassword: false,
              textEditingController: _userNameController,
              textInputType: TextInputType.text),
          SizedBox(
            height: 22,
          ),
          TextFieldInput(
              hintText: "Нууц үг",
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text),
          SizedBox(
            height: 22,
          ),
          TextFieldInput(
              hintText: "Нууц үг давтах",
              isPassword: true,
              textEditingController: _passwordController,
              textInputType: TextInputType.text),
          SizedBox(
            height: 30,
          ),

         InkWell(
            onTap: (){
              AuthMethods().signUpUser(
                  email: _emailController.text,
                  password: _passwordController.text,
                  username: _userNameController.text);
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(250, 149, 2, 1),
                    Color.fromARGB(250, 149, 65, 1)
                  ])),
              child: Center(
                child: Text(
                  "Бүртгүүлэх",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
