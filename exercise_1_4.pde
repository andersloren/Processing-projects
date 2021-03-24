PImage bg;

import java.util.Random;
Random generator;

float x;
float y;
float z;
float zx;
float zy;

void setup() {
  size(1024, 1024);
  generator = new Random();
  bg = loadImage("floor.png");
  background(100);
}

void draw() {

  float numX = (float) generator.nextGaussian();
  float numY = (float) generator.nextGaussian();
  //  float numZ = (float) generator.nextGaussian();

  float sd = 120;
  float mean = 500;

  z = random(0, 20);
  zx = random(0, 10);
  zy = random(0, 10);

  noStroke();
  fill(numX*sd+350, numY*sd+350, 0, 255);
  ellipse(numX*sd+mean, numY*sd+mean, z+zx, z+zy);
}
