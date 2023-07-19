import 'package:day_8_flutter/dart_named_construgtor.dart';

class Body {
  int numberOfBody = 0;
  Body({required int numberOfBody}) {
    this.numberOfBody = numberOfBody;
  }
}

class Head {
  int numberOfHead = 0;
  Head({required int numberOfHead}) {
    this.numberOfHead = numberOfHead;
  }
}

class Human {
  Body humanBody = Body(numberOfBody: 1);
  Head humanHead = Head(numberOfHead: 1);

  Human({required Body humanBody, required Head humanHead}) {
    this.humanBody = humanBody;
    this.humanHead = humanHead;
  }

  void showInfo() {
    print("I'm Baagii. ");
  }
}

class Door {
  int numberOfDoors = 0;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
}

class Floor {
  int numberOfFloors = 0;
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }
}

class Building {
  String name = "";
  Floor floor = Floor(numberOfFloors: 0);
  Door door = Door(numberOfDoors: 0);

  Building ({required Floor floor, required Door door }) {
    this.floor=floor;
    this.door=door;

  }
  void nameBuilding () {
    print("Ajnai101");
  }
}


// ex2 //

class Wheel {
  int numberOfWheel =0;
Wheel ({required int numberOfWheel}) {
  this.numberOfWheel=numberOfWheel;

}
void infoShow() {
  print(numberOfWheel);
}


}

// Test //
void main() {
  final Body baagiiBody = Body(numberOfBody: 1);
  final Head baagiiHead = Head(numberOfHead: 1);
  final Human baagii = Human(humanBody: baagiiBody, humanHead: baagiiHead);
  baagii.showInfo();
  final Floor ajnaiFloor= Floor(numberOfFloors: 3);
  final Door ajnaiDoor =Door(numberOfDoors: 1);
  final Building ajnai101= Building(floor: ajnaiFloor, door: ajnaiDoor);
  ajnai101.nameBuilding();
  final Wheel wheel= Wheel(numberOfWheel:6);
  wheel.infoShow();

}
