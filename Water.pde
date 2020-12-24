class Water {

  float x;
  float y;
  float time;
  float newNoise;
  float oldNoise;
  float c;
  float n;
  
  color watercolor;

  Water(float _c, float _n, color _watercolor) {

    x = 0;
    y = 0;
    time = 0.0;
    c = _c;
    n = _n;
    watercolor = _watercolor;
  }


  void display() {
    noStroke();
    fill(watercolor);
    push();
    x = 0;
    time += 0.01;
    beginShape();
    //while loop
    while (x < width) {
    y = height - height/c * noise(x/n, time);
    //constrain noise btwn 790px and 750px?
    vertex(x, constrain(y, 620, 800));
    x += 1;
    }
    vertex(width, height);
    vertex(0, height);
    endShape();
    pop();
  }
}
