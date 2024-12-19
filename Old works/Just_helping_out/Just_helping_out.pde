PFont sthree;
int white;

void setup() {
  white = (255);
  size(718, 405);
  sthree = loadFont("Papyrus-Regular-48.vlw");
  textFont(sthree);
}

void draw() {
  background(0);
  //textSize(15);
  fill(#ff0000);
  rect(183,0,118,319);
  //text("HelloWorld", 20, 40);
  fill(white);
  textSize(45);
  text("ICE CAP\n    ZONE", 393, 218);

}
