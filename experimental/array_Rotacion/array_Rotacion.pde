/*
Array and algorithmic animation example
 by Francisco Zamorano, 2017
 */

int nElementos = 40;
float angulo [];
float porteInicial;


void setup() {
  angulo = new float[nElementos];
  porteInicial = 350;
  size(500, 500);
  colorMode(HSB, nElementos*360, 100, 100);

  for (int i=0; i<nElementos; i++) {
    angulo[i]= (360/nElementos)*i;
  }

  rectMode(CENTER);
  noStroke();
  strokeWeight(2);
  noFill();
  println(360/nElementos);
}

void draw() {
  background(0, 100, 75);
  float speed = frameCount*0.01;
  translate(width/2, height/2);
  rotate(speed/2);
  for (int i=0; i<nElementos; i++) {
    pushMatrix();

    rotate( radians(angulo[i] * sin(speed)) );
    fill(angulo[i]*nElementos, 100, 100);
    //stroke(angulo[i]*nElementos,100,100);

    rect(0, 0, porteInicial - (porteInicial/nElementos)*i, porteInicial - (porteInicial/nElementos)*i);
    popMatrix();
  }
}