float phiStep = (1 + sqrt(5)) / 2.0; // 角度phiの間隔
float phiStepVelocity = 0.05; // phiStepの更新間隔

// 球体の半径
//int radius = 100;

//init
void setup(){
 size(600, 400, P3D);
 
 pixelDensity(displayDensity());
 
 colorMode(HSB, 360, 100, 100, 100);
  // zテストを無効化
  hint(DISABLE_DEPTH_TEST);
  // 加算合成
  blendMode(ADD);
  imageMode(CENTER);
 
 //background(255);
 //stroke(0);
}

void draw(){
 background(200, 80, 8);
 
 translate(width/2, height/2, 0);
 rotateY(frameCount * 0.01);
 rotateX(frameCount * 0.01);
 
 boolean firstLoop = true; // ループの最初かどうか
 
 float s = 0;
 float t = 0;
 
 // 1つ前の座標
 float lastx = 0;
 float lasty = 0;
 float lastz = 0;
 
 float radius = height * 0.4; // 球体の半径
 
 //while(t < 180){
  
 
 for (float dTheta = 0, dPhi = 0; dTheta <= 180; dTheta++, dPhi += phiStep) {
  //s += 18;
  //t += 1;
  //float radianS = radians(s);
  //float radianT = radians(t);
  float theta = radians(dTheta);
  float phi = radians(dPhi);
  
  // 球体の座標を計算
  float thisx = 0 + (radius * cos(theta) * sin(phi));
  float thisy = 0 + (radius * sin(theta) * sin(phi));
  float thisz = 0 + (radius * cos(theta));
  
  // 2ループ目以降なら線を描画
  if (!firstLoop) {
    stroke(0, 0, 100);
    strokeWeight(1);
    line(thisx, thisy, thisz, lastx, lasty, lastz);
  } else firstLoop = false;
  
  lastx =thisx;
  lasty =thisy;
  lastz =thisz;
  
  
 }
 // phiStepを更新
  phiStep += phiStepVelocity;
 
} 