/*
Alan Li
Connect 4 ISP
Mrs.Basaraba
May 21, 2019
The purpose of this program is to allow two players to play a game of connect 4 against each other.
*/
String state = "splash"; //Keeps track of which state the program is on, and will change as the players press buttons to change pages
PImage redTeam, yellowTeam;
PShape topRow; //https://processing.org/reference/PShape.html
//Top row is used to keep clearing the top row so it can clearly show which row the counter is at.
boolean start = true; //just started
boolean firstAdd = true; //checks if win was already given
boolean counterPlayed = false; //checks if a counter was played or not
boolean gameDrawn = true; //Checks if game is drawn, if there is a current win gameDrawn will be set to false.
int turn = -1; //1 is red, -1 is yellow
int redX = -50, yellowX = 850; //Used for animation to move in the two PImages
int[][]board; //2d Array used to keep track of which counters have already been filled by which colour
int redScore = 0, yellowScore = 0; //Scores of red and yellow and increase each time when they win a game.
int x1, y1, x2, y2, x3, y3, x4, y4; //Used to represent flashing when a player wins.
int row1Y, row2Y, row3Y, row4Y, row5Y, row6Y, row7Y;
void setup(){
  size(800,500);
  background(255,250,205);
  textSize(45);
  stroke(0); 
  fill(255,215,0);
  smooth();
  rectMode(CORNERS);
  redTeam = loadImage("red.png");
  yellowTeam = loadImage("yellow.png");
  redTeam.resize(100,100); //https://processing.org/reference/PImage_resize_.html
  yellowTeam.resize(100,100); //https://processing.org/reference/PImage_resize_.html
  //Resizing the image to 100 * 100 pixels so it can fit in my main menu
  topRow = createShape(RECT,140,0,650,80); //Creates a rectangle to cover the top area
  topRow.setFill(211); //https://processing.org/reference/PShape_setFill_.html 
  //Sets fill to gray
  topRow.setStroke(false); //https://processing.org/reference/PShape_setStroke_.html
  //No stroke
}
void mainMenu(){
  //Main Menu Drawing
  start = true; firstAdd = false; //Resets start to true everytime to show that the game is resetting and just about to start
  board = new int[7][6]; //2d array used to represent the things being used 
  x1 = 0; y1 = 0; x2 = 0; y2 = 0; x3 = 0; y3 = 0; x4 = 0; y4 = 0; //Resets the 4 coordinates that are used to find the 4 winning counters
  background(30,144,255);
  stroke(0,0,255);
  if((mouseX>=250&&mouseX<=550&&mouseY>=200&&mouseY<=275)||(mouseX>=250&&mouseX<=550&&mouseY>=300&&mouseY<=375)||(mouseX>=250&&mouseX<=550&&mouseY>=400&&mouseY<=475)){
    //Checks if the mouse is hovering over one of the buttons
    cursor(HAND); //https://processing.org/reference/cursor_.html
  }
  else{
    cursor(ARROW); //https://processing.org/reference/cursor_.html
  }
  if(mouseX>=250&&mouseX<=550&&mouseY>=200&&mouseY<=275){ //Play Game
      fill(0,0,205,transparency);
      rect(250,200,550,275,30); //Lighter shade of colour to show that you can click it
      fill(0,0,128);
    }
    else{
      fill(0,0,128,transparency); //Normal shade
      rect(250,200,550,275,30);
    }
    if(mouseX>=250&&mouseX<=550&&mouseY>=300&&mouseY<=375){ //Instructions
      fill(0,0,205,transparency);
      rect(250,300,550,375,30); //Lighter shade of colour to show that you can click it
      fill(0,0,128,transparency);
    }
    else{
      fill(0,0,128,transparency); //Normal shade
      rect(250,300,550,375,30);
    }
    if(mouseX>=250&&mouseX<=550&&mouseY>=400&&mouseY<=475){ //Exit Game
      fill(0,0,205,transparency);
      rect(250,400,550,475,30); //Lighter shade of colour to show that you can click it
      fill(0,0,128,transparency);
      if(mousePressed){ //If clicked the button
        state = "goodbye"; //Go to confirming to exit page
      }
    }
    else{
      fill(0,0,128,transparency); //Normal shade
      rect(250,400,550,475,30);
    }
  //Animation for two PImages
  image(redTeam,redX,250);
  if(redX<100)redX+=5;
  image(yellowTeam,yellowX,250);
  if(yellowX>600)yellowX-=5;
  //PRINTING TITLE 
  textSize(75);
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
  textSize(45);
  fill(255,215,0,transparency);
  text("A Classic Two Player Game",150,150);
  if(transparency<255){
    transparency++;
  }
  text("Play Game",275,250);
  text("Instructions",275,350);
  text("Exit",355,450);
}
