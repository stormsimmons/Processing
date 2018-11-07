

Cell[][] grid;
Ant ant;
int cols;
int rows; 

void setup (){ 
  size(1000,1000);
  frameRate(1000);
  int spacing = 25;
  cols = width/spacing;
  rows = height/spacing;
  
  grid = new Cell[cols][rows];
  
  int xOff = 0;
  int yOff = 0;
  
  for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      grid[i][j] = new Cell(xOff,yOff, i, j, spacing);
      xOff += spacing;
      if(xOff > width -1){
        xOff = 0;
      }
    }
    yOff += spacing;
  }
  
 ant = new Ant(grid, spacing);
 ant.setPosition(grid[rows/2][cols/2 ]);
 
} 

void draw(){ 
  
 background(255);
  
 for(int i = 0; i < cols; i++){
    for(int j = 0; j < rows; j++){
      grid[i][j].show();
     
    }
  }
  ant.show();
  ant.setDirection();
  ant.move();
  
} 
