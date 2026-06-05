//class Projectile {
//  float x, y;
//  float speed = 8; // Adjust speed as needed

//  Projectile(float startX, float startY) {
//    x = startX;
//    y = startY;
//  }

//  void update() {
//    y -= speed; // Moves the projectile upwards
//  }

//  void display() {
//    fill(255, 0, 0); // Red projectile
//    noStroke();
//    ellipse(x, y, 8, 16); // Draw as a bullet shape
//  }
  
//  // Returns true if the projectile goes off-screen
//  boolean isOffScreen() {
//    return y < 0;
//  }
//}



//ArrayList<Projectile> projectiles;
//float shipX;
//float shipY;

//void setup() {
//  size(600, 600);
//  projectiles = new ArrayList<Projectile>();
//  ship.x = width / 2;
//  ship.y = height - 50;
//}

//void draw() {
//  background(50); // Clear the screen
  
//  //// Draw the player
//  //fill(255);
//  //rectMode(CENTER);
//  //rect(playerX, playerY, 40, 20);

//  // Iterate backwards to safely remove off-screen projectiles
//  for (int i = projectiles.size() - 1; i >= 0; i--) {
//    Projectile p = projectiles.get(i);
//    p.update();
//    p.display();
    
//    // Remove bullet if it goes off screen
//    if (p.isOffScreen()) {
//      projectiles.remove(i);
//    }
//  }
//}

//void keyPressed() {
//  // Fire projectile when the space bar is pressed
//  if (key == ' ') {
//    projectiles.add(new Projectile(shipX, shipY));
//  }
//}
