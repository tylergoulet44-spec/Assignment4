ArrayList<Walls> W;
Walls Wall;
Ghost G;
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
}
