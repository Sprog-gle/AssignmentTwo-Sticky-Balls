/**
 * This defines the class Ball. This class 'controls' the ball and all of its functions.
 */


class Ball { 
  float x, y; // x pos
  float r; // radius

  float dx, dy; // velocity

  color ballColour;



  /**
   * Constructors for a ball instance. The paramaters have the 
   * same meaning as noted at the start of the class file.
   */

  Ball() {
    x = random(20, 280);
    y = random(20, 280);
    r = random(10, 20);
    dx = random(-5.0, 5.0);
    dy = random(-5.0, 5.0);
    ballColour = createRandomColour();
  }

  /**
   * This function defines how the ball will appear.
   */
  void render() {
    noStroke();
    fill(ballColour);
    ellipse(x, y, r*2, r*2);
  }

  /**
   * This function sets or updates the velocity of the ball. By setting the x param to the randomly defined velocity.
   */
  void update() {
    x += dx;
    y += dy;
  }

  /**
   * This function is the edge detection for the balls while they are seperate.
   * It will make the balls bounce off the edge by changing direction of the velocity values.
   */
  void edgeDetection() {
    // hit the left edge?
    if (x - r <= 0) {
      dx = -dx;
    }
    // hits the right edge?
    if (x + r >= width - 1) {
      dx = -dx;
    }
    // hit the top edge?
    if (y - r <= 0) {
      dy = -dy;
    }
    // hit the bottom edge?
    if (y + r >= height - 1) {
      dy = -dy;
    }
  } 


  /**
   * This function underlines how the balls edge detection works while they are stuck together.
   * This instance controls both the X and Y parameters.
   */
  void edgeDetectionJoined() {
    if (this.x< this.r || this.x >=width-1-this.r) {
      ball1.dx = -ball1.dx;
      ball2.dx = -ball2.dx;
    }
    if (this.y < this.r || this.y >=width-1-this.r) {
      ball1.dy = -ball1.dy;
      ball2.dy = -ball2.dy;
    }
  }
}