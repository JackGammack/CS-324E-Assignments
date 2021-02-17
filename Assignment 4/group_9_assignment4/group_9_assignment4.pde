UFO u1;
UFO u2;
PImage bodyImg;
PImage missileImg;
Asteroid a1;
Flames f1;
Flag flag;
Planet planet;

//color of asteroid is modifiable here
color a1Color = color(160,149,142);

void setup() {
  colorMode(RGB);
  size(1000,800);
  bodyImg = loadImage("body.png");
  missileImg = loadImage("ball.png");
  u1 = new UFO(100,color(100,100,100),100,100,-2,3,100,10);
  u2 = new UFO(150,color(200,200,200),300,300,3,-2,200,25);
  planet = new Planet(800,600);
  flag = new Flag(800,600);
  a1 = new Asteroid(300,300,a1Color);
  f1 = new Flames(300,300);
  f1.display();
  a1.display();
}

void draw() {
  background(200);
  u1.update();
  u2.update();
  planet.display();
  flag.display();
  f1.display();
  a1.display();
}
