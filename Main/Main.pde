ArrayList<Walls> W;  //wall class arraylist
Walls Wall;  //wall class
Ghost G;  //ghost class
Player P;  //player class
PImage Over;  //Game over image
boolean gameOver= false; //what state the game is in 
float wallw= 150;
float wallh= 400;
void setup() {

  fullScreen();//makes the game fullscreen
  W=new ArrayList<Walls>();
  G= new Ghost(random(1000, 2000), random(0, 1000));
  Wall = new Walls(300, height/2, wallw, wallh );
  P= new Player(100, height/2);
  Wall.makePath();  //gets the wall path creation code
}
void draw() {
  //only display when game is active
  if (gameOver==false) {
    background(0);
    G.display();
    G.Update(P);
    P.kill(G);
    P.display();
    P.move();
    for (int i = 0; i < W.size(); i++) {  //loops through the walls in the arraylist
      Walls currentWall = W.get(i);
      currentWall.display();
    }
  } else {   //code to reset the game and try again 
    background(255);
    fill(255);
    rect(0, 0, width, height);
    fill(255, 0, 0);
    textSize(40);
    text("PRESS 'T' TO TRY AGAIN", width/1.5, height/1.5);
    Over=loadImage("game_over_PNG31.png");
    image(Over, width/2.5, height/2.5);
  }
}

void keyPressed() {  //makes the game rest on 't' key pressed 
  if (key=='t' && gameOver== true) {
    G= new Ghost(random(1500, 2000), random(0, 1000));
    P= new Player(100, height/2);
    W.clear();
    Wall = new Walls(50, height/2, wallw, wallh);
    Wall.makePath();
    gameOver=false;
  }
}
