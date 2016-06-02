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

  void displayZombie() {  
    strokeWeight(2);
    stroke(0);
    ellipseMode(RADIUS);
    fill(zombieColor);
    ellipse(xZombiePosition, yZombiePosition, zombieRadius, zombieRadius);
  }


 boolean checkCollision(Zombie z1, Zombie z2) {
    if(dist(z1.xZombiePosition, z1.yZombiePosition, z2.xZombiePosition, z2.yZombiePosition) < (z1.zombieRadius)+(z2.zombieRadius)) 
     {
       return true;
     }
    return false;
  }

}