class Spaceship {
  PVector pos;
  PVector vel;
  float angle;
  float rotationSpeed = 0.05;
  float thrust = 0.1;
  float friction = 0.985; // Keeps velocity from going infinite
  float r = 15; // Ship radius for drawing/screen wrap

  boolean isThrusting = false;
  boolean isTurningLeft = false;
  boolean isTurningRight = false;

  Spaceship() {
    pos = new PVector(400, 720);
    vel = new PVector(0, 0);
    angle = -HALF_PI; // Start pointing straight up
  }

  void update() {
    // 1. Rotation
    if (isTurningLeft)  angle -= rotationSpeed;
    if (isTurningRight) angle += rotationSpeed;

    // 2. Thrust (accelerate in direction of heading)
    if (isThrusting) {
      PVector force = PVector.fromAngle(angle);
      force.mult(thrust);
      vel.add(force);
    }

    // 3. Friction / Drag
    vel.mult(friction);

    // 4. Movement
    pos.add(vel);

    // 5. Screen Wrapping
    if (pos.x < -r) pos.x = width + r;
    if (pos.x > width + r) pos.x = -r;
    if (pos.y < -r) pos.y = height + r;
    if (pos.y > height + r) pos.y = -r;
  }

  void display() {

    fill(230, 190, 190);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle);

    // Draw a simple triangle ship
   // stroke(255);
    //noFill();
    triangle(r, 0, -r, -r * 1, -r * 1, r * 1);

    popMatrix();
  }
}
