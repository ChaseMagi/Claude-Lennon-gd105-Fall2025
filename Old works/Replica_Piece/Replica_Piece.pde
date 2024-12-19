PFont target;

void setup(){
  size(1000,1000);
  target = loadFont("Ebrima-Bold-48.vlw");
  textFont(target);
}

void draw(){
  background(255);
  stroke(#FF0000);
  strokeWeight(90);
  noFill();
  circle(width/2,(height/2)-120,430);
  noStroke();
  fill(#FF0000);
  circle(width/2,(height/2)-120,180);
  textSize(128);
  fill(#FF0000);
  text("TARGET", width/2-229, height/2+283);
  
  if (frameCount == 1){
    save("Replica_Piece.png");
  }
}

/*
attempted to do the target logo from https://logolook.net/wp-content/uploads/2021/06/Target-Logo-2004-2048x1152.png

also, yes i know how to use pushMatrix(); popMatrix(); now, and i realize i could have used it in my text code, but
since it's already done, i'm not going back and adding it.
*/
