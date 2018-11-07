

void setup(){
  
  fullScreen();
  background(0);
}

float x = 0.0;
float y = 0.0; 

void draw(){
  for(int i = 0; i <=100; i++){
 strokeWeight(3);
 stroke(34,139,34);
 
 point(map(x, -2.1820,2.6558,0,width),map(y,0, 9.9983 ,height,0));
 
 float probability = random(1);
 
 float tempX = x;
 float tempY = y;
 
 if(probability < 0.01 ){
   
   x = 0;
   y = 0.16*tempY;
   
 }else if(probability < 0.86 ){
   
   x = (0.85*tempX) + (0.04*tempY);
   y = (-0.04*tempX) + (0.85*tempY) + 1.6;
   
 }else if(probability < 0.93 ){
   
   x = (0.2*tempX) + (-0.26*tempY);
   y = (0.23*tempX) + (0.22*tempY) + 1.6;
   
 }else {
   
   x = (-0.15*tempX) + (0.28*tempY);
   y = (0.26*tempX) + (0.24*tempY) + 0.44;
   
 }
  }
  
 
 
}
