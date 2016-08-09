float x = 100;
float y = 100;
float xspeed = 3;
float yspeed = 6;
color choices[] = {#FF0000, #FF8100, #FFD915, #30EB13, #0B2C79, #4C0679, #FFFFFF, #000000};
 
int  i = 0;
void setup() {
  size(600,400);
  background(0,100,100);
}
 
void draw() {
  background(0,50,50);
 
  x = x + xspeed;
  y = y + yspeed;
  
  
   if ((x > width) || (x <-50)) {  // makes the ball bounce back widthwise
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 100)) { // makes ball bounce back heightwise
    yspeed = yspeed * -1;
  }
 
 for(int i = 0; i < choices.length; i++){ 
  stroke(0,100,100);
  if (mousePressed){
  fill(choices[i]);
  }
//Display the ball at the location (x,y) with size 10 width by 90 height.
  ellipse(x,y,10,90);
 }
}