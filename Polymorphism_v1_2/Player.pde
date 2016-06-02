class Player extends Shape {                

  float xPlayerPosition;          // declare variable for x position of player
  float yPlayerPosition;          // declare variable for y position of player

  float playerWidth;          // declare variable for tile width
  float playerHeight;         // declare variable for tile height

  color playerColor;         // declare player color variable 


  Player(float initialXPos, float initialYPos, float initialWidth, float initialHeight, color initialColour) {     // class constructor and arguments for creating the 
                                                                                                                     // player object as local variables

    xPlayerPosition = initialXPos;
    yPlayerPosition = initialYPos;

    playerWidth = initialWidth;
    playerHeight = initialHeight;

    playerColor = initialColour;
  }

  void displayPlayer() {  
    
    //rectMode(CENTER);
    strokeWeight(2);
    stroke(0);
    
    fill(playerColor);
    rect(xPlayerPosition, yPlayerPosition, playerWidth, playerHeight);
  }
}
