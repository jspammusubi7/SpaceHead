PGraphics tex;
PShape globe;
//int texSize = 200; // Texture resolution
//float zoff = 0.0; // Time dimension
//float targetX = map(mouseX, 0, width, 0, 200);
Head head;
Ship ship;
Star star;

Star[] stars = new Star[100];
float x = 400, y = 720, z;
float size = 15;
int texSize = 250; // Texture resolution
float zoff = 0.0; // Time dimension
float targetX; // Move this declaration here so it can map dynamically



void setup() {
  size(800, 800, P3D);
  textureMode(NORMAL);
  ship = new Ship(x, y - size,
    x - size, y + size,
    x + size, y + size);
  head = new Head(160);
  star = new Star(100, 100, 1);
  // 2. Instantiate each individual object using a loop
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(width), random(height));
  }

  // 1. Create off-screen buffer for texture mapping
  tex = createGraphics(200, 200, P2D);

  // 2. Build the 3D Sphere PShape
  noStroke();
  globe = createShape(SPHERE, 160);
  globe.setTexture(tex); // Map the 2D PGraphics as a 3D texture
}

void draw() {
  background(60, 80, 120);

  star.display();
  for (int i = 0; i < stars.length; i++) {
    stars[i].display();
    stars[i].move();
  }

  if (keyPressed) {
    if (key == 'a' || (key == CODED && keyCode == LEFT)) {
      ship.move(-2, 0);
      //angle -= rotationSpeed;
      //rotate(angle);
    }
  }
  if (key == 'd' || (key == CODED && keyCode == RIGHT)) {
    ship.move(2, 0);
    //angle += rotationSpeed;
    //rotate(angle);
  }
  if (key == 'w'|| (key == CODED && keyCode == UP)) {
    ship.move(0, -2);
  }
  if (key == 's' || (key == CODED && keyCode == DOWN)) {
    ship.move(0, 2);
  }

  //star1.display();
  //star2.display();
  // star3.display();
  // star4.display();
  // ship.display();
  // head.display();



  ship.display();
  //head.display();
  // Modify individual pixels on the texture canvas
  tex.beginDraw();
  tex.loadPixels();





  float xoff = 0.0; // Start xoff at 0 for every frame

  for (int x = 0; x < tex.width; x++) {
    float yoff = 0.0; // Start yoff at 0 for every frame
    for (int y = 0; y < tex.height; y++) {

      // Calculate noise using X, Y, and Z (time)
      float bright = noise(xoff, yoff, zoff) * 255;
      //bright = 255;
      //fill(220, 180, 100);
      tex.pixels[x+y*width] = color(220, 180, 100, bright);
      //tex.pixels[x+y*tex.width] = color(bright * 0.86, bright * 0.70, bright * 0.39);
      yoff += .01; // Increment y space
      // println(targetX);
    }
    xoff += .01; // Increment x space
  }
  tex.updatePixels();

  zoff += .0005; // Advance time to animate the noise



  tex.endDraw();

  // Render the textured sphere
  pushMatrix();

  //translate(width/2, height/2, 0);
  translate(width/2, height/2.5, 0);

  fill(220, 180, 100);

  sphere(160);
  //translate(width/2,targetX, 0);
  //translate(targetX, height/2, 0);
  //rotateY(frameCount * .001);
  rotateY(PI);
  shape(globe);
  popMatrix();
}
