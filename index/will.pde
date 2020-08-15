//clase para realizar el movimiento de will
class will{
  
  
//variables necesarias
  PImage spritewill;
  int willx = 6, willy = 8, anchosprite = 143, altosprite = 101; //coordenadas para tomar el sprite que se necesita
  int arma = 0;
  int poswillx = 15;
  int poswilly = 15;
  float x,y,vx,vy, rotation,speed,maxspeed, friction;
  
  will(){
    vx=0;
    vy=0;
    rotation=0;
    speed = 0;
    maxspeed=3;
    friction = 0.9;
    //x=poswillx+61;
    //y=poswilly+71;
  }
  
  
  
  void dibujo(){
    fill(255);
    ellipse(poswillx,poswilly,20,20);
    pushMatrix();
    translate(poswillx,poswilly);
    rotate(rotation);
    spritewill = loadImage("personaje1.png");
    copy(spritewill,willx,willy, anchosprite, altosprite, poswillx,poswilly,anchosprite, altosprite);
    popMatrix(); 
    
    if(key == '1'){    
        willx=6;
        willy=8;
        anchosprite=143;
        altosprite=101;
        
    }
    if(key == '2'){     
        willx=160;
        willy=135;
        anchosprite=304;
        altosprite=221;
       
    }
    if(key == '3'){     
        willx=10;
        willy=142;
        anchosprite=140;
        altosprite=245;
       
    }
       
      
    
  }
  
  
  void movimiento(){
    if (keyPressed && (key == CODED)){
      if (keyCode == LEFT && keyCode != RIGHT){             //si oprimo izquierda pero no derecha
        rotation += -0.01;
      }
      if (keyCode == RIGHT && keyCode != LEFT){
        rotation += 0.01;
      }
      if (keyCode == UP && keyCode != DOWN){
        if (speed < maxspeed){speed += 0.1;}else{speed = maxspeed;}
      }
      if (keyCode != UP && keyCode == DOWN){
        if (speed < maxspeed){speed += -0.1;}else{speed = maxspeed;}
      }
      if (keyCode != UP && keyCode != DOWN){
        if(speed>0){
          speed *= friction;
        }else{
          speed=0;
        }
      }
    }
    poswillx += cos(rotation)*speed;
    poswilly += sin(rotation)*speed;
  }
}
