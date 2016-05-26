int xpos;//starting point x axis
int ypos;//start for y axis
int xDia;//x axis diameter of circle
int yDia;//y axis diameter of circle
int mousepos;
int opacity;
void setup() {
  size(600, 600);
  xpos=300;
  ypos=300;
  xDia=180;
  yDia=30;
  opacity=0;
}
void draw() {
  background(255, 0, 0);
  for (float i=0; i<30; i++) {
    pushMatrix();
    translate(xpos,ypos);
    fill(255,opacity);
    scale(2);
     rotate(radians(i*mouseX*mouseY));
    ellipse(0,0,xDia,yDia);
    popMatrix(); 
  }
  }
  void mouseClicked() {
  if (opacity == 0) {
    opacity = 255;
  } else {
    opacity = 0;
  }
}