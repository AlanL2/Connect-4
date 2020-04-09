void checkWin(){
  boolean gameWon = false; //Game has not been won yet
  for(int i = 0; i<6; i++){ //Checking for wins by rows
    for(int j = 0; j<4; j++){
      if(board[j][i]==board[j+1][i]&&board[j+1][i]==board[j+2][i]&&board[j+2][i]==board[j+3][i]&&board[j][i]!=0){
        //Setting all of the winning counter places
        x1 = j*70+190;
        y1 = 65*i+120;
        x2 = x1+70;
        y2 = y1;
        x3 = x2+70;
        y3 = y1;
        x4 = x3+70;
        y4 = y1;
        gameWon = true; //Game has been won
        break; //https://processing.org/reference/break.html
        //Stops checking for efficiency
      }
    }
    if(gameWon)break; //If the game is already won no need to keep going
  }
  for(int i = 0; i<7; i++){ //Checking for wins by Columns now since no wins by rows if code has gotten here
    for(int j = 0; j<3; j++){
      if(board[i][j]==board[i][j+1]&&board[i][j+1]==board[i][j+2]&&board[i][j+2]==board[i][j+3]&&board[i][j]!=0){
        //Setting values of winning coordinates
        x1 = i*70+190; 
        y1 = 65*j+120; 
        x2 = x1; 
        y2 = y1+65;
        x3 = x1; 
        y3 = y2+65;
        x4 = x1; 
        y4 = y3+65;
        gameWon = true; //Game has been won
        break; //Stop checking for efficiency
      }
    }
    if(gameWon)break; //No need to keep going
  }
  //Now checking by diagonals
  for(int i = 0; i<3; i++){
    for(int j = 0; j<4; j++){ //First check diagonals from bottom left to top right
      if(board[j][i]==board[j+1][i+1]&&board[j+1][i+1]==board[j+2][i+2]&&board[j+2][i+2]==board[j+3][i+3]&&board[j][i]!=0){
        //Winning counter places
        x1 = j*70+190;
        y1 = 65*i+120;
        x2 = x1+70;
        y2 = y1+65;
        x3 = x2+70;
        y3 = y2+65;
        x4 = x3+70;
        y4 = y3+65;
        gameWon = true;
        break;
      }
    }
  }
  for(int i = 0; i<4; i++){ //now check from top left to bottom right
    for(int j = 5; j>=3; j--){
      if(board[i][j]==board[i+1][j-1]&&board[i+1][j-1]==board[i+2][j-2]&&board[i+2][j-2]==board[i+3][j-3]&&board[i][j]!=0){
        //Winning counter placements
        x1 = i*70+190; 
        y1 = 65*j+120; 
        x2 = x1+70;
        y2 = y1-65;
        x3 = x2+70;
        y3 = y2-65;
        x4 = x3+70;
        y4 = y3-65;
        gameWon = true; //Game won
        break; //Stop checking
      }
    }
  }
  if(gameWon){ //If game has been found to be won
    state = "win"; //Go to winning method and show that user has won
  }
  gameDrawn = true; //check if all squares have been occupied by counters
  if(gameWon)gameDrawn = false; //if game has been won then it can't be drawn
  else{
    for(int i = 0; i<6; i++){
      for(int j = 0; j<7; j++){
        if(board[j][i]==0){ //checks if there are still empty tiles
          gameDrawn = false; //If there are empty tiles then it is not false yet
          break; //No need to keep on checking
        }
      }
      if(gameDrawn==false)break; //Get out of for loop
    }
  }
  if(gameDrawn)state = "win"; //Still goes to the winning state since the winning state also checks for draws
}
