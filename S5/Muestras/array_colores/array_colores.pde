color colorFondo = color(0,0,0);
color [] colores = {color(255, 0, 0), color(255, 100, 0), color(0, 255, 0)};
int index = 0;


void setup() {
  size(500, 500);
  background(colorFondo);
}

void draw() {
  

  if (mousePressed) {
    index ++;
    if (index>=colores.length) {
      index = 0;
    }
    
    println(index);
    fill(colores[index]); 

    ellipse(mouseX, mouseY, 50, 50);
  }
}