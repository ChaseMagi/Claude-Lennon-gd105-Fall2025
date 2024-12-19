PVector foo;

void setup(){
  size(1024,1024);
  foo = new PVector(width/2,height/2);
}

void draw(){
  background(180);
  line(mouseX,mouseY,foo.x,foo.y);
}
