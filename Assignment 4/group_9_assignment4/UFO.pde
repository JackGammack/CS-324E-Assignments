class UFO{
  float w, h, xpos, ypos, xspeed, yspeed, r, th1, th2, th3, th4, wm;
  color c;
  UFO (float wdth, color c1, float x, float y, float xs, float ys, float miss_radius, float miss_width) {
    w = wdth;
    h = wdth*0.65;
    print(w);
    print(h);
    c = c1;
    xpos = x;
    ypos = y;
    xspeed = xs;
    yspeed = ys;
    r = miss_radius;
    wm = miss_width;
    th1 = 0;
    th2 = PI/2;
    th3 = PI;
    th4 = 3*PI/2;
  }
  void update() {
    image(bodyImg,xpos,ypos, w, h);
    image(missileImg, (xpos + w/2 + r*cos(th1)), (ypos + h/2 + r*sin(th1)), wm, wm);
    image(missileImg, (xpos + w/2 + r*cos(th2)), (ypos + h/2 + r*sin(th2)), wm, wm);
    image(missileImg, (xpos + w/2 + r*cos(th3)), (ypos + h/2 + r*sin(th3)), wm, wm);
    image(missileImg, (xpos + w/2 + r*cos(th4)), (ypos + h/2 + r*sin(th4)), wm, wm);
    th1 += PI/50;
    th2 += PI/50;
    th3 += PI/50;
    th4 += PI/50;
    xpos += xspeed;
    ypos += yspeed;
    if( ypos + h/2 > height ){
      ypos = 0 - h/2;
    }
    else if( ypos + h/2 < 0 ){
      ypos = height - h;
    }
    if( xpos + w/2 > width ){
      xpos = 0 - w/2;
    }
    else if( xpos + w/2 < 0 ){
      xpos = width - w/2;
    }
    
  }
   
}
