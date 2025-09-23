float x, y;
float dx, dy;     
float size = 40; 

void setup() {
  size(600, 400);
  x = width/2;
  y = height/2;
  dx = 3;
  dy = 2;
}

void draw() {
  background(0,0,0);
  
  fill(255, 255, 255);
  noStroke();
  triangle(x, y - size, x - size, y + size, x + size, y + size);
  
  x=x+dx;
  y=y+dy;
  
  if (x - size < 0 || x + size > width) {
    dx=dx*-1;
  }
  
  if (y - size < 0 || y + size > height) {
    dy=dy*-1;
  }
}
