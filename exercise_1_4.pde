import java.util.Random;
Random generator;

float x;
float y;
float z;
float zx;
float zy;

void setup() {
  size(500, 500);
  background(50);
  generator = new Random();
}

void draw() {

  float numX = (float) generator.nextGaussian();
  float numY = (float) generator.nextGaussian();

  float sd = 60;
  float mean = 250;

  z = random(0, 20);
  zx = random(2, 5);
  zy = random(2, 5);

  noStroke();
  fill(255, 255, 0);
  ellipse(numX*sd+mean, numY*sd+mean, z+zx, z+zy);
}
