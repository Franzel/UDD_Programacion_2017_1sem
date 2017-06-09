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

public class OOP_00 extends PApplet {




public void setup() {
  
  colorMode(HSB, 100, 100, 100);
  background(100, 0, 100);
  for (int i = 0; i<width; i+=50) {
    for (int j = 0; j<height; j+=50) {
      int colorCara = color(random(100), random(50), 100);
      cara(i, j, 20 + random(20), colorCara);
    }
  }
}

public void draw() {
}

public void cara(float x, float y, float s, int c) {
  fill(c);
  ellipse(x, y, s, s);
  fill(0);
  rectMode(CENTER);
  rect(x,y+s/4,s/2,s/8);
}
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OOP_00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
