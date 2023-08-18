import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text("Эсвэл"),
        ),
        SizedBox(
          height: 28,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Шинэ хэрэглэгч үү? "),
              SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Бүртгүүлэх',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(250, 149, 65, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
