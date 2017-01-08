Ball b;

void setup(){
 size(500,500,P3D);
 
 float  fov = PI/3.0;
 float cameraz = (height/2.0)/tan(fov/2.0);
 perspective(fov, float(width)/float(height), cameraz/100.0, cameraz*10.0);
 
 b = new Ball();
}

void draw(){
 background(255);
 
 camera(100*mouseX/500.0 - 50, -45*mouseY/500.0, 45, 0,0,0, 0,1,0);
 
 noFill(); //塗りつぶさない
 box(20);
 
 b.update();
 b.display();
}

//ボールクラス
class Ball{
 //ボールの位置と速さ
 PVector location;
 PVector Xvelocity;
 PVector Yvelocity;
 PVector Zvelocity;
  
 Ball(){
  location =  new PVector(0, 0, 0);
  Xvelocity =  new PVector(0.5, 0, 0);
  Yvelocity =  new PVector(0, 0.5, 0);
  Zvelocity =  new PVector(0, 0, 0.5);
 }
 
 void update(){
  //現在の速度を位置に加算
  location.add(Xvelocity);
  location.add(Yvelocity);
  location.add(Zvelocity);
  
  //バウンドをチェック
  if((location.x > 5) || (location.x < -5)){
   Xvelocity.x = Xvelocity.x * -1; 
  }
  if((location.y > 10) || (location.y < -9)){
   Yvelocity.y = Yvelocity.y * -1; 
  }
  if((location.z > 10) || (location.z < -10)){
   Zvelocity.z = Zvelocity.z * -1; 
  }
 } 
 
 void display(){
   stroke(0);
   fill(175);
   translate(location.x,location.y,location.z);
   sphere(2);
 }
}   