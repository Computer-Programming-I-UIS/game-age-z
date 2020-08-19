//clase para realizar el movimiento de will
class will{
  
  
//variables necesarias
  
  int poswillx;         //posicion en x del will
  int poswilly;         //posicion en y de will
  int xe = width/2;
  int ye = height/2;
  float w,h, rotation,speed,maxspeed, friction; //w:ancho sprite, h:alto sprite, rotation: angulo para que rote will, speed: velocidad del caminar, maxspeed: maxima velocidad, friction: hace que el movimiento se baja desacelerando para que no ande como loco
  boolean cambiosprite; //variable para que cambie de sprite
  float xz,yz;//variables zombie
  float perseguidor = 0.005;// variable para velocidad de perseguidor
  
  will(){
    poswilly = height/2;   
    poswillx = width/2;
    rotation=0;
    speed = 0;
    maxspeed=5;
    friction = 0.5;
    w=138;
    h=91;
    xz=800;
    yz=400;
  }
  
  
 
  void dibujo(){
    ellipse(poswillx,poswilly,20,20);
    
    xz+= (poswillx -xz)*perseguidor;// persigue will
    yz+= (poswilly -yz)*perseguidor;//persigue will
    image(zombie,xz,yz,100,100);//dibujo zombie
    pushMatrix();
    translate(poswillx,poswilly);
    
    rotate(rotation);
    fill(255);
    
    if(cambiosprite==true){
      
      image(spritewill1,-w/2,-h/2);
      stroke(255,100);
      strokeWeight(10);
       line (50,20,600,0);//bibujo linea guia para el disparo
    }else{
      image(spritewill2,-w/2,-h/2);
      stroke(255,100);
      strokeWeight(10);
       line (50,20,200,0);
    
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
