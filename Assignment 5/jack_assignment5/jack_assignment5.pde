UFO u1;

void setup() {
  u1 = new UFO( 40, color(238, 255, 58), .02, .015, .01, 5, 100);
  size(1000, 800, P3D);
  translate(width/2, height/2);
}

void draw() {
  background(204);
  u1.update();
}
