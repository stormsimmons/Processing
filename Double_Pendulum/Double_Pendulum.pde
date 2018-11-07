float x1;
float y1;

float x2;
float y2;

float m1 = 2;
float m2 = 2;

float a1 = HALF_PI;
float a2 = HALF_PI;

float r1 = 150;
float r2 = 150;

float a1_v = 0;
float a2_v = 0;

float g = 0.5;

float px1;
float py1;
float px2;
float py2;

void setup(){
  size(700,700);
  background(21);
}

void draw(){
  //background(51);
  translate(width/2,height/2);
  
  float num1 = -g*(2*m1 + m2)*sin(a1) - m2*g*sin(a1-2*a2)- 2 * sin(a1 - a2) * m2 * (a2_v*a2_v * r2 + a1_v*a1_v * r1 * cos(a1-a2));
  float den1 = r1 * (2* m1 + m2 - m2*cos(2*a1 - 2* a2));
  float a1_a = num1 / den1; 
  
  float num2 = 2 * sin(a1 -a2) * (a1_v*a1_v * r1 * (m1 + m2) + g*(m1+m2) * cos(a1) + a2_v*a2_v * r2 * m2 * cos(a1 -a2)) ; 
  float den2 =  r2*(2* m1 + m2 - m2* cos(2*a1 - 2 * a2));
  
  float a2_a = num2 / den2; 
  
  x1 = sin(a1)*r1;
  y1 = cos(a1)*r1;
  
  x2 = x1 + sin(a2)*r2;
  y2 = y1 + cos(a2)*r2;
  
  stroke(255);
  strokeWeight(1);
  //line(0,0,x1,y1);

  strokeWeight(10);  
  //point(x1,y1);
  
  strokeWeight(1);
  //line(x1,y1, x2,y2);
  
    
  strokeWeight(10);  
  //point(x2,y2);
  
  a1_v += a1_a;
  a2_v += a2_a;
  a1 += a1_v;
  a2 += a2_v;
  
  if(frameCount > 1){
    
   float weight = map(abs(a2_v), 0 , PI, 10, 255) * 8;
   stroke(weight);
   strokeWeight(0.5); 
   line(px2,py2, x2,y2); 
  }
  
  px1 = x1;
  py1 = y1; 
  px2 = x2;
  py2 = y2;
  
} 
