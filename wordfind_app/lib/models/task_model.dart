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
      this.arrayButtons = const []});

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

  TaskModel clone() {
    return TaskModel(
      question: question,
      answer: answer,
      pathImage: pathImage,
      arrayButtons: arrayButtons,
    );
  }
}
