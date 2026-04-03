class Walls {

  PVector Pos;
  PVector Start;
  PVector End;
  
  float d = PVector.dist(Start, End);
  float w;
  float h;





  Walls(float x, float y,float w,float h) {

    w=random(100, 300);
    h=random(100, 300);
    Start = new PVector(x, y);
    End = new PVector(x + 900, y);
  }

  void display() {


  }

  }
