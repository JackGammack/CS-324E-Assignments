class Flag {
  float x, y;

  Flag(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    line(x,y-100,x,y-150);
    fill(0,0,255);
    rect(x,y-150,50,25);
  }
}
