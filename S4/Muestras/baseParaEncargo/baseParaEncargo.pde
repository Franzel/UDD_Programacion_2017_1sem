float espacio;
float radMax;
float porte;
float distMax;
float mod; //esta variable la utilizaremos para modificar cualquier cosa (tamaño, color, etc) basado en la distancia al mouse


void setup() {
  size(500, 500);
  porte = 20;
  espacio=20;
  distMax = dist(0, 0, width, height); //la diagonal del canvas
  mod = 1; // inicializamos la variable, esto no es mandatorio de hacer pero buena practica 
}

void draw() {
  background(0);

  for (int i=0; i<width; i+=espacio) {
    for (int j=0; j<height; j += espacio) {
      mod = dist(mouseX, mouseY, i, j); //calculamos la distancia entre el mouse y cada punto i/j
      mod = mod/distMax * porte; //sacamos un porcentaje(0-1) y multiplicamos por tamano maximo
      
      miDibujo(i, j, mod, mod);//dibujamos nuestra funcion
    }
  }
}

void miDibujo(float x, float y, float sX, float sY) {
  noStroke();
  ellipse(x, y, sX, sY);
}