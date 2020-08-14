PImage spritepers;
int x =13,y =18 , ancho =220, alto=200;
void setup(){
  size(800, 600);
  spritepers = loadImage("personaje1.png");
  //image(spritepers,x,y, width, height);
  copy(spritepers,x,y, ancho, alto, 0,0,ancho, alto);
  
}
void draw(){
}
