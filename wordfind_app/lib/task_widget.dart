import 'package:flutter/material.dart';
import 'dart:math';
import 'package:wordfind_app/models/task_model.dart';
import 'package:wordfind_app/models//char_model.dart';
// import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  final Size size;
  final List<TaskModel> listQuestions;
  const TaskWidget(
      {super.key, required this.size, required this.listQuestions});
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late Size size;
  late List<TaskModel> listQuestions;
  int indexQues = 0; // current index question
  int hintCount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    size = widget.size;
    listQuestions = widget.listQuestions;
  }

  @override
  Widget build(BuildContext context) {
    TaskModel currentQuestion = listQuestions[currentQuestionIndex];
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () => generatePuzzle(left: true),
                        child: Icon(
                          Icons.arrow_back,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      ),
                      InkWell(
                        onTap: generatePuzzle(next: true),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 45,
                          color: Color(0xFFE86B02),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      constraints: BoxConstraints(
                        maxWidth: size.width / 2 * 1.5,
                      ),
                      child: Image.network(
                        currentQuestion.pathImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Text(
                    currentQuestion.question,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFE86B02),
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
