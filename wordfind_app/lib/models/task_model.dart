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

  void setWordFindChar(List<CharModel> puzzles) {
    this.puzzles = puzzles;
  }

  void setDone() {
    isDone = true;
  }

  bool fieldCompleteCorrect() {
    bool complete =
        puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    String answeredString =
        puzzles.map((puzzle) => puzzle.currentValue).join("");
    if (!complete) {
      isFull = false;
    } else if (complete) {
      isFull = true;
    }


    return answeredString == answer;
  }
  clone(){
    return TaskModel(question: question, answer: answer, pathImage: pathImage, isFull: isFull, isDone: isDone, arrayButtons: arrayButtons, puzzles: puzzles);
  }
}
