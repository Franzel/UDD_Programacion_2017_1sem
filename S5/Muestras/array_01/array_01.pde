float [] valoresA = {40, 80, 120, 160, 200};
float [] valoresB = {20, 40, 60, 80, 100};

void setup() {
  size(500, 500);
}

void draw() {
  for (int i=0; i<valoresA.length; i++) {
    
    if (i==4) {
      fill(255, 0, 0);
    } else {
      fill(255);
    }

    ellipse(valoresA[i], valoresB[i], 15, 15);
  }
}