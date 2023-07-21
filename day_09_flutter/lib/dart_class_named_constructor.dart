import 'package:day_09_flutter/dart_extend_class.dart';

class Shape {
  int length = 0;
  int width = 0;
  String name = "";
  Shape({required int lenght, required int width, required String name}) {
    this.length = lenght;
    this.width = width;
    this.name = name;
  }

  void infoShow() {
    print("My Info is ${this.name} with ${this.width} and ${this.length} ");
  }
}

//   2   //

class Dinosaur {
  String name = "";
  String color = "";
  double weight = 0;

  Dinosaur(
      {required String name, required String color, required double weight}) {
    this.weight = weight;
    this.name = name;
    this.color = color;
  }
  String shoutName() {
    return name;
  }

  double shoutSize() {
    return weight;
  }
}

class Human {
  String name = "";
  int age = 0;
  String gender = "";

  String getName() {
    return name;
  }

  Human({required String name, required int age, required gender}) {
    this.name = name;
    this.age = age;
    this.gender = gender;
  }
}

class Family {
  Human father = Human(name: "", age: 0, gender: "");
  Human mother = Human(name: "", age: 0, gender: "");
  Human brother = Human(name: "", age: 0, gender: "");
  Human sister = Human(name: "", age: 0, gender: "");

  Family({required Human father, required Human mother, required Human brother, required Human sister}) {
    this.father = father;
    this.mother = mother;
    this.brother = brother;
    this.sister = sister;
  }
  void sayFamilyMember() {
    print(
        "The Family has 4 members, my father’s name is ${father.name}  My mother's name is ${mother.name} my brother’s name is ${brother.name}, my sister’s name is ${sister.name}");
  }
}

class MongolianEmpire {

}

void main() {
  final Shape rectangle = Shape(lenght: 14, width: 20, name: "Rectangle");
  final Shape quadrat = Shape(lenght: 14, width: 20, name: "Quadrat");
  final Shape triangle = Shape(lenght: 14, width: 20, name: "Triangle");
  final Dinosaur tenosaurus =
      Dinosaur(name: "Tenosaurus", color: "green", weight: 1000);
  final Dinosaur benosaurus =
      Dinosaur(name: "Benosaurus", color: "blue", weight: 2000);
  final Dinosaur lenosaurus =
      Dinosaur(name: "Lenosaurus", color: "brown", weight: 9000);

  Human father = Human(name: "Gan", age: 40, gender: "man");
  Human mother = Human(name: "mother", age: 37, gender: "women");
  Human brother = Human(name: "brother", age: 19, gender: "man");
  Human sister = Human(name: "sister", age: 16, gender: "women");
  Family family = Family(father: father, mother: mother, brother: sister, sister: sister);

  print(father.getName());
  family.sayFamilyMember();
  rectangle.infoShow();
  quadrat.infoShow();
  triangle.infoShow();
  print(tenosaurus.shoutName());
  print(tenosaurus.shoutSize());
  print(benosaurus.shoutName());
  print(benosaurus.shoutSize());
  print(lenosaurus.shoutName());
  print(lenosaurus.shoutSize());
}
