ArrayList<Walls> W;

Ghost G;
void setup(){
  fullScreen();
  W=new ArrayList<Walls>();
  G= new Ghost(random(1000,2000),random(0,1000));
}
void draw(){
  background(0);
G.display();
G.Update();
W.display();
  }
