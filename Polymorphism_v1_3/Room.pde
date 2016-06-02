
class Room extends Shape {                

  float xRoomPosition;          // declare variable for x position of player
  float yRoomPosition;          // declare variable for y position of player

  float roomWidth;          // declare variable for tile width
  float roomHeight;         // declare variable for tile height

  color roomColor;         // declare player color variable 


  Room(float initialXPos, float initialYPos, float initialWidth, float initialHeight, color initialColour) {     // class constructor and arguments for creating the 
    // player object as local variables

    xRoomPosition = initialXPos;
    yRoomPosition = initialYPos;

    roomWidth = initialWidth;
    roomHeight = initialHeight;

    roomColor = initialColour;
  }

  void display() {  

    strokeWeight(4);
    stroke(0);
    rectMode(CENTER);
    noFill();
    rect(xRoomPosition, yRoomPosition, roomWidth, roomHeight);
  }

   void message() {
  println("I am a Room"); 
   }

   boolean checkCollision(Shape s1) 
    { 
       if(s1 instanceof Room)
       {
         return(xRoomPosition > s1.getxRoomPosition() + s1.getRoomWidth() ||
         xRoomPosition + roomWidth < s1.getxRoomPosition() ||
         yRoomPosition > s1.getyRoomPosition() + s1.getRoomHeight() ||
         yRoomPosition + roomHeight < s1.getyRoomPosition());
       }
       
       else if(s1 instanceof Zombie)
       {
          float circleDistanceX = abs(xZombiePosition - s1.getxRoomPosition() - s1.getRoomWidth()/2);
          float circleDistanceY = abs(yZombiePosition - s1.getyRoomPosition() - s1.getRoomHeight()/2);
 
          if (circleDistanceX > (s1.getRoomWidth()/2 + zombieRadius)) { return false; }
          if (circleDistanceY > (s1.getRoomHeight()/2 + zombieRadius)) { return false; }
 
          if (circleDistanceX <= (s1.getRoomWidth()/2)) { return true; }
          if (circleDistanceY <= (s1.getRoomHeight()/2)) { return true; }
 
          float cornerDistance_sq = pow(circleDistanceX - s1.getRoomWidth()/2, 2) +
          pow(circleDistanceY - s1.getRoomHeight()/2, 2);
 
          return (cornerDistance_sq <= pow(zombieRadius,2));
        }
       
       return true;
    }


/*
  boolean intersection(Room r1, Room r2) {
    if (r1.xRoomPosition > r2.xRoomPosition + r2.roomWidth ||
      r1.xRoomPosition + r1.roomWidth < r2.xRoomPosition ||
      r1.yRoomPosition > r2.yRoomPosition + r2.roomHeight ||
      r1.yRoomPosition + r1.roomHeight < r2.yRoomPosition) {
      return false;
    }
    return true;
  }
*/
  
    float getxPosition() {  
    return xRoomPosition;
     }
  
    float getyPosition() {  
    return yRoomPosition;
     }

    float getRoomWidth() {  
    return roomWidth;
     }

    float getRoomHeight() {  
    return roomHeight;
     }
  
  
  
  
  
}
