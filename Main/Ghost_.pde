class Ghost {

  PImage Ghost;
  PVector position;
  PVector speed;



  Ghost(float x, float y) {
    resize(100, 100);
    speed= new PVector(20, 20);
    position = new PVector(x, y);
  }
  void display() {
    Ghost=loadImage("ghost_resized.png");
    image(Ghost, x, y);
  }

  void move() {
      speed.add(acceleration);// how the enemy speeds up
      speed= limit(15);// makes it so that the enemy can't go to fast
      position.add(speed);
    }
    void track() {
      if (playerX>300 && playerY>0)
