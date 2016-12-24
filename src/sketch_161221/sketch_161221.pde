void setup(){
  size(500,100);
  background(255);
  strokeWeight(5);
  smooth();
  
  float xstep = 10;
  float ystep = 10;
  float lastx = 20;
  float lasty = 50;
  float ynoise = random(10);
  //int border = 20;
  //int bordery = 10;
  float y;
  for(int x=2; x<=480; x+=xstep){
   //ystep = random(20) - 10;
  
   y = 10 + noise(ynoise) * 80;
   if(lastx > -999){
     line(x, y, lastx, lasty);
   }  
   
   lastx = x;
   lasty = y;
   ynoise += 0.03;
  } 
  
}
void draw(){
   
}  