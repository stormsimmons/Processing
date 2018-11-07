

class Ball{
 
 
   int r;
   
   PVector heading;
   
   PVector speed;
   
    Ball(int r){
     this.r = r;
     
     heading = new PVector(width/2, height/2 + 300);
     
     
     speed = new PVector(5,5);
     
   }
   
   void hit(float angle){
      
     float x = degrees(heading.heading());
     float theta = ( x) *2; 
     
     speed.rotate(-theta);
     
     heading.add(speed);
   }
   
   
   void draw(){
     fill(0);
     ellipse(heading.x,heading.y, r, r);
     
   }
   
   void update() {
     heading.add(speed);
   }
   
   void setHeading(float angle){
     heading.rotate(angle);
   }
  
}
