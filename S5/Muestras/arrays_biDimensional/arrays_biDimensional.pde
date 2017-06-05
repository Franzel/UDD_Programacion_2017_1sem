int nFilas = 20;
int nColumnas = 20;
float porte = 20;

color miNumero [] [] = new color [nColumnas] [nFilas]; //misma sintaxis pero 2 brackets

void setup() {
  size (400, 400);

  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      miNumero [i] [j] = color(20*i, 10*j, 255);
    }
  }

  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      println("i= " + i + ", j= " + j + " = "  + miNumero[i][j]);
    }
  }
}

void draw() {
  background(100, 200, 0);
  noStroke();

  //for (int i=0; i<nColumnas; i++) {
  //  for (int j=0; j<nFilas; j++) {
  //    miNumero[i][j] = random(255);
  //  }
  //}

  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {

      if (i==2 && j==10) {
        fill(255, 0, 0);
      } else {
        fill(miNumero[i][j]);
      }
      rect(porte*i, porte*j, 16, 16);
    }
  }
}