//Tobias Halman - Think Tank 1 - GDES-2001 - Greg Van Alystyne
//January 30 2021
//original animation from thedotisblack.com

float x = 100;
float angle;

void setup() {
  size(900, 900);
  surface.setLocation(100, 1);
  frameRate(20);
}

void draw() {
  background(10);
  
  translate(width/2, height/2);
  for (float a=0; a<360; a+=5) {
    pushMatrix();
    rotate(radians(random(a)));
    stroke(255);
    strokeWeight(3);
    line(x*cos(radians(angle)), 5, x, 5);
    popMatrix();
  }
  angle++;
}
