/**
 * This tab has some of the functions to space out the program more. 
 */


/**
 * This function creates the random colour. 
 */
color createRandomColour() 
{   
  int randomColourRed   = (int) random(0, 256); // Random value between 0 and 255 for red.
  int randomColourGreen = (int) random(0, 256); // Random value between 0 and 255 for green.
  int randomColourBlue  = (int) random(0, 256); // Random value between 0 and 255 for blue.
  return color(randomColourRed, randomColourGreen, randomColourBlue); // will output (return) the changed colours.
}

/**
 * This function determines of the balls are touching or not. 
 * 
 * @return true       If the balls are touching it will output true
 * @return false      If the balls are not touching then it will return false
 *
 */
boolean ballsTouching() {
  if (dist(ball1.x, ball1.y, ball2.x, ball2.y) <= (ball1.r + ball2.r)) {
    return true;
  } else {
    return false;
  }
}