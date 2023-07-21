// class class inheritance //
class Sprite {
  int x = 0;
  int y = 0;

  Sprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
}

class CatSprite extends Sprite {
  CatSprite({required super.x, required super.y});
}

class DogSprite extends Sprite {
  DogSprite({required super.x, required super.y});
}

class Ganbold {
  String name = "";

  Ganbold({required String name}) {
    this.name = name;
  }
  void sayMyName() {
    print("My name is Ganbold");
  }
}

class Batbold extends Ganbold {
  String name = "";

  Batbold({required super.name});

  @override
  void sayMyName() {
    print("My name is Batbold");
  }
}

class Animal {
  String name = "";

  Animal({required String name}) {
    this.name = name;
  }
  void makeNoise() {
    print("Animal roaring");
  }
}

class Pig extends Animal {
  String name = "";
  Pig({required super.name});


  @override
  void makeNoise() {
    print("xaxa");
  }
}

class Cat extends Animal {
  String name = "";
  Cat({required super.name});

  @override
  void makeNoise() {
    print("xexe");
  }
}
class Horse extends Animal {
  String name = "";
  Horse({required super.name});
  @override
  void makeNoise() {
    print("xoxo");
  }
}

void main() {
  Sprite sprite = Sprite(x: 10, y: 20);
  CatSprite cate = CatSprite(x: 20, y: 40);
  DogSprite dog = DogSprite(x: 20, y: 30);

  Ganbold ganbold = Ganbold(name: "Ganbold");
  ganbold.sayMyName();
  Batbold batbold = Batbold(name: "Batbold");
  batbold.sayMyName();
  Pig pig= Pig(name: "Dina");
  Cat cat= Cat(name: "Lina");
  Horse horse= Horse(name: "Mina");
  pig.makeNoise();
  cat.makeNoise();
  horse.makeNoise();


}
