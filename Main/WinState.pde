class WinState {

  PVector position;


  WinState(float x, float y) {
    position = new PVector(x, y);
  }
  //tells the player what there score is and what to do
  void scoreDisplay() {
   fill(#D81818);
    textSize(25);
    text("GET TO THE YELLOW CIRCLE!! Score="+s,width/2,40);  
  }
  //displays yellow circle
  void display() {
    fill(#D1D818);
    ellipse(position.x, position.y, 50, 50);
  }
  //hit box for score circle
  void score(Player P) {
    if (position.x+50  > P.position.x &&
        position.x-50 < P.position.x &&
        position.y+30 > P.position.y &&
        position.y -50< P.position.y ) {
    
     NextLevel=true;
      println(NextLevel);
    }
  }
}
