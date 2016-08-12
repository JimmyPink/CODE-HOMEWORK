float r = 50;
float theta = 0;
//float x;
//float y;
PVector position;
void setup(){
  size(800, 500);
  background(0);
  smooth();
  
  position = new PVector (width/2 , height/2);

  //x = r*cos(theta);
  //y = r*sin(theta);
}

void draw(){
  fill(0,10);
  rect(100, 100, width, height);
  if (mousePressed){
  crazyCircle( mouseX, mouseY);
  }
  
}
void crazyCircle( int posX, int posY){
  
  position.x = posX;
  position.y = posY;
  
  float x = r*cos(theta);
  float y = r*sin(theta);
  
  //cirle
  fill(0, 255, 255);
  noStroke();
  rect(x+position.x, y+position.y, 30, 40);
  
  theta = theta + 1;
}