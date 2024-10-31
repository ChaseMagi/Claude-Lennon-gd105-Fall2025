PImage Roof, House, Chim, WinDoor, Knob, Grass; //planning out the parts i'll be putting in

void setup(){
  size (1028,514);
  background(#31F5E6);//chose to put background in setup instead of draw, might move later
  Roof = loadImage("Top.png");// loading my images
  House = loadImage("Base.png");
  Chim = loadImage("Chim.png");
  WinDoor = loadImage("Windoor.png");
  Knob = loadImage("knob.png");
  Grass = loadImage("Bottom.png");
}

void draw(){
  image(Grass, 0, 400, 1028, 114); //image(name, x, y, sizex, sizey)
  imageMode(CENTER);
  image(Chim, 340, 130, 100, 150); // Chimney to be overlapped by roof
  image(House, width/2, height/3*2-40, width/2, height/2); // house to be overlapped by everything but grass
  image(Roof, width/2, height/3*2-200, 800, 100); //roof over chim and house
  image(WinDoor, width/3*2-65, height/3*2-20, 125, 200); //the door part of window on the right of the house, on top of the layer
  image(WinDoor, width/2-120, height/2+40, 125, 125); // window opposite side of the house of the door
  image(Knob, width/3*2-95, height/3*2-20, 25, 25); // door knob
  image(Chim, width/2-95, height/2+65, 50, 50); //window pane
  image(Chim, width/2-95, height/2+15, 50, 50); //window pane
  image(Chim, width/2-150, height/2+65, 50, 50); //window pane
  image(Chim, width/2-150, height/2+15, 50, 50); //window pane
  image(Knob, 1028, 0, 200, 200); //sun
  imageMode(CORNER); // for some reason if i dont put this in, Grass is RE posted to the bottom left from Center, despite it being above Center, and only mentioned once.
  if (frameCount == 1){
    save("Collage_Piece.png");
}
