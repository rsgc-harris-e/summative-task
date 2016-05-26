int xpos;//starting point x axis
int ypos;//start for y axis
int xDia;//x axis diameter of circle
int yDia;//y axis diameter of circle
void setup() {
  size(600, 600);
  xpos=300;
  ypos=300;
  xDia=180;
  yDia=30;
}
void draw() {
  background(255, 0, 0);
  for (float i=0; i<30; i++) {
    pushMatrix();
    translate(xpos,ypos);
    noFill();
     rotate(radians(i));
    ellipse(0,0,xDia,yDia);
    popMatrix();
   
    
  }
  }