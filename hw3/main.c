#include <stdlib.h>
#include "myLib.h"
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

// TODO 1.1: Make your state and state transition functions
void startState() {
  	if (BUTTON_PRESSED(BUTTON_START)) {
  		initGame();
  		goToGame();
	 }
}

void goToStart() {
	fillScreen(CYAN);
	state = START;
} 

void gameState() {
	updateGame();
	waitForVBlank();
	drawGame();
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
	state = PAUSE;
} 

void winState() {
	if (BUTTON_PRESSED(BUTTON_START)) {
  		goToStart();
	} 
}
void goToWin() {
	fillScreen(GREEN);
	state = WIN;
}

void loseState() {
	if (BUTTON_PRESSED(BUTTON_START)) {
  		goToStart();
	} 
}

void goToLose() {
	fillScreen(RED);
	state = LOSE;
}






