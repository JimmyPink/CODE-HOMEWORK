//PImage photo;

String justin[] = {"j11.jpg", "j2.jpg", "j3.jpg", "j4.jpg", "j5.jpg"}; // declarin
PImage imageArray[] = new PImage[5];

void setup(){
  size(800,800);
  //imageArray[0] = loadImage("j1.jpg");
  
  for(int i = 0; i < justin.length; i++){
    imageArray[i] = loadImage(justin[i]);
    
  }
}

void draw(){
  image(imageArray[0], width/2, height/2);
  
  //image(photo, width/4, height/2);
  

}