class Zombie extends Shape {                

  float xZombiePosition;          // declare variable for x position of player
  float yZombiePosition;          // declare variable for y position of player

  float zombieWidth;          // declare variable for tile width
  float zombieHeight;         // declare variable for tile height

  float zombieRadius;        //using radius due to ellipseMode

  color zombieColor;         // declare player color variable 


  Zombie(float initialXPos, float initialYPos, float initialRad, color initialColour) {     

    xZombiePosition = initialXPos;         
    yZombiePosition = initialYPos;
    zombieRadius = initialRad;
    zombieColor = initialColour;
  } 

  void display() {  
    strokeWeight(2);
    stroke(0);
    ellipseMode(RADIUS);
    fill(zombieColor);
    ellipse(xZombiePosition, yZombiePosition, zombieRadius, zombieRadius);
  }

 void message() {
  println("I am a zombie"); 
   }


      boolean checkCollision(Shape s1) 
    { 
       if(s1 instanceof Zombie)
       {
         //checks for overlap of ellipse objects
         return dist(xZombiePosition, yZombiePosition, s1.getxPosition(), s1.getyPosition()) < (zombieRadius)+(s1.getzombieRadius());
       }
       
       else if(s1 instanceof Room)
       {
         //checks for overlap of ellipse/rect objects
          float circleDistanceX = abs(xZombiePosition - s1.getxPosition() - s1.getRoomWidth()/2);
          float circleDistanceY = abs(yZombiePosition - s1.getyPosition() - s1.getRoomHeight()/2);
 
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
    
        
    float getxPosition() {  
      return xZombiePosition;
     }
     
    float getyPosition() {  
      return yZombiePosition;
     }
     
    float getzombieRadius() {  
      return zombieRadius;
     }
           
    
}
