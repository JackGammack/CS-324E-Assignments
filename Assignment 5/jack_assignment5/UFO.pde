class UFO{
  float s, c, xtran, ytran, ztran, xspeed, yspeed, zspeed, r, theta, rm, wm;
  PShape ufo, m1;
  
  UFO (float scl, color c1, float xs, float ys, float zs, float miss_radius, float miss_width) {
    s = scl;
    c = c1;
    xtran = 0;
    ytran = 0;
    ztran = 0;
    xspeed = xs;
    yspeed = ys;
    zspeed = zs;
    rm = miss_radius;
    wm = miss_width;
    theta = 0;
    ufo = loadShape("Ufo.obj");
    ufo.scale(20);
    m1 = createShape(SPHERE, rm);
    m1.setFill(c1);
    m1.setStroke(false);
    translate(width/2, height/2);
    ufo.rotateX(PI);
  }
  void update() {
    translate(width/2+250*sin(xtran), height/2+250*sin(ytran), 200*sin(ztran));
    shape(ufo, 0, 0);
    translate(wm*sin(theta), 0, wm*cos(theta));
    shape(m1,0,0);
    theta += 0.02;
    xtran += xspeed;
    ytran += yspeed;
    ztran += zspeed;
  }
   
}
