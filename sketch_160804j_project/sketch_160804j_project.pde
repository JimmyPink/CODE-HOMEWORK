float yPos;
float vel;
float size;

String p= "you will be going to coder prison";


void setup(){ 
    println("Hi there! This is Jenny from your NSA, can I take a quick look in your computer, (a simple yes or no will do)");
    println(" PLEASE press y for yes OR n for no");
    
  size(900, 250);
  background(0);
  
 vel = 4;
yPos = 0;


}

void draw(){
  fill(0, 10);
  ellipse(0, 0, width, height);
  
    moveDrop();
  
  makeDrop(width/4, 5);
  makeDrop(2*width/4, 25);
  
  size = calculateSize(mouseX/16, mouseY/8);
  makeDrop(width/4, size+1);

  triangle(20,100,30,200,60,20);
  stroke(255);
  line(0,150,100,0);
  line(150,0,100,200);
  line(150,0,200,200);

}

void keyPressed(){
  if(key == 'y'){
    println("YES, That's Great! You are a great citizen! Just give me a minute as I am looking through your files.....");
    println("Oh my, I see.  Um, can you hang on, I just need to get Carl, my supervisor.");
    println("Hi, this is Carl did you know that you used processing,org extensively over the past 4 days?  just press 5(yes) or 6(no)");
  //  y - OK to look in computer
     
  
  }else if(key == 'n'){
    println(" OK um, please hang on, I really need to get Carl, my supervisor...");
    println("This is Carl, you are a real peice of work, you just made Jenny cry, NOW are you going to let us look in your computer or not.");
    println("just type 1 for YES or 2 for no ");
  // ny
  }  
    else if(key == '1'){  //yes
    println("OK, I'm glad you had a change of heart. Please give me a minute.... We knew it! Did you know that you used processing,org extensively over the past 4 days?");
    println("just press 3 for YES and 4 for NO");
    
    } 
    else if(key == '2'){
      println("OK no problem, but we looked into it anyway, and guess what,");
      println(p);
    }
    if(key == '3'){
      println("Since you are admitting to it, we will be lenient, But Processing.org is a problem for you."); 
      println(p);
    }
    
    else if(key =='4'){
      println("We find this hard to believe as there seems to be a lot of CODE on your computer.");
      println(p);
      
    }
    if (key == '5'){
      println("Since you are admitting to it, we will be lenient, But Processing.org is a problem for you.");
      println(p);
    
    }
      else if (key == '6'){
        println("We find this hard to believe as there seems to be a lot of CODE on your computer."); 
        println(p);
        
      }
     
  
  

}



void moveDrop(){
  yPos += vel;  // yPos = yPos + vel mens the same thing
  
  if(yPos > height|| yPos<0){
    vel = vel* -1;  // vel= -vel
  }


}

void makeDrop(float xPos, float size){
    int r = (int)xPos;
    int g = (int)yPos;
    
    if(r>255){
      r = 100;
    }
    if(g>255){
      g = 100;
    }

    noStroke();
    fill(r, g, 227);
    
    
  ellipse(xPos, yPos, size, size);
}

float calculateSize(float x1, float y1){
  
  float s = x1 + y1;
  return s;

}