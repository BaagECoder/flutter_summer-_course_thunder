class Sprite {
  int x = 0;
  int y = 0;

  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

class NamedSprite {
  int x = 0;
  int y = 0;

  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
}



class Animal {
  String name = "Dog";
  String type="Haw";

  void makeNoise(){
    print("Animal Roaring");
  }
  Animal ({required String name, required String type,}) {
    this.name= name;
    this.type=type;
  }


}


class Human {
  int age= 25;
  String name="Bat";
  double height= 177.5;


  void showMeasure () {
    print("My name is ${this.name} and I’m ${this.age} years old and I’m ${this.height} tall");
  }

Human ({required String name, required int age, required double height }) {
    this.age=age;
    this.height=height;
    this.name=name;

}
}








void main() {
  final Sprite catSprite = Sprite(10, 20);
  final NamedSprite namedDogSprite = NamedSprite(x: 10, y: 20);
  final Animal animal= Animal(name: 'Cat', type: 'Angor');
  animal.makeNoise();
  final Human human=Human(name: "Dorj", age: 29, height: 190);
  human.showMeasure();

}

