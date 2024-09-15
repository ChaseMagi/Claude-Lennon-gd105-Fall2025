PVector v1, v2, v3, v4;

void setup() {
  size(1000,250);

  v1 = new PVector(0,10);
  v2 = new PVector(1000,60);
  v3 = new PVector(1000, 10);
  v4 = new PVector(0,60);
}

void draw(){
  background(180);
  strokeWeight(5);
  stroke(#FF0000);
  line(v1.x,v1.y,v2.x,v2.y);
  stroke(#f06b00);
  line(v3.x,v3.y,v4.x,v4.y);
  stroke(#ffde00);
  line(v1.x,v1.y+50,v2.x,v2.y+50);
  stroke(#82f000);
  line(v3.x,v3.y+50,v4.x,v4.y+50);
  stroke(#0d6d0b);
  line(v1.x,v1.y+100,v2.x,v2.y+100);
  stroke(#00f082);
  line(v3.x,v3.y+100,v4.x,v4.y+100);
  stroke(#00ffea);
  line(v1.x,v1.y+150,v2.x,v2.y+150);
  stroke(#0600f0);
  line(v3.x,v3.y+150,v4.x,v4.y+150);
}
