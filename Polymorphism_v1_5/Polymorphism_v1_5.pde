
// declare a 2d array to hold Tile datatypes
Tile[][] board;

//ArrayList<Wall> listOfWalls;
//ArrayList<Zombie> listOfZombies;
//ArrayList<Room> listOfRooms;
ArrayList <Shape>listOfShapes;
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

 //Shape Collision Function//
  listOfShapes = new ArrayList<Shape>();
  int numOfShapes = 10;
  shapeCollision(listOfShapes, numOfShapes);
  

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
  

  for (int i=0; i<listOfShapes.size(); i++) {          // Loop through the ArrayList listOfShapes, size determined by variable numOfShapes
    Shape thisShape = listOfShapes.get(i);         // Get a reference to the current Shape and store it in thisShape
    thisShape.display();
   // thisShape.message(); 
  }


  //player1.displayPlayer();
}