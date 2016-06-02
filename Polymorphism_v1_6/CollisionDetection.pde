
/////////////////////////////
//Shape Collision Detection//
/////////////////////////////

  void shapeCollision(ArrayList<Shape> listOfShapes, int numOfShapes){
  int noOfShapeCollisions = 0;
  
  // Detector d1 = new Detector();
  
  while (listOfShapes.size() < numOfShapes) {  
    
    boolean shapeCollisonDetected = false;
    Shape tempShape = createShapeZ();
    
    for (int i=0; i<listOfShapes.size(); i++) { 
      Shape currentShape = listOfShapes.get(i);
      
      //if(d1.checkCollison(tempshape, currentShape))
      
      if(currentShape.checkCollision(tempShape)){
        shapeCollisonDetected = true;
       noOfShapeCollisions = noOfShapeCollisions + 1;
       println("Collision: " + noOfShapeCollisions);
        break;
           }
        }
    if (shapeCollisonDetected == false) { //if no collision then add a shape
      listOfShapes.add(tempShape);
    }
  }
  println("Total Number of Collisions: " + noOfShapeCollisions);
  }
 
  /*
  Shape createShapeZ(){
   return new Room(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 40, 40, color(0, 0, 255));
   return new Zombie(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 20, color(255,0,0));  
  }
  */
  
  
  Shape createShapeZ(){
   float r = random(1);
   //50% chance of adding each kind of shape.
   println(r);
    if (r > 0.5) {
    //listOfShapes.add(new Room(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 40, 40, color(0, 0, 255)));
     return new Room(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 40, 40, color(0, 0, 255));
     
    } 
    
    else {
     return new Zombie(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 20, color(255,0,0)); //<>//

   // listOfShapes.add(new Zombie(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 20, color(255,0,0)));
    }
  //  return Shape;
   }
 
 
