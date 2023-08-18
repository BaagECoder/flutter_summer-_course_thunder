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
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear,
              color: Color(0xFFA0A0A0),
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
