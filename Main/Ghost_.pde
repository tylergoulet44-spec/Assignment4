class Ghost {

  PImage Ghost;
  PVector position;
  PVector speed;
  PVector acceleration;


  Ghost(float x, float y) {

    speed= new PVector(0, 0);
    position = new PVector(x, y);
    acceleration = new PVector(1, 1);
  }
  void display() {
    Ghost=loadImage("ghost_resized.png");
    image(Ghost, position.x, position.y);
    Ghost.resize(100, 100);
  }

  
  //enemy tracking https://www.youtube.com/watch?v=2FsL07pywHA&t=8s, https://www.youtube.com/watch?v=V7k5bFQbhG0
  void Update(Player P) {
    PVector player=  P.position;
    PVector direction= PVector.sub(player, position);//subtract enemy position to get to player

    direction.normalize();//smoothen outs the vectors magnatude when it gets to the player 
    acceleration = direction;//tells the enemy what direction 
    speed.add(acceleration);// how the enemy speeds up
    speed.limit(2);// makes it so that the enemy can't go to fast
    position.add(speed);
  }
}
