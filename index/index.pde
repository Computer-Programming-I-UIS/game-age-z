will personajemain; //objeto del personaje
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
  personajemain = new will();
  lvl1 = new fondo();
  
  
}
void draw(){
  
  lvl1.menu();
  if(mouseY >= 455 && mouseY < 506 && mouseX >= 233 && mouseX < 583  ){
    cursor(HAND);
  }
  else{
   cursor(ARROW); 
  }
  
  
  if (botonplay){
    lvl1.historias();
  }else{
  }
  
  
  
  
  
  /*switch(cambiofondo){
    
    case 1:
      lvl1.historias();
      
    case 2:
      background(fondo1);
      personajemain.dibujo();
      personajemain.movimiento();
      personajemain.limite();
     
  }*/
}

void mousePressed(){
  if(mouseY >= 455 && mouseY < 506 && mouseX >= 233 && mouseX < 583  ){
      botonplay = true;
  }
  else{
    botonplay =false;
  }
}  




/*
"What matters in this life is not what we do but what we do for others, the legacy we leave and the imprint we make." - Eric Meyer
*/
