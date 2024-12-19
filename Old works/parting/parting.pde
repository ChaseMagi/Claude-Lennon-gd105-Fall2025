class Particle{
  PVector position, velocity, acceleration;
  color c;
  int size;
  
  Particle(float x, float y){
     position = new PVector(x,y);
     velocity = PVector.random2D();
     acceleration = new PVector(0,0);
     c = color(int(random(256)));
     size = s;
  }
  void display(){
    fill(c);
    circle(position.x,position.y,s);
  }
  void update(){
    position.add(PVector.random2D());
  }
}
