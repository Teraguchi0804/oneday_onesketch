//DelaunayTriangles
DelaunayTriangles delaunay;

void setup(){
  size(400, 300);
  noLoop();
  
  //ランダムな頂点のリストを作成
  ArrayList ptList = new ArrayList();
  for(int i = 0; i < 500; i++){
    ptList.add(new PVector(random(width),random(height)));
  }
  
  //作成したリストを基に、DelaunayTrianglesオブジェクトを作成
  delaunay = new DelaunayTriangles(ptList);
}

void draw(){
  background(255);
  stroke(0);
  noFill();
  smooth();
  
  delaunay.draw();
}  