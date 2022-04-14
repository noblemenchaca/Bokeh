/** BALL CLASS BEGINS HERE **/
class Ball {

  float xPos;
  float yPos;
  float xVel;
  float yVel;  
  float diam;
  
  Ball(float xP, float yP, float xV, float yV, float d) {
   xPos = xP;
   yPos = yP;
   xVel = xV;
   yVel = yV;
   diam = d; 
  }
  
  void drawMe() {
    ellipse(xPos, yPos, diam, diam );
  }
  
  void move() {
     xPos += xVel;
    
    if (xPos + (diam/2) >= width || xPos - (diam/2) <= 0) {
        xVel *= -1;
    }
    
     yPos += yVel;
     
     if (yPos + (diam/2) >= height || yPos - (diam/2) <= 0) {
        yVel *= -1;
    }
  }
  
}
