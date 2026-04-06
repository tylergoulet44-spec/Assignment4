ArrayList<Walls> W;
Walls Wall;
Ghost G;
Player P;
WinState Win;
PImage Over;
boolean gameOver= false;
float wallw= 150;
float wallh= 400;
float r=25;
boolean winPlaced = false;
boolean NextLevel = false;
int s=0;
void setup() {

  fullScreen();
  W=new ArrayList<Walls>();
  G= new Ghost(random(1000, 2000), random(0, 1000));
  Wall = new Walls(300, height/2, wallw, wallh );
  P= new Player(100, height/2);
  Wall.makePath();
}


void draw() {
  background(0);
  //sends your player,ghost and score to the next level clearing the walls so you have a 'new' map
if (NextLevel==true) {
      background(0);
      println("RESET BLOCK IS RUNNING");
      G= new Ghost(random(1500, 2000), random(0, 1000));
      P= new Player(100, height/2);
      W.clear();
     
      Wall = new Walls(300, height/2, wallw, wallh);
      Wall.makePath();
      winPlaced=false;
      NextLevel=false;
      s+=1000;
      
    }
    //accesses the code in the classes and draws them if statement is false
  if (gameOver==false) {
    
    G.display();
    G.Update(P);
    P.kill(G);
    P.display();
    P.move();
    P.Walls(Wall);
//draws each wall and displays it 
    for (int i = 0; i < W.size(); i++) {
      Walls currentWall = W.get(i);
      currentWall.display();
    }
  } else {
    background(255);
    fill(255, 0, 0);
    textSize(40);
    text("PRESS 'T' TO TRY AGAIN", width/1.5, height/1.5);
    Over=loadImage("game_over_PNG31.png");
    image(Over, width/2.5, height/2.5);
  }
  if (winPlaced==false) {
    boolean placed = false;

    while (placed == false) {
      float randomX = random(50, width - 50);
      float randomY = random(50, height - 50);
//checks each wall that is drawn
      boolean touchingWall = false;
      for (int i = 0; i < W.size(); i++) {
        Walls currentWall = W.get(i);
// is the circle touching a wall 
        if (randomX+r > currentWall.Location.x &&
          randomX-r < currentWall.Location.x + currentWall.w &&
          randomY+r > currentWall.Location.y &&
          randomY -r< currentWall.Location.y + currentWall.h) {
          touchingWall = true;
        }
      }
//makes sure the circle doesn't get placed on a wall
      if (touchingWall == false) {
        Win = new WinState(randomX, randomY);
        placed = true;
        winPlaced = true;
      }
    }
  }
  Win.display();
  Win.score(P);
  Win.scoreDisplay();
}
//allows you to restart after you die 
void keyPressed() {
  if (key=='t' && gameOver== true) {
    G= new Ghost(random(1500, 2000), random(0, 1000));
    P= new Player(100, height/2);
    W.clear();
    Wall = new Walls(300, height/2, wallw, wallh);
    Wall.makePath();
    gameOver=false;
    winPlaced=false;
    s=0;
  }
}
