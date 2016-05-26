/*************************************************************************************************************************************
 * COMP570 Programming for Creativity 2016 S1                                                                                        *
 *                                                                                                                                   *
 * Assignment 2                                                                                                                      *
 *                                                                                                                                   *
 * This program creates two bouncing balls on a 300x300 white canvas. Each ball has a random starting position, a random fill colour *
 * on each ball. No stroke, a random radius between 10-20 and a random velocity between -5 to 5 for each X and y components. Each    *
 * ball bounces Independantly from the walls, but when the balls touch they stick together and become 'one object' as they then move *
 * together. This means that they now also bounce of the wall together and share the same velocity.                                  *
 *                                                                                                                                   *
 * @author Samuel Hunt, Student ID# 16925501                                                                                         *
 * @version 1.0 - 11/05/2016:  Created                                                                                               *
 *************************************************************************************************************************************/

// initialise the balls
Ball ball1;
Ball ball2;

// convenience color definitions 
color white = color(255);
int numberofsuccess;


/**
 * Initialises the canvas and the ball variables.
 */

void setup () {
  size(300, 300);
  smooth();
  ball1 = new Ball();
  ball2 = new Ball();
}

/**
 * This fuction draws the canvas. It also updates the balls (sets velocity), renders the balls. The if command will set the velocity of the
 * balls once they have collided. Otherwise it will continue to use the initial collision detection.
 */
void draw() {
  background(white);
  println("OMG IT HAS WORKED FOR", numberofsuccess, "FRAMES!");
  println("Hope you enjoy this Stefan, have a good day.");
  numberofsuccess++;
  ball1.update();
  ball2.update();

  ball1.render();
  ball2.render();

  if (ballsTouching()) {
    ball1.dx = (ball1.dx +ball2.dx)/2;
    ball1.dy = (ball1.dy+ball2.dy)/2;

    ball2.dx = ball1.dx;
    ball2.dy = ball1.dy;

    ball1.edgeDetectionJoined();
    ball2.edgeDetectionJoined();
    
  } else {
    ball1.edgeDetection();
    ball2.edgeDetection();
  }
}