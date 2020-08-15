will personajemain;




void setup(){
  size(1280, 720);
  personajemain = new will();
  
}
void draw(){
  
  background(0);
  personajemain.dibujo();
  personajemain.movimiento();
}
