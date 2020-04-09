ArrayList<Integer>prevX, prevY; //https://processing.org/reference/ArrayList.html
void display(){ //Game DISPLAY
  shape(topRow); //Resets top row for temporary counters
  fill(255);
  rect(0,0,140,75); //Box for red's score
  rect(650,0,800,75); //Box for yellow's score
  textSize(20);
  fill(255,0,0);
  text("Red Score:"+redScore,0,50); //Show's red's score
  fill(240,230,140);
  text("Yellow Score:"+yellowScore,650,50); //Shows yellow's score
  stroke(30,144,255);
  fill(255);
  rect(675,400,780,490); //White box that surrounds the Player turn
  fill(0,0,255);
  rect(680,405,775,425,30); //Rectangle around Player turn to make it visible
  textSize(15); fill(255); //Filling in colour for text and setting size
  text("Player Turn:",685,420); //Prints player turn to the screen
  //Undo Box
  if(mouseX>=675&&mouseX<=780&&mouseY>=250&&mouseY<=340)fill(30,144,255);
  else fill(0,0,255);
  rect(675,250,780,340); //Box that you can press to undo a move
  fill(255);
  textSize(30);
  text("Undo",685,300);
  //Menu Box on Left Side
  if(mouseX>=20&&mouseX<=130&&mouseY>=380&&mouseY<=470)fill(30,144,255);
  else fill(0,0,255);
  rect(20,380,130,470); //Box to press to go back to menu
  fill(255);
  text("Menu",30,425);
  //Colours and temporary counters
  noStroke();
  if(turn==1){ //If it is currently red's move
    fill(255,0,0); //Fill red
    ellipse(725,455,50,50); //And label it as red's move!
  }
  else{ //Or if it's currently yellow's move
    fill(255,255,0); //Fill yellow
    ellipse(725,455,50,50); //And label it as yellow's move!
  }
  if(mouseX>=160&&mouseX<230){ //If mouse is over first row
    ellipse(190,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else if(mouseX>=230&&mouseX<300){ //Else if mouse is over second row
    ellipse(260,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else if(mouseX>=300&&mouseX<370){ //Else if mouse is over third row
    ellipse(330,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else if(mouseX>=370&&mouseX<440){ //Else if mouse is over fourth row
    ellipse(400,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else if(mouseX>=440&&mouseX<510){ //Else if mouse is over fifth row
    ellipse(470,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else if(mouseX>=510&&mouseX<580){ //Else if mouse is over 6th row
    ellipse(540,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else if(mouseX>=580 && mouseX<650){ //Else if mouse is over seventh row
    ellipse(610,40,60,60); //Show temporary counter over the row to represent which row the counter is going to be put in
    cursor(HAND); //https://processing.org/reference/cursor_.html 
    //Shows the hand cursor just for aesthetics, showing that you can click
  }
  else{ //Not over any rows 
    cursor(ARROW); //If there is nothing to click go back to arrow cursor
  }
}
