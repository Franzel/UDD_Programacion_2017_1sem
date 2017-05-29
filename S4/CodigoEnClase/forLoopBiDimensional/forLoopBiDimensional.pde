float posX = 10;
float posY = 10;
float espacio = 20;
float porte = 20;

void setup() {
  size(400, 400);
}

void draw() {

  for (int i=0; i<width + espacio; i+= espacio) {
    for (int j=0; j<height; j += espacio) {
      ellipse(i, j, porte, porte);
      fill(i, j, 255);
    }
  }
  

}