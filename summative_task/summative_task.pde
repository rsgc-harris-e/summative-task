//make variables
int xpos;//starting point x axis
int ypos;//start for y axis
int xDia;//x axis diameter of circle
int yDia;//y axis diameter of circle
int mousepos;
int opacity;
int r;
int g;
int b;
void setup() {
  size(600, 600);
  //number the variables
  xpos=300;
  ypos=300;
  xDia=180;
  yDia=30;
  opacity=0;
  r=255;
  g=255;
  b=255;
}
void draw() {
  //creates spirograph with ellipses
  background(255, 0, 0);
  for (float i=0; i<30; i++) {
    pushMatrix();
    translate(xpos, ypos);
    fill(r,g, b, opacity);
    scale(2);
    rotate(radians(i*mouseX*mouseY));
    ellipse(0, 0, xDia, yDia);
    popMatrix();
  }
}
//when the mouse is clicked the circles that are made to create the spirograph fill up in white
void mouseClicked() {
  if (opacity == 0) {
    opacity = 255;
  } else {
    opacity = 0;
  }
}
//if any key is pressed the circles change to blue
void keyPressed(){
  if(r==255&&g==255&&b==255) {
    r=0;
    g=150;
    b=200;
  }else{
    r=255;
    g=255;
    b=255;
  }
}