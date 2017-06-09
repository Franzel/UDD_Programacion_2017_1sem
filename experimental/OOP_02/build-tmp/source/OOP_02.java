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

public class OOP_02 extends PApplet {

/*
Programaci\u00f3n Basada en Objetos
(Object Oriented Programing - OOP)

Francisco Zamorano
Junio 2017

Modificado de Sergio Majluf, Nov. 2106
https://github.com/sergiomajluf/Programacion/tree/master/S6/Para%20Mostrar/miTaxi
*/

int nAutos = 80;
Auto [] autos = new Auto[nAutos];


public void setup() {
  
  for(int i=0;i<nAutos;i++){
    int miColor = color(random(255), random(255), random(255));
    autos[i] = new Auto (random(width),random(height),random(20,80), miColor, random(1,5));
  }
}

public void draw() { 
  background(255);
  
  // llamamos a los metodos
  for(int i=0;i<nAutos;i++){
    autos[i].dibuja();
    autos[i].avanza();
  }
}
// Creamos la CLASE con nuestro nombre
class Auto {
  float posX;
  float posY;
  float size;
  int col;
  float vel;

  // Constructor
  Auto(float pX, float pY, float s, int c, float v) {
    posX = pX;
    posY = pY;
    size = s;
    col  = c;
    vel  = v;
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
      posX += vel;
    } else {
      posX = -size;
    }
  }
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OOP_02" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
