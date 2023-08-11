class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow = false;

  CharModel(
      {this.currentIndex,
      this.currentValue,
      this.correctValue,
      this.hintShow = false});

  getCurrentValue() {
    if (correctValue != null) {
      return currentValue;
    } else if (hintShow) {
      return correctValue;
    }
  }

  void clearValue() {
    currentIndex = null;
    currentValue = null;
  }
}
