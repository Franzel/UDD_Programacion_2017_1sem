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

public class OOP_01 extends PApplet {

/*
Programaci\u00f3n Basada en Objetos
(Object Oriented Programing - OOP)

Francisco Zamorano
Junio 2017

Modificado de Sergio Majluf, Nov. 2106
https://github.com/sergiomajluf/Programacion/tree/master/S6/Para%20Mostrar/miTaxi
*/


Auto auto1, auto2, auto3, auto4;

public void setup() {
  
  auto1 = new Auto (100, 100, 50, color(255,0,0));
  auto2 = new Auto (200, 200, 100, color(0,0,255));
  auto3 = new Auto (300, 300, 50, color(255,100,0));
  auto4 = new Auto (400, 400, 50, color(255,255,0));
}

public void draw() { 
  background(255);
  
  // llamamos a los metodos
  auto1.dibuja();
  auto2.dibuja();
  auto3.dibuja();
  auto4.dibuja();
  if(mousePressed){
    auto1.avanza();
  } else {
    auto2.avanza();
  }
}
// Creamos la CLASE con nuestro nombre
class Auto {
  float posX;
  float posY;
  float size;
  int col;

  // Constructor
  Auto(float pX, float pY, float s, int c) {
    posX = pX;
    posY = pY;
    size = s;
    col  = c;
  }
  
  // M\u00e9todo para dibujarlo
  public void dibuja() {
    fill(col);
    rect(posX, posY, size, size/2);
    fill(0,0,0,100);
    rect(posX+size/4, posY, size/2, size/2);
  }

  // M\u00e9todo para moverlo
  public void avanza() {
    if (posX < width) {
      posX += 3;
    } else {
      posX = 0;
    }
  }
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OOP_01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
