PImage Clock;

void setup(){
  noSmooth(); // no aliasing
  size(1024,1024);//making a clock, with second, minute, and hour counter.
  background(180);//grey, i put it in setup so when stuff moves it leaves behind a trail.
  frameRate(60);
  noSmooth();
  Clock = loadImage("clock.png");
}

void draw(){
  imageMode(CENTER);
  image(Clock, width/2, height/2, width, height); //image(name, x, y, sizex, sizey)
  fill(#0000ff);// i did the same thing here but this time for a full hour, i'm pretty sure it's accurate.
  float b, n ;
  int o,i;
  b = 0;
  n = 216000;
  int time3 = frameCount % 216001; //0 - 60 frames
  float end3 = map(time3, b, n, TAU * 0, TAU * 1);
  arc(width/2, height/2, 600, 600, TAU * 0, end3);
  fill(#00ff00); // green
  float c, v; // new variables, could have done it all on one line but, NOW I DONT WANNA
  c = 0;
  v = 3600; // goes on for 3600 frames
  int time2 = frameCount % 3601; //0 - 3600 frames
  float end2 = map(time2, c, v, TAU * 0, TAU * 1); //3600 frames, complete the circle within 3600 frames. aka a minute
  arc(width/2, height/2, 400, 400, TAU * 0, end2);
  fill(#ff0000); // red circle
  float x, y;
  x = 0; //frame 0
  y = 60; // to frame 60
  // make a small circle where the mouse is (Changed it for a bit to center it alone)
  int time = frameCount % 61; //0 - 60 frames
  float end = map(time, x, y, TAU * 0, TAU * 1); //frame value, mental start, how many frames to get from start to here, start, stop
  arc(width/2, height/2, 200, 200, TAU * 0, end); // make a red arc that rotates until filled every second
   if(frameCount == 60){
    saveFrame("frames/Build-up-0.png");
  }
   if(frameCount == 120){
    saveFrame("frames/Build-up-1.png");
  }
   if(frameCount == 180){
    saveFrame("frames/Build-up-2.png");
  }
   if(frameCount == 240){
    saveFrame("frames/Build-up-3.png");
  }
   if(frameCount == 300){
    saveFrame("frames/Build-up-4.png");
  }
   if(frameCount == 360){
    saveFrame("frames/Build-up-5.png");
  }
   if(frameCount == 420){
    saveFrame("frames/Build-up-6.png");
  }
}
