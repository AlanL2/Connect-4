void instructions(){ //Page for writing instructions for the user to read
  background(30,144,255); 
  fill(255,215,0);
  textSize(60);
  text("INSTRUCTIONS",150,60); 
  textSize(30);
  text("This is a two player game which you win by getting four in a row horizontally, vertically or diagonally first.", 20,100,800,370);
  text("Use your mouse to move around the columns and click to drop a counter.",20,250, 800,350);
  text("When it is your turn, drop one of your counters at the top of the grid. Then, it is your opponent's turn.",20,350,800,450);
  text("Press anywhere to return to the menu.",100,475);
}
