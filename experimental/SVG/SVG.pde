import processing.pdf.*;
PShape imagenSvg;

void setup() 
{
  size(2000, 2000, PDF, "tigre.pdf");
  //size(1000, 1000);
  imagenSvg = loadShape("svgExample3.svg");
}

void draw() 
{
  background(255);
  //imagenSvg.enableStyle();
  for (int i=0; i<20; i++) {
    for (int j=0; j<20; j++) {
      shape(imagenSvg, 80*i, 80*j, 80, 80);
    }
  }

  exit();  // Quit the program
}