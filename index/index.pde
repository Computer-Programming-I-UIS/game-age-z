
fondo lvl1; //objeto para dibujar fondo lvl 1
PImage spritewill1; //primer sprite
PImage spritewill2; //segundo sprite
PImage menuini;
PImage zombie;
PImage fondo1;
PImage zombie1;
PImage historia;
int cambiofondo = 0;
boolean botonplay = false;
boolean botoncredi = false;
boolean botonsalir = false;



Sprite s;
Enemy e;
boolean left, right, up, down;
PImage spriteImage;
PImage enemyImage;


void setup(){
  
  size(1280, 720);
  //imageMode(CENTER);
  spritewill1 =  loadImage("1.png");  //cargar imagen
  spritewill2 =  loadImage("3.png");  
  menuini = loadImage("inicio.png");
  historia = loadImage("historia.png");
  fondo1 = loadImage("fondo1.jpg");
  zombie = loadImage("zombie.png");
  zombie1= loadImage("zombie1.png");
 
  lvl1 = new fondo();
  
  
  s = new Sprite();
  e = new Enemy();
  
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
  
  s.update();
  s.display();
  e.display();
  
  if (rectangleIntersect(s,e)){
  e.x=6000;
  rect(0,0,width,height);
 }
  
}


boolean rectangleIntersect(Sprite r1, Enemy r2) {
  //what is the distance apart on x-axis
  float distanceX = (r1.x + r1.w/2) - (r2.x + r2.w/2);
  //what is the distance apart on y-axis
  float distanceY = (r1.y + r1.h/2) - (r2.y + r2.h/2);

  //what is the combined half-widths
  float combinedHalfW = r1.w/2 + r2.w/2;
  //what is the combined half-heights
  float combinedHalfH = r1.h/2 + r2.h/2;

  //check for intersection on x-axis
  if (abs(distanceX) < combinedHalfW) {
    //check for intersection on y-axis
    if (abs(distanceY) < combinedHalfH) {
      //huzzah they are intersecting
      return true;
    }
  }
  return false;
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




/*
"What matters in this life is not what we do but what we do for others, the legacy we leave and the imprint we make." - Eric Meyer
*/
