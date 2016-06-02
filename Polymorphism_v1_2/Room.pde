
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

  boolean intersection(Room r1, Room r2) {
    if (r1.xRoomPosition > r2.xRoomPosition + r2.roomWidth ||
      r1.xRoomPosition + r1.roomWidth < r2.xRoomPosition ||
      r1.yRoomPosition > r2.yRoomPosition + r2.roomHeight ||
      r1.yRoomPosition + r1.roomHeight < r2.yRoomPosition) {
      return false;
    }
    return true;
  }
}
