import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  const TextFieldInput({super.key, required this.hintText, required this.isPassword, required this.textEditingController, required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(
            color: Colors.white30,
            fontSize: 14
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear,
              color: Colors.white30,
              size: 16,
            ),
          ),
          border:
          OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          focusedBorder:
          OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          enabledBorder:
          OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
          filled: true,
          contentPadding: EdgeInsets.all(10)),
      keyboardType: this.textInputType,
      obscureText: this.isPassword,
    );
  }
}
