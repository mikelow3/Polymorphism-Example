
/*


boolean RoomCollision(Room r1, Room r2) {
    if (r1.xRoomPosition > r2.xRoomPosition + r2.roomWidth ||
      r1.xRoomPosition + r1.roomWidth < r2.xRoomPosition ||
      r1.yRoomPosition > r2.yRoomPosition + r2.roomHeight ||
      r1.yRoomPosition + r1.roomHeight < r2.yRoomPosition) {
      return false;
    }
    return true;
  }
  
  
  boolean ZombieCollision(Zombie z1, Zombie z2) {
    if(dist(z1.xZombiePosition, z1.yZombiePosition, z2.xZombiePosition, z2.yZombiePosition) < (z1.zombieRadius)+(z2.zombieRadius)) 
     {
       return true;
     }
    return false;
  }
  
  boolean ZombieRoomCollision(Rect r1, Circle c1)
    {
    float circleDistanceX = abs(c1.xPosition - r1.xPosition - r1.rectWidth/2);
    float circleDistanceY = abs(c1.yPosition - r1.yPosition - r1.rectHeight/2);
 
    if (circleDistanceX > (r1.rectWidth/2 + c1.circleRadius)) { return false; }
    if (circleDistanceY > (r1.rectHeight/2 + c1.circleRadius)) { return false; }
 
    if (circleDistanceX <= (r1.rectWidth/2)) { return true; }
    if (circleDistanceY <= (r1.rectHeight/2)) { return true; }
 
    float cornerDistance_sq = pow(circleDistanceX - r1.rectWidth/2, 2) +
                         pow(circleDistanceY - r1.rectHeight/2, 2);
 
    return (cornerDistance_sq <= pow(c1.circleRadius,2));
}

*/