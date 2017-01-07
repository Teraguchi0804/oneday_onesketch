//ボールの位置と速さ
PVector location;
PVector velocity;


void setup(){
 size(640,360);
 location =  new PVector(100,100);
 velocity =  new PVector(2.5,5);
}

void draw(){
 background(255);
 
 //現在の速度を位置に加算
 location.add(velocity);
 
 //バウンドをチェック
 if((location.x > width) || (location.x < 0)){
  velocity.x = velocity.x * -1; 
 }
 if((location.y > height) || (location.y < 0)){
  velocity.y = velocity.y * -1; 
 }
 
 stroke(0);
 fill(175);
 ellipse(location.x,location.y,16,16);
}

class PVector{
 
 float x;
 float y;
 
 PVector(float x_, float y_){
  x = x_;
  y = y_;
 } 
 
 void add(PVector v){
  y = y + v.y;
  x = x + v.x;
 }  
}  