class Planet {
  float x, y;
  
  Planet(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
    //display the planet
    strokeWeight(2);
    fill(75,75,75);
    circle(x, y, 200);
    
    //display the craters
    stroke(45,45,45);
    fill(45,45,45);
    strokeWeight(1);
    ellipse(x-50, y-50, 50, 49);
    ellipse(x+25, y+25, 25, 20);
    ellipse(x+30, y-10, 25, 15);
    
    //will make Shape of the crater more pleasing to look at with bezier curves, and nested circles to create a shadow
    //beginShape();
    //vertex(x-0.20,y-6.13);
    //bezierVertex(x-1.23,y-9.01,x-3.32,y-9.99,x-4.74,y-9.64);
    //endShape();
  }
}
