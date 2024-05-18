void game(){
 background(255);
 // general background setup
  fill(0);
  rect(0,0,width/2,height);
  fill(0,0,255);
  rect(0,50,width,50);
  fill(255,0,0); 
  fill(255);
  textSize(100);
  text("True",width/4,height/7);
  fill(0);
  text("False",width*3/4,height/7);

 // downcount bar showing how much time you have left before game ends
 fill(255,0,0);
    rect(0,50,gameCount,50);
     gameCount+=10;
  //-------------------------------------------------
  //game ends if counting bar ends
  if(gameCount>=width) mode = end;
  
  
  //displays the word on the screen
  textSize(100);
  fill(displayColor);
  textAlign(CENTER,CENTER);
  textFont(font);
  text(displayString,width/2,height/2);  
}
