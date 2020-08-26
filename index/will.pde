//clase para realizar el movimiento de will
class will{
  
  
//variables necesarias
  
  int poswillx;         //posicion en x del will
  int poswilly;         //posicion en y de will
  int xe = width/2;
  int ye = height/2;
  float w,h, rotation,speed,maxspeed, friction; //w:ancho sprite, h:alto sprite, rotation: angulo para que rote will, speed: velocidad del caminar, maxspeed: maxima velocidad, friction: hace que el movimiento se baja desacelerando para que no ande como loco
  boolean cambiosprite; //variable para que cambie de sprite
  float xz,yz,xz1,yz1,xz2,xz3,yz2,yz3;//variables zombie
  float perseguidor = 0.005;// variable para velocidad de perseguidor
  boolean b1,b2,b3,b4;
  
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
    xz1=1500;
    yz1=-100;
    xz2=-1500;
    yz2=-500;
    xz3=-1500;
    yz3=1000;
  }
  
  
 
  void dibujo(){
    ellipse(poswillx,poswilly,20,20);
    //zombie1
    if(poswillx >= xz){
    xz+= (poswillx -xz)*perseguidor;// persigue will
    yz+= (poswilly -yz)*perseguidor;//persigue will
    image(zombie,xz,yz,100,100);//dibujo zombie
    //zombie2
    }
     else if(poswillx < xz){
        xz+= (poswillx -xz)*perseguidor;// persigue will
    yz+= (poswilly -yz)*perseguidor;//persigue will
    image(zombie1,xz,yz,100,100);//dibujo zombie
     }
     if(poswillx >= xz1){
    xz1+= (poswillx -xz1)*0.01;// persigue will
    yz1+= (poswilly -yz1)*0.01;//persigue will
    image(zombie,xz1,yz1,100,100);//dibujo zombie
     }
      else if(poswillx < xz1){
     //zombie2
    xz1+= (poswillx -xz1)*0.01;// persigue will
    yz1+= (poswilly -yz1)*0.01;//persigue will
    image(zombie1,xz1,yz1,100,100);//dibujo zombie
      }
      if(poswillx >= xz2){
    //zombie3
    xz2+= (poswillx -xz2)*0.008;// persigue will
    yz2+= (poswilly -yz2)*0.008;//persigue will
    image(zombie,xz2,yz2,100,100);//dibujo zombie
      }
       else if(poswillx < xz2){
       //zombie3
    xz2+= (poswillx -xz2)*0.008;// persigue will
    yz2+= (poswilly -yz2)*0.008;//persigue will
    image(zombie1,xz2,yz2,100,100);//dibujo zombie
       }
    if(poswillx >= xz3){
    //zombie 4
    xz3+= (poswillx -xz3)*0.015;// persigue will
    yz3+= (poswilly -yz3)*0.015;//persigue will
    image(zombie,xz3,yz3,100,100);//dibujo zombie
    
    }
    else if(poswillx < xz3){
    //zombie 4
    xz3+= (poswillx -xz3)*0.015;// persigue will
    yz3+= (poswilly -yz3)*0.015;//persigue will
    image(zombie1,xz3,yz3,100,100);//dibujo zombie
    }
  
   
    fill(255); 
    
    if(key == '1'){    
      cambiosprite=true;
        
        
    }
    if(key == '2'){    
      cambiosprite=false;
       
    }
  }
            
    
  
  
  
  void movimiento(){
    if  (keyPressed ){
      if ((key=='A')||(key=='a')){             //si oprimo izquierda pero no derecha
        if(cambiosprite==true){
      
      image(will2,poswillx,poswilly,w,h);
      
        }
      
    else{
      image(spritewill2,poswillx,poswilly,w,h);
      
    }
        poswillx-=5;
      }
      if ((key=='D')||(key=='d')){
         if(cambiosprite==true){
      
      image(spritewill1,poswillx,poswilly,w,h);
      
        }
      
    else{
      image(spritewill2,poswillx,poswilly,w,h);
      
    }
    
        poswillx+=5;
      }
      
      if ((key=='W')||(key=='w')){
       if(cambiosprite==true){
      
      image(will3,poswillx,poswilly,h,w);
      
        }
      
    else{
      image(spritewill2,poswillx,poswilly,w,h);
      
    }
        poswilly-=5;
        
      }
      if ((key=='S')||(key=='s')){
      
         if(cambiosprite==true){
      
      image(will1,poswillx,poswilly,h,w);
      
        }
      
    else{
      image(spritewill2,poswillx,poswilly,w,h);
      
    }
      poswilly+=5;
      }
    }
      
  }
  void keyPressed(){
    
    
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
    //mesa
    if((poswillx >=210)&&(poswilly >=156)&&(poswillx<=442)&&(poswilly <200)){//limites para la mesa
      poswilly= 150;
    }
    else if((poswillx>=200)&&(poswilly<=293)&&(poswillx<=422)&&(poswilly >240)){
      poswilly= 300;
      
    }
    if((poswillx>=200)&&(poswilly>=151)&&(poswilly<=291)&&(poswillx<250)){
      poswillx=195;
    }
    if((poswillx<=442)&&(poswilly>=148)&&(poswilly<=290)&&(poswillx>380)){
      poswillx=440;
    }
    //piano
    if((poswillx>=565)&&(poswillx<615)&&(poswilly>=0)&&(poswilly<115)){
      poswillx= 565;
    }
    if((poswillx>=570)&&(poswilly<115)&&(poswillx<=810)){
      poswilly=117;
    }
    
    if((poswillx<=820)&&(poswillx>750)&&(poswilly<115)){
      
    }
    
  }
}
