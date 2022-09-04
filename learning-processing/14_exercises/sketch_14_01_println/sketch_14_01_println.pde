void setup() {
  size(500, 500);
  background(0);

  Bird hansi = new Bird();  
  hansi.sing();
  Dog milo = new Dog();
  milo.sing();
  Bird micho = new Bird();
  micho.ILikeToSing = false; // direct way to access variable
  micho.sing();
}


class Bird {
  boolean ILikeToSing=true;
  void sing() { // one command that goes across different objects
    if (ILikeToSing) {
      println("tweet");
    } else {
      println("never");
    }
  }
}

class Dog {
  void sing() {
    println("woof");
  }
}
