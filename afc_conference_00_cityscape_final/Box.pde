class Box {
  float x;
  float y;
  float w;
  float h;
  
  color box_color;
  
  Box(float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    
    box_color = color(constrain(120*noise(w*x), 10, 120), 25, constrain(150*noise(w*x), 100, 150));
  }
  
  void display() {
    fill(box_color);
    rect(x, y, w, h);
  }
  float getX() {
    return x;
  }
}
