Head head;
Ship ship;
Star star;

Star[] stars = new Star[100];
float x = 400, y = 720, z; 
float size = 15;


void setup() {
  size(800, 800, P3D);
    ship = new Ship(x, y - size,
    x - size, y + size,
    x + size, y + size);
  head = new Head(160);
  star = new Star(100, 100, 1);
    // 2. Instantiate each individual object using a loop
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(width), random(height));
  }
}

void draw () {

  background(60, 80, 120);
  
  star.display();
   for (int i = 0; i < stars.length; i++) {
    stars[i].display();
    stars[i].move();
  }
  ship.display();
  head.display();

}