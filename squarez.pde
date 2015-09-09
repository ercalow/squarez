int canvasSize = 500;

//number of sets
int numberOfSquares = 11;
float squareSize = canvasSize/numberOfSquares;

//number of concentric squares
int numConcSquares = 3; //not including outer square
float divider = squareSize/((numConcSquares + 1) * 2);

//displacement of individual squares
int displacement = 10; 

//% chance a square won't be drawn
float chance = .7;

void setup() {
  size(canvasSize, canvasSize);
  background(255);
  rectMode(CORNERS);
  noFill();
  
  for (int i=0; i<numberOfSquares; i++) {
    for (int j=0; j<numberOfSquares; j++) {
      //outer square
      float randomNumber1 = random(-displacement,displacement);
      float xPos = j + (j*squareSize) + randomNumber1;
      float yPos = i + (i*squareSize) + randomNumber1;
      float chanceNum1 = random(0, 1);
      if (chanceNum1 > chance) {
        rect(xPos, yPos, xPos+squareSize, yPos+squareSize);
      }
      //concentric squares
      for (int k=0; k<numConcSquares; k++) {
        float randomNumber2 = random(-displacement,displacement);
        float topX = (divider + k*divider) + (j*squareSize) + j + randomNumber2; 
        float topY = (divider + k*divider) + (i*squareSize) + i + randomNumber2;
        float bottomX = (squareSize - divider - k*divider) + (j * squareSize) + j + randomNumber2;
        float bottomY = (squareSize - divider - k*divider) + (i * squareSize) + i + randomNumber2;
        
        float chanceNum2 = random(0, 1);
      if (chanceNum2 > chance) {
        rect(topX, topY, bottomX, bottomY);
      }
      }
    }
  }
  

}
 
  
  
  
 
