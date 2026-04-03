class Ghost {

PImage Ghost;
PVector position;
PVector speed;
 


 Ghost(float x, float y){
   resize(100,100);
speed= new PVector(20,20);
position = new PVector(x, y);
}
void display(){
  Ghost=loadImage("ghost_resized.png");
  image(Ghost,x,y);
}

void move(){
  
