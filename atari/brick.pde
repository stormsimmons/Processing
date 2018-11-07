class Brick {
  
  float x;
  float y;
  float w;
  float h;
  boolean deleted = false;
  
  Brick(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.w = w; 
    this.h = h;
  }
  
  void draw(){
   
    fill(255);
    rect(x,y,w,h);
    
  }
  
  void canDelete(Ball ball) {
    
    if (ball.heading.x < x + w
    && ball.heading.x > x 
    && ball.heading.y < y + h 
    && ball.heading.y > y) {
      deleted = true;
    ball.hit(90);
    }
    
    
    
  }
  
}
