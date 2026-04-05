class Player {
  PImage Person;
  PImage Over;
  PVector position;
  PVector velocity;


  Player(float x, float y) {

    velocity= new PVector(10, 10);
    position= new PVector(x, y);
  }


  void display() {
    Person=loadImage("Person.png");
    image(Person, position.x, position.y);
    Person.resize(10, 10);
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
    velocity.limit(30);

    if (!keyPressed) {
      velocity.x=0;
      velocity.y=0;
    }
  }
  void kill(Ghost G) {
    float d = dist (position.x, position.y, G.position.x+20, G.position.y-10);

    if (d<30) {
      noLoop();
      background(255);
      fill(255, 0, 0);
      textSize(40);
      text("PRESS 'T' TO TRY AGAIN", width/1.5, height/1.5);
      Over=loadImage("game_over_PNG31.png");
      image(Over, width/2.5, height/2.5);
      gameOver=true;
    }
  }
}
