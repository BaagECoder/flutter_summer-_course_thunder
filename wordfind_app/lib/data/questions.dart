import 'package:flutter/material.dart';
import 'package:wordfind_app/models/task_model.dart';
import 'package:wordfind_app/models/char_model.dart';

class TaskModel {
  final String question;
  final String answer;
  final String pathImage;

  TaskModel({
    required this.question,
    required this.answer,
    required this.pathImage,
  });
}

List<TaskModel> Quiestions = [
  TaskModel(
      question: "What is the name of this game?",
      answer: "Mario",
      pathImage:
          "https://images.pexels.com/photos/163077/mario-yoschi-figures-funny-163077.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
  TaskModel(
      question: "What is this animal?",
      answer: "Cat",
      pathImage:
          "https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
TaskModel(question: "What is this animal name?", answer: "Wolf", pathImage: "https://as1.ftcdn.net/v2/jpg/02/48/64/04/1000_F_248640483_5KAZi0GqcWrBu6GOhFEAxk1quNEuOzHJ.jpg" )
];