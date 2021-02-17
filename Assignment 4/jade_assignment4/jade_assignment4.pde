
//initialize new objects
Asteroid a1;
Asteroid a2;
Flames f1;
Flames f2;
PVector p1, p2;
int hShake = 15;

//colors of asteroids are modifiable here
color a1Color = color(160,149,142);
color a2Color = color(93,61,61);

void setup() {
  size(1000,800);
  p1 = new PVector(5,4);
  p2 = new PVector(6,-4);
  a1 = new Asteroid(0,0, p1, a1Color);
  a2 = new Asteroid(0,0, p2, a2Color);
  f1 = new Flames(0,0, p1);
  f2 = new Flames(0,0, p2);
}

void draw() {
  background(200);
  
  //display asteroids on top of flames
  f1.display();
  a1.display();
  f2.display();
  a2.display();
  
  //move all objects
  a1.move();
  f1.move();
  a2.move();
  f2.move();
  
  //horizontally shake the flames and keep with asteroid's position
  if ((a1.x+width) > width ){
    f1.x += hShake;
  }
  if ((a2.x+width) > width ){
    f2.x += hShake;
  }
  hShake = -hShake;
  
}
