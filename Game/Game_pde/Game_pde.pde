// Declare p globally so it's accessible in both the setup() and draw() functions
ArrayList<Effect> effects = new ArrayList<Effect>();  // List to store multiple effects
Particlee[] p;
boolean stopLoop = false;  // Flag to control the loop

void setup() {
  noSmooth();
  size(1024, 1024);
  
  p = new Particlee[1];  // One particle for demonstration
  for (int i = 0; i < p.length; i++) {
    p[i] = new Particlee(width / 2, height / 2, 10);  // Initialize particle at center
  }
  
  frameRate(60);  // Set frame rate
}
void draw() {
  if (stopLoop) {  // If the loop has stopped, display the message
    background(0);  // Set background to black
    
    // Display the "You lose" message centered on the screen
    textAlign(CENTER, CENTER);  // Center the text
    textSize(64);  // Set text size to 64 (bold, large)
    fill(255);  // Set text color to white
    textFont(createFont("Arial", 64, true));  // Set font to bold
    text("YOU LOSE!", width / 2, height / 2);  // Display text at the center of the canvas

    return;  // Exit the draw function to stop further drawing
  }

  // Check if the size of the particle exceeds 1.5 times the width of the canvas
  for (int i = 0; i < p.length; i++) {
    if (p[i].size > 1.5 * width) {  // Check if the particle size exceeds the threshold
      background(0);  // Set background to black
      p[i].resetParticle();  // Reset the particle properties
      stopLoop = true;  // Set stopLoop to true to stop the loop and show the message
    } else {
      background(255, 179, 128);  // Darker peach background (RGB: 255, 179, 128)
      p[i].display();
      p[i].update();
    }
  }
  
  // Update and display all effects in the effects list
  for (int i = effects.size() - 1; i >= 0; i--) {
    Effect er = effects.get(i);
    er.update();  // Update the effect (move it based on velocity and acceleration)
    er.display();  // Display the effect (circle)

    // Check if the effect is within the radius of the particle
    for (int j = 0; j < p.length; j++) {
      float distance = dist(er.position.x, er.position.y, p[j].position.x , p[j].position.y);

      // Check if the effect is within 5/6 of the particle's size (threshold for removal)
      float threshold = p[j].size/2;
      if (distance <= threshold) {
        effects.remove(i);  // Remove effect if it collides with the particle
        break;  // No need to check further once the effect is removed
      }
    }
  }

  // Create 10 effects each second
  if (frameCount % 60 == 0) {  // Once every second (60 frames)
    for (int i = 0; i < 10; i++) {
      effects.add(new Effect());  // Create a new effect and add it to the list
    }
  }
}


// Mouse press event to subtract size (radius) from the particle
void mousePressed() {
  for (int i = 0; i < p.length; i++) {
    p[i].subtractSize();  // Decrease size when the mouse is pressed
  }
}





/*
sorry i didn't discuss my plan with you,
i noticed a bit too late that i needed to talk with you,
around the week i'd already planned it,
i may have mentioned it but it was too early,
and once i was supposed to come in to tell you i was out sick.
Do as you must, i didn't see myself making a GOOD game with this much time.

The idea was to have a gradually growing rainbow ball on the mouse
that explodes into a bunch of tiny balls and shrinks when clicked,
and if the ball got too big the game would go black signifying the end of the game.
*/
