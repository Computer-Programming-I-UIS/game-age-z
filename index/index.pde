will personajemain; //objeto del personaje
fondo lvl1; //objeto para dibujar fondo lvl 1
PImage spritewill1; //primer sprite
PImage spritewill2; //segundo sprite



void setup(){
  size(1280, 720);
  //imageMode(CENTER);
  spritewill1 =  loadImage("1.png");  //cargar imagen
  spritewill2 =  loadImage("3.png");  
  personajemain = new will();
 lvl1 = new fondo();
  
}
void draw(){
  
  background(0);
  personajemain.dibujo();
  personajemain.movimiento();
  lvl1.fondo1();

}



/*
* "What matters in this life is not what we do but what we do for others, the legacy we leave and the imprint we make." - Eric Meyer
*/
