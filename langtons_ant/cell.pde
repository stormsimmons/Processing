class Cell{
  
  int x;
  int y; 
  
  int indexX;
  int indexY;
   int spacing;
  
  boolean alive = false;
  
  Cell(int x , int y, int indexX,int indexY, int spacing){
    this.x = x;
    this.y = y;
    this.indexX = indexX;
    this.indexY = indexY;
    this.spacing = spacing;
  }

 void show(){
    if(alive){
       fill(0); 
     }else{
        fill(255);
     }
       noStroke();
     rect(x,y,spacing,spacing);
 }
  
} 
