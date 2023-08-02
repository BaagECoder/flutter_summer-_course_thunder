import 'char_model.dart';
class TaskModel {
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];
TaskModel(
    {required this.question,
      required this.answer,
      required this.pathImage,
      required this.isFull,
      required this.isDone,
      required this.arrayButtons,
      required this.puzzles});


  void setWordFindChar (){

  }


}

