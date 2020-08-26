will personajemain; //objeto del personaje
fondo lvl1; //objeto para dibujar fondo lvl 1
PImage spritewill1; //primer sprite
PImage spritewill2; //segundo sprite
PImage menuini;
PImage zombie;
PImage fondo1;
PImage zombie1;
PImage historia;
PImage will1;
PImage will2;
PImage will3;
int cambiofondo = 0;
boolean botonplay = false;
boolean botoncredi = false;
boolean botonsalir = false;
boolean left, right, up, down;

void setup(){
  
  size(1280, 720);
  //imageMode(CENTER);
  spritewill1 =  loadImage("1.png");  //cargar imagen
  spritewill2 =  loadImage("3.png");  
  will1 = loadImage("1.1.png");
  will2 = loadImage("1.2.png");
  will3 = loadImage ("1.3.png");
  menuini = loadImage("inicio.png");
  historia = loadImage("historia.png");
  fondo1 = loadImage("fondo1.jpg");
  zombie = loadImage("zombie.png");
  zombie1= loadImage("zombie1.png");
  personajemain = new will();
  lvl1 = new fondo();
  left = false;
  right = false;
  up = false;
  down = false;
  
}
void draw(){
  
  lvl1.menu();
 
  if (botonplay){
    lvl1.historias();
  }else{
  }
  
  
  if (botoncredi){
    lvl1.creditos();
  }else{
  }
  
  
  if (botonsalir){
    lvl1.salir();
  }else{
  }
  
  
}

void mousePressed(){
  if(mouseY >= 455 && mouseY < 506 && mouseX >= 233 && mouseX < 583  ){
      botonplay = true;
  }
  else{
    botonplay =false;
  }
  if(mouseY >= 565 && mouseY < 617 && mouseX >= 312 && mouseX < 461  ){
      botoncredi = true;
  }
  else{
    botoncredi =false;
  }
  if(mouseY >= 648 && mouseY < 700 && mouseX >= 330 && mouseX < 440  ){
      botonsalir = true;
  }
  else{
    botonsalir =false;
  }
}  
void keyPressed() {
  switch (keyCode) {
  case 37://left
    left = true;
    break;
  case 39://right
    right = true;
    break;
  case 38://up
    up = true;
    break;
  case 40://down
    down = true;
    break;
  }
}
void keyReleased() {
  switch (keyCode) {
  case 37://left
    left = false;
    break;
  case 39://right
    right = false;
    break;
  case 38://up
    up = false;
    break;
  case 40://down
    down = false;
    break;
  }
}




/*
"What matters in this life is not what we do but what we do for others, the legacy we leave and the imprint we make." - Eric Meyer
*/
