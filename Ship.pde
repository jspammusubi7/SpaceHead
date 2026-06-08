class Ship {
  float x, y;
  float size;
  
  //float posX = 200;
  //float posY = 200;
  //float angle = 0; // Stored in radians
  //float speed = 3;

  float p1x, p1y, p2x, p2y, p3x, p3y;
  color colour;


  Ship(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  Ship(float p1x, float p1y, float p2x, float p2y, float p3x, float p3y) {
    // super(p1x, p1y);

    // this.width = width;
    // this.height = height;
    this.p1x=p1x;
    this.p1y = p1y;
    this.p2x= p2x;
    this.p2y=p2y;
    this.p3x=p3x;
    this.p3y=p3y;
  }


  void move(float xSpeed, float ySpeed) {
    this.x += xSpeed;
    this.y += ySpeed;
    //display();
  }

  void display() {
    //print("ship displayed");
    fill(230, 190, 190);

    this.p1x +=x;
    this.p1y +=y;
    this.p2x +=x;
    this.p2y +=y;
    this.p3x +=x;
    this.p3y +=y;


    triangle(p1x, p1y, p2x, p2y, p3x, p3y);
    x=0;
    y=0;
  }
}







//float posX = 200;
//float posY = 200;
//float angle = 0; // Stored in radians
//float speed = 3;

//void setup() {
//  size(600, 600);
//}

//void draw() {
//  background(30);

//  // 1. Update position based on the current heading angle
//  if (keyPressed && keyCode == UP) {
//    posX += cos(angle) * speed;
//    posY += sin(angle) * speed;
//  }
  
//  // 2. Adjust heading rotation angle
//  if (keyPressed && keyCode == LEFT) {
//    angle -= 0.05;
//  }
//  if (keyPressed && keyCode == RIGHT) {
//    angle += 0.05;
//  }

//  // 3. Render the rotated object
//  pushMatrix();
//  translate(posX, posY); 
//  rotate(angle);         
  
//  // Draw relative to (0,0)
//  fill(0, 150, 255);
//  stroke(255);
//  triangle(20, 0, -10, -10, -10, 10); // Points right by default
//  popMatrix();
//}
