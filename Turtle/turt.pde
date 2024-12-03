turtle yertle;
turtle[] turt;

void setup(){
    size(1024,1024);
    background(180);
    noSmooth();
   //turts = new turtle[1];
    yertle = new turtle(width*.5, height*.25);
}
void draw(){
   yertle.forward(100);
   yertle.turn(30);
   yertle.forward(100);
   noLoop();
} 
