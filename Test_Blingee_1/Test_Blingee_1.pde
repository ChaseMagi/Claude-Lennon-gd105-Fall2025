PImage Chim, WinDoor;

void setup(){
  frameRate(3);
  size (600,500);
  background(50);
  Chim = loadImage("Chim.png");
  WinDoor = loadImage("Windoor.png");
}

void draw(){
  imageMode(CORNER); 
  if (frameCount % 3 == 2) {
  image(Chim, -600,-200,width*4,height*4);
  } else if (frameCount % 3 == 1) {
  image(WinDoor, -200,-200,width*4,height*4);
  } else if (frameCount % 3 == 0) {
  background(50);
  }
}  
