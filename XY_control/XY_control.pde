void setup(){
  size(1024,1024);
  noSmooth(); // no aliasing
}

void draw(){
  background(180); // repeating background
  fill(#ff0000); // red circle
  float x, y;
  x = 0; //frame 0
  y = 60; // to frame 60
  // make a small circle where the mouse is (Changed it for a bit to center it alone)
  int time = frameCount % 61; //0 - 60 frames
  float end = map(time, x, y, TAU * 0, TAU * 1); //frame value, mental start, how many frames to get from start to here, start, stop
  arc(200, 200, 100, 100, TAU * 0, end); // make a red arc that rotates until filled every second
  fill(#00ff00); // green
  float c, v; // new variables, could have done it all on one line but, NOW I DONT WANNA
  c = 0;
  v = 3600; // goes on for 3600 frames
  int time2 = frameCount % 3601; //0 - 3600 frames
  float end2 = map(time2, c, v, TAU * 0, TAU * 1); //3600 frames, complete the circle within 3600 frames. aka a minute
  arc(700, 300, 200, 200, TAU * 0, end2);
  fill(#0000ff);// i did the same thing here but this time for a full hour, i'm pretty sure it's accurate.
  float b, n;
  b = 0;
  n = 216000;
  int time3 = frameCount % 216001; //0 - 60 frames
  float end3 = map(time3, b, n, TAU * 0, TAU * 1);
  arc(400, 600, 500, 500, TAU * 0, end3);
  fill(30);
  float q,w,w1,w2,w3,w4,w5;
  q = map(time, x, y, 0,1000); // goes from 0, to 1000 in 60 frames.
  w = map(time, x, y, 1000,0); // goes from 1000 to 0 in 60 frames due to time
  w1 = map(time, x, y, 800,200); // goes from 1000 to 0 in 60 frames due to time
  w2 = map(time, x, y, 600,400); // goes from 1000 to 0 in 60 frames due to time
  w3 = map(time, x, y, 400,600); // goes from 1000 to 0 in 60 frames due to time
  w4 = map(time, x, y, 200,800); // goes from 1000 to 0 in 60 frames due to time
  w5 = map(time, x, y, 0,1000); // goes from 1000 to 0 in 60 frames due to time
  circle(q,w,50);
  fill(80);
  circle(q,w1,50);
  fill(120);
  circle(q,w2,50);
  fill(140);
  circle(q,w3,50);
  fill (210);
  circle(q,w4,50);
  fill(255);
  circle(q,w5,50);
  if(frameCount ==59){
    saveFrame("frames/XY-Control-0.png");
  }
   if(frameCount == 119){
    saveFrame("frames/XY-Control-1.png");
  }
   if(frameCount == 179){
    saveFrame("frames/XY-Control-2.png");
  }
   if(frameCount == 239){
    saveFrame("frames/XY-Control-3.png");
  }
   if(frameCount == 299){
    saveFrame("frames/XY-Control-4.png");
  }
   if(frameCount == 359){
    saveFrame("frames/XY-Control-5.png");
  }
   if(frameCount == 419){
    saveFrame("frames/XY-Control-6.png");
  }
}
