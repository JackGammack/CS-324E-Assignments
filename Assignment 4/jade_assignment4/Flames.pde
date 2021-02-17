class Flames {
  //x and y coordinates for approx. center of asteroid
  float x, y;
  PVector speed;
  float flicker = 0;

  Flames(float x, float y, PVector speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  //set colors for flames
  color yellow = color(255,247,3);
  color orange = color(232,167,0);
  color red = color(211,64,23);
  
  void display() {

    //red part of flame in background
    //left-hand curve (when pointing down)
    noStroke();
    fill(red);
    beginShape();
    curveVertex(x+50,y-20);
    curveVertex(x,y-50);
    curveVertex(x-80,y-30);
    curveVertex(x-130,y);
    curveVertex(x-160,y+20);
    endShape(CLOSE);
    
    //right-hand curve (when pointing down)
    beginShape();
    curveVertex(x+50,y+20);
    curveVertex(x,y+50);
    curveVertex(x-80,y+30);
    curveVertex(x-130,y);
    curveVertex(x-160,y-20);
    endShape();
    
    //fill in middle area not covered by curves
    triangle(x,y-50, x-130,y, x, y+50);

    //orange middleground
    noStroke();
    fill(orange);
    triangle(x,y-50, x-110,y-8, x,y);
    triangle(x,y, x-110,y+8, x,y+50);
    
    //yellow foreground and circle around asteroid
    fill(yellow);
    circle(x,y,100);
    triangle(x,y-50, x-85,y-15, x,y);
    triangle(x,y-30, x-85,y, x,y+30);
    triangle(x,y, x-85,y+15, x,y+50);
  }
  
    void move() {
      //increment x and y coordinates by given speed
      x+= speed.x;
      y += speed.y;
      
      //if asteroid goes past edge, come back on other side
      //left of object goes off right side
      if ((x-120) > width) {
        x = -80;
      }
      //top of object goes off bottom
      if ((y - 100) > height) {
        y = -20;
      }
      //right of object goes off left side
      if ((x+120) < 0) {
        x = width + 100;
      }
      //bottom of object goes off top
      if ((y+100 < 0)) {
        y = height + 100;
      }

    }

  }
