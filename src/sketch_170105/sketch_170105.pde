void setup(){
 size(640,360);
 noLoop();
}

void draw(){
 background(0); 
  
 loadPixels();
 
 float xoff = 0.0;
 
 for(int x = 0; x < width; x++){
   
   float yoff = 0.0;
   for(int y = 0; y < height; y++){
     float rand = random(xoff,yoff);
     float bright = noise(rand)*255;
     pixels[x+y*width] = color(bright+1.0, bright*1.2, bright*2.2);
     
     yoff += 0.07;
   }
   
   xoff += 0.05;
 }
 updatePixels();
}