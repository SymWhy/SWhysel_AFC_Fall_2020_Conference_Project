class Buildings {
  //external
  float array_x;
  float array_y;
  float w;
  float h;
  
  //internal
  float x;
  float y;
  
  float speed_x;
  float last_w;
  
  float max_w;
  
  
  boolean spawning;
  
  ArrayList<Box> list_boxes;
  int num_boxes;
  
  Buildings(float loc_y) {
    array_x = 0;
    array_y = loc_y;
    speed_x = 0.5;
    x = 0;
    max_w = 80;
    
    list_boxes = new ArrayList<Box>();
    //populate list with boxes to fill the screen
    spawning = true;
    while(spawning == true) {
      //check width overflow
      if (array_x >= width + max_w) {
        spawning = false;
        //return array_x to zero
        //array_x = 0;
        }
      else {
        //initialize array on screen
        w = random(60, max_w);
        h = random(90, 180);
        list_boxes.add(new Box(array_x, array_y-h, w, h));
        array_x += w;
      }
    }
  }//end Buildings()
  
  
  void init() {
    push();
    for(int i = 0; i < list_boxes.size(); i++) {
      list_boxes.get(i).display();
      array_x += w;
    }
    pop();
  }
  
  void checkEdges() {
    //if(list_boxes.get(0)
    //if(list_boxes.get(0) < 0 ) {
      
    //}
  }
  
  void update() {
    if (spawning == true) {
      println("spawning");
      this.newBuilding();
    }
    x -= speed_x;
    //for arrays: indexes 0-4, length is 5
    //put it in an if statement!
    //list_boxes.remove(0);
  }
  
  void display() {
    push();
    //translate(x, 0);
    for(int i = 0; i < list_boxes.size(); i++) {
      list_boxes.get(i).display();
      array_x += w;
    }
    pop();
    //array_x = 0;
  }
  
  //internal
  void newBuilding() {
    //remove building (0) from ArrayList, add new at end
    spawning = false;
    w = random(40, max_w);
    h = random(70, 150);
    list_boxes.add(new Box(array_x, array_y-h, w, h));
    array_x += w;
  }
}
