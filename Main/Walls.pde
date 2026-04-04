class Walls {
<<<<<<< HEAD

  PVector Pos;
  PVector Start;
  PVector End;
  
  float d = PVector.dist(Start, End);
  float w;
  float h;
=======
  //helps with position of the wall
  PVector Location;
  //next wall block to be placed
  PVector next;
  //Wall we are placing
  PVector current;
  float w=random(50, 100);
  float h=random(50, 100);
>>>>>>> Walls





<<<<<<< HEAD
  Walls(float x, float y,float w,float h) {

    w=random(100, 300);
    h=random(100, 300);
    Start = new PVector(x, y);
    End = new PVector(x + 900, y);
  }

  void display() {


  }

  }
=======
  Walls(float x, float y, float w, float h) {

   
    //  Start = new PVector(x, y);
    //  End = new PVector(x + 900, y);
    Location = new PVector(x, y);
    current = new PVector(x, y);
    next = new PVector(x,y);

    //println(d);
  }
  //draw the rectangle on the screen to create the path
  void display() {
    rect(Location.x, Location.y, w, h);
    //grey
    fill(#A59E9E);
  }
// Makes a random path of walls 
  void makePath() {
//spacing of the walls being placed 
    int spacing =100;
    //amount of squares placed on the screen 
    int totalsquares= 50;
    W.add(new Walls(current.x, current.y, w, h));
//loop for making more walls 
    for (int i = 0; i < totalsquares; i++) {
      //did we place a new wall
      boolean placed = false;
    //attempts made 
      int attempts = 0;
    //keep trying until a wall is placed down or attempts reach 5
     while (!placed && attempts < 5) {
        attempts++;
//what way to go 
        boolean goRight = false;
        boolean goUp = false;
        boolean goDown = false;
//random choice for direction 
        int choice = int(random(4));

        if (choice == 0 || choice == 1) {
          goRight = true;
        } else if (choice == 2) {
          goUp = true;
        } else {
          goDown = true;
        }

        next = new PVector(current.x, current.y);

        if (goRight) {
          next.x += spacing;
        }
        if (goUp) {
          next.y -= spacing;
        }
        if (goDown) {
          next.y += spacing;
        }
           //only place a wall if it stays on the screen 
        if (next.x >= 0 && next.x <= width - spacing && next.y >= 0 && next.y <= height - spacing) {
         //adds a wall at the next position
          W.add(new Walls(next.x, next.y, w, h));
         //updates current so we continue from same wall
          current = new PVector(next.x, next.y);
         //lets us know we placed a wall
          placed = true;
        }
      }
    }
  }
}
>>>>>>> Walls
