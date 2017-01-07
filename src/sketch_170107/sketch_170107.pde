//ボールの位置と速さ
PVector location;
PVector velocity;

Circle Circ;
Box box;

void setup(){
 size(640,360,P3D);
 
 Circ = new Circle();
 box = new Box();
 
 location =  new PVector(100, 100, 100);
 velocity =  new PVector(2.5, 5, 5);
}

void draw(){
 background(0);
 
 //現在の速度を位置に加算
 location.add(velocity);
 
 //バウンドをチェック
 if((location.x > box.boxX) || (location.x < 0)){
  velocity.x = velocity.x * -1; 
 }
 if((location.y > box.boxY) || (location.y < 0)){
  velocity.y = velocity.y * -1; 
 }
 if((location.z > box.boxZ) || (location.z < 0)){
  velocity.z = velocity.z * -1; 
 }
 
 noFill(); //塗りつぶさない
 
 
 box.display();
}

//ボックスクラス
class Box{
 int x;
 int y;
 
 int boxX = 150;
 int boxY = 150;
 int boxZ = 150;
 
 Box(){
   x = width/2;
   y = height/2;
 }
 
 void display(){
  stroke(255);
  translate(x, y);    //立体の中心を画面中央に移動
  rotateY(radians(60));    //Y軸に対して60度回転
  box(boxX, boxY, boxZ);    //150 x 150 x 150pxの立方体を描画 
  
  Circ.display(location.x,location.y);
 }  
}  

//円クラス
class Circle{
  
 Circle(){
  background(155);
 }
 
 void display(float x, float y){
   stroke(255);
   ellipse(x,y,16,16);
 }
}  

//ベクタークラス
class PVector{
 
 float x;
 float y;
 float z;
 
 PVector(float x_, float y_,float z_){
  x = x_;
  y = y_;
  z = z_;
 } 
 
 void add(PVector v){
  z = z + v.z;
  y = y + v.y;
  x = x + v.x;
 }  
}  