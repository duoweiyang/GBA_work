#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "myLib.h"
#include "text.h"
#include "sound.h"

#include "space01.h"
#include "space02.h"
#include "space03.h"
#include "space04.h"
#include "space05.h"
#include "space06.h"
#include "space07.h"

#include "GameSong.h"
#include "StartSFX.h"
#include "TitleSong.h"

// TODO 1.1: include additional sound .h files here

#define NUMOBJS 5

MOVOBJ objs[NUMOBJS];
int size = NUMOBJS;

void initialize();
void update();
void draw();

SOUND soundA;
SOUND soundB;
const unsigned char* spaceSound;
int* spaceSoundLen;
int spaceSoundToPlay = 0;

int state;
enum { STARTSCREEN = 0, GAMESCREEN, LOSESCREEN, WINSCREEN, PAUSESCREEN };

void start();
void game();
void pause();
void win();
void lose();

int randomSeed = 0;

unsigned int buttons;
unsigned int oldButtons;
unsigned short scanLineCounter;
char fpsbuffer[30];

int main()
{
	REG_DISPCTL = MODE4 | BG2_ENABLE;

	buttons = BUTTONS;
	
	state = STARTSCREEN;

	//TODO 3.4:  Call the two setup functions for sounds and interrupts
	setupSounds();
	setupInterrupts();

	
	PALETTE[BLACKINDEX] = BLACK;
	PALETTE[REDINDEX] = RED;
	PALETTE[BLUEINDEX] = BLUE;
	PALETTE[GREENINDEX] = GREEN;
	PALETTE[WHITEINDEX] = WHITE;
    
    playSoundA(TitleSong,TITLESONGLEN,TITLESONGFREQ, 1);
    
	while(1)
	{
		oldButtons = buttons;
		buttons = BUTTONS;
		fillScreen4(BLACKINDEX);

		switch(state)
		{
			case STARTSCREEN:
				start();
				break;
			case GAMESCREEN:
				game();
				break;
			case PAUSESCREEN:
				pause();
				break;
			case WINSCREEN:
				win();
				break;
			case LOSESCREEN:
				lose();
				break;
		}
                   
		waitForVblank();
		flipPage();
	}

	return 0;
}


void start()
{

	drawString4(50,50, "START SCREEN", WHITEINDEX);
	drawString4(70,50, "Press START to begin", WHITEINDEX);
	randomSeed++;

	if(BUTTON_PRESSED(BUTTON_START))
	{

		state = GAMESCREEN;

		// TODO 5.1 - Play GameScreen music and StartSFX sound when the player presses START to transition from the start to game state.
		stopSound();
		playSoundA(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);
		playSoundB(StartSFX, STARTSFXLEN, STARTSFXFREQ, 0);

		
		srand(randomSeed);
		initialize();
	}
}

void game()
{
	drawString4(50,50, "GAME SCREEN", BLUEINDEX);
	drawString4(70,50, "Press START to pause", BLUEINDEX);
    drawString4(90,50, "Press SELECT to return", BLUEINDEX);

	if(BUTTON_HELD(BUTTON_L))
	{
		size--;
	}
	if(BUTTON_HELD(BUTTON_R))
	{
		size++;
	}

	update();

	draw();

	if(BUTTON_PRESSED(BUTTON_START))
	{
        // TODO 5.2: Pause the music when transitioning from game to pause screen.
        pauseSound();

         
		state = PAUSESCREEN;
	}
    if(BUTTON_PRESSED(BUTTON_SELECT))
	{
		// TODO 5.3: Stop sounds and restart the title song when going from game to splash screen.
		stopSound();
		playSoundA(TitleSong, TITLESONGLEN, TITLESONGFREQ, 1);

		
		state = STARTSCREEN;
	}
    

    if(BUTTON_PRESSED(BUTTON_A))
	{
		spaceSoundToPlay = rand()%7;
		switch(spaceSoundToPlay) {
			case 0:
				spaceSound = space01;
				spaceSoundLen = &_space01len;
				break;
			case 1:
				spaceSound = space02;
				spaceSoundLen = &_space02len;
				break;
			case 2:
				spaceSound = space03;
				spaceSoundLen = &_space03len;
				break;
			case 3:
				spaceSound = space04;
				spaceSoundLen = &_space04len;
				break;
			case 4:
				spaceSound = space05;
				spaceSoundLen = &_space05len;
				break;
			case 5:
				spaceSound = space06;
				spaceSoundLen = &_space06len;
				break;
			case 6:
				spaceSound = space07;
				spaceSoundLen = &_space07len;
				break;
		}

		//TODO 5.4: Play spaceSound here. 
		playSoundB(spaceSound, *spaceSoundLen, SPACE01FREQ, 0);
		
	}

}

void pause()
{
	drawString4(50,50, "PAUSE SCREEN", GREENINDEX);
    drawString4(70,50, "Press START to return", GREENINDEX);
    if(BUTTON_PRESSED(BUTTON_START))
	{
		// TODO 5.5 - Unpause the music when transitioning from pause to game screen.


		unpauseSound();
		state = GAMESCREEN;
	}
}

void win()
{
	drawString4(50,50, "WIN SCREEN", GREENINDEX);
}

void lose()
{
	drawString4(50,50, "LOSE SCREEN", REDINDEX);

}

// No need to edit code below this line ------------

void initialize()
{
	int dels[ ] = {-2, -1, 1, 2};

	int i;
	for(i = 0; i < NUMOBJS; i++)
	{
		objs[i].size = size;

		objs[i].row = rand()%(160-objs[i].size);
		objs[i].col = rand()%(240-objs[i].size);

		objs[i].color = rand()%WHITEINDEX + 1;

		objs[i].rdel = dels[rand()%4];
		objs[i].cdel = dels[rand()%4];
	}
}

void update()
{
	int i;
	for(i=0; i<NUMOBJS; i++)
	{

		objs[i].row += objs[i].rdel;
		objs[i].col += objs[i].cdel;

		objs[i].size = size;

		if(objs[i].row<0)
		{
			objs[i].row = 0;
			objs[i].rdel = -objs[i].rdel;
		}
		if(objs[i].row>159-objs[i].size)
		{
			objs[i].row = 159-objs[i].size;
			objs[i].rdel = -objs[i].rdel;
		}
		if(objs[i].col < 0)
		{
			objs[i].col = 0;
			objs[i].cdel = -objs[i].cdel;
		}
		if(objs[i].col > 239-objs[i].size)
		{
			objs[i].col = 239-objs[i].size;
			objs[i].cdel= -objs[i].cdel;
		}
	}
}

void draw()
{
	int i;
	for(i=0; i < NUMOBJS; i++)
	{
		drawRect4(objs[i].row, objs[i].col, objs[i].size, objs[i].size, objs[i].color);
	}

	sprintf(fpsbuffer, "%d", soundA.vBlankCount);
	drawString4(10,10, fpsbuffer, WHITEINDEX);

}

