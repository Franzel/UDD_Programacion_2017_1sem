/*
Este codigo no es funcional aun
 */


int nClicks = 100;
float[] clickX = new float[nClicks];
float[] clickY = new float[nClicks];
int contadorClicks = 0;
boolean dibujar = false;
void setup() {
  size(500, 500);
}

void draw() {
  
  if (dibujar) {
    background(255);
    for (int i=0; i<clickX.length; i++) {
      ellipse(clickX[i], clickY[i], 7, 7);
      if (i>1) {
        line(clickX[i], clickY[i], clickX[i-1], clickY[i-1]);
      }
    }
  } else {
    background(255);
  }
}

void mousePressed() {
  if (contadorClicks<nClicks-1) {
    contadorClicks ++;
  } else {
    contadorClicks = 0;
  }

  clickX[contadorClicks] = mouseX;
  clickY[contadorClicks] = mouseY;

  for (int i=0; i<contadorClicks; i++) {
    println("click" + i + " = " + clickX[i]+ " " + clickY[i]);
  }
}

void keyPressed() {
  if (key=='c') {
    for (int i=0; i<clickX.length; i++) {
      clickX[i] = 0;
      clickY[i] = 0;
    }
    background(255);
    dibujar = false;
  }
  if (key=='d') {
    dibujar = true;
    background(255);
  }
}