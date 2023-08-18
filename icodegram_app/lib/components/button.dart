import 'package:flutter/material.dart';

class AvailableButton extends StatelessWidget {
  final void Function() onTap;

  const AvailableButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: InkWell(
          onTap: onTap,
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
                "Нэвтрэх",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
