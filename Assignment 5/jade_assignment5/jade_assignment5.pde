Rocket rocket1;


void setup() {
  size(1000,800,P3D);
  rocket1 = new Rocket(7, 10, 0.01);
  
}

void draw() {
  background(200);
  rocket1.move();
}
