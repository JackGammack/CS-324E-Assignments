class Asteroid extends Flames {
  color c;
  
    
  //asteroid inherits x and y location and gets its own color
  Asteroid(float x, float y, PVector speed, color c) {
    super(x,y,speed);
    this.c = c;
  }
  
  
  void display() {
    //outline of rock starting at 9:00 and going clockwise
    stroke(2);
    fill(c);
    beginShape();
    vertex(x - 50, y - 10);
    vertex(x - 40, y - 20);
    vertex(x - 35, y - 30);
    vertex(x - 20, y - 35);
    vertex(x + 10, y - 40);
    vertex(x + 30, y - 35);
    vertex(x + 40, y - 10);
    vertex(x + 50, y +10);
    vertex(x + 45, y + 30);
    vertex(x + 30, y + 40);
    vertex(x + 10, y + 35);
    vertex(x - 20, y + 40);
    vertex(x - 45, y + 30);
    endShape(CLOSE);
    
    //craters
    noStroke();
    fill(70,57,50);
    ellipse(x-25,y-20,15,20);
    ellipse(x, y+20,30,30);
    ellipse(x+20,y-20,25,20);
  }
}
