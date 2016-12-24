void setup(){
 size(500,300);
 background(255);
 strokeWeight(0.5);
 smooth();
 
//float radius = 10;
 int centx = 250;
 int centy = 150;
 
 stroke(0, 30);
 noFill();
 //ellipse(centx, centy, radius*2, radius*2);
 
 stroke(20,50,70);
 
 
 float x,y;
 for(int i = 0; i<100; i++){
   float lastx = -999;
   float lasty = -999;
   float radiusNoise = random(10);
   
   float radius = 10;
   
   stroke(random(10),random(50),random(70), 80);
   
   int startangle = int(random(360));
   int endangle = 1440 + int(random(1440));
   int anglestep = 5 + int(random(3));
   
   for(float ang = startangle; ang <= endangle; ang +=anglestep){
    radiusNoise += 0.05;
    radius += 0.5;
    float thisRadius = radius + (noise(radiusNoise) * 200) - 100;
    float rad = radians(ang);
    x = centx + (thisRadius * cos(rad));
    y = centy + (thisRadius * sin(rad));
    if(lastx > -999){
      line(x,y,lastx,lasty);
    }
    lastx = x;
    lasty = y;
   }
 }  
   
 
 //stroke(20,50,70);
 //int step = 10;
 //float lastx = -999;
 //float lasty = -999;
 //float ynoise = random(10);
 //float y;
 //for(int x=20; x <=480; x+=step){
 //  y = 10 + noise(ynoise) * 80;
 //  if(lastx > -999){
 //   line(x,y,lastx,lasty);
 //  }
 //  lastx = x;
 //  lasty = y;
 //  ynoise += 0.1;
 //}
 
 
 
 //stroke(20,50,70);
 //int xstep = 1;
 //float lastx = -999;
 //float lasty = -999;
 ////float angle = 1;
 //float y = 50;
 //for(int x=20; x <=480; x+=xstep){
 //  //float rad = radians(angle);
 //   y = 20 + (customRandom() * 60);
 //  if(lastx > -999){
 //    line(x,y,lastx,lasty);
 //  }  
 //  lastx = x;
 //  lasty = y;
 // //angle ++;
 //} 
}

//float customRandom(){
// float retValue = 1 - pow(random(1),5);
// return retValue;
//}

void draw(){
  
}  