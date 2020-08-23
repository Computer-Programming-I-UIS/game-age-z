//clase para dibujar fondos
class fondo{

  
  int ytext = 690;
  int n = 40; //space between the text 
   
   
   
  fondo(){  
  }
   
  void menu(){
    background(menuini);
  }  
 
 
  void historias(){
    //noCursor();
    background(historia);
    textSize(38);
    text("Will un ex-marin estadounidense con un",38,ytext);
    text("Trágico pasado intenta llevar una",38,ytext+n);
    text("vida normal junto a su esposa ",38,ytext+n*2);
    text("María y a hija Silvia.",38,ytext+n*3);
    text("Nadie lo esperaba,",38,ytext+n*5);
    text("una pandemia asota la humanidad",38,ytext+n*6);
    text("el covid es muy rápido y",38,ytext+n*7);
    text("y algo raro está sucediendo",38,ytext+n*8);
    text("los contagiados están mutando",38,ytext+n*9);
    text("Amanece y Will no ve a su familia",38,ytext+n*11);
    text("Escucha un ruido en la cocina",38,ytext+n*12);
    text("¿Qué está sucediendo?",40,ytext+n*14);
    ytext=ytext-1;
    if (ytext+n*7<-20){
      nivel1();
    }
  }
 
 void nivel1(){
   background(fondo1);
   personajemain.dibujo();
   personajemain.movimiento();
   personajemain.limite();
 }
  
}
