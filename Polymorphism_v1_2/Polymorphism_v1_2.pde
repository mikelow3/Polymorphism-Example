
// declare a 2d array to hold Tile datatypes
Tile[][] board;

//ArrayList<Wall> listOfWalls;
//ArrayList<Zombie> listOfZombies;
//ArrayList<Room> listOfRooms;
ArrayList listOfShapes;
//Player player1;


// initialise global variables for the number of columns and rows required for the board
//int tilesOnBoard = 10;                             
int boardcols = 10;
int boardrows = 10;


// initialise global variables for tile width, height and tile colour
float tileW = 40;                             
float tileH = 40;

// declare varibales for board colour
int tileFiller = 200;

//float distance; 
//boolean zCollisonDetected; //to detect whether a zombie collison is true or false
//boolean rCollisonDetected; //to detect whether a zombie collison is true or false

void setup() {

  size(480, 480);
  // background(255);

  // initialise the array to hold Tile objects - number of columns and rows on the board
  board = new Tile[boardcols][boardrows];

//  player1 = new Player(50, 25, 10, 10, color(0, 0, 255));

  listOfShapes = new ArrayList<Shape>();
  int numOfShapes = 20;
  
  while (listOfShapes.size() < numOfShapes) {  
    float r = random(1);
    //50% chance of adding each kind of shape.
    if (r < 0.5) {
      listOfShapes.add(new Room(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 40, 40, color(0, 0, 255)));
    } else {
      listOfShapes.add(new Zombie(random(tileW*1.5, width-tileW*1.5), random(tileH*1.5, height-tileH*1.5), 20, color(255,0,0)));
    }
  }

  
/*
  //Zombie Collision Function//
  listOfZombies = new ArrayList<Zombie>();
  int zombieSize = 20;
  zombieCollision(listOfZombies,zombieSize);

  //Rooms Collosion Function//
  listOfRooms = new ArrayList<Room>();
  int roomSize=10;
  roomCollision(listOfRooms,roomSize);
*/

  // nested for loop used to store number of columns and rows in the board array 
  for (int i=0; i < boardcols; i ++) {
    for (int j=0; j < boardrows; j ++) {

      // initialise each Tile object using the number of columns and rows stored in the array's  
      board[i][j] = new Tile(i*40+40, j*40+40, tileW, tileH, tileFiller);
    }
  }
}


void draw () {

  background(255);
  //player1.displayPlayer();

  //initialise main board
  for (int i = 0; i < boardcols; i ++) {
    for (int j = 0; j < boardrows; j ++) {
      board[i][j].displayTile();
    }
  }
  
//  for (Shape a: listOfShapes) {
//    println(listOfShapes);
//  a.display();
//}

  for (int i=0; i<listOfShapes.size(); i++) {          // Loop through the ArrayList listOfZombies, size determined by variable zombieSize
    Shape thisShape = (Shape)listOfShapes.get(i);         // Get a reference to the current Zombie and store it in thisZombie
    thisShape.display();              // 
  }
/*
  for (int i=0; i<listOfZombies.size(); i++) {          // Loop through the ArrayList listOfZombies, size determined by variable zombieSize
    Zombie thisZombie = listOfZombies.get(i);         // Get a reference to the current Zombie and store it in thisZombie
    thisZombie.displayZombie();              //
  }

  for (int i=0; i<listOfRooms.size(); i++) {          // Loop through the ArrayList listOfRoom, size determined by variable roomSize
    Room thisRoom = listOfRooms.get(i);         // Get a reference to the current Room and store it in thisRoom
    thisRoom.displayRoom();              //
  } 
*/

  //player1.displayPlayer();
}
