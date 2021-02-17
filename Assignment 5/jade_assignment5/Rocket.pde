class Rocket{

  PShape rocket, satellite;
  float speed, xPos, yPos, size, rotate, rtSat, yMove;
  
  Rocket (float size, float xSpeed, float rotSpeed) {
    rotate = rotSpeed;
    speed = xSpeed;
    xPos = 0;
    rocket = loadShape("spaceCraft4.obj");
    satellite = loadShape("satelliteDishLarge.obj");
    rocket.scale(size);
    satellite.scale(size);
    rtSat = 0;
  }

  void move() {

    translate(xPos, height/4+yPos, -100);
    
    //transforms for rocket
    pushMatrix();
    rotateY(HALF_PI);
    shape(rocket);
    popMatrix();
    
    //transforms for satellite
    pushMatrix();
    
    rotateX(PI);
    rotateY(rtSat);
    shape(satellite);
    popMatrix();
    
    rtSat += .07;
    xPos += speed;
    yPos += 5*(sin(yMove));
    yMove += TWO_PI/100;
    
    if (xPos - 800 > width) {
      xPos = -400;
    }
  }
}
