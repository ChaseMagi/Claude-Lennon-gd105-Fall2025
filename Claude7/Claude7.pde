void setup(){
  size(500,500);
}

void draw(){
  background(255);
  
  int xLoc =250;
  int yLoc =250;
  int w =200;
  int h =100;
  fill(#ff0000);
  strokeWeight(1);
  
  ellipse(xLoc,yLoc,w,h);
  //line(0,0,499,499);
  //line(0,height/2,500,height/2);
}
