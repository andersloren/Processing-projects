void setup() {
  size(640,360);

}

void draw() {
    background(0);
    
  float x = mouseX;
  float xSize = mouseX;
  float y = mouseY;
  float ySize = mouseY;
  
  
  map(xSize,0,width,0,50);
  map(ySize,0,height,0,50);
  
  
  ellipse(x,y,xSize,ySize);
}
