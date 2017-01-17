//画像処理系
PImage img; //画像データ

void setup(){
  size(512, 512);
  //画像の読み込み
  img = loadImage("test.jpg");
}

void draw(){
  background(0);
  //色補正をリセット
  noTint();
  //元画像を左に表示
  image(img, 0, height/4, width/2, height/2);
  //画像の明度をマウスのY座標で変更場合
  //tint(mouseY/float(height) * 255);
  
  //画像のRGB値をマウスのY座標で変更場合
  float r = mouseX/float(width) * 255;
  float g = mouseY/float(height) * 255;
  float b = 255;
  tint(r, g, b);
  
  //色を変更した画像を表示
  image(img, width/2, height/4, width/2, height/2);
}