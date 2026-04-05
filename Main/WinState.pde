class WinState {

  PVector position;


  WinState(float x, float y) {
    position = new PVector(x, y);
  }
  void scoreDisplay() {
   fill(#D81818);
    textSize(25);
    text("Score="+s,width/2,40);  
  }
  void display() {
    fill(#D1D818);
    ellipse(position.x, position.y, 50, 50);
  }
  void score(Player P) {
    if (position.x+40  > P.position.x &&
        position.x-40 < P.position.x &&
        position.y+30 > P.position.y &&
        position.y -40< P.position.y ) {
    
     NextLevel=true;
      println(NextLevel);
    }
  }
}
