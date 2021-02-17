class Planet {
  float x, y, dir;
  
  Planet(float x, float y, float dir){
    this.x = x;
    this.y = y;
    this.dir = dir;
  }
  
  void display(){
    //display modifications to bounce
    if (x < 900 && dir == 0){
      x+=2;
    }
    else if(x >= 900){
      dir = 1;
      x = 899;
    }
    else if(x > 100 && dir == 1){
      x-=2;
    }
    else if(x <= 100){
      dir = 0;
      x = 101;
    }
    //display the planet
    strokeWeight(2);
    fill(75,75,75);
    circle(x, y, 200);
    
    //display the craters
    stroke(45,45,45);
    fill(45,45,45);
    strokeWeight(1);

    ellipse(x-50, y-50, 50, 49); //bigger
    ellipse(x+25, y+25, 25, 20); //middle
    ellipse(x+30, y-10, 25, 15); //bottom
  }
}
