Ripples[] ripple;
int numRipples;

void setup() {
  size(800, 800, FX2D);
  colorMode(HSB);
  noFill();
  numRipples = 75;
  ripple  = new Ripples[numRipples];
  int i = 0;
  while (i < numRipples) {
    ripple[i] = new Ripples();
    i++;
  }
}

void draw() {
  background(0);
  int i = 0;
  while (i < numRipples) {
    ripple[i].show();
    ripple[i].act();
    i++;
  }
}
