void setup(){
  size(600,600);
  background(180);
  noSmooth();
}
void draw(){
  background(180);
  //boolean colliding = mouseX > width * .75;
  int circleRadius = 100;
  float a, b, c, d;
  translate(width/2,height/2);
  a = sin(frameCount*.042)*width*.25 ;
  b = cos(frameCount*.042)*height*.25 ;
  c = cos(frameCount*.042)*width*.25 ;
  d = sin(frameCount*.042)*height*.25 ;
  circle(a, b, circleRadius);
  circle(c, d, circleRadius);
  float distance = dist(a,b,c,d);
  boolean colliding = distance < circleRadius;
   
  print("\nit's "); 
  if(colliding){
    print("true!");
    fill(#aa0000);
  } else {
    print("false...");
    fill(#00aa00);
  }
}
