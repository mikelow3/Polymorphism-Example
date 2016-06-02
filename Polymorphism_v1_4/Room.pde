
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
         return(xRoomPosition > s1.getxPosition() + s1.getWidth() ||
         xRoomPosition + roomWidth < s1.getxPosition() ||
         yRoomPosition > s1.getyPosition() + s1.getHeight() ||
         yRoomPosition + roomHeight < s1.getyPosition());
       }
       
       else if(s1 instanceof Zombie)
       {
          float circleDistanceX = abs(getxPosition() - xRoomPosition - roomWidth/2);
          float circleDistanceY = abs(getyPosition() - yRoomPosition - roomHeight/2);
 
          if (circleDistanceX > (roomWidth/2 + getRadius())) { return false; }
          if (circleDistanceY > (roomHeight/2 + getRadius())) { return false; }
 
          if (circleDistanceX <= (roomWidth/2)) { return true; }
          if (circleDistanceY <= (roomHeight/2)) { return true; }
 
          float cornerDistance_sq = pow(circleDistanceX - roomWidth/2, 2) +
          pow(circleDistanceY - roomHeight/2, 2);
 
          return (cornerDistance_sq <= pow(getRadius(),2));
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

    float getWidth() {  
    return roomWidth;
     }

    float getHeight() {  
    return roomHeight;
     }
  
  
  
  
  
}