void setup(){
  size(600,600);
  background(180);
  noSmooth();
}
//}

//void draw(){
//  noStroke();
//  circle(mouseX,mouseY,50);
//  boolean onRight = mouseX > width/2;
//  boolean onLeft = mouseX < width/2;
//  if(onLeft){
//    fill(255);
//  }
//  if(onRight){
//    fill(0);
//  }
//  circle(mouseX,mouseY,50);
  
//}
void draw(){
  background(180);
  float rectWidth = 60 + cos(frameCount*0.03)*60;
  float rectHeight = 40 + sin(frameCount*.06)*60;
  float mouseWidth = 30 ;
  float mouseHeight = 10;
  boolean xOverlap, yOverlap;
   
  xOverlap = mouseX < width/2 + rectWidth && mouseX + mouseWidth> width/2;
  yOverlap = mouseY < height/2 + rectHeight && mouseY + mouseHeight> height/2;
   
  boolean colliding = xOverlap && yOverlap;
   
  print("\nthe mouse is ");
   
  if(colliding){
    print("colliding!");
    fill(#aa0000);
  } else {
    print("not colliding!");
    fill(#00aa00);
  }
   
  rect(width/2,height/2,rectWidth,rectHeight);
  rect(mouseX, mouseY, mouseWidth,mouseHeight);
}
