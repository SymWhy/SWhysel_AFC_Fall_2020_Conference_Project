class Flower {

  float x;
  float y;
  float rad;
  boolean stem;

  color grey;

  Flower(float _x, float _y, float _rad, boolean _stem) {
    x = _x;
    y = _y;
    rad = _rad;
    stem = _stem;
  }


  float customNoise(float _val) {
    float val = _val;
    //you can decide how this is calculated
    float c_noise = pow(cos(val), sin(val*5));
    //not void, returns a float
    return c_noise;
  }

  void display() {
    push();
    if (stem == true) {
      noFill();
      strokeWeight(6);
      stroke(105, 135, 100);
      //stem
      bezier(0, 0, 25, 50, 0, 130, -35, 150);
    }
    for (int i = 0; i < rad; i++) {
      for (int j = 0; j < rad; j++) {
        float n = customNoise(i/100);
        strokeWeight(5);
        stroke(random(200, 250), 150);
        rotate(noise(2));
        line(0, 0, i, j);
      }
    }
    filter(BLUR);
    pop();
  }
}
