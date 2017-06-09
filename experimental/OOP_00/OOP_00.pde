


void setup() {
  size(500, 500);
  colorMode(HSB, 100, 100, 100);
  background(100, 0, 100);
  for (int i = 0; i<width; i+=50) {
    for (int j = 0; j<height; j+=50) {
      color colorCara = color(random(100), random(50), 100);
      cara(i, j, 20 + random(20), colorCara);
    }
  }
}

void draw() {
}

void cara(float x, float y, float s, color c) {
  fill(c);
  ellipse(x, y, s, s);
  fill(0);
  rectMode(CENTER);
  rect(x,y+s/4,s/2,s/8);
}