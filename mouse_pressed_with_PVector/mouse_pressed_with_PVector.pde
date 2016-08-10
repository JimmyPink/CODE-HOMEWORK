//int w,h;
PVector position;
void setup (){
  size(500, 500);
  //w = width/2;
  //h = height/2;
  position = new PVector(width/2, height/2);
  
}
void draw(){
  background(255);
  
  stroke(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  
  noStroke();
  fill(0);
  
  if(mouseX < position.x && mouseY < position.y){
    rect(0,0, position.x, position.y);
    println("top-left");
    
  }else if (mouseX > position.x && mouseY < position.y){
    rect(width/2, 0, position.x, position.y);
    println("top-right");
    
  }else if (mouseX < position.x && mouseY > position.y){
    rect(0, height/2, position.x, position.y);
    println("bottom-left");
    
  } else if (mouseX < position.x && mouseY > position.y){
    rect(width/2, 0, height/2, position.x, position.y);
    println("top-right");
    
  } else { 
   rect(width/2, height/2, position.x, position.y);
    println("Bottom-right"); 
}

}