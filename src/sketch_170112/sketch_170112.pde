Mover m;

void setup(){
 size(640,360); 
 
 m = new Mover();
}

void draw(){
 background(255);
 
 m.update();
 m.checkEdges();
 m.display();
}

class Mover {
 
 PVector position;
 PVector velocity;
 PVector acceleration;
 float topspeed;
 float velNoise;
 float noiseVal;
 
 Mover(){
  position = new PVector(width/2, height/2);
  velocity = new PVector(0,0);
  topspeed = 6;
 }
 
 void update(){
  velNoise = random(10);
  noiseVal = noise(velNoise);
  acceleration = PVector.random2D(); 
  acceleration.mult(noiseVal); 
   
  velocity.add(acceleration);
  velocity.limit(topspeed);
  position.add(velocity);
 }
 
 void display(){
  stroke(0);
  strokeWeight(2);
  fill(127);
  ellipse(position.x, position.y, 48, 48);
 } 
 
 void checkEdges(){
  
  if(position.x > width){
   position.x = 0; 
  } else if(position.x < 0){
   position.x = width; 
  }
  
  if(position.y > height){
   position.y = 0; 
  } else if(position.y < 0){
   position.y = height; 
  }
 }

 
}