int nFilas = 20;
int nColumnas = 20;
float porte = 20;

float myNumber [] [] = new float [nColumnas] [nFilas]; //misma sintaxis pero 2 brackets

void setup() {
  size (400, 400);

  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      myNumber [i] [j] = random(255);
    }
  }

  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      println("i=" + i + " j= " + j + "   "  + myNumber[i][j]);
    }
  }
}

void draw() {
  background(100, 200, 0);
  noStroke();

  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      myNumber[i][j] = random(255);
    }
  }


  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {

      if (i==nColumnas-1 && j==0) {
        fill(255, 0, 0);
      } else {
        fill(myNumber[i][j]);
      }
      rect(porte*i, porte*j, 16, 16);
    }
  }
}