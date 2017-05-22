float posX;
float posY;
float sizeX;
float sizeY;
float dirX;
float dirY;
float vel;

void setup() {
  size(600, 300);
  background(255, 0, 0);

  posX = width/2;
  posY = height/2;
  sizeX = 50;
  sizeY = 50;
  dirX = 1;
  dirY = -1;
  vel = 7;
}

void draw() {
  background(255, 0, 0);

  if (posX<0) {
    dirX = dirX * -1;
  }

  if (posX>width) {
    dirX = dirX * -1;
  }

  if (posY<0) {
    dirY = dirY * -1;
  }

  if (posY>height) {
    dirY = dirY * -1;
  }

  posX += vel * dirX; //lo mismo que posX = posX-1
  posY += vel * dirY;
  noStroke();
  ellipse(posX, posY, sizeX, sizeY);
  println(posX);
}