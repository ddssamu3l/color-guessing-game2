void menu(){
  background(#FFBE31);
  //gif
  if(frameNum>=gif.length) {
     frameNum = 0; 
  }
  image(gif[frameNum],0,0,width,height);
  
  fill(255);
  textSize(140);
  textAlign(CENTER,CENTER);
  text("COLOR GAME!",width/2,height/2);
  text("Click to Start",width/2,height*2/3);
  
  frameNum++;
}
