int calculate() {
  return 6 * 7;
}
class Hool {
  int x = -8;
  int y = 44;
  String name = "Hool";
  bool isShow = true;
  int direction = 90;
  int size = 130;

  void sayHello() {
    print("Hello");
  }

  void sayMyname() {
    print(this.name);
  }

  void sayMylocation() {
    print("I'am at position $x, $y");
  }

  void showMysize() {
    print(this.size);
  }

  void showMydirection() {
    print(this.direction);
  }

  void gotoXandY(int x, int y) {
    this.x = x;
    this.y = y;
  }

// Exercises 1
  void move(int x) {
    this.x += x;
  }

  void getDirection() {
    if (this.direction <= 90) {
      print("I’m at south east $direction");
    } else if (this.direction > 90 && this.direction < 180) {
      print("I’m at south west $direction");
    } else if (this.direction > 181 && this.direction < 270) {
      print("I’m at south west $direction");
    } else if (this.direction > 271 && this.direction < 360) {
      print("I’m at south east $direction");
    }
  }
  void showMyNameXTimes(int x ) {
    
  }
}
class Saw {
  int x=50;
  int y=110;
  String name= "Saw";
  bool isShow = true;
  int size= 100;
  int direction= 90;


  void sayHello(){
    print("Hello");

  }
  void sayMyname(){
    print(this.name);
  }
  void move (int x){
    this.x+=x;
  }
}
class Apple {
  int x = 50;
  int y = 110;
  String name = "Apple";
  bool isShow = true;
  int size = 90;
  int direction = 90;

  void sayHello(){
    print("Hello");

  }
  void sayMyname(){
    print(this.name);
  }
  void move (int x){
    this.x+=x;

  }
}

void main (){
  print("day 07");
  print(calculate());
  final hool= Hool();
  print(hool);
  hool.sayHello();
  hool.sayMyname();
  hool.sayMylocation();
  hool.showMydirection();
  hool.gotoXandY(10, 60);
  hool.sayMylocation();
  hool.move(10);
  hool.sayMylocation();
  hool.move(100);
  hool.sayMylocation();
  hool.move(-40);
  hool.sayMylocation();
  hool.getDirection();

  final saw= Saw();
  print(saw);
  saw.sayHello();
  saw.move(40);
  final apple = Apple();
  apple.sayHello();
  apple.move(-50);
  apple.move(40);
  

  print(apple);
}