import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lesson_19_flutter/components/text_field_input.dart';
import 'package:lesson_19_flutter/resources/auth_method.dart';
import 'package:lesson_19_flutter/screens/login_screen.dart';
import 'package:lesson_19_flutter/utils/utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  Uint8List? _image;

  void selectImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
  void navigateToSignUp(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: SingleChildScrollView(


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  "iCodeGram",
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _image != null
                        ? CircleAvatar(
                            radius: 64,
                            backgroundImage: MemoryImage(_image!),
                          )
                        : CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                "https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png"),
                          ),
                    Positioned(
                      child: IconButton(
                        padding: EdgeInsets.only(left: 9, top: 12),
                        icon: Icon(
                          Icons.add_a_photo,
                          size: 33,
                        ),
                        onPressed: () {
                          selectImage();
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 22,
                ),
                TextFieldInput(
                  hintText: "Хэрэглэгчийн и-мэйл",
                  isPassword: false,
                  textEditingController: _emailController,
                ),
                SizedBox(
                  height: 22,
                ),
                TextFieldInput(
                  hintText: "Хэрэглэгчийн нэр",
                  isPassword: false,
                  textEditingController: _userNameController,
                ),
                SizedBox(
                  height: 22,
                ),
                TextFieldInput(
                  hintText: "Нууц үг",
                  isPassword: true,
                  textEditingController: _passwordController,
                ),
                SizedBox(
                  height: 22,
                ),
                TextFieldInput(
                  hintText: "Нууц үг давтах",
                  isPassword: true,
                  textEditingController: _passwordController,
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    AuthMethods().signUpUser(
                        email: _emailController.text,
                        password: _passwordController.text,
                        username: _userNameController.text,
                        file: _image);
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        color: Colors.blue),
                    child: Text("Бүртгүүлэх"),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                // Flexible(
                //   flex: 2,
                //   child: Container(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
