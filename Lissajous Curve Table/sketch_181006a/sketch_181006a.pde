int cols;
int rows;
float size = 200;
float angle = 0.0;

Trace[][] traces;

void setup(){
 noFill();
 size(1800,1800); 
 
 cols = floor(width / size) - 1;
 rows = floor(height / size) - 1;
 traces = new Trace[cols][rows];
 
 for (int i = 0 ; i < cols; i++){
  for (int j = 0 ; j < rows; j++){
    traces[i][j] = new Trace(0,0);
  }
 }
}

void draw(){
  
  background(0);
   float d = size - 0.2 * size;
   float r = d / 2;
  
  for(int i = 0; i < cols ; i++){
    float cx = size + i * size + size / 2;
    float cy = size / 2;
    stroke(255);
    strokeWeight(2);
    ellipse(cx, cy, d,d );     
    
    float x = r * cos(angle * (i + 1) - HALF_PI) + cx;
    float y = r * sin(angle * (i + 1) - HALF_PI) + cy;
    strokeWeight(15);
    stroke(255);
    point(x, y);
    
    strokeWeight(1);
    line( x, 0,  x, height);
    
    for(int j = 0; j < rows ; j++){
      traces[i][j].setX(x);
    }
  }
  
  
   for(int i = 0; i < rows ; i++){
    float cx = size / 2; 
    float cy = size + i * size + size / 2;
    stroke(255);
    strokeWeight(2);
    ellipse(cx, cy, d,d );     

    float x = r * cos(angle * (i + 1) - HALF_PI) + cx;
    float y = r * sin(angle * (i + 1) - HALF_PI) + cy;
    strokeWeight(15);
    stroke(255);
    point(x, y);
    
    strokeWeight(1);
    line( 0,  y, width,y);
    
    for(int j = 0; j < cols ; j++){
      traces[j][i].setY(y);
    }
  }

 for (int i = 0 ; i < cols; i++){
  for (int j = 0 ; j < rows; j++){
    traces[i][j].setAngle(angle);
    traces[i][j].addPoint();
    strokeWeight(0);
    traces[i][j].print();
  }
 }
  
  angle -= 0.05;
  
}
