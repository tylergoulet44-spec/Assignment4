class Ghost {

  PImage Ghost;
  PVector position;
  PVector speed;
PVector acceleration;


  Ghost(float x, float y) {
    
    speed= new PVector(20, 20);
    position = new PVector(x, y);
  }
  void display() {
    Ghost=loadImage("ghost_resized.png");
    image(Ghost, position.x, position.y);
    Ghost.resize(100, 100);
  }

  void move() {
      speed.add(acceleration);// how the enemy speeds up
      speed.limit(15);// makes it so that the enemy can't go to fast
      position.add(speed);
    }
    void track() {
      if (playerX>300 && playerY>0){
      position=playerPosition;
    }
}
}
