/* Hey Armando. Terribly sorry for the delay. I think I have the bulk of the game down
now, but it's pretty buggy at the moment. You can lean left and right like in the 
original Cart Surfer game, but so far you can only see the crash animation if you leaned too far
left or too far right. If you let the penguin stay idle even though there's a turn, it will
automatically lose (which is not supposed to immediately happen). I wish I had more time to
fix it for this milestone, but that will have to wait unfortunately. Here are the list of issues:

- Crash animation works but is not happening all the time (immediately loses). I suspect
this has to do with the enum states.
- Sometimes when you let go of the left arrow/right arrow key to go back to idle and press
it again later, it's still in the tilted state. I lack an inititalize somewhere I believe.
- Do I need to tell the player to press certain buttons to start, pause, go to instructions?
- Penguin still have some pink fuzzy pixels due to Usenti issues. I made the spritesheet
outside of Usenti then made it smaller/reguantized there. Not sure why it's happening.
- Lose screen is pretty dull at the moment. The original game showed you how many coins
you got. Maybe I could do that, but we don't have something like a font.c here...?
- I do not have the simultaneous backgrounds yet. 

Things I need or may need to add:
- The cheat (lean left/right as far as you can and you will remain stable). I would
probably make methods cheatRight() and cheatLeft() but I'm not sure how to allow
the player to press a button and automatically go into cheat mode. 
- Need to add three carts on the top left to symbolize lives
- Ideally should have a score. Not exactly sure how to best do that in mode0 with a
background. David suggested using a background so I can fulfill the two simultaneous
backgrounds requirement but I'm not sure how to do that.
- I didn't have anistates (eunms) but I do have more than 
"2 animated sprites"... I think?
- Need sound. Should be pretty straightforward though.


Happy Thanksgiving!
*/ 
#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "instruction1.h"
#include "instruction2.h"
#include "splashScreen.h"
#include "pauseState.h"
#include "lose.h"
#include "bg1.h"

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

// States
enum {START, INSTRUCTION1, INSTRUCTION2, GAME, PAUSE, WIN, LOSE};
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
       goToInstruction1();
    }
}

// Make sure that the start screen is the first thing we see
void goToStart() {
    REG_BG0VOFF = 0;
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
}

// Change background to cave (currently black)
void goToGame() {
    DMANow(3, bg1Pal, PALETTE, bg1PalLen / 2);
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

// Pause screen is currently instruction2... needs to be replaced
void goToPause() {
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
    DMANow(3, shadowOAM, OAM, (4*128));
    DMANow(3, instruction2Pal, PALETTE, instruction2PalLen/2);
    DMANow(3, instruction2Tiles, &CHARBLOCK[0], instruction2TilesLen / 2);
    DMANow(3, instruction2Map, &SCREENBLOCK[28], instruction2MapLen / 2);
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
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen / 2);
    waitForVBlank();
    hideSprites();
    DMANow(3, shadowOAM, OAM, (4*128));
    state = LOSE;
}