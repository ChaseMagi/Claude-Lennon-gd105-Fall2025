class turtle{
  PVector pos;
  PVector heading;
  
    
  turtle(float x, float y){
    pos = new PVector(x,y);
    heading = new PVector(1,0);
  }
  
  void turn(float turnAmt){
    heading.rotate(radians(turnAmt)); 
  }
  void forward(float amount){
    PVector oldPos = pos.copy();
    pos.add(PVector.mult(heading, amount));
    line(oldPos.x,oldPos.y, pos.x, pos.y);
  }
  
  void teleport(float x, float y){
     pos.set(x,y); 
  }
  //void teleport(float x, float y){
  //   pos.set(random(width),random(height)); 
  //}
}
