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

public void cara(float x, float y, float s, float c){
  fill(c);
  ellipse(x,y,s,s);
  fill(0,100,100);
  ellipse(x- s/4, y-s/4, s/4, s/4);
  ellipse(x+s/4, y-s/4, s/4, s/4);

  colorMode(HSB, width,100,100);
  
}


public void setup() {
	
	
}

public void draw() {
	background(100,100,100);


	for(int i = 0;i<width;i+=50){
	for(int j = 0;j<height;j+=50){
		int colorCara = color(100,0,100);
	cara(i,j,20 + (i+j)/20, colorCara);
		
	}

	}
}
  public void settings() { 	size(500,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OOP_00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
