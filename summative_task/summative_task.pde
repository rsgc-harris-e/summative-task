int column=300;
int row=300;
int rectmiddle=200;
int rectsize=200;
int circlesize=50;
int bigcircle=200;
void setup() {
  size(600, 600);
  background(#87ceeb);
}
void draw() {
  background(#87ceeb);
    rect(rectmiddle,rectmiddle,rectsize,rectsize);
  ellipse(column, row, circlesize, circlesize);
  column+=5;
  row+=5;
  if(column>600){
    column=0;
  }
  if(row>600){
    row=0;
  }
  if(column==rectmiddle){
    column-=5;
    ellipse(100,100,100,100);
  }
}