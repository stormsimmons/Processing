
//float theta;

void setup() {
  size(1500, 1500);
}

void draw() {
  background(51);

  float h = 400;

  //theta = radians(mouseX);
  translate(width/2, height);

  stroke(255);
  line(0, 0, 0, -h);

  translate(0, -h);
  tree(h);


  
}

void tree(float h) {
  float theta = radians(mouseX);

  h *= 0.66;

  if (h > 2) {
    pushMatrix();
    rotate(theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    tree(h);
    popMatrix();

    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    tree(h);
    popMatrix();
  }
}
