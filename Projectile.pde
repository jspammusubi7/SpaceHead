//// Store multiple projectiles in a dynamic list
//ArrayList<Projectile> lasers = new ArrayList<Projectile>();
//float playerX, playerY;

//void setup() {
//  size(800, 600);
//  playerX = width / 2;
//  playerY = height - 50;
//}

//void draw() {
//  background(255); // Clear the screen
  
//  // Draw player
//  fill(0);
//  ellipse(playerX, playerY, 30, 30);
  
//  // Update and display all projectiles
//  // Iterate backwards so we can safely remove dead bullets
//  for (int i = lasers.size() - 1; i >= 0; i--) {
//    Projectile l = lasers.get(i);
//    l.update();
//    l.display();
    
//    // Remove bullet if it goes off-screen
//    if (b.isOffScreen()) {
//      bullets.remove(i);
//    }
//  }
//}

//// Fire a projectile on mouse click
//void mousePressed() {
//  float speed = 10;
  
//  // Calculate direction vector using PVector for smooth angle math
//  PVector target = new PVector(mouseX, mouseY);
//  PVector start = new PVector(playerX, playerY);
//  PVector direction = PVector.sub(target, start);
  
//  direction.normalize(); // Get the unit vector (length of 1)
//  direction.mult(speed); // Set the actual velocity
  
//  // Add new projectile to the list
//  lasers.add(new Projectile(playerX, playerY, direction));
//}



//class Projectile {
//  float x, y;
//  PVector velocity;
//  float size = 8;
  
//  Projectile(float startX, float startY, PVector vel) {
//    this.x = startX;
//    this.y = startY;
//    this.velocity = vel;
//  }
  
//  void update() {
//    x += velocity.x;
//    y += velocity.y;
//  }
  
//  void display() {
//    fill(255, 0, 0);
//    noStroke();
//    ellipse(x, y, size, size);
//  }
  
//  boolean isOffScreen() {
//    return x < 0 || x > width || y < 0 || y > height;
//  }
//}
