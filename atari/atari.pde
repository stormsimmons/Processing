
Ball ball;
Paddle paddle;
Brick[][] bricks;

 int rows = 3;
 int cols = 5;
 
 boolean started = false; 

void setup() {
  size(1800, 1000);
  ball = new Ball(30);
  paddle = new Paddle(150, 10);
  
  
 
  
  bricks = new Brick[rows][cols];
  
  for(int i = 0; i <= rows -1 ; i ++){
    for(int j = 0; j <= cols - 1; j ++){
      bricks[i][j] = new Brick( j *300  +200 , i * 250 + 100 , 150,150);
    }
    
  }
  
}


void draw() {
  background(51);
  
  if(!started){
    return;
  }
 
  ball.draw();

  fill(0);
  ball.draw();
  ball.update();
  paddle.draw();

  if (ball.heading.y > paddle.y - paddle.h/2 -2 ) {
    if (ball.heading.x > paddle.x && ball.heading.x <  paddle.x + paddle.w) {
      ball.hit(90);
    }
  }

  if (ball.heading.x < 0 
    || ball.heading.x > width 
    || ball.heading.y < 0
    ) {
    ball.hit(90);
  }
  
  
   for(int i = 0; i <= rows -1; i ++){
    for(int j = 0; j <= cols-1; j ++){
      if(!bricks[i][j].deleted){
      bricks[i][j].canDelete(ball);
      bricks[i][j].draw();
      }
    }
   }
}

void mousePressed(){
  started = true;
}
