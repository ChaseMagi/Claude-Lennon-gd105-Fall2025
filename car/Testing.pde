class Car {
  PVector pos;
  float speed;
  PVector heading;

  Car(){
    pos = new PVector(random(width),random(height));
    speed = 0;
    heading = PVector.random2D();
  }
   Car(float x, float y){
     pos = new PVector(x,y);
     speed = 0;
     heading = PVector.random2D();
  }



  void display(){
     translate(pos.x,pos.y);
     rotate(heading.heading());
     triangle(100,0,0,-30,0,30);
  }  
  void update(){
    if(keyPressed && key =='a'){
      turn(- TAU / 360.0);
    } else if (keyPressed && key =='d'){
      turn(+ TAU / 360.0); 
  }
}
  void turn(float turnAmount){
      heading.rotate(turnAmount);
    } 
  }
