Mover[] movers = new Mover[20];  //オブジェクトの配列

void setup(){
 size(640,340);
 background(255);
 for(int i = 0; i < movers.length; i++){
  movers[i] = new Mover();       //配列内の各オブジェクトを初期化
 }  
}

void draw(){
 background(255);
 
 for(int i = 0; i < movers.length; i++){
   movers[i].update();
   movers[i].checkEdges();
   movers[i].display();
 }
} 

class Mover {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
 
  Mover(){
   location = new PVector(random(width), random(height));
   velocity = new PVector(0,0);
   topspeed = 4; 
  }
  
  void update(){
   //加速度の計算アルゴリズム
   PVector mouse = new PVector(mouseX,mouseY);  //マウスを指すベクトルを求める
   PVector dir = PVector.sub(mouse,location);
   dir.normalize();      //正規化
   dir.mult(0.5);        //スケーリング
   acceleration = dir;   //加速度を設定
   
   velocity.add(acceleration); //速度は加速度によって変化し、位置は速度によって変化する
   velocity.limit(topspeed);
   location.add(velocity);
  }
  
  void display(){ //Moverを表示
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,30,30);
  }  
  
  void checkEdges(){ //端での処理
    
    if(location.x > width){
     location.x = 0; 
    } else if(location.x < 0){
     location.x = width; 
    }
    
    if(location.y > height){
     location.y = 0; 
    } else if(location.y < 0){
     location.y = height; 
    }
  
  }
}