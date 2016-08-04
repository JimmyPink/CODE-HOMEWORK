int w,h;
void setup (){
  size(500, 500);
  w = width/2;
  h = height/2;
  
}
void draw(){
  background(255);
  
  stroke(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  line(0, 150, 500, 150);
  line(350, 0, 350, 500);
  line(150, 500, 0, 500); 
  
  noStroke();
  fill(0);
  
  
  
  
  if(mouseX < w && mouseY < h){
    
    
   ellipse(150, 150, w/4,h/4);
   println("top-left");
   
  }else if (mouseX > w && mouseY < h){
    ellipse(350, 150, w/4,h/4);
    println("top-right");
    
  }else if (mouseX < w && mouseY>h){
    ellipse(150, 350, w/4,h/4);
    println("bottom-left");
    
  } else{
    
    ellipse(350, 350, w/4,h/4);
    println("bottom-right");
    
    
  }    
}

   