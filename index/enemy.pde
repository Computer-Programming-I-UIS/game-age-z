class enemy {
  
  int poszx,poszy;
  float w,h, rotation,speed,maxspeed, friction;
  
  enemy(){
    //poszx=444;
    //poszy=333;
    w=150;
    h=150;
    rotation=0;
    speed = 0;
    maxspeed=5;
    friction = 0.5;
  }
   void dibujoz(int zombien){
     
     switch(zombien){
       case 1:
         //poszx=;
         //poszy=;
         image(zombie,poszx, poszy, w,h);
       case 2:
         //poszx=;
         //poszy=;
         image(zombie,poszx, poszy, w,h);
       case 3:
         //poszx=;
         //poszy=;
         image(zombie,poszx, poszy, w,h);
       case 4:
         //poszx=;
         //poszy=;
         image(zombie,poszx, poszy, w,h);
     }
   }
  
}
