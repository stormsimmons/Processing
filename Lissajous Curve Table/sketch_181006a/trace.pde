
class Trace{

  float x;
  float y;
  ArrayList<PVector> points;
  float angle = 0.0;
  
  Trace(float x, float y){
    this.x = x;
    this.y = y;
    points = new ArrayList<PVector>();
  }
  
  public void setX(float x){
    this.x = x;
  }
  
  
  public void setY(float y){
    this.y = y;
  }
  
  public void setAngle(float angle){
    this.angle = angle;
  }
  
  public void print(){
   
    beginShape();
    for(PVector vector : this.points){
     strokeWeight(1);
    stroke(255);
    vertex(vector.x,vector.y);
    }
    endShape();
    
    strokeWeight(15);
    stroke(255);
    point(this.x,this.y);
    
    
  }
  
  public void addPoint(){
    if(angle >= -2 * PI){
    points.add(new PVector(this.x,this.y));
    }
  }
  
}
