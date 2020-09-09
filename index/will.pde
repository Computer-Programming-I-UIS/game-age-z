//clase para realizar el movimiento de will
class will{
  
  
//variables necesarias
  
  int poswillx;         //posicion en x del will
  int poswilly;         //posicion en y de will
 
  float w,h; //w:ancho sprite, h:alto sprite, rotation: angulo para que rote will, speed: velocidad del caminar, maxspeed: maxima velocidad, friction: hace que el movimiento se baja desacelerando para que no ande como loco
  int cambiosprite =1; //variable para que cambie de sprite
  float xz,yz,xz1,yz1,xz2,xz3,yz2,yz3,xz4,yz4;//variables zombie
  float perseguidor = 0.005;// variable para velocidad de perseguidor
  float dist1;
  float dist2;
  float dist3;
  float dist4;
  float dist5;
  int vidaz = 300;
  int r=250, g=0, b=0;
  int color1 = color(r,g,b);
  
  
  will(){
    poswilly = height/2;   
    poswillx = width/2;
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
    xz4 =2000;
    yz4= -7000;
  }
  
  
 
  void dibujo(){
    ellipse(poswillx,poswilly,20,20);
    //zombie1
    if(xz>=3000){
      imageMode(CORNER);
      image(zombie,6000,yz,100,100);//dibujo zombie
    }
    else{
    if(poswillx >= xz){
    xz+= (poswillx -xz)*perseguidor;// persigue will
    yz+= (poswilly -yz)*perseguidor;//persigue will
    imageMode(CORNER);
    image(zombie,xz,yz,100,100);//dibujo zombie
    //zombie2
    }
     else if(poswillx < xz){
        xz+= (poswillx -xz)*perseguidor;// persigue will
    yz+= (poswilly -yz)*perseguidor;//persigue will
    imageMode(CORNER);
    image(zombie1,xz,yz,100,100);//dibujo zombie
     }
    }
    if(xz1>=3000){
      imageMode(CORNER);
      image(zombie,6000,yz1,100,100);//dibujo zombie
    }
    else{
     if(poswillx >= xz1){
    xz1+= (poswillx -xz1)*0.006;// persigue will
    yz1+= (poswilly -yz1)*0.006;//persigue will
    imageMode(CORNER);
    image(zombie,xz1,yz1,100,100);//dibujo zombie
     }
      else if(poswillx < xz1){
     
    xz1+= (poswillx -xz1)*0.006;// persigue will
    yz1+= (poswilly -yz1)*0.006;//persigue will
    imageMode(CORNER);
    image(zombie1,xz1,yz1,100,100);//dibujo zombie
      }
    }
    if(xz2>=3000){
      imageMode(CORNER);
      image(zombie,6000,yz2,100,100);//dibujo zombie
    }
    else{
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
    imageMode(CORNER);
    image(zombie1,xz2,yz2,100,100);//dibujo zombie
       }
    }
    if(xz3>=3000){
      imageMode(CORNER);
      image(zombie,6000,yz3,100,100);//dibujo zombie
    }
    else{
    if(poswillx >= xz3){
    //zombie 4
    xz3+= (poswillx -xz3)*0.007;// persigue will
    yz3+= (poswilly -yz3)*0.007;//persigue will
    imageMode(CORNER);
    image(zombie,xz3,yz3,100,100);//dibujo zombie
    
    }
    else if(poswillx < xz3){
    //zombie 4
    xz3+= (poswillx -xz3)*0.007;// persigue will
    yz3+= (poswilly -yz3)*0.007;//persigue will
    imageMode(CORNER);
    image(zombie1,xz3,yz3,100,100);//dibujo zombie
    }
    }
    //zombie5 
    if((xz>=3000)&&(xz1>=3000)&&(xz2>=3000)&&(xz3>=3000)){
      
      
      if(xz4>=3000){
      imageMode(CORNER);
      if(r==250){
    tint(color1);
    image(zombie,xz4,yz4,200,200);//dibujo zombie
    noTint();
      }
      else{
    noTint();
    image(zombie,xz4,yz4,200,200);
    //zombie2
    }
    }
    else{
    if(poswillx >= xz4){
    xz4+= (poswillx -xz4)*perseguidor;// persigue will
    yz4+= (poswilly -yz4)*perseguidor;//persigue will
    imageMode(CORNER);
    if(r==250){
    tint(color1);
    image(zombie,xz4,yz4,200,200);//dibujo zombie
    noTint();
    }
    else{
    noTint();
    image(zombie,xz4,yz4,200,200);
    //zombie2
    }
    }
     else if(poswillx < xz4){
        xz4+= (poswillx -xz4)*perseguidor;// persigue will
    yz4+= (poswilly -yz4)*perseguidor;//persigue will
    imageMode(CORNER);
    if(r==250){
       tint(color1);
    image(zombie1,xz4,yz4,200,200);//dibujo zombie
    noTint();
    }
    else{
       noTint();
       image(zombie1,xz4,yz4,200,200);//dibujo zombie
    }
     }
      
    }
    }
  
   
    fill(255); 
    
    
  }
            
    
  void victory(){
    if(xz4==6000){
      background(victoria);
    }
  }
  
  
  void movimiento(){
    if(keyPressed && (key==CODED)){
      if (keyCode == LEFT){
        poswillx -= 7;
        cambiosprite=1;
        
      }else if(keyCode == RIGHT){
        poswillx +=7;
        cambiosprite=2;
      }
      if(keyCode ==UP){
        poswilly -=7;
        cambiosprite=3;
      }else if(keyCode == DOWN){
        poswilly += 7;
        cambiosprite=4;
      }
    }imageMode(CENTER);
    switch(cambiosprite){
      case 1:
      
        image(will2,poswillx,poswilly,138,91);
        
          
        fill(255,100);
        noStroke();
        
        ellipse(poswillx-300,poswilly-25, 10,10);
        ellipse(xz,yz, 10,10);
          
        
        if ((xz<poswillx-300)&&(xz+100>poswillx-300)&&(yz<poswilly-25)&&(yz+100>poswilly-25)&&(keyPressed)){
          if((key=='x')||(key=='X')){
          xz=6000;
        }
        }
        if ((xz1<poswillx-300)&&(xz1+100>poswillx-300)&&(yz1<poswilly-25)&&(yz1+100>poswilly-25)&&(keyPressed)){
         if((key=='x')||(key=='X')){
          xz1=6000;
        }
        }
        if ((xz2<poswillx-300)&&(xz2+100>poswillx-300)&&(yz2<poswilly-25)&&(yz2+100>poswilly-25)&&(keyPressed)){
         if((key=='x')||(key=='X')){
          xz2=6000;
        }
        }
        if ((xz3<poswillx-300)&&(xz3+100>poswillx-300)&&(yz3<poswilly-25)&&(yz3+100>poswilly-25)&&(keyPressed)){
         if((key=='x')||(key=='X')){
          xz3=6000;
        }
        }
        if ((xz4<poswillx-300)&&(xz4+100>poswillx-300)&&(yz4<poswilly-25)&&(yz4+100>poswilly-25)&&(keyPressed)){
          if((key=='x')||(key=='X')){ 
            r=250;
            
            vidaz = vidaz - 1; 
             
           if (vidaz == 0){
             xz4 =6000;
           }
         }
        
         }
          else{
          r=100; 
      
         }
        break;
        
      case 2:
        image(spritewill1,poswillx,poswilly,138,91);
        
          
        fill(255,100);
        
        strokeCap(ROUND);
        strokeJoin(ROUND);
        noStroke();
        
        
         ellipse(poswillx+200,poswilly+20, 10,10);
         ellipse(xz,yz, 10,10);
         if ((xz<poswillx+200)&&(xz+100>poswillx+200)&&(yz<poswilly)&&(yz+100>poswilly)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz=6000;
        }
         }
         if ((xz1<poswillx+200)&&(xz1+100>poswillx+200)&&(yz1<poswilly)&&(yz1+100>poswilly)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz1=6000;
        }
         }
         if ((xz2<poswillx+200)&&(xz2+100>poswillx+200)&&(yz2<poswilly)&&(yz2+100>poswilly)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz2=6000;
        }
         }
         if ((xz3<poswillx+200)&&(xz3+100>poswillx+200)&&(yz3<poswilly)&&(yz3+100>poswilly)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz3=6000;
        }
          
        }
        if ((xz4<poswillx+200)&&(xz4+100>poswillx+200)&&(yz4<poswilly)&&(yz4+100>poswilly)&&(keyPressed)){
          if((key=='x')||(key=='X')){ 
             r=250;
            
            vidaz = vidaz - 1; 
          
           if (vidaz == 0){
             xz4 =6000;
           }
         }
         
         }
         else{
            r=100; 
          
         }
        break;
        case 3:
        image(will3,poswillx,poswilly,91,138);
        
         
        fill(255,100);
        strokeCap(ROUND);
        strokeJoin(ROUND);
        noStroke();
         ellipse(poswillx+20,poswilly-300, 10,10);
         ellipse(xz,yz, 10,10);
         if ((xz<poswillx+20)&&(xz+100>poswillx+20)&&(yz<poswilly-300)&&(yz+100>poswilly-300)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz=6000;
        }
         }
         if ((xz1<poswillx+20)&&(xz1+100>poswillx+20)&&(yz1<poswilly-300)&&(yz1+100>poswilly-300)&&(keyPressed)){
           if((key=='x')||(key=='X')){
           xz1=6000;
        }
         }
         if ((xz2<poswillx+20)&&(xz2+100>poswillx+20)&&(yz2<poswilly-300)&&(yz2+100>poswilly-300)&&(keyPressed)){
           if((key=='x')||(key=='X')){
           xz2=6000;
        }
         }
         if ((xz3<poswillx+20)&&(xz3+100>poswillx+20)&&(yz3<poswilly-300)&&(yz3+100>poswilly-300)&&(keyPressed)){
           if((key=='x')||(key=='X')){
           xz3=6000;
        }
         }
         if ((xz4<poswillx+20)&&(xz4+100>poswillx+20)&&(yz4<poswilly-300)&&(yz4+100>poswilly-300)&&(keyPressed)){
          if((key=='x')||(key=='X')){ 
               r=250;
        
           vidaz = vidaz - 1; 
           if (vidaz == 0){
             xz4 =6000;
           }
         }
        
         }
          else{
            r=100; 
        
         }
          
        
        break;
        case 4:
        image(will1,poswillx,poswilly,91,138);
        
          
        fill(255,100);
        strokeCap(ROUND);
        strokeJoin(ROUND);
        noStroke();
        
        ellipse(poswillx-20,poswilly+300, 10,10);
         ellipse(xz,yz, 10,10);
         if ((xz<poswillx-20)&&(xz+100>poswillx-20)&&(yz<poswilly+300)&&(yz+100>poswilly+300)&&(keyPressed)){
         if((key=='x')||(key=='X')){
           xz=6000;
        }
         }
         if ((xz1<poswillx-20)&&(xz1+100>poswillx-20)&&(yz1<poswilly+300)&&(yz1+100>poswilly+300)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz1=6000;
        }
         }
         if ((xz2<poswillx-20)&&(xz2+100>poswillx-20)&&(yz2<poswilly+300)&&(yz2+100>poswilly+300)&&(keyPressed)){
         if((key=='x')||(key=='X')){
           xz2=6000;
        }
         }
         if ((xz3<poswillx-20)&&(xz3+100>poswillx-20)&&(yz3<poswilly+300)&&(yz3+100>poswilly+300)&&(keyPressed)){
          if((key=='x')||(key=='X')){
           xz3=6000;
        }
        if ((xz4<poswillx-20)&&(xz4+100>poswillx-20)&&(yz4<poswilly+300)&&(yz4+100>poswilly+300)&&(keyPressed)){
          if((key=='x')||(key=='X')){ 
             r=250;
          
           vidaz = vidaz - 1; 
           if (vidaz == 0){
             xz4 =6000;
           }
         }

         }
                  else{
            r=100; 
       
         }
          
        
        break;
        }}
    }
    //image(spritewill1,poswillx,poswilly,138,91);

  
  void die(){
    
    noFill();

    ellipse(poswillx,poswilly,90,90);
    dist1=dist(poswillx,poswilly,xz+50,yz+50);
    dist2=dist(poswillx,poswilly,xz1+50,yz1+50);
    dist3=dist(poswillx,poswilly,xz2+50,yz2+50);
    dist4=dist(poswillx,poswilly,xz3+50,yz3+50);
    dist5= dist(poswillx,poswilly,xz4+100,yz4+100);
    if(dist1 <= 90||dist2 <= 90||dist3 <= 90||dist4 <= 90||dist5<=150){
      lvl1.gaver();
      left = false;
      up = false;
      down = false;
      right = false;
    }
    
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
      poswillx=822;
    }
    //cocina
    if ((poswillx>412)&&(poswilly>490)&&(poswillx<505)){
      poswillx=410;
    }
    if((poswillx<515)&&(poswilly>490)&&(poswillx>500)){
      poswillx=517;
    }
    if((poswilly>480)&&(poswillx>413)&&(poswillx<514)){
      poswilly=478;
    }
    
    //sala
    if((poswillx>1015)&&(poswilly>324)&&(poswillx<1050)&&(poswilly<445)){
      poswillx=1013;
    }
    if((poswilly>323)&&(poswillx>1014)&&(poswillx<1055)&&(poswilly<434)){
      poswilly=321;
    }
    if((poswillx<1059)&&(poswilly>324)&&(poswillx>1020)&&(poswilly<445)){
      poswillx=1060;
    }
    if((poswilly<446)&&(poswilly>410)&&(poswillx>1016)&&(poswillx<1058)){
      
    }
  }
}
