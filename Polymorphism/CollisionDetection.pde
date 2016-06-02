/*
/////////////////////////////
//Rooms Collosion Detection//
  void roomCollision(ArrayList<Room> listOfRooms, int roomSize){
  int noOfRoomCollisions = 0;
  while (listOfRooms.size() < roomSize) {  
    //listOfRooms.add(new Room(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 40, 40, color(0, 0, 255)));
    boolean rCollisonDetected = false;
    Room tempRoom = new Room(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 40, 40, color(0, 0, 255));
    
    for (int i=0; i<listOfRooms.size(); i++) { 
      Room currentRoom = listOfRooms.get(i);
      if(currentRoom.intersection(currentRoom, tempRoom)){
        rCollisonDetected = true;
        noOfRoomCollisions = noOfRoomCollisions + 1;
        println("Room Collision: " + noOfRoomCollisions);
      }
    }
    if (rCollisonDetected == false) { //if no collision then add a zombie
      listOfRooms.add(tempRoom);
    }
  }
  println("Total Room Collisions: " + noOfRoomCollisions);
  }
  
  
  //////////////////////////////
  //Zombie Collosion Detection//
  void zombieCollision(ArrayList<Zombie> listOfZombies, int zombieSize){
  int noOfZombieCollisions = 0; //check number of collisions   
  while (listOfZombies.size() < zombieSize) { 
    //  listOfZombies.add(new Zombie(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 20, color(255,0,0)));
    zCollisonDetected = false; //when there is no collision, exit and draw a zombie
    Zombie tempZombie = new Zombie(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 10, color(255, 0, 0)); //create a zombie object to check 2nd object against 

    for (int i=0; i<listOfZombies.size(); i++) { 
      Zombie currentZombie = listOfZombies.get(i); //get object from arraylist and then compare against tempZombie
      //float distance = checkCollision(currentZombie.getX(), currentZombie.getY(), currentZombie.getR(), tempZombie.getX(), tempZombie.getY(), tempZombie.getR());
      if(currentZombie.checkCollision(currentZombie, tempZombie)){
      //  distance = currentZombie.checkCollision(currentZombie.getX(), currentZombie.getY(), currentZombie.getR(), tempZombie.getX(), tempZombie.getY(), tempZombie.getR());
      //  if (distance < currentZombie.getR() + tempZombie.getR()) {  //check distance between both radius points
        zCollisonDetected = true; //if collison is true then go round loop again, get another zombie object and check against tempZombie object  
        noOfZombieCollisions = noOfZombieCollisions + 1; //counter for checking number of collisons;
        println("Zombie Collision: " + noOfZombieCollisions); 
        break;
      }
    }
    if (zCollisonDetected == false) { //if no collision then add a zombie
      listOfZombies.add(tempZombie);
    }
  }
  println("Total Zombie Collisions: " + noOfZombieCollisions); 
  }
*/ 
  
  