import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PostAdd extends StatefulWidget {
  const PostAdd({super.key});

  @override
  State<PostAdd> createState() => _PostAddState();
}

class _PostAddState extends State<PostAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_back));
        }),
        title: Text(
          "Зураг оруулах",
          style: TextStyle(
            color: Color(0xFFFFFFFFF),
            fontFamily: "Rubik",
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Icon(Icons.check_circle, color: Colors.green, size: 20),
          Padding(padding: EdgeInsets.only(right: 10))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 14 ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 60),
              DottedBorder(
                color: Colors.orangeAccent,
                strokeWidth: 1,
                borderType: BorderType.RRect,
                dashPattern: [10, 5],
                radius: Radius.circular(30),
                child: Container(
                  width: 370,
                  height: 159,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_photo_alternate_outlined,
                          color: Colors.orangeAccent, size: 38),
                      SizedBox(height: 15),
                      Text(
                        "Зураг оруулах",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],


                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  Icon(Icons.wrap_text,
                      color: Colors.white, size: 24),
                  SizedBox(width: 20),
                  Text(
                    "Зураг тайлбар",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Flexible(
                child: Column(),
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
