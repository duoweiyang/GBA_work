#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "bg.h"
#include "spritesheet.h"
#include "startScreen.h"
#include "turnLeft.h"
#include "turnRight.h"

// Prototypes
void initGame();
void updateGame();
void drawGame();
void updateCave();
void initPenguin();
void updatePenguin();

// State prototypes
void goToLose();
void initPenguin();
void rightPenguin();
void leftPenguin();
void straightCave();
void leftCave();
void rightCave();

// Game Structures
PLAYER penguin;

// ShadowOAM Structure
OBJ_ATTR shadowOAM[128];

// Screen Variables
int frameCounter;
int livesRemaining;

// States
enum {LEFTCAVE, RIGHTCAVE, STRAIGHTCAVE, LEFTPENGUIN, RIGHTPENGUIN, IDLEPENGUIN, JUMP, CRASH};
int penguinState;
int backgroundState;
int curPath;
int nextPath;
int choosePath;

// We initialize the cave, sprites, and the lives method here
void initGame() {
	livesRemaining = 3;
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
   	DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
   	
   	hideSprites();
	initPenguin();

	curPath = STRAIGHTCAVE;
	nextPath = STRAIGHTCAVE;

	frameCounter = 1;
	buttons = BUTTONS;
}

void updateGame() {
	frameCounter++;
	// We update everything here
	updatePenguin();
	if (frameCounter % 100 == 0) {
		checkCollision();
		curPath = nextPath;
		if (backgroundState != STRAIGHTCAVE) {
			//nextPath = STRAIGHTCAVE;
			straightCave();
		} else {
			choosePath = rand() % 3;	
			updateCave();
		}
	}
}

// We draw all the components of the game here and transfer contents to the OAM.
void drawGame() { 
	DMANow(3, shadowOAM, OAM, 128 * 4);
}

// Initialize penguin
void initPenguin() {
	penguin.width = 64;
    penguin.height = 64;
    penguin.cdel = 1;
	penguin.row = SCREENHEIGHT - penguin.width - 2;
	penguin.col = SCREENWIDTH/2 - penguin.height/2;
	penguinState = IDLEPENGUIN;
}

void checkCollision() {
	if (backgroundState == LEFTCAVE && penguinState != LEFTPENGUIN && penguinState != CRASH) {
		livesRemaining--;
		penguinState = CRASH;
	}
	if (backgroundState == RIGHTCAVE && penguinState != RIGHTPENGUIN && penguinState != CRASH) {
		livesRemaining--;
		penguinState = CRASH;
	}
}

// Contains player's every movement
void updatePenguin() {
	if (penguinState != CRASH) {
		penguinState = IDLEPENGUIN;
	}
	if (BUTTON_HELD(BUTTON_LEFT)) {
		penguinState = LEFTPENGUIN;
	}
	if (BUTTON_HELD(BUTTON_RIGHT)) {
		penguinState = RIGHTPENGUIN;
	}
	switch(penguinState) {
        case LEFTPENGUIN:
          leftPenguin();
          break;
        case RIGHTPENGUIN:
          rightPenguin();
          break;
        case IDLEPENGUIN:
          idlePenguin();
          break;
        case CRASH:
           // draw the penguin crashing off the screen
          crash();
          break;
        default:
           break;
    }
}

void updateCave() {
	if (choosePath == 0) {
		straightCave();
	}
	if (choosePath == 1) {
		leftCave();
	}
	if (choosePath == 2) {
		rightCave();
	}
}

// We draw the player here
void idlePenguin() {
	shadowOAM[0].attr0 = (penguin.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (penguin.col) | ATTR1_LARGE;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0) | ATTR2_PALROW(0);	
    // penguinState = IDLEPENGUIN;
}

void leftPenguin() {
	shadowOAM[0].attr0 = (penguin.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (penguin.col) | ATTR1_LARGE;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 8) | ATTR2_PALROW(0);	
    // penguinState = LEFTPENGUIN;
}

void rightPenguin() {
	shadowOAM[0].attr0 = (penguin.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (penguin.col) | ATTR1_LARGE | ATTR1_HFLIP;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 8) | ATTR2_PALROW(0);	
    // penguinState = RIGHTPENGUIN;
}

void crash() {
	if (backgroundState == STRAIGHTCAVE) {
		penguinState = IDLEPENGUIN;
	}
}

void straightCave() {
	DMANow(3, bgPal, PALETTE, bgPalLen / 2);
    DMANow(3, bgTiles, &CHARBLOCK[0], bgTilesLen / 2);
    DMANow(3, bgMap, &SCREENBLOCK[28], bgMapLen / 2);
    backgroundState = STRAIGHTCAVE;
}

void leftCave() {
    DMANow(3, turnLeftPal, PALETTE, turnLeftPalLen / 2);
    DMANow(3, turnLeftTiles, &CHARBLOCK[0], turnLeftTilesLen / 2);
    DMANow(3, turnLeftMap, &SCREENBLOCK[28], turnLeftMapLen / 2);
    backgroundState = LEFTCAVE;
    curPath = LEFTCAVE;
}

void rightCave() {
    DMANow(3, turnRightPal, PALETTE, turnRightPalLen / 2);
    DMANow(3, turnRightTiles, &CHARBLOCK[0], turnRightTilesLen / 2);
    DMANow(3, turnRightMap, &SCREENBLOCK[28], turnRightMapLen / 2);
    backgroundState = RIGHTCAVE;
    curPath = RIGHTCAVE;
}

