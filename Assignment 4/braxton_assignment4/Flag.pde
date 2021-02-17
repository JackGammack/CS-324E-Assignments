class Flag {
  float x, y, spd, dir;

  Flag(float x, float y, float spd, float dir) {
    this.x = x;
    this.y = y;
    this.spd = spd;
    this.dir = dir;
  }

  void display() {
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
    pushMatrix(); // first push will push previous changes to matrix from other classes
    stroke(0);
    strokeWeight(2);
    translate(x,y);
    line(0,0,0,50);
    fill(0,0,255);
    pushMatrix(); // second push will push:   the pole of the flag, grid translations, stroke edits, fill edits
    //haven't popped anything yet, current edits are saved
    delay(50);
    shearY(radians(spd));
    if(spd / 2 == 0){
      shearX(radians(spd));
    }
    rect(0,0,50,25);
    spd += 3;
    if(spd > 12){
      spd = -6;
    }
    popMatrix();
    popMatrix();
  }
}
