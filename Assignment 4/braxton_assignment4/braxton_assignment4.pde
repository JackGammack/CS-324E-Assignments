Flag flag;
Planet planet;

Asteroid a1;
Flames f1;
PImage bg;


void setup(){
  bg = loadImage("bg.png");
  size(1000,800);
  planet = new Planet(800,600,0);
  flag = new Flag(800,450,-6,0);
  a1 = new Asteroid(300,300);
  f1 = new Flames(300,300);
}

void draw(){
  background(bg);
  planet.display();
  flag.display();
  f1.display();
  a1.display();
}
