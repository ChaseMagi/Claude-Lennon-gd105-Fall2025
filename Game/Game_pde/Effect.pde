class Effect {
  PVector position;
  PVector velocity;  // Add velocity to move the effect
  float size;
  color c;

  // Constructor for the Effect class that takes x, y, and size as parameters
  Effect() {
    size = 10;
    c = color(random(255), random(255), random(255));  // Random color

    // Position the effect just outside the canvas (randomly on one of the four edges)
    int edge = floor(random(4)); // Randomly choose an edge (0 = top, 1 = right, 2 = bottom, 3 = left)
    if (edge == 0) {
      // Top edge (just above the canvas)
      position = new PVector(random(width), -size);
    } else if (edge == 1) {
      // Right edge (just to the right of the canvas)
      position = new PVector(width + size, random(height));
    } else if (edge == 2) {
      // Bottom edge (just below the canvas)
      position = new PVector(random(width), height + size);
    } else {
      // Left edge (just to the left of the canvas)
      position = new PVector(-size, random(height));
    }

    velocity = PVector.random2D();  // Random velocity direction initially
  }

  // Update the effect's position to move toward the center of the canvas
  void update() {
    // Calculate the vector pointing from the current position to the center
    PVector center = new PVector(width / 2, height / 2);
    PVector direction = PVector.sub(center, position);  // Get the direction to the center
    direction.normalize();  // Normalize the vector to get the direction
    direction.mult(3);  // Multiply the direction vector by 3 to make it 3 times faster

    velocity = direction;  // Update the velocity with the new direction
    position.add(velocity);  // Move the effect based on the updated velocity

    // Wrap the effect around if it goes off the canvas
    if (position.x > width) position.x = 0;
    if (position.y > height) position.y = 0;
    if (position.x < 0) position.x = width;
    if (position.y < 0) position.y = height;
  }

  // Display the effect as a circle
  void display() {
    fill(c);
    noStroke();
    ellipse(position.x, position.y, size, size);  // Draw the circle
  }
}
