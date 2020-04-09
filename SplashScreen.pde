boolean finished = false, colour = true; //if colour is true then it is red, false is yellow
boolean titleDone = false, titleShift = false; //titleDone represents if the text was shown on the screen or not, and titleShift represents if the title has shifted or not.
boolean[]splashTitle = new boolean[9]; //Title separated into characters and used to check if the ellipse has gone over that character or not
boolean switchingColour = true; //To cycle between red and yellow in the dropping animation of counters, true is red and false is yellow
int transparency = 0, loadingCounter = 0; //transparency represents the transparency of text, loadingCounter represents how many periods there are in the Loading... screen
int circleY = 0, circleX = 185, direction = 10; //Direction is which direction the ellipse is going in, circleX is the x position of the ellipse, circleY is the y position of the ellipse 
int titleY = 250; //represents the current y of the title, changes to represent animation
int adder = 0; //Make the counters go downwards, must add values to it. Adder will increase by 5 everytime so the counters can move down
void splashScreen(){
  if(titleDone==false){ //Title has not been created yet
    background(30,144,255);
    if(colour==true)fill(255,0,0);
    else fill(255,255,0);
    ellipse(circleX+30,circleY,65,65);
    fill(255,255,0);
    if(circleY==250)splashTitle[(circleX-185)/50] = true;
    if(splashTitle[0]==true){
      fill(255,0,0);
      textSize(75);
      text("C",185,250);
    }
    if(splashTitle[1]==true){
      fill(255,255,0);
      text("O",235,250);
    }
    if(splashTitle[2]==true){
      fill(255,0,0);
      text("N",285,250);
    }
    if(splashTitle[3]==true){
      fill(255,255,0);
      text("N",335,250);
    }
    if(splashTitle[4]==true){
      fill(255,0,0);
      text("E",385,250);
    }
    if(splashTitle[5]==true){
      fill(255,255,0);
      text("C",425,250);
    }
    if(splashTitle[6]==true){
      fill(255,0,0);
      text("T",485,250);
    }
    if(splashTitle[7]==true){
      fill(255,255,0);
      text("4",565,250);
    }
    circleY+=direction;
    if(circleY>500||circleY<-35&&titleDone==false){
      if(circleX==485)circleX+=80;
      else if(circleX==565)titleDone = true;
      else circleX+=50;
      colour = !colour;
      direction*=-1;
    }
  }
  else if(titleShift==false){
    background(30,144,255);
    fill(255,0,0);
    text("C",185,titleY);
    text("N",285,titleY);
    text("E",385,titleY);
    text("T",485,titleY);
    fill(255,255,0);
    text("O",235,titleY);
    text("N",335,titleY);
    text("C",425,titleY);
    text("4",565,titleY);
    if(titleY<75){
      titleShift = true;
    }
    else titleY-=5;
  }
  else{
    background(30,144,255);
    //Keep printing the title
    fill(255,0,0);
    text("C",185,titleY);
    text("N",285,titleY);
    text("E",385,titleY);
    text("T",485,titleY);
    fill(255,255,0);
    text("O",235,titleY);
    text("N",335,titleY);
    text("C",425,titleY);
    text("4",565,titleY);
    //Print out board for splash screen
    fill(0,0,255); noStroke();
    rect(140,80,650,480); //Board for splash screen
    fill(211);
    int y = 0;
    for(int i = 0; i<6; i++){ //Drawing out all of the holes
      int x = 0;
      for(int j = 0; j<7; j++){
        ellipse(x+190,y+120,60,60);
        x+=70;
      }
      y+=65;
    }
    //Move the counters downwards
    int y1 = 0; y1+=adder;
    for(int i = 0; i<6; i++){ //Filling in the holes with counters to make a good animation
      int x = 0;
      for(int j = 0; j<7; j++){
        if(switchingColour==true){
          fill(255,0,0);
          switchingColour = !switchingColour;
        }
        else{
          fill(255,255,0);
          switchingColour = !switchingColour;
        }
        ellipse(x+190,y1+120,60,60);
        x+=70;
      }
      y1+=65;
    }
    adder+=5;
    if(y1>900)finished = true;
  }
  if(finished)state = "menu";
}
