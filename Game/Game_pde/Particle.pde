class Particlee {
  // Properties
  PVector position, velocity, acceleration;
  color c; // Store color as a property
  float size;

  // Constructor
  Particlee(float x, float y, int s) {
    position = new PVector(x, y);
    velocity = PVector.random2D();
    acceleration = new PVector(0, 0);
    c = getRandomColor(); // Initialize color at creation
    size = s;
  }

  // Method to return a random color
  color getRandomColor() {
    // Only change color every ~20 frames (about 5 times per second at 60 FPS)
    if (frameCount % 20 == 0) {
      int red = floor(random(1, 255)); // Random colors
      int green = floor(random(1, 255));
      int blue = floor(random(1, 255));
      return color(red, green, blue);
    }
    return c; // Keep the current color if it's not time to change
  }

  // Display the particle
  void display() {
    fill(c);  // Fill with color
    noStroke();
    circle(position.x, position.y, size);
  }

  // Update the particle's position and size
  void update() {
    size = max(size + (.035 + (frameCount * 0.0017)), 0); // Gradually increases size
    c = getRandomColor(); 
  }

  // Subtract size (radius) from the particle (to decrease size when mouse is pressed)
  void subtractSize() {
    size = max(size - 350, 0);  // Subtract 30, but prevent the size from going below 0
  }

  // Reset the particle properties when the size exceeds 1.5 times the width
  void resetParticle() {
    size = 100;  // Reset size
    position = new PVector(width / 2, height / 2);  // Reset position to the center
    c = getRandomColor();  // Assign a new random color
  }
}
