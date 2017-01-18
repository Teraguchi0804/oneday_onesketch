class Circle{
  Point center;
  float radius;
  
  //中心座標と半径を与えて円を作る
  public Circle(PVector c, float r){
    this.center = new Point(c);
    this.radius = r;
  }
  
  //描画(デバッグ用)
  public void draw(){
    ellipse(center.x, center.y, radius * 2, radius *2); 
  }  
}