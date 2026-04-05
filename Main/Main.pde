ArrayList<Walls> W;
Walls Wall;
Ghost G;
<<<<<<< HEAD
void setup() {
  fullScreen();
  W=new ArrayList<Walls>();
  G= new Ghost(random(1000, 2000), random(0, 1000));
  Wall = new Walls(50,height/2,random(75,150),random(75,150));
   Wall.makePath();
}
void draw() {
  background(0);
  G.display();
  G.Update();
  Wall.display();
  
  for (int i = 0; i < W.size(); i++) {
    Walls currentWall = W.get(i);
    currentWall.display();
  
}
=======
Player P;
boolean gameOver= false;
void setup() {
  fullScreen();

  G= new Ghost(random(1500, 2000), random(0, 1000));
  P= new Player(100, height/2);
}
void draw() {
  
    background(0);
    G.display();
    G.Update(P);
    P.display();
    P.move();
    P.kill(G);
  
}
void keyPressed() {
  if (key=='t' && gameOver== true) {
    G= new Ghost(random(1500, 2000), random(0, 1000));
    P= new Player(100, height/2);
    loop();
    gameOver=false;
  }
>>>>>>> Player-
}
