#include "myLib.h"

// Prototypes
void initialize();
void update();
void draw();

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Background Variables
unsigned short bgColor;

// lose is 1 when someone loses. 0 all other times
int lose;

// Green Circle (ball) Variables
int gRow;
int gCol;
int gOldRow;
int gOldCol;
int gRDel;
int gCDel;
int gHeight;
int gRadius;

// Blue Rectangle Variables
int bRow;
int bCol;
int bOldRow;
int bOldCol;
int bRDel;
int bCDel;
int bHeight;
int bWidth;

// Cyan Rectangle Variables
int cRow;
int cCol;
int cOldRow;
int cOldCol;
int cRDel;
int cCDel;
int cHeight;
int cWidth;

int main() {

	initialize();

	while(1) {

		// Update the button variables each frame
		oldButtons = buttons;
		buttons = BUTTONS;

		// Only run the game if you haven't lost
		if (lose == 0) {
		update();
		waitForVBlank();
		draw();
		}
	}
}

// Sets up the display and the game objects
void initialize() {

	REG_DISPCTL = MODE3 | BG2_ENABLE;

	// Intialize your button variables
	buttons = BUTTONS;
	oldButtons = 0;

	// Initialize background
	 bgColor = GRAY;
  	 fillScreen(bgColor);

  	// If you lose
  	 lose = 0;

	// Initialize green circle
	gRow = 20;
	gCol = 20;
	gOldRow = gRow;
	gOldCol = gCol;
	gRDel = 1;
	gCDel = 1;
	gRadius = 5;

	// Initialize blue rectangle
	bRow = 70;
	bCol = 10;
	bOldRow = bRow;
	bOldCol = bCol;
	bRDel = 1;
	bCDel = 1;
	bHeight = 30;
	bWidth = 5;

	// Initialize cyan rectangle 
	cRow = 70;
	cCol = 225;
	cOldRow = cRow;
	cOldCol = cCol;
	cRDel = 1;
	cCDel = 1;
	cHeight = 30;
	cWidth = 5;
}

// Performs all of the game's calculations
void update() {

	// Make the blue rectangle move with z (down) and x (up)
	 if (BUTTON_HELD(BUTTON_A)) {
	 	bRow -= 1;
	 } else if (BUTTON_HELD(BUTTON_B)) {
	 	bRow += 1;
	 }

	 // Make the cyan rectangle move with the arrow keys
	 if (BUTTON_HELD(BUTTON_UP)) {
	 	cRow -= 1;
	 } else if (BUTTON_HELD(BUTTON_DOWN)) {
	 	cRow += 1;
	 }


	// Bounce green circle off the walls
	if (gRow <= 0 || gRow + gRadius - 1 >= SCREENHEIGHT - 1)
		gRDel *= -1;
	if (gCol <= 0 || gCol + gRadius - 1 >= SCREENWIDTH - 1)
		lose = 1;

	// Make sure rectangles don't go beyond the screen
	if (bRow < 0) {
		bRow = 0;
	}
	if ((bRow + bHeight) > 160) {
		bRow = SCREENHEIGHT - bHeight;
	}
	if (cRow < 0) {
		cRow = 0;
	}
	if ((cRow + cHeight) > 160) {
		cRow = SCREENHEIGHT - cHeight;
	}

	// Bounce green circle off the blue rectangle
	// Make the green circle reverse direction when it hits the blue one

	if (collision(gRow - gRadius, gCol - gRadius, gRadius * 2, gRadius * 2, bRow, bCol, bHeight, bWidth)) {
		gCDel *= -1;
	}

	if (collision(gRow - gRadius, gCol - gRadius, gRadius * 2, gRadius * 2, cRow, cCol, cHeight, cWidth)) {
		gCDel *= -1;
	}


	// Update green circle's position
	gRow += gRDel;
	gCol += gCDel;
}

// Performs all of the writing to the screen
void draw() {

	// // Erase the previous locations
	drawCircle(gOldRow, gOldCol, gRadius, bgColor);
	drawRect(bOldRow, bOldCol, bHeight, bWidth, bgColor);
	drawRect(cOldRow, cOldCol, cHeight, cWidth, bgColor);

	// // Draw the new locations
	drawCircle(gRow, gCol, gRadius, GREEN);
	drawRect(bRow, bCol, bHeight, bWidth, BLUE);
	drawRect(cRow, cCol, cHeight, cWidth, CYAN);

	// Update old variables
	gOldRow = gRow;
	gOldCol = gCol;
	bOldRow = bRow;
	bOldCol = bCol;
	cOldRow = cRow;
	cOldCol = cCol;
}