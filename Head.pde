
class Head {
  float x, y;
  float size;
  PGraphics tex;
  PShape globe;

  Head(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
    noStroke();
    tex = createGraphics(texSize, texSize, P2D);
    initializeGlobe(this.size); // Pass the variable 'size' directly
  }

  Head(float size) {
    this.size = size;
    noStroke();
    tex = createGraphics(texSize, texSize, P2D);
    initializeGlobe(this.size); // Pass the variable 'size' directly
  }

  void display() {
    lights();
    noStroke();

    // Modify individual pixels on the texture canvas
    tex.beginDraw();
    tex.loadPixels();

    float xoff = 0.0; 
    for (int x = 0; x < tex.width; x++) {
      float yoff = 0.0; 
      for (int y = 0; y < tex.height; y++) {
        float bright = noise(xoff, yoff, zoff) * 255;

        int loc = x + y * tex.width;

        if (loc >= 0 && loc < tex.pixels.length) {
          tex.pixels[loc] = color(bright * 0.86, bright * 0.70, bright * 0.39);
        }

        yoff += .01; 
      }
      xoff += .01; 
    }
    tex.updatePixels();
    tex.endDraw();

    zoff += .01; // Animate noise over time

    // Render the textured sphere
    pushMatrix();
    //translate(width/2, height/2.5, 0);
    //rotateY(frameCount * 0.005); 
    //shape(globe);
    //    //fill(220, 180, 100);

    //sphere(160);
    popMatrix();
  }

  // FIXED FUNCTION: Correctly scales UV fractions without crushing them to 0
  void initializeGlobe(float radius) {
    globe = createShape(SPHERE, radius);
    globe.setTexture(tex);

    for (int i = 0; i < globe.getVertexCount(); i++) {
      PVector v = globe.getVertex(i);

      float longitude = atan2(v.x, v.z);
      float latitude = asin(v.y / radius);

      // FIXED: Removed int() casting so coordinates remain smooth decimals between 0.0 and 1.0
      float u = (longitude + PI) / TWO_PI;
      float vCoord = (latitude + HALF_PI) / PI;

      globe.setTextureUV(i, u, vCoord);
    }
  }
}
