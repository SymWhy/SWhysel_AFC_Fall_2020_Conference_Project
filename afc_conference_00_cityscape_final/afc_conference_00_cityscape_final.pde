//afc_conference_00_cityscape

Moon moon;
ArrayList<Stars> list_stars;
int num_stars;

Water water_a;
Water water_b;
Water water_c;
Blocks blocks;
Buildings buildings_a;
Buildings buildings_b;

void setup() {
  size(1200, 800);
  background(16, 4, 33);


  blocks = new Blocks(80);
  moon = new Moon(840, 120, 280);
  
  list_stars = new ArrayList<Stars>();
  num_stars = 500;
  //populate array
  for(int i = 0; i < num_stars; i++) {
    float n = noise(i * 0.005); //goes inside loop
    list_stars.add(new Stars(random(width), random(height - height/3), n * 2));
  }
  
  water_a = new Water(3.0, 1000, color(30, 0, 60, 200));
  water_b = new Water(4.0, 800, color(50, 15, 100, 180));
  water_c = new Water(5.7, 453, color(15, 50, 100, 150));
  
  buildings_a = new Buildings(590);
  buildings_b = new Buildings(680);
  
  //buildings_a.init();
  //buildings_b.init();
}

void draw() {
  background(16, 4, 33);
  fill(30, 0, 60);
  rect(0, 680, width, 200);
  
  for(int i = 0; i < num_stars; i++) {
    list_stars.get(i).update();
    list_stars.get(i).display();
  }
  moon.display();
  //dummywater
  fill(30, 0, 60);
  rect(0, 680, width, 200);

  ////draw cityscape
  alpha(50);
  buildings_a.display();
  fill(16, 4, 33,50);
  rect(0,height/2,width,height);
  alpha(255);
  buildings_b.display();

  //waves

  water_a.display();
  water_b.display();
  water_c.display();

  //texture error
  blocks.display();
}

void keyPressed() {
  if (key == 'x')
    saveFrame("simone_conference_cityscape_####.png");
}
