#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "text.h"
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
void startState();
void gameState();
void pauseState();
void winState();
void loseState();

void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random seed
int seed;

// Text Buffer
char buffer[41];

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {
        	case START:
        		startState();
				break;
			case GAME:
				gameState();
				break;
			case PAUSE:
				pauseState();
				break;
			case WIN:
				winState();
				break;
			case LOSE:
				loseState();
			default:
				break;
			}
  		}
	}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    // Call your goToStart function here
    goToStart();

}

void startState() {
	seed++;
	waitForVBlank();
  	if (BUTTON_PRESSED(BUTTON_START)) {
  		srand(seed);
  		initGame();
  		goToGame();
	 }
}

void goToStart() {
	fillScreen(CYAN);
	drawString(79, 95, "BREAKOUT", BLACK);
	state = START;
} 

void gameState() {
	updateGame();

	sprintf(buffer, "%d", bricksRemaining);
    drawString(145, 110, buffer, WHITE);

	waitForVBlank();
	drawGame();

	drawRect(145, 110, 8, 12, BLACK);

	if (BUTTON_PRESSED(BUTTON_START)) {
  		goToPause();
	} 
	if (bricksRemaining == 0) {
	 	goToWin();
	} 
	if (ball.lose == 1) {
	 	goToLose();
	}
}

void goToGame() {
	fillScreen(BLACK);
	drawString(145, 5, "Bricks Remaining:", WHITE);
	state = GAME;
} 

void pauseState() {
	if (BUTTON_PRESSED(BUTTON_START)) {
  		goToGame();
	} 
	if (BUTTON_PRESSED(BUTTON_SELECT)) {
	 	goToStart();
	} 
}

void goToPause() {
	fillScreen(GRAY);
	drawString(80, 98, "Paused", WHITE);
	state = PAUSE;
} 

void winState() {
	if (BUTTON_PRESSED(BUTTON_START)) {
  		goToStart();
	} 
}
void goToWin() {
	fillScreen(GREEN);
	drawString(80, 108, "Win", BLACK);
	state = WIN;
}

void loseState() {
	if (BUTTON_PRESSED(BUTTON_START)) {
  		goToStart();
	} 
}

void goToLose() {
	fillScreen(RED);
	drawString(80, 103, "Lose", WHITE);
	state = LOSE;
}






