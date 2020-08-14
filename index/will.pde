//clase para realizar el movimiento de will
class will{
  
  
//variables necesarias
  PImage spritewill;
  int willx = 10, willy = 18, anchosprite = 220, altosprite = 200; //coordenadas para tomar el sprite que se necesita
  int arma = 0;
  int poswillx = 15;
  int poswilly = 0;
  int speed = 4;
  
  
  
  void dibujo(){
    
     spritewill = loadImage("personaje1.png");
     copy(spritewill,willx,willy, anchosprite, altosprite, poswillx,poswilly,anchosprite, altosprite);
      
    
    if(key == '1'){    
        willx=10;
        willy=18;
        anchosprite=220;
        altosprite=200;
        
    }
    if(key == '2'){     
        willx=254;
        willy=216;
        anchosprite=465;
        altosprite=340;
       
    }
    if(key == '3'){     
        willx=19;
        willy=228;
        anchosprite=217;
        altosprite=377;
       
    }
       
      
    
  }
  
  
  void movimiento(){
    if(keyPressed){
        if(key == 'w' || key == 'W'){
          //poswilly=poswilly-4;
          
        }
        if(key == 's' || key == 'S'){
          //poswilly=poswilly+4;
          
        }
        if(key == 'a' || key == 'A'){
          //poswillx = poswillx-4;
          
        }
        if(key == 'd' || key == 'D'){
          //poswillx=poswillx+4;
          
        }
    }
    
  }
}
