class Moon {
  float x;
  float y;
  float size;
  //color moonColor;
  PImage supermoon;

  Moon(float _x, float _y, float _size) {
    x = _x;
    y = _y;
    size = _size;

    supermoon = loadImage("supermoon.png");
    //moonColor = color(255,255,200);
  }

  void display() {
    //

    push();
    translate(x, y);
    image(supermoon, 0, 0, size, size);
    //supermoon.loadPixels();
    //for (int x = 0; x < size; x++) {
    //  for (int y = 0; y < size; y++) {
    //    //what is my pixel's color
    //    color my_color = supermoon.pixels[x + y * int(size)];
    //    //where is my pixel in the array?
    //    int loc = x + y * int(size);
    //    loc += int(random(0, 10));
    //    //make sure it exists first!
    //    if (loc < supermoon.pixels.length) {
    //      supermoon.pixels[loc] = my_color;
    //    }
    //  }
    //}
    //supermoon.updatePixels();

    //filter(POSTERIZE, 8);

    //noFill();
    //stroke(255,0,0);
    //rect(-50,180, 200, 20);
    //noStroke();
    pop();
  }
}
