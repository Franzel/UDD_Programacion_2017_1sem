int nColumnas = 30;
int nFilas = 30;

color [][] misColores = new color [nColumnas][nFilas];
float [][] misPortes = new float [nColumnas][nFilas];
float separacion = 25;



void setup() {
  size(500, 500);
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      misColores[i][j]= color(random(255), 0, 0, 200);
      misPortes[i][j]= i;
    }
  }

  noStroke();
}


void draw() {
  background(255);
  rectMode(CENTER);


  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      fill(misColores[i][j]);
      rect(separacion*i, separacion*j, misPortes[i][j], 10);
    }
  }
}