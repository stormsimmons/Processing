class Paddle {
  
  float x;
  float y;
  
  float w;
  float h;
  
  Paddle(float w, float h){
    this.w = w;
    this.h = h;
  }
  
  void draw(){
    
    x = mouseX - (w/2);
    y = height - 20;
    
    fill(0);
    rect(x,y,w,h);
  }
  
}
