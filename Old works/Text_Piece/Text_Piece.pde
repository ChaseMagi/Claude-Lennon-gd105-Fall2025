PFont funny;

void setup(){
  size(500, 500);
  funny = loadFont("Cambria-BoldItalic-48.vlw");
  textFont(funny);
}
void draw(){
  background(3);
  rotate(radians(10));
  textSize(64);
  fill(207, 84, 30, 244);
  text("Still", 98, 157); 
  
  rotate(radians(-10));
  textSize(64);
  fill(233, 28, 28, 416);
  text("A", 260, 263);
  
  
  textSize(64);
  fill(233, 198, 36, 182);
  text("Piece", 74, 311);
  
  rotate(radians(-10));
  textSize(64);
  fill(173, 145, 53);
  text("Of", 247, 370); 
  rotate(radians(10));
  
  rotate(6);
  textSize(121);
  fill(1, 222, 255, 137);
  text("Garbage", -34, 293);
  
  textSize(162);
  fill(168, 7, 235, 443);
  text("!", 286, 477);
  
  if (frameCount == 1){
    save("Text_Piece.png");
  }
}
