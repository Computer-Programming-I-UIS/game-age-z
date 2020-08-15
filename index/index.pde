will personajemain; //objeto del personaje
PImage spritewill1; //primer sprite
PImage spritewill2; //segundo sprite



void setup(){
  size(1280, 720);
  //imageMode(CENTER);
  spritewill1 =  loadImage("1.png");  //cargar imagen
  spritewill2 =  loadImage("3.png");  
  personajemain = new will();
  
}
void draw(){
  
  background(0);
  personajemain.dibujo();
  personajemain.movimiento();
}
