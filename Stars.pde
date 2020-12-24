class Stars {
  //public variables
  float x;
  float y;
  float size;
  
  //local variables
  int growing;
  
  
  Stars(float _x, float _y, float _size) {
    x = _x;
    y = _y;
    size = _size;
    
    growing = 1;
  }
  
  void update() {
    if (size >= 1.99) {
      growing = -1;
    }
    if (size <= 0.05) {
      growing = 1;
    }
    if (frameCount % 12 == 0) {
      size += noise(x, y, growing) * growing;
    }
  }

  void display() {
    push();
    translate(x, y);
    fill(255, 255, 150);
    noStroke();
    ellipse(0, 0, size, size);
    pop();
  }
}
