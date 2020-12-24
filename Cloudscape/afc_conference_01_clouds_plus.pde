//afc_inclass_20_noise_landscape
PImage hill;
PImage person;

int offset; //or gap
float speed;

color peach;
color magenta;

Clouds clouds_bg;
Clouds clouds_fg;

Sun sun;

Flower flower;
Flower flower_smol;

void setup() {
  size(800, 800);
  background(255, 230, 180);

  offset = 10;
  speed = 10000;
  peach = color(255, 210, 180);
  magenta = color(255, 180, 250);
  
  clouds_bg = new Clouds(255);
  clouds_fg = new Clouds(120);

  sun = new Sun(500, 600, 100);
  flower = new Flower(500, 600, 40, true);
  flower_smol = new Flower(500, 600, 21, false);
  
  hill = loadImage("hill_800x380.png");
  person = loadImage("xe_sits_x600_flipways.png");
}

void draw() {
  //https://forum.processing.org/two/discussion/comment/89982/#Comment_89982
  background(lerpColor(magenta, peach, (((millis()/5000)%2==0)?millis()%5000:5000-millis()%5000)/5000.0));
  
  clouds_bg.display();
  
  push();
  translate(width - 20, 0 + 20);
  sun.display();
  pop();
  
  clouds_fg.display();

  //hill
  image(hill, 0, 650, 800, 380);
  //tint(255, 195, 215);

  //person
  image(person, 0, 500, 250, 250);

  //flower
  //flower emmitter
  
  
  push();
  translate(490, 640);
  flower.display();
  pop();
  
  push();
  translate(440,730);
  flower_smol.display();
  pop();
  
  //saveFrame("frames/candy_clouds_frame_####.tif");
}


void keyPressed() {
  if (key == 'x') {
    saveFrame("noise_landscape_candy_clouds_2_####.png");
  }
}
