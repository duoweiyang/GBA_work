#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "startScreen.h"
#include "win.h"
#include "lose.h"
#include "pause.h"
#include "instruction1.h"
#include "bg.h"

// Prototypes
void initialize();

// State Prototypes
void startState();
void instructionState();
void gameState();
void pauseState();
void winState();
void loseState();

void goToStart();
void goToInstruction();
void goToGame();
void goToPause();
void goToWin();
void goToLose();

// States
enum {START, INSTRUCTION, GAME, PAUSE, WIN, LOSE};
int state;

// Variables
int livesRemaining;

unsigned short buttons;
unsigned short oldButtons;

int main()
{
	initialize();
	while(1) {

		oldButtons = buttons;
		buttons = BUTTONS;

		 switch(state) {
            case START:
                startState();
                break;
            case INSTRUCTION:
                instructionState();
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
                break;
            default:
                break;
        }
    }

}

/* Lives and no. of enemies are reset before each game. 
Also display control and bg0CNT.
*/
void initialize() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_4BPP | BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
	goToStart();
}

void startState() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
       goToInstruction();
    }
}

// Make sure that the start screen is the first thing we see
void goToStart() {
    REG_BG0VOFF = 0;
    DMANow(3, startScreenPal, PALETTE, startScreenPalLen/2);
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], startScreenMapLen / 2);
    state = START;
} 

void instructionState() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
}

void goToInstruction() {
    DMANow(3, instruction1Pal, PALETTE, instruction1PalLen/2);
    DMANow(3, instruction1Tiles, &CHARBLOCK[0], instruction1TilesLen / 2);
    DMANow(3, instruction1Map, &SCREENBLOCK[28], instruction1MapLen / 2);
    state = INSTRUCTION;
}

// If we lose all our lives we lose.
void gameState() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (livesRemaining <= 0) {
        goToLose();
    }
}

// Change background to cave (currently black)
void goToGame() {
    DMANow(3, bgPal, PALETTE, bgPalLen / 2);
    DMANow(3, bgTiles, &CHARBLOCK[0], bgTilesLen / 2);
    DMANow(3, bgMap, &SCREENBLOCK[28], bgMapLen / 2);
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
    DMANow(3, pausePal, PALETTE, pausePalLen/2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    state = PAUSE;
} 

// Restart the game when we win!
void winState() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    } 
}

// We hide sprites and draw the win background if we win
void goToWin() {
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, winPal, PALETTE, winPalLen/2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen/2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen/2);
    state = WIN;
}

// Restart game when we lose...
void loseState() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    } 
}

// We hide sprites and draw the lose background if we lose
void goToLose() {
    REG_BG0VOFF = 0;
    DMANow(3, losePal, PALETTE, losePalLen/2);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen/2);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen/2);
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    state = LOSE;
}