class Ant{
 
  Cell position;
  Cell[][] grid;
  
  int direction = 4;
  int spacing;
  Ant(Cell[][] grid, int spacing){
    this.grid = grid;
    this.spacing = spacing;
  }
  
  void setPosition(Cell cell){
    position = cell;
  }
  
  void show(){
   fill(255,0,0);
   rect(position.x,position.y,spacing,spacing); 
  }
  
  void setDirection(){
    
    if(position.alive){
      if(direction == 4){
        direction = 1;
      }else{
      direction += 1;
      }
    }else{
      if(direction == 1){
        direction = 4;
      }else{
      direction -= 1;
      }
    }
    position.alive = !position.alive;
  }
  
  void move(){
    int indexX = 0;
    int indexY = 0;
    
    switch(direction){
     case  1 :  indexX = position.indexX- 1; indexY = position.indexY ;
     break;
     case  2:  indexX = position.indexX; indexY = position.indexY  + 1;
     break;
     case  3 :  indexX = position.indexX + 1; indexY = position.indexY;
     break;
     case  4 :  indexX = position.indexX; indexY = position.indexY  - 1;
     break;
    }
    
    if(indexX  >= width/spacing){
      indexX = 0;
    }else if (indexX  <= 0){
      indexX = width/spacing -1;
    }
    
    
    if(indexY  >= height/spacing){
      indexY = 0;
    }else if (indexY  <= 0){
      indexY = height/spacing - 1;
    }
    
    position = grid[indexX][indexY];
    
  }
  
}
