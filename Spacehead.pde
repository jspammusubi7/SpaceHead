Head head;
Ship ship;
Star star;
float x = 400, y = 720, z; 
float size = 15;


void setup() {
  size(800, 800, P3D);
    ship = new Ship(x, y - size,
    x - size, y + size,
    x + size, y + size);
  head = new Head(160);
  star = new Star(100, 100, 1);
}

void draw () {

  background(60, 80, 120);
  
  star.display();
  ship.display();
  head.display();

}
