class Ripples {

  //instance variables
  float x, y, size, alpha; //alpha is for transparency
  int h, s, b;

  //constructor
  Ripples() {
    x = random(width); //if only put 1 argument it will assume 0 is your starting point
    y = random(height);
    size = random(100);
    alpha = map(size, 0, 100, 255, 0);
    h = int(random(255));
    s = int(random(255));
    b = int(random(255));
  }

  //behaviour functions

  void show() {
    stroke(h, s, b);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size+=2;
    if (size >= 100) {
      x = mouseX;
      y = mouseY;
      size = 0;
    }
  }
}
