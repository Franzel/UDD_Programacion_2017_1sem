//creando un array


//---- MODO UNO
//declarar (decir: existe un array de ints que se llama numeros1)
//crear (decir:este array va a aceptar 10 elementos)
int [] numeros1 = new int[10];

//---- MODO DOS
int[] numeros2 = {22,32,42,52};

void setup() {
  size(500, 200);
  
  //---- MODO UNO
  //asignar (decir: valor que le ponemos a cada espacio)
  numeros1[0] = 11;
  numeros1[1] = 22;
  numeros1[2] = 33;
  numeros1[3] = 44;
  
  
  
  
}

void draw() {
  ellipse(numeros1[0], 100, 30, 30);
  ellipse(numeros1[1], 100, 30, 30);
  ellipse(numeros1[2], 100, 30, 30);
  ellipse(numeros1[3], 100, 30, 30);
}