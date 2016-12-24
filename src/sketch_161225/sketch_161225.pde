//noise&animation
float xstart, xnoise, ystart,ynoise;

//init
void setup(){
 size(400,400);
 
 smooth();
 background(0,191,255);
 
 xstart = random(10);
 ystart = random(10);
 
 xnoise = xstart;
 ynoise = ystart; 
}

void draw(){
 background(0,191,255);
 
 xstart += 0.01;
 ystart += 0.01;
 
 xnoise = xstart;
 ynoise = ystart;
 
 for(int y = 0; y <= height; y+=5){
  ynoise += 0.1;
  xnoise = xstart;
  for(int x = 0; x <= width; x+=5){
   xnoise += 0.1;
   drawPoint(x,y,noise(xnoise, ynoise));
  }  
 }
}

void drawPoint(float x, float y, float noiseFactor){
 pushMatrix();
 translate(x,y);
 rotate(noiseFactor * radians(540));
   float edgeSize = noiseFactor * 35;
   float grey = 150 + (noiseFactor * 120);
   float alph = 150 + (noiseFactor * 120);
 noStroke();
   fill(grey,alph);
   ellipse(0,0,edgeSize, edgeSize/2);     
   popMatrix();
}

 