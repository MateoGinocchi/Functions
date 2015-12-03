
void setup() {
  size(800, 600);
  background(0);
  drawBlueSquare();
}

void draw() {
  if (mousePressed) {
    drawCircleMouse(mouseX, mouseY);
  }
  if (keyPressed) {
    drawRandom();
  }
}

void drawBlueSquare() {
  float l = 50;
  fill(0, 0, 255);
  rect((width/2)-l/2, (height/2)-l/2, l, l);
}

void drawCircleMouse(int x, int y) {
  ellipse(x, y, 30, 30);
}

void drawRandom() {
  float r = round(random(1, 3));
  if (r==1) {
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), random(5, 15), random(5, 15));
  }
  if(r==2) {
    fill(random(255), random(255), random(255));
    rect(random(width), random(height), random(10,25), random(10,25));
  }
  if(r==3) {
    fill(random(255), random(255), random(255));
    triangle(random(width), random(height), random(width), random(height), random(width), random(height));
  }
  println(r);
}