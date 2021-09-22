void end(){
  background(255,0,0);
  textAlign(CENTER,CENTER);
  
  //check for new high score
  if(score>highScore){
     highScore = score; 
  }
  
  fill(0);
  text("Score: "+ score,width/2, height/2-50);
  text("highScore: "+ highScore,width/2,height/2+50);
  
}
