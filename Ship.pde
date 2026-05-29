class Ship {
  float x, y;
  float size;
  
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
    display();
  }

  void display() {
    fill(230, 190, 190);

     triangle(p1x, p1y, p2x, p2y, p3x, p3y);
  }
}
