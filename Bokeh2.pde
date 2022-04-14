final int NUM_BALLS = 500;
final int diameter = 50;

Ball[] balls;

void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  smooth();
  fill(255, 100);
  
  balls = new Ball[NUM_BALLS];

  for(int c = 0; c < NUM_BALLS; c++) {
   float one = random(diameter/2, width-(diameter/2) );
   float two = random(diameter/2, height-(diameter/2));
   float three = random(8);
   float four = random(8);
   
   balls[c] = new Ball(one, two, three, four, diameter);
  }
}

void draw() {
  background(0);
  
  for (int i = 0; i < NUM_BALLS; i++) {
    balls[i].drawMe();
    balls[i].move();
  }
}
