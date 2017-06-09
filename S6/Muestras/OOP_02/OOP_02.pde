/*
Programación Basada en Objetos
(Object Oriented Programing - OOP)

Francisco Zamorano
Junio 2017

Modificado de Sergio Majluf, Nov. 2106
https://github.com/sergiomajluf/Programacion/tree/master/S6/Para%20Mostrar/miTaxi
*/

int nAutos = 80;
Auto [] autos = new Auto[nAutos];


void setup() {
  size(640, 480);
  for(int i=0;i<nAutos;i++){
    color miColor = color(random(255), random(255), random(255));
    autos[i] = new Auto (random(width),random(height),random(20,80), miColor, random(1,5));
  }
}

void draw() { 
  background(255);
  
  // llamamos a los metodos
  for(int i=0;i<nAutos;i++){
    autos[i].dibuja();
    autos[i].avanza();
  }
}