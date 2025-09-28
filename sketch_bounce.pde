BouncingTriangle tri;  

void setup() {
  size(600, 400);
  tri = new BouncingTriangle(width/2, height/2, 40);
}

void draw() {
  background(0,0,0);
  
  tri.update();
  tri.drawTriangle();
}

void mousePressed() {
  tri = new BouncingTriangle(mouseX, mouseY, 40);
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
} s, x - s, y + s, x + s, y + s);
  }
}


