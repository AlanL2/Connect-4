void mouseReleased(){
  if(state.equals("menu")&&mouseX>=250&&mouseX<=550&&mouseY>=200&&mouseY<=275){ //If pressed on Play button
    state = "display"; //Change state to display to begin game
    prevX = new ArrayList<Integer>(); //List of X positions of the previous counters placed
    prevY = new ArrayList<Integer>(); //List of Y positions of the previous counters placed
  }
  if(state.equals("menu")&&mouseX>=250&&mouseX<=550&&mouseY>=300&&mouseY<=375){ //If pressed on Instructions button
    state = "instructions"; //Change state to instructions to show instructions page
  }
  else if(state.equals("instructions")){ //If you are already on the instructions page as long as the mouse is pressed
    state = "menu"; //Go to menu
  }
    if(state.equals("display")){ //During the game phase
    counterPlayed = false; //No counter has been played yet
    if(mouseX>=20&&mouseX<=130&&mouseY>=380&&mouseY<=470)state = "menu";
    else if(mouseX>=675&&mouseX<=780&&mouseY>=250&&mouseY<=340){
      if(!prevX.isEmpty()){ //If prevX arraylist is empty, then prevY arraylist must also be empty as they take coordinates at the same time
        board[prevX.get(prevX.size()-1)][prevY.get(prevY.size()-1)] = 0; //Set the last counter played to nothing
        turn*=-1; //Goes back to the player's turn
        fill(211); 
        ellipse(190+70*prevX.get(prevX.size()-1),65*prevY.get(prevY.size()-1)+120,60,60); //Filling the ellipse back to no colour
        prevX.remove(prevX.size()-1); //Remove that index as there is nothing there anymore
        prevY.remove(prevY.size()-1);  //Remove that index as there is nothing there anymore
      }
    }
    else if(mouseX>=130&&mouseX<230){ //If it is in the first row
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[0][i]==0){ //If that hole of the column has nothing there
          prevX.add(0); prevY.add(i); //It is now the most recent counter played
          ellipse(190,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[0][i]=1; //1 represents a red counter
          else board[0][i]=2; //2 represents a yellow counter
          counterPlayed = true;  //Counter has now been played
          break; //https://processing.org/reference/break.html
          //Get ready for next placement of counter
        }
      }
    }
    else if(mouseX>=230&&mouseX<300){ //If it is in the second row
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[1][i]==0){ //If that hole of the column has nothing there
          prevX.add(1); prevY.add(i); //It is now the most recent counter played
          ellipse(260,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[1][i]=1; //1 represents a red counter
          else board[1][i]=2; //2 represents a yellow counter
          counterPlayed = true; //Counter has now been played
          break; //https://processing.org/reference/break.html
        }
      }
    }
    else if(mouseX>=300&&mouseX<370){
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[2][i]==0){ //If that hole of the column has nothing there
          prevX.add(2); prevY.add(i); //It is now the most recent counter played
          ellipse(330,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[2][i]=1; //1 represents a red counter
          else board[2][i]=2; //2 represents a yellow counter
          counterPlayed = true; //Counter has now been played
          break; //https://processing.org/reference/break.html
        }
      }
    }
    else if(mouseX>=370&&mouseX<440){
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[3][i]==0){ //If that hole of the column has nothing there
          prevX.add(3); prevY.add(i); //It is now the most recent counter played
          ellipse(400,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[3][i]=1; //1 represents a red counter
          else board[3][i]=2; //2 represents a yellow counter
          counterPlayed = true; //Counter has now been played
          break; //https://processing.org/reference/break.html
        }
      }
    }
    else if(mouseX>=440&&mouseX<510){
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[4][i]==0){ //If that hole of the column has nothing there
          prevX.add(4); prevY.add(i); //It is now the most recent counter played
          ellipse(470,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[4][i]=1; //1 represents a red counter
          else board[4][i]=2; //2 represents a yellow counter
          counterPlayed = true; //Counter has now been played
          break; //https://processing.org/reference/break.html
        }
      }
    }
    else if(mouseX>=510&&mouseX<580){
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[5][i]==0){ //If that hole of the column has nothing there
          prevX.add(5); prevY.add(i); //It is now the most recent counter played
          ellipse(540,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[5][i]=1; //1 represents a red counter
          else board[5][i]=2; //2 represents a yellow counter
          counterPlayed = true; //Counter has now been played
          break; //https://processing.org/reference/break.html
        }
      }
    }
    else if(mouseX>=580&&mouseX<650){
      for(int i = 5; i>=0; i--){ //Checks from bottom to top for that column 
        if(board[6][i]==0){ //If that hole of the column has nothing there
          prevX.add(6); prevY.add(i); //It is now the most recent counter played
          ellipse(610,65*i+120,60,60); //Draws the counter over the hole
          if(turn==1)board[6][i]=1; //1 represents a red counter
          else board[6][i]=2; //2 represents a yellow counter
          counterPlayed = true; //Counter has now been played
          break; //https://processing.org/reference/break.html
        }
      }
    }
    if(counterPlayed==true){ //If the counter has been played
      turn*=-1; //Switch turns
      checkWin(); //Check for a possible win
    }
    if(start==true){ //If the game just started
      turn = 1; //Red starts first
      background(211); 
      fill(0,0,255); noStroke();
      rect(140,80,650,480); //Main blue board
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
      start = false; //Game design has now been finished
      board = new int[7][6]; //Reset array
    }
  }
  else if(state.equals("win")&&mouseX>=250&&mouseX<=550&&mouseY>=300&&mouseY<=375){ //If game has been won and pressed on back to menu button 
    state = "menu"; //Go back to menu
  }
}
