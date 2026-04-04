class Player {
PImage Person;
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
 
  void move(){

      
     
    position.add(velocity);
      //if a key is pressed move the person in that direction
      //right and left direction
      if (keyPressed && key=='d') {
      velocity.x+=7;
    }
    if (keyPressed && key=='a') {
      velocity.x-=7;
    }
    //up and down direction
    if (keyPressed && key=='s') {
      velocity.y+=7;
    }
    if (keyPressed && key=='w') {
      velocity.y-=7;
    }
      //keep the person on the screen
      position.x=constrain(position.x, 0, width);
      position.y=constrain(position.y,0,height);
      velocity.limit(3);
    
if(!keyPressed){
  velocity.x=0;
  velocity.y=0;
  }
}
}
