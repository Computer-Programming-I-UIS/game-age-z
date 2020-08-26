//clase para dibujar fondos
class fondo{

  
  int ytext = 690;
  int ycredi = 690;
  int n = 40; //space between the text 
  int c = 40; 
   
   
  fondo(){  
  }
   
  void menu(){
    background(menuini);
     if(mouseY >= 455 && mouseY < 506 && mouseX >= 233 && mouseX < 583 ){
      cursor(HAND);
    }else if(mouseY >= 565 && mouseY < 617 && mouseX >= 312 && mouseX < 461  ){
      cursor(HAND);
    }else if(mouseY >= 648 && mouseY < 700 && mouseX >= 330 && mouseX < 440){
      cursor(HAND);
    }
    else{
     cursor(ARROW); 
    }
  }
  
  
  void creditos (){
    background(0);
    textSize(38);
    text("CREATED BY:",450,ycredi);
    text("    Andres Araque",450,ycredi+c*2);
    text("    Jhonathan Murcia",450,ycredi+c*3);
    text("SCRIPT DIRECTOR:",450,ycredi+c*5);
    text("    Jhonathan Murcia",450,ycredi+c*7);
    text("ART DIRECTOR:",450,ycredi+c*9);
    text("    Laura Daniela Cabra",450,ycredi+c*11);
    text("IMAGES AND SPRITES TAKEN FROM:",450,ycredi+c*13);
    text("    opengameart.org",450,ycredi+c*15);
    text("    capcom.com",450,ycredi+c*16);
    text("    devianart.com",450,ycredi+c*17);
    ycredi=ycredi-1;
    if (ycredi+c*17<-20){
      menu();
    }
  }
  
  void salir(){
    exit();
  }
 
 
  void historias(){
    //noCursor();
    background(historia);
    textSize(38);
    text("Will, a former US Marine with a tragic past,",38,ytext);
    text("tries to lead a normal life",38,ytext+n);
    text("with his wife María",38,ytext+n*2);
    text("and their daughter Silvia.",38,ytext+n*3);
    text("Nobody expected it,",38,ytext+n*5);
    text("a pandemic strikes humanity",38,ytext+n*6);
    text("covid is very contagious",38,ytext+n*7);
    text("and something weird is happening",38,ytext+n*8);
    text("the infected are mutating",38,ytext+n*9);
    text("Dawn dawns and Will does not see his family",38,ytext+n*11);
    text("hear a noise in the kitchen",38,ytext+n*12);
    text("What is happening?",40,ytext+n*14);
    ytext=ytext-50;
    if (ytext+n*13<-20){
      nivel1();
    }
  }
 
 void nivel1(){
   background(fondo1);
 }
  
}
