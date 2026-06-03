class Star {
  float x, y;
  float size;

  Star(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }

  Star(float x, float y, float size) {
    //this.x = x;
    //this.y = y;
    //this.size = size;
  }



  void display() {

    float angleStep = TWO_PI
      / 4;
    beginShape();

    for (int i = 0; i < 4; i++) {
      // Alternate between inner and outer radius for the points
      float r = (i % 2 == 0) ? 5 : 5;

      // Calculate the coordinates
      float px = this.x + cos(i * angleStep - HALF_PI) * r;
      float py = this.y + sin(i * angleStep - HALF_PI) * r;

      vertex(px, py);

      //strokeWeight(10);
      //stroke(255, 255, 255);
      fill(255, 255, 255);
      //point(x, y);
      //float angleStep = TWO_PI / 4;
    }

    endShape(CLOSE);
  }

  void move() {
    if (frameCount%7==0) {

      x += random(-1, 1);
      y += random(-1, 1);
    }
  }
}