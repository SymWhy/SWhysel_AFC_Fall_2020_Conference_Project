class Clouds {
  //ext variables
  int alpha;
 
  Clouds(int _alpha) {
    alpha = _alpha;
  }
  
  void display() {
  fill(255, 252, 245, alpha);
  noStroke();

  //make a noisy loop
  for (int i = 0; i < width + offset; i+=offset) {
    for (int j = 0; j < height + offset; j+=offset) {
      float n = noise(i * 0.005, j * 0.005, frameCount * 0.008);
      push();
      translate(i, j);
      //rotate that mf
      rotate(TWO_PI * n);
      //scale
      scale(n*10, n*10);
      ellipse(0, 0, 2, 2);
      pop();
    }
  }
  }
}
