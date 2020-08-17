//clase para dibujar fondos
 class fondo{

   int ancho1,alto1,ancho2,alto2;//variables para las paredes
   
   
   
   fondo(){
     ancho1=40;//ancho para paredes horizontales
     alto1=20;//alto paredes horizontales
     ancho2=20;//ancho paredes verticales
     alto2=40;//alto paredes verticales
     
   }
 void fondo1(){
   for(int i=0;i<=width;i+=40){//bucle para dibujo de cada una de las paredes
       fill(206,113,52);
       rect(i,0,ancho1,alto1);
     }
   for(int i=0;i<=height;i+=40){
       fill(206,113,52);
       rect(0,i,ancho2,alto2);
     }
     for(int i=0;i<=height;i+=40){
       fill(206,113,52);
       rect(width-20,i,ancho2,alto2);
     }
     for(int i=0;i<=width;i+=40){
       fill(206,113,52);
       rect(i,height-40,ancho1,alto1);
     }
    
  }
  
  void mesas(int xm,int ym){
    rect(xm,ym,70,70);
  }
  
 }
