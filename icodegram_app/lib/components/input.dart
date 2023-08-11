import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  const AppInput({super.key});

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 52, horizontal: 16),
      child: TextField(
        maxLines: 1,
        style: TextStyle(
          color: Color(0xFFA0A0A0),
          fontSize: 18,
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 12,
          ),
          filled: true,
          fillColor: Colors.transparent,
          hintText: "Нэвтрэх нэр",
          hintStyle: TextStyle(
            color: Color(0xFFA0A0A0),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear,
              color: Color(0xFFA0A0A0),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              width: 2,
              style: BorderStyle.solid,
              color: Color.fromARGB(255, 255, 255, 2),
            ),
          ),
        ),
      ),
    );
  }
}
