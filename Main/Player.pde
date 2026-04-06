class Player {
  PImage Person;
  PVector position;
  PVector velocity;

  Player(float x, float y) {

    velocity= new PVector(10, 10);
    position= new PVector(x, y);
  }
  //displays your character
  void display() {
    Person=loadImage("Person.png");
    image(Person, position.x, position.y);
    Person.resize(10, 10);
    //println(position.x, position.y);
  }

  void move() {
    position.add(velocity);
    //if a key is pressed move the person in that direction
    //right and left direction
    if (keyPressed && key=='d') {
      velocity.x+=3;
    }
    if (keyPressed && key=='a') {
      velocity.x-=3;
    }
    //up and down direction
    if (keyPressed && key=='s') {
      velocity.y+=3;
    }
    if (keyPressed && key=='w') {
      velocity.y-=3;
    }
    //keep the person on the screen
    position.x=constrain(position.x, 0, width);
    position.y=constrain(position.y, 0, height);
    velocity.limit(3);

    if (!keyPressed) {
      velocity.x=0;
      velocity.y=0;
    }
  }
  //allows the ghost to kill you 
  void kill(Ghost G) {
    float d = dist (position.x, position.y, G.position.x+25, G.position.y-10);
    // println(d);
    if (d<30) {
      gameOver=true;
    }
  }
  //Walls hit box, kills player 
  void Walls(Walls Wall){
    if (position.x > Wall.Location.x &&
      position.x < Wall.Location.x + Wall.w &&
      position.y > Wall.Location.y &&
      position.y < Wall.Location.y + Wall.h) {
gameOver= true;
  }
}
}
