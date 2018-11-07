
float[] heights;


void setup(){
  size(1000,800);
  frameRate(300);
  heights = new float[width];
  
  for(int i = 0 ; i < width ; i++){
   heights[i] = random(height); 
  }
}

int counter = 1;

void draw(){
  background(51); 
  
  if(counter >= heights.length ){
    counter = 1;
  }

for(int i = 1 ; i <= heights.length -counter  ; i++){
  if(heights[i - 1] > heights[i]){
    swap(i);
  }
}
  
  counter++;
  
 for(int i = 0 ; i < heights.length ; i++){
    stroke(255);
    line(i,height,i ,height - heights[i]);
  }
} 
 
 
 void swap(int index){
  
  float first = heights[index - 1];
  float second = heights[index];
  
  heights[index - 1] = second;
  heights[index] = first;
  
   
   
 }
