Ghost G;
Player P;
void setup(){
  fullScreen();
  
  G= new Ghost(random(1500,2000),random(0,1000));
  P= new Player(100,height/2);
}
void draw(){
  background(0);
G.display();
G.Update(P);
P.display();
P.move();
P.kill(G);
P.restart();
}
