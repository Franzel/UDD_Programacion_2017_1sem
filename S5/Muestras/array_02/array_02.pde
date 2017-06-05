float [] valoresA = new float [30];
float [] valoresB = new float [30];


void setup() {
  size(500, 500);

  for (int i=0; i<valoresA.length; i++) {
    valoresA[i] = 20*i;
    valoresB[i] = random(100, 120);

    println("valor A en indice " + i + " = " + valoresA[i]);
  }
}

void draw() {
  for (int i=0; i<valoresA.length; i++) {

    if (i==20) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }

    ellipse(valoresA[i], valoresB[i], 15, 15);
  }
}