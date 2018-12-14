// reserve space in memory for an object of type PImage
PImage source;  

// setup() function runs once only
void setup() {

  // create the canvas
  // WIDTH  HEIGHT
  size(1024, 684); 
  
  // make the backgound white
  background(255);
 
  // load "trump.JPG" from the "data" folder into source object 
  source = loadImage("25995019621_422830309f_b.jpg");
  
  // creates an array named "source.pixels"
  // array will have 700416 values (width * height = 1024 * 684 = 700415)
  // the array will start at position 0
  // and with 700416 values
  // the final position will then be at 700415
  source.loadPixels();

  // loop from first pixel, at position 0, to final pixel, at position 783519
  for (int position = 0; position <= 700415; position += 1) {

    // get brightness of current pixel
    float b = 255 - brightness(source.pixels[position]);
    
    // change brightness value (range of 0 to 255) into a diameter of range 1 to 10 
    float diameter = map(b, 0, 255, 1, 8);
    
    // get the pixel's current position using integer arithmetic, 
    int x = position % width;  
    int y = position / width; 
    
    // draw only an ellipse r some pixels
    if ((x > 0) && (y > 0) && (y % 8 == 0) && (x % 8 == 0)) {
       // draw an ellipse at position of current pixel
      ellipse(x, y, diameter, diameter);
    }
   
    
  }
  
}
