void setup(){
 size(640,360); 
}

void draw(){
 background(255);
 PVector mouse = new PVector(mouseX, mouseY);      //マウスの位置用とウィンドウの中心用
 PVector center = new PVector(width/2, height/2);  //２つのPVector
 mouse.sub(center);                                //PVectorの減算
 translate(width/2, height/2);                     //ベクトルを表す線を引く
 line(0,0,mouse.x,mouse.y);
}  