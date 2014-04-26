PImage img;

void setup(){
   size(500,500);
   img = loadImage("images.jpg");
}

void draw() {
  background(255);
  loadPixels();
  // Since we are going to access the image's pixels too  
  img.loadPixels(); 
  
  for (int y = 0; y < 192; y++) {
    for (int x = 0; x < 262; x++) {
      int loc = x + y*262;
      
      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      // Image Processing would go here
      // If we were to change the RGB values, we would do it here, before setting the pixel in the display window.
      
      // Set the display pixel to the image pixel
      int i = mouseX + x;
      int j = mouseY + y;
      if(i >= width){
        i -= width;
      }
      if(j >= height){
        j -= height;
      }
      int out = j * height + i; 
      pixels[out] =  color(r,g,b);          
    }
  }
  updatePixels();
}
