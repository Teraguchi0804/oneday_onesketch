//Random Walker
Walker w;

void setup(){
 size(640, 360);
 w = new Walker();
 background(255);
}

void draw(){
  w.display();
  w.step();
}  

class Walker{
  int x;
  int y;
  
  //コンストラクタ
  Walker(){
   x = width/2;
   y = height/2;
  }
  
  //
  void display(){
   stroke(0);
   point(x, y);
  }
  
  //
  void step(){
   int stepx = int(random(3)) - 1;
   int stepy = int(random(3)) - 1; 
   x += stepx;
   y += stepy;
   
   //int choice = int (random(4)); //0 or 1 or 2 or 3
   //if(choice == 0){
   // x++;  
   //} else if(choice == 1){
   // x--;
   //} else if(choice == 2){
   // y++; 
   //} else {
   // y--; 
   //}  
   
  }  
}  