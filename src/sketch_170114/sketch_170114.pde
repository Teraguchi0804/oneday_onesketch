//
ParticleVec2 particle;

void setup(){
  size(800, 600);
  frameRate(60);
  noStroke();
  fill(255);
  
  particle = new ParticleVec2();
  particle.location.set(10,10);
  //摩擦力を設定
  particle.friction = 0.01;
  //力を加える
  particle.acceleration.set(3, 2);
  
  
}

void draw(){
  background(0);
  //パーティクルの位置を更新
  particle.update();
  //パーティクルを描画
  particle.draw();
}

//パーティクルクラス
class ParticleVec2{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float radius;
  float friction;
  
  ParticleVec2(){
    radius = 4.0;
    location = new PVector(width/2.0, height/2.0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    friction = 0.0;
  }
  
  void update(){
    velocity.add(acceleration);     //速度に加速度を加算
    velocity.mult(1.0 - friction);  //摩擦力を加味した速度を計算
    location.add(velocity);         //速度から位置を算出
    acceleration.set(0, 0);         //加速度をリセット
  }
  
  void draw(){
    ellipse(location.x, location.y, radius*10, radius*10); 
  }  
} 