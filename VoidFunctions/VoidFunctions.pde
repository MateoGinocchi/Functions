
void setup() {
  size(800, 600); //set size
  background(0); //set background
  drawBlueSquare(); //perform function
}

void draw() {
  if (mousePressed) { //perform function when mouse is pressed
    drawCircleMouse(mouseX, mouseY);
  }
  if (keyPressed) { //perform function when key is pressed
    drawRandom();
  }
}

void drawBlueSquare() {
  float l = 50; //set size of rect
  fill(0, 0, 255); //set blue fill
  rect((width/2)-l/2, (height/2)-l/2, l, l); //set it center of canvas
}

void drawCircleMouse(int x, int y) {
  ellipse(x, y, 30, 30); //draw random ellipse at mouse x and y
}

void drawRandom() {
  float r = round(random(1, 3)); //get a random value 1 to 3
  if (r==1) { //if value is equal to one, draw a random ellipse
    fill(random(255), random(255), random(255)); //set random fill
    ellipse(random(width), random(height), random(5, 15), random(5, 15)); //draw shape
  }
  if(r==2) { //if value is equal to two, draw a random rectangle
    fill(random(255), random(255), random(255));
    rect(random(width), random(height), random(10,25), random(10,25));
  }
  if(r==3) { //if value is equal to three, draw a random triangle
    fill(random(255), random(255), random(255));
    triangle(random(width), random(height), random(width), random(height), random(width), random(height));
  }
  println(r); //see value of random
}