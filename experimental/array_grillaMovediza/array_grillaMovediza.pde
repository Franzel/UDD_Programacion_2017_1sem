int nColumnas = 30;
int nFilas = 30;

color [][] misColores = new color [nColumnas][nFilas];
float [][] misPortes = new float [nColumnas][nFilas];
float [][] varX = new float [nColumnas][nFilas];
float separacion = 25;



void setup() {
  size(500, 500);
  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      misColores[i][j]= color(random(255), 0, 0, 200);
      misPortes[i][j]= random(20);
      varX[i][j]= random(-20, 20);
    }
  }

  noStroke();
}


void draw() {
  background(255);
  rectMode(CENTER);


  for (int i=0; i<nColumnas; i++) {
    for (int j=0; j<nFilas; j++) {
      if (varX[i][j]>30 || varX[i][j]<-30) {
        varX[i][j] *= -1;
      }
      varX[i][j] += 0.1;

      fill(misColores[i][j]);
      rect(separacion*i, separacion*j, misPortes[i][j] + varX[i][j], 10);
    }
  }
}