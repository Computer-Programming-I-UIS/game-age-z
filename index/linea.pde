class Sprite {
  float x, y, w, h;
  int currentFrame;

  float vx, vy, rotation, speed, maxSpeed, friction;
  boolean walking;

  Sprite() {
    y = height/2;   
    x = width/2;
    rotation=0;
    speed = 0;
    maxSpeed=5;
    friction = 0.5;
    w=138;
    h=91;
  }
  void update() {
    if (left && !right){
     //rotation += -1; 
     rotation += -.05; 
    }
    if (right && !left) {
      //rotation += 1;
      rotation += .05;
    }
    if (!left && !right){
      //rotation = 0;
    }
    
    if (up && !down){
     if(speed < maxSpeed){speed += 1;}else{speed=maxSpeed;}
    }
    if (down && !up) {
      if(speed < -maxSpeed){speed -= 1;}else{speed=-maxSpeed;}
    }
    if (!up && !down){
      if (speed>0 || speed <0){
          speed *= friction;
        }else{
          speed=0;
        } 
    }
    
    
    x += cos(rotation)*speed;
    y += sin(rotation)*speed;
    //x += cos(rotation*PI/180)*speed;
    //y += sin(rotation*PI/180)*speed;
  }
  void display() {
    fill(255,255,0,100);
    pushMatrix();
    translate(x,y);
    rotate(rotation);
    image(spritewill1,0-w/2,0-h/2,w,h);
    popMatrix();
    if (keyPressed){
        if((key== 'x')||(key=='X')){
      stroke(255,100);
      strokeWeight(10);
       line (50,20,600,0);//bibujo linea guia para el disparo
        }
      }
    
  }
}
