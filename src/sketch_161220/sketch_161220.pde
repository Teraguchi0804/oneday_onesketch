int diam = 10;
float centX, centY;

void setup(){
  size(500,300);
  frameRate(24);
  smooth();
  background(180); 
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(1);
  fill(255, 25);
  
}

int AddNumbers(int a, int b){
  int retrunValue01 = (a + b);
  int retrunValue02 = (a + b) * 10;
  int retrunValue = max(retrunValue01, retrunValue02);
  return retrunValue;
}  

void draw(){
  if(diam <= 400){
    ellipse(centX, centY, diam, diam);
    diam += 10;
  } 
 
}  