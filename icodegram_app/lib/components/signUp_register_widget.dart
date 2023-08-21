import 'package:flutter/material.dart';
import 'package:icodegram_app/pages/login_screen.dart';

class SignUpRegister extends StatelessWidget {
  const SignUpRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Эсвэл"),
      SizedBox(
        height: 12,
      ),
      Container(

        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Шинэ хэрэглэгч үү? "),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text(
                'Нэвтрэх',
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
    ]);
  }
}
