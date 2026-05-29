class Head {
  float x, y;
  float size;

  Head(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

 Head(float size) {
    this.size = size;
  }


  void display () {

    lights();

    translate(width/2, height/2.5, 0);
    noStroke();
    fill(220, 180, 100);

    sphere(160);
  }
}
