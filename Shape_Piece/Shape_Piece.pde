PShape piece, of, cake, sprinkles;
int a, b, c, d;

void setup() {
  a = 50;
  b = 40;
  c = 20;
  d = 10;
  size(250, 250);
  piece = createShape(GROUP);
  of = createShape(RECT, d, d, b, b, d);
  of.setFill(color(#ED07E2));
  piece.addChild(of);
  
  cake = createShape(GROUP);
  sprinkles = createShape(RECT, d, d, b, b, -d);
  sprinkles.setFill(color(#0000FF));
  cake.addChild(sprinkles);
}

void draw() {
  background(204);
  translate(b,b);
  translate(a*2, 0);
  shape(piece);
  translate(-a*2+c, 0);
  shape(piece);
  translate(a-d,b);
  shape(cake);
  translate(a-d,b);
  shape(piece);
  translate((-a*2)+10,d);
  shape(piece);
  
  if (frameCount == 1){
    save("Shape_Piece.png");
  }
}