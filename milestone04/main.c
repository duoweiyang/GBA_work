/* Hey Armando. Terribly sorry for the delay again. So pretty much everything
has been implemented. Here are the new things:

- Second background appears when you crash 
- Lives icon has been added
- Sound has been added
- Cheat (BUTTON_B) has been added
- Code for points/score has been added (but has some issues)
- Added win state (otherwise it's an infinite boringness)

Some questions:
- Do I need to add how to turn on the cheat in instructions? It's a cheat
so I didn't think it needed that. (Kinda like a secret)
- My code for the score works but it erases my lives/cart sprites for some reason.
Therefore, I've commented the initScore(), updateScore() and drawScore() out.
Do you see the issue? I'm baffled.
- Do I need to tell the player how to get to instructions on the splashscreen?
It's just pressing A and pressing left or right to get to the next page and such.
What do you think?
*/ 

#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "instruction1.h"
#include "instruction2.h"
#include "splashScreen.h"
#include "pauseState.h"
#include "lose.h"
#include "win.h"
#include "arrowLeft1.h"
#include "bg1.h"
#include "soundtrack.h"
#include "sound.h"

// Prototypes
void initialize();

// State Prototypes
void startState();
void instructionState1();
void instructionState2();
void gameState();
void pauseState();
void winState();
void loseState();

void goToStart();
void goToInstruction1();
void goToInstruction2();
void goToGame();
void goToPause();
void goToWin();
void goToLose();

SOUND soundA;
SOUND soundB;

// States
enum {START, INSTRUCTION1, INSTRUCTION2, GAME, PAUSE, WIN, LOSE};
int state;

// Variables
int livesRemaining;
int endingCounter;

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
            case INSTRUCTION1:
                instructionState1();
                break;
            case INSTRUCTION2:
                instructionState2();
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
Also display control and BG1CNT.
*/
void initialize() {
    setupSounds();
    setupInterrupts();
    playSoundA(soundtrack, SOUNDTRACKLEN, SOUNDTRACKFREQ, 1);
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_4BPP | BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    REG_BG0CNT = BG_4BPP | BG_SIZE_LARGE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(27);
	goToStart();
}

void startState() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
       goToInstruction1();
    }
}

// Make sure that the start screen is the first thing we see
void goToStart() {
    REG_BG0VOFF = 0;
    REG_BG1VOFF = 0;
    DMANow(3, splashScreenPal, PALETTE, splashScreenPalLen/2);
    DMANow(3, splashScreenTiles, &CHARBLOCK[0], splashScreenTilesLen / 2);
    DMANow(3, splashScreenMap, &SCREENBLOCK[28], splashScreenMapLen / 2);
    state = START;
} 

void instructionState1() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToInstruction2();
    } 
}

void goToInstruction1() {
    DMANow(3, instruction1Pal, PALETTE, instruction1PalLen/2);
    DMANow(3, instruction1Tiles, &CHARBLOCK[0], instruction1TilesLen / 2);
    DMANow(3, instruction1Map, &SCREENBLOCK[28], instruction1MapLen / 2);
    state = INSTRUCTION1;
}

void instructionState2() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        goToInstruction1();
    } 

}

void goToInstruction2() {
    DMANow(3, instruction2Pal, PALETTE, instruction2PalLen/2);
    DMANow(3, instruction2Tiles, &CHARBLOCK[0], instruction2TilesLen / 2);
    DMANow(3, instruction2Map, &SCREENBLOCK[28], instruction2MapLen / 2);
    state = INSTRUCTION2;
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
        drawCrash();
        goToLose();
    }
    if (endingCounter > 50) {
        goToWin();
    }
}

// Change background to cave 
void goToGame() {
    DMANow(3, arrowLeft1Pal, PALETTE, arrowLeft1PalLen / 2);
    DMANow(3, bg1Tiles, &CHARBLOCK[0], bg1TilesLen / 2);
    DMANow(3, bg1Map, &SCREENBLOCK[28], bg1MapLen / 2);
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
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    DMANow(3, pauseStatePal, PALETTE, pauseStatePalLen/2);
    DMANow(3, pauseStateTiles, &CHARBLOCK[0], pauseStateTilesLen / 2);
    DMANow(3, pauseStateMap, &SCREENBLOCK[28], pauseStateMapLen / 2);
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

// Win screen is currently instruction2... needs to be replaced
void goToWin() {
    waitForVBlank();
    hideSprites();
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, winPal, PALETTE, winPalLen/2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen / 2);
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
    REG_BG1VOFF = 0;
    DMANow(3, losePal, PALETTE, losePalLen/2);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen / 2);
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    state = LOSE;
}