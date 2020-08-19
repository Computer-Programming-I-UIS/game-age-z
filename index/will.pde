//clase para realizar el movimiento de will
class will{
  
  
//variables necesarias
  
  int poswillx;         //posicion en x del will
  int poswilly;         //posicion en y de will
  float w,h, rotation,speed,maxspeed, friction; //w:ancho sprite, h:alto sprite, rotation: angulo para que rote will, speed: velocidad del caminar, maxspeed: maxima velocidad, friction: hace que el movimiento se baja desacelerando para que no ande como loco
  boolean cambiosprite; //variable para que cambie de sprite
  
  will(){
    poswilly = height/2;   
    poswillx = width/2;
    rotation=0;
    speed = 0;
    maxspeed=5;
    friction = 0.5;
    w=138;
    h=91;
  }
  
  
 
  void dibujo(){
    pushMatrix();
    translate(poswillx,poswilly);
    rotate(rotation);
    fill(255);
    ellipse(poswillx,poswilly,20,20);
    if(cambiosprite==true){
      
      image(spritewill1,-w/2,-h/2);
    }else{
      image(spritewill2,-w/2,-h/2);
    }
    popMatrix(); 
    
    if(key == '1'){    
      cambiosprite=true;
        
        
    }
    if(key == '2'){    
      cambiosprite=false;
       
    }
            
    
  }
  
  
  void movimiento(){
    if  (keyPressed && (key == CODED)){
      if (keyCode == LEFT && keyCode != RIGHT){             //si oprimo izquierda pero no derecha
        rotation += -.05;
      }
      if (keyCode == RIGHT && keyCode != LEFT){
        rotation += .05;
      }
      if (keyCode != RIGHT && keyCode != LEFT){
        

      }
      if (keyCode == UP && keyCode != DOWN){
        if(speed < maxspeed){speed += 1;}else{speed=maxspeed;}
      }
      if (keyCode != UP && keyCode == DOWN){
        if(speed < -maxspeed){speed -= 1;}else{speed=-maxspeed;}
      }
      if (keyCode != UP && keyCode != DOWN){
        if (speed>0 || speed <0){
          speed *= friction;
        }else{
          speed=0;
        } 
      }
    }poswillx = poswillx + int(cos(rotation)*speed);
    poswilly = poswilly + int(sin(rotation)*speed);
  }
  void limite(){//metodo limites de pantalla para will
    if(poswillx>width-60){
      poswillx= width-60;
    }
    if(poswillx<60){
      poswillx= 60;
    }
     if(poswilly>height-60){
      poswilly= height-60;
    }
     if(poswilly<60){
      poswilly= 60;
    }
  }
}
