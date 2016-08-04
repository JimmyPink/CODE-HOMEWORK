void setup(){
  size(500, 500);
  background(255);
  

}

void draw(){

   rect(25, 25, 50, 50);
   rect(80, 100, 50, 80);
   rect(130, 25, 50, 50);
   ellipse(100, 225, 100,10);
   ellipse(10,400,200,200);
  } 

void mousePressed (){

  if(mouseButton == LEFT){
    fill(0,255,0);
  } else if(mouseButton == RIGHT){
    fill(153, 0, 0);
  } else {
    fill(126);
}
}