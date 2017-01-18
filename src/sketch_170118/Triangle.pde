class Triangle{
  public Point p1, p2, p3;
  
  //3頂点を与えて三角形をつくる
  public Triangle(PVector p1, PVector p2, PVector p3){
     this.p1 = p1 instanceof Point ? (Point)p1 : new Point(p1);
     this.p2 = p2 instanceof Point ? (Point)p2 : new Point(p2);
     this.p3 = p3 instanceof Point ? (Point)p3 : new Point(p3);
  }
  
  //同値判定
  public boolean equals(Object obj){
    try {
      Triangle t = (Triangle)obj;
      //同値判定に頂点を用いると、三角形の頂点の順番を網羅的に考慮する分、条件判定が多くなる
      return(p1.equals(t.p1) && p2.equals(t.p2) && p3.equals(t.p3) ||  
             p1.equals(t.p2) && p2.equals(t.p3) && p3.equals(t.p1) ||  
             p1.equals(t.p3) && p2.equals(t.p1) && p3.equals(t.p2) ||  
                
             p1.equals(t.p3) && p2.equals(t.p2) && p3.equals(t.p1) ||  
             p1.equals(t.p2) && p2.equals(t.p1) && p3.equals(t.p3) ||  
             p1.equals(t.p1) && p2.equals(t.p3) && p3.equals(t.p2) ); 
    } catch (Exception ex){
      return false; 
    }
  }
  
  //ハッシュ表で管理できるようにhashCodeをオーバーライド
  public int hashCode(){
    return 0; 
  }
  
  //描画
  public void draw(){
    triangle(p1.x, p1.y, p2.x, p2.y, p3.x, p3.y);
  }  
  
  //他の三角形と共有点を持つか
  public boolean hasCommonPoints(Triangle t){
     return (p1.equals(t.p1) || p1.equals(t.p2) || p1.equals(t.p3) ||  
            p2.equals(t.p1) || p2.equals(t.p2) || p2.equals(t.p3) ||  
            p3.equals(t.p1) || p3.equals(t.p2) || p3.equals(t.p3) ); 
  }  
}