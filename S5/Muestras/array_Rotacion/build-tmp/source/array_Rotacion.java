import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class array_Rotacion extends PApplet {

/*
Array and algorithmic animation example
by Francisco Zamorano, 2017
*/

int nElementos = 40;
float angulo [];
float porteInicial;


public void setup() {
  angulo = new float[nElementos];
  porteInicial = 350;
  
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

public void draw() {
  background(0, 100, 75);
  float speed = frameCount*0.01f;
  translate(width/2, height/2);
  rotate(speed/2);
  for (int i=0; i<nElementos; i++) {
    pushMatrix();

    rotate( radians(angulo[i] * sin(speed)) );
    fill(angulo[i]*nElementos, 100, 100);
    // stroke(angulo[i]*nElementos,100,100);

    rect(0, 0, porteInicial - (porteInicial/nElementos)*i, porteInicial - (porteInicial/nElementos)*i);
    popMatrix();
  }
}
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "array_Rotacion" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
