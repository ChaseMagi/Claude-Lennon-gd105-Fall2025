void setup(){
  size(1024,1024);//Before i start, i want to make a forever rainbow changinge trippy circle made out of multiple circles over time spiraling all in the same pattern, but slightly off so it eventually fills all the background within the area.
  background(255);//white, i put it in setup so when stuff moves it leaves behind a trail.
  frameRate(60);
  noSmooth();
}
void draw(){
  noStroke();//i dont want the black outlines
  translate(width/2,height/2); // Start in center
  rotate(frameCount*.04);//Rotation speed
  fill(rColor()); //Random color for every single circle
  circle(sin(frameCount*.0742)*width*.45, 0,15);//Somewhat random and offput rotation
  rotate(TAU*.125); //rotate starting spin slightly
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15); // repeat, until there are multiple slightly off circles, to make sure it fills everywhere and keeps shifting oh so slightly
  rotate(TAU*.125);
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15);
  rotate(TAU*.125);
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15);
  rotate(TAU*.125);
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15);
  rotate(TAU*.125);
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15);
  rotate(TAU*.125);
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15);
  rotate(TAU*.125);
  fill(rColor());
  circle(sin(frameCount*.0742)*width*.45, 0,15);
  //saving frames every 60 seconds, only saves 6 though, could add more, but i dont know how to loop the command yet
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

color rColor(){
  int red, green, blue, sat; //Random colors, intending to go through the rainbow, full brightness.
  red = floor(random(1,255)); // random colors, all colors, originally i only wanted the main colors of the rainbow, but i didn't wanna do all that work
  green = floor(random(1,255));
  blue = floor(random(1,255));
  
 return color(red, green, blue);
  
}
