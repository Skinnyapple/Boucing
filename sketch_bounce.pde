BouncingTriangle[] tri = new BouncingTriangle[3];  

void setup() {
  size(600, 400);
  for (int i = 0; i < tri.length; i++) {
    tri[i] = new BouncingTriangle(random(width), random(height), 40);
  }
}

void draw() {
  background(0, 0, 0);

  for (int i = 0; i < tri.length; i++) {
    tri[i].update();
    tri[i].drawTriangle();
  }
}

void mousePressed() {
  int idx = int(random(tri.length));
  tri[idx] = new BouncingTriangle(mouseX, mouseY, 40);
}

class BouncingTriangle {
  float x, y, dx, dy;
  float s;      

  BouncingTriangle(float startX, float startY, float size_) {
    x = startX;
    y = startY;
    s = size_;
    dx = random(-3, 3);
    dy = random(-3, 3);
    if (dx == 0 && dy == 0) { 
      dx = 2; 
      dy = 1; 
    }
  }

  void update() {
    x += dx;
    y += dy;

    if (x - s < 0 || x + s > width) {
      dx *= -1;
    }
    if (y - s < 0 || y + s > height) {
      dy *= -1;
    }
  }

  void drawTriangle() {
    fill(255,255,255);
    noStroke();
    triangle(x, y - s, x - s, y + s, x + s, y + s);
  }
}

