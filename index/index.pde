will personajemain; //objeto del personaje
fondo lvl1; //objeto para dibujar fondo lvl 1
PImage spritewill1; //primer sprite
PImage spritewill2; //segundo sprite
PImage spritemesa;
PImage menuini;
PImage zombie;
int cambiofondo = 0;




void setup(){
  
  size(1280, 720);
  //imageMode(CENTER);
  spritewill1 =  loadImage("1.png");  //cargar imagen
  spritewill2 =  loadImage("3.png");  
  spritemesa = loadImage("mesa.png");
  menuini = loadImage("inicio.png");
  zombie = loadImage("zombie.png");
  personajemain = new will();
  lvl1 = new fondo();
  
  
}
void draw(){
  
  lvl1.menu();
  if(mouseY >= 455 && mouseY < 506 && mouseX >= 233 && mouseX < 583 && (mousePressed == true)){
    cambiofondo=1;
  }
  switch(cambiofondo){
    case 1:
      background(0);
      personajemain.dibujo();
      personajemain.movimiento();
      personajemain.limite();
    // personajemain.zombie();
      lvl1.fondo1();
  }
}



/*
"What matters in this life is not what we do but what we do for others, the legacy we leave and the imprint we make." - Eric Meyer
*/
