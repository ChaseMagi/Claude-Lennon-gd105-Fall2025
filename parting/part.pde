Particle[] p;


void setup(){
   size(1024,1024);
   p = new Particle[128];
   for(int i = 0; i < p.length; i++{
     (width/2, height/2, 100);
   }
}
void draw(){
   background(255);
   p.display();
   p.update();
}
