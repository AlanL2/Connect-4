final int scoreIncrease = 1; //Final score increases by 1 every time
boolean yellowOn = false, redOn = false; //redOn and yellowOn used to flash the counters when you win
int winx = 400, winy = 275, winx1 = 400, winy1 = 275; //Coordinates for expanding rectangle
void winMessage(){
  fill(255,255,255,2); noStroke();
  rect(winx,winy,winx1,winy1,30); //Drawing out rectangle
  winx-=10; //Changing values for expanding
  winy-=10; //Changing values for expanding
  winx1+=10; //Changing values for expanding
  winy1+=10; //Changing values for expanding
  textSize(32);
  fill(0);
  if(gameDrawn){ //If game was drawn
    textSize(100);
    text("It's A Draw!",100,150);
    if(!firstAdd){
      redScore+=scoreIncrease;
      yellowScore+=scoreIncrease;
      firstAdd = true;
    }
  }
  else if(turn==1){ //If it was changed to red's turn
    if(!firstAdd){
      yellowScore+=scoreIncrease; //yellow wins so score increases by 1
      firstAdd = true;
    }
    fill(255,255,0); //Animation to make the Counters flash
    //Cite: https://processing.org/discourse/beta/num_1261323787.html
    if(frameCount%5==0){
      if(yellowOn){
        strokeWeight(10);
        stroke(255);
      }
      else{
        noStroke();
        stroke(255,255,0);
      }
      yellowOn = !yellowOn;
    }
    ellipse(x1,y1,60,60);
    ellipse(x2,y2,60,60);
    ellipse(x3,y3,60,60);
    ellipse(x4,y4,60,60);
    fill(0);
    textSize(100);
    text("Yellow Wins!",100,170);
  }
  else{ //Else if it changed to yellow's turn
    if(!firstAdd){
      redScore+=scoreIncrease; //red wins so score increases by 1
      firstAdd = true;
    }
    strokeWeight(3); //Animation to make counters flash
    stroke(255);
    fill(255,0,0);
    if(frameCount%20==0){
      if(redOn){
        strokeWeight(10);
        stroke(255);
      }
      else{
        noStroke();
        stroke(255,0,0);
      }
      redOn = !redOn;
    }
    ellipse(x1,y1,60,60); //draw out ellipses
    ellipse(x2,y2,60,60);
    ellipse(x3,y3,60,60);
    ellipse(x4,y4,60,60);
    fill(0);
    textSize(100);
    text("Red Wins!",150,150);
  }
  noStroke(); strokeWeight(0);
  if(mouseX>=250&&mouseX<=550&&mouseY>=300&&mouseY<=375){ //Drawing out Main Menu Button
    fill(0,0,205); 
    rect(275,300,525,375,30); //If hovering over lighter shade
    fill(0,0,128);
  }
  else{
    fill(0,0,128); //Else normal shade
    rect(275,300,525,375,30);
  }
  textSize(32);
  fill(255,215,0);
  text("Back to Menu",300,337);
}
