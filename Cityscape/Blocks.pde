class Blocks {
  
  float x;
  float y;
  float c;
  float size;
  float alpha;
  
  Blocks(float _size) {
    size = _size;
  }

  void display() {
    noStroke();
    x = 0;
    y = 0;
    c = 0;
    alpha = 200;
    for (int i = 0; i < 4; i++) {
      
      for (int j = 0; j < 5; j++) {
        //even squares are pink
        if (c%2 == 0) {fill(250, 0, 200, alpha);}
        else {fill(0, 0, 0, alpha);}
        
        rect(x, y, size, size);
        x += size;
        c++;
        alpha -= sq(c) + 15;
      }
      x = 0;
      y += size;
      alpha += sq(c) + 150;
    }
    
  }
}
