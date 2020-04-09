void draw(){
  if(state.equals("splash")){  //Checks if the current state is the splash screen
    splashScreen(); //Goes to splash screen
  }
  else if(state.equals("menu")){ //Checks if the current state is the menu if it is not at the splash screen
    mainMenu(); //Calls for menu page
  }
  else if(state.equals("instructions")){ //If not at menu either, checks if state is at the instructions page
    instructions(); //Calls for method to go to instructions page
  }
  else if(state.equals("display")){ //If the state is at the game phase
    display(); //Calls for method to start game
  }
  else if(state.equals("goodbye")){ //If the user wants to exit
    goodbye(); //Goes to the page to ask if you are sure that you want to exit
  }
  else if(state.equals("win")){ //If one user has won
    winMessage(); //Calls method to print out the winning message
  }
  else if(state.equals("exit")){ //The user has confirmed exit
    delay(3000); //Stop 3 seconds to write down credits 
    exit(); //https://processing.org/reference/exit_.html
    //Exits out of the program
  }
}
