void goodbye(){
  background(30,144,255);
  fill(255);
  stroke(255);
  text("Are you sure you want to quit?",75,50);
  if(mouseX>=150&&mouseX<=250&&mouseY>=200&&mouseY<=250||mouseX>=550&&mouseX<=650&&mouseY>=200&&mouseY<=250){ //If mouse is hovering over any of the buttons
    cursor(HAND);
  }
  else cursor(ARROW);
  if(mouseX>=150&&mouseX<=250&&mouseY>=200&&mouseY<=250){//Yes
      fill(192); 
      rect(150,200,250,250);
      fill(128); 
      if(mousePressed){
        state = "exit"; //If confirm exit then state is now exit, proceed to leave program from draw
      }
    }
    else{
      fill(128);
      rect(150,200,250,250);
    }
    if(mouseX>=550&&mouseX<=650&&mouseY>=200&&mouseY<=250){ //No
      fill(192);
      rect(550,200,650,250);
      if(mousePressed)state = "menu"; //If pressed no go back to menu
    }
    else{
      fill(128);
      rect(550,200,650,250);
    }
  fill(255);
  stroke(255);
  text("Yes",160,240);
  text("No",575,240);
  if(state.equals("exit")){ //State is now about to exit
    fill(30,144,255);
    rect(0,0,800,500); //clear
    textAlign(CENTER);
    fill(255);
    text("Thanks for Playing! This Program was created by Alan Li as a game for the Toronto District School Board.",75,50,700,450);
  }
}
