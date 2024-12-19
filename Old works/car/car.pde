Car c;

void setup(){
  size(1024,1024);
  c = new Car(random(width), random(height));
}

void draw(){
  background(180);  
  c.display();
  c.update();
}
