//Samuel Deng
// color guessing project
// sept, 15,2021;
// Color guessing game
import java.util.*;

int mode, game, end, menu;
int gameCount;
int random;
int max, min;
int score, highScore;
int displayColorInt, displayStringInt;
color red, green, blue, purple, orange, yellow;
color displayColor;
String wordList []=new String[]{"RED", "GREEN", "BLUE", "PURPLE", "ORANGE", "YELLOW"};
String displayString;
color colorList [];
PImage [] gif;
int frameNum;
PFont font;
Random rand;

void setup() {
  size(1000, 1000);
  gameCount=0;
  score =0;
  highScore = 0;
  mode = 3;
  game = 1;
  end = 2;
  menu = 3;
  rand = new Random();
  red = color(200, 0, 0);
  green = color(0, 200, 0);
  blue = color(0, 0, 200);
  purple = color(#9100FA);
  yellow = color(#FAEE00);
  orange = color(#FA7D00);
  colorList =  new color[]{red, green, blue, purple, orange, yellow};
  min = 0;
  max = 5;
  displayColorInt = (int)Math.floor(Math.random()*(max-min+1)+min);
  displayStringInt = (int)Math.floor(Math.random()*(max-min+1)+min);
  displayColor = colorList[displayColorInt];
  displayString = wordList[displayStringInt];

  // gif
  frameNum = 37;
  gif = new PImage[frameNum];
  for (int i = 0; i<37; i++) {
    gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
  }
  frameNum = 0;

  font = createFont("Starjedi.ttf", 150);
}



void draw() {
  if (mode == menu);
  {
    menu();
  }
  if (mode == game) {
    game();
  }
  if (mode == end) {
    end();
  }
}

void mouseReleased() {
  if (mode == menu) {
    score = 0;
    mode = game;
  }
  
  // game click mechanic
  else if (mode == game) { 

            if (displayStringInt == displayColorInt) { // if the string matches the color
              if ( mouseX<width/2) {
                score++;
                gameCount = 0;
              } else {
                mode = end;
              }
            } else if (displayStringInt != displayColorInt) { // if the string idnt match
              if ( mouseX>=width/2) {
                score++;
                gameCount = 0;
              } else {
                mode = end;
              }
            }
        
            if(rand.nextBoolean()){ // 5050 chance of a true or false puzzle
              displayColorInt = (int)Math.floor(Math.random()*(max-min+1)+min); // makes the string the same as the color
              displayStringInt = displayColorInt;
            }
            else{ // false puzzle
               displayColorInt = (int)Math.floor(Math.random()*(max-min+1)+min); // randomly generates a string and a color
               displayStringInt = (int)Math.floor(Math.random()*(max-min+1)+min);
               while(displayStringInt == displayColorInt){ // this makes sure that the false puzzle doesnt accidentally generate the same color and string
                  displayStringInt = (int)Math.floor(Math.random()*(max-min+1)+min);
               }
            }
            
            displayColor = colorList[displayColorInt];
            displayString = wordList[displayStringInt];
          }
  
  //-------------------------------------------------------------------------------
  else if(mode == end){
     mode = menu; 
     gameCount=0;
  }
}
