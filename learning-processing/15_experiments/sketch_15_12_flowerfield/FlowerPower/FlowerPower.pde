void setup() {
  size(800, 800);
  background(220, 230, 250);

  Flower flower1 = new Flower();  
  flower1.blossom();
  //Dog milo = new Dog();
  //milo.sing();
  //Bird micho = new Bird();
  //micho.ILikeToSing = false; // direct way to access variable
  //micho.sing();
}


class Flower {
  boolean ILikeToSing=true;
  void blossom() { // one command that goes across different objects
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
