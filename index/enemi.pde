class Enemy {
  float x, y, w, h;

  Enemy() {
    x = 50;
    y = height/2;
    w = 100;
    h = 100;
  }
  void update() {
  }
  void display() {
    image(zombie,x,y,100,100);
  }
}
