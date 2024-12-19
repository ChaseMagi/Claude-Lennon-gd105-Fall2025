float velocity = 0.01; 
float spin = 0; 

void setup() {
  size(500,500);
}

void draw(){
  translate(250,250);
  spin += velocity;
  background(240);
  pushMatrix();
  fill(50);
  noStroke();
  translate(-250,-250);
  circle(width/2,height/2,width*.95);
  fill(#FF0000);
  noStroke();
  circle(width/2,height/2,width*.05);
  strokeWeight(4);
  stroke(#160707);
  noFill();
  circle(width/2,height/2,width*.40);
  stroke(#160707);
  noFill();
  circle(width/2,height/2,width*.60);
  stroke(#160707);
  noFill();
  circle(width/2,height/2,width*.80);
  popMatrix();
  strokeWeight(61);
  stroke(#0000FF);
  noFill();
  pushMatrix();
  rotate(spin);
  translate(-255,-227);
  bezier(190, 90,  4, 80,  4, 385,  190, 365);
  bezier(388, 100,  489, 371,  305, 461,  251, 254);
  line(463,90,296,90);
  popMatrix();
  if (frameCount == 1){
    save("Line_Piece.png");
  }
}
