will personajemain; //objeto del personaje
fondo lvl1; //objeto para dibujar fondo lvl 1
PImage spritewill1; //primer sprite
PImage spritewill2; //segundo sprite
PImage menuini;
PImage zombie;
PImage fondo1;
PImage zombie1;
int cambiofondo = 0;




void setup(){
  
  size(1280, 720);
  //imageMode(CENTER);
  spritewill1 =  loadImage("1.png");  //cargar imagen
  spritewill2 =  loadImage("3.png");  
  menuini = loadImage("inicio.png");
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
    if(mousePressed == true){
    cambiofondo=1;}
  }else{
   cursor(ARROW); 
  }
  switch(cambiofondo){
    case 1:
      background(fondo1);
      personajemain.dibujo();
      personajemain.movimiento();
      personajemain.limite();
     
  }
}



/*
"What matters in this life is not what we do but what we do for others, the legacy we leave and the imprint we make." - Eric Meyer
*/
