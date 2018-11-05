#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "bg.h"
#include "spritesheet.h"
#include "startScreen.h"

// Game Structures
PLAYER player;
ENEMY enemy1[ENEMYCOUNT];
ENEMY enemy2[ENEMYCOUNT];
ENEMY enemy25[ENEMYCOUNT];
ENEMY enemy3[ENEMYCOUNT];
ENEMY enemy35[ENEMYCOUNT];
LIFE lives[LIFECOUNT];
BULLET bullets[BULLETCOUNT];
ENEMYBULLET enemybullets[ENEMYBULLETCOUNT];

// ShadowOAM Structure
OBJ_ATTR shadowOAM[128];

// Screen Variables
int frameCounter;
int livesRemaining = 3;
int enemycount = 40;
int vOff;

// We initialize the starry sky background, spriates, and the lives method here
void initGame() {
	DMANow(3, bgPal, PALETTE, bgPalLen / 2);
	DMANow(3, bgTiles, &CHARBLOCK[0], bgTilesLen / 2);
	DMANow(3, bgMap, &SCREENBLOCK[28], bgMapLen / 2);
    
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
   	DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
   	
   	hideSprites();

	initPlayer();
	initLives();
	initEnemies();
	initBullets();
	initEnemyBullets();

	buttons = BUTTONS;
	frameCounter = 0;
	vOff = 0;
}

void updateGame() {

	// This changes the animation state of our enemies so it resembles the original game
	frameCounter++;
	if (frameCounter % 20 == 0) {
		for (int i = 0; i < ENEMYCOUNT; i++) {
			enemy1[i].aniState = (enemy1[i].aniState + 1) % 2;
			enemy2[i].aniState = (enemy2[i].aniState + 1) % 2;
			enemy25[i].aniState = (enemy25[i].aniState + 1) % 2;
			enemy3[i].aniState = (enemy3[i].aniState + 1) % 2;
			enemy35[i].aniState = (enemy35[i].aniState + 1) % 2;
		}
	}

	// We update everything here
	updatePlayer();
	updateLives();
	updateEnemies();
	for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullets(&bullets[i]);
	}
	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		updateEnemyBullets(&enemybullets[i]);
	}

	/* Once the bulletTimer hits 60, one of the enemies will shoot a bullet
	The color will not necessarily match the enemy in order to amp up the 
	difficulty of the game. */
	if (enemy1[0].bulletTimer % 60 == 0) {
		int enemyfire = rand() % 8;
		fireEnemyBullets(&enemy1[enemyfire]);
		enemy1[0].bulletTimer = 0;
	}
	enemy1[0].bulletTimer++;

	if (enemy2[0].bulletTimer % 60 == 0) {
		int enemyfire = rand() % 8;
		fireEnemyBullets(&enemy2[enemyfire]);
		enemy1[0].bulletTimer = 0;
	}
	enemy2[0].bulletTimer++;

	if (enemy25[0].bulletTimer % 60 == 0) {
		int enemyfire = rand() % 8;
		fireEnemyBullets(&enemy25[enemyfire]);
	}
	enemy25[0].bulletTimer++;

	if (enemy3[0].bulletTimer % 60 == 0) {
		int enemyfire = rand() % 8;
		fireEnemyBullets(&enemy3[enemyfire]);
	}
	enemy3[0].bulletTimer++;

	if (enemy35[0].bulletTimer % 60 == 0) {
		int enemyfire = rand() % 8;
		fireEnemyBullets(&enemy35[enemyfire]);
	}
	enemy35[0].bulletTimer++;

	if (frameCounter % 2 == 0) {
		vOff--;
	}

	REG_BG0VOFF = vOff;
}

// We draw all the components of the game here and transfer contents to the OAM.
void drawGame() {
	drawPlayer();
	for (int i = 0; i < LIFECOUNT; i++) {
		drawLives(&lives[i]);
	}
	for (int i = 0; i < BULLETCOUNT; i++) {
		drawBullets(&bullets[i]);
	}
	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		drawEnemyBullets(&enemybullets[i]);
	}
	drawEnemies();
	waitForVBlank();
	DMANow(3, shadowOAM, OAM, 128 * 4);
}

/* We have three hearts but four lives technically speaking.
If you lose all three hearts, you still have a chance to make
a comeback, but if you get hit again, that's it.
*/
void initLives() {
	lives[0].row = 0;
	lives[0].col = 15;
	lives[0].height = 8;
	lives[0].width = 8;
	lives[0].active = 1;
	lives[0].index = 1;

	lives[1].row = 0;
	lives[1].col = 28;
	lives[1].height = 8;
	lives[1].width = 8;
	lives[1].active = 1;
	lives[1].index = 2;

	lives[2].row = 0;
	lives[2].col = 41;
	lives[2].height = 8;
	lives[2].width = 8;
	lives[2].active = 1;
	lives[2].index = 3;
}

// If we lose a life, a heart is no longer active
void updateLives() {
	if (livesRemaining == 2) {
		lives[2].active = 0;
	}
	if (livesRemaining == 1) {
		lives[1].active = 0;
	}
}

// If we lose a life, we hide the heart sprite
void drawLives(LIFE* b) {
	if (b->active) {
		shadowOAM[b->index].attr0 = (b->row)| ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[b->index].attr1 = (b->col) | ATTR1_SMALL;
		shadowOAM[b->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 0);
	} else {
		shadowOAM[b->index].attr0 = ATTR0_HIDE;
	}
}

// This is our little red shooter
void initPlayer() {
	player.width = 16;
    player.height = 8;
    player.cdel = 1;
	player.row = SCREENHEIGHT - player.width - 2;
	player.col = SCREENWIDTH/2 - player.height/2;
	player.bulletTimer = 10;
}

// Contains player's every movement
void updatePlayer() {
	if (BUTTON_HELD(BUTTON_LEFT) && (player.col > 5)) {
		player.col -= player.cdel;

	}
	if (BUTTON_HELD(BUTTON_RIGHT) && ((player.col + player.width) < (SCREENWIDTH - 5))) {
		player.col += player.cdel;
	}
	if (BUTTON_HELD(BUTTON_A) && player.bulletTimer >= 20) {
		fireBullet();
		player.bulletTimer = 0;
	}
	player.bulletTimer++;

	// If a enemy bullet hits us, we lose a life
    for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
    	if (enemybullets[i].active && collision(player.row, player.col, player.height, player.width,
    		enemybullets[i].row, enemybullets[i].col, enemybullets[i].height, enemybullets[i].width)) {
    		enemybullets[i].active = 0;
    		lives[i].active = 0;
    		livesRemaining--;
    	}
    }
}

// We draw the player here
void drawPlayer() {
	shadowOAM[0].attr0 = (player.row) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (player.col) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_TILEID(6, 0) | ATTR2_PALROW(0);
}

/* We initialize the enemies in rows. enemy1 is the first row (pink aliens)
enemy2 and enemy25 (2.5) are the blue ones and enemy3 and enemy35 (3.5) are
the green ones. We have five rows of enemies.
*/
void initEnemies() {
	int row = 20;
	int col = 7;
	for (int i = 0; i < ENEMYCOUNT; i++) {
		enemy1[i].row = row;
		enemy1[i].col = col;
		enemy1[i].rdel = 3;
	    enemy1[i].cdel = 3;
		enemy1[i].width = 16;
	    enemy1[i].height = 16;
	    enemy1[i].index = i + 16;
	    enemy1[i].active = 1;
	    enemy1[i].aniState = 0;
	    enemy1[i].botRow = 0;
	    enemy1[i].bulletTimer = 0;

	    enemy2[i].row = row + 18;
		enemy2[i].col = col;
		enemy2[i].rdel = 3;
	    enemy2[i].cdel = 3;
		enemy2[i].width = 16;
	    enemy2[i].height = 16;
	    enemy2[i].index = i + 16;
	    enemy2[i].active = 1;
	    enemy2[i].aniState = 0;
	    enemy2[i].botRow = 1;
	    enemy2[i].bulletTimer = 0;

	   	enemy25[i].row = row + 36;
		enemy25[i].col = col;
		enemy25[i].rdel = 3;
	    enemy25[i].cdel = 3;
		enemy25[i].width = 16;
	    enemy25[i].height = 16;
	    enemy25[i].index = i + 16;
	    enemy25[i].active = 1;
	    enemy25[i].aniState = 0;
	    enemy25[i].botRow = 1;
	    enemy25[i].bulletTimer = 0;
	    
	    enemy3[i].row = row + 54;
		enemy3[i].col = col;
		enemy3[i].rdel = 3;
	    enemy3[i].cdel = 3;
		enemy3[i].width = 16;
	    enemy3[i].height = 16;
	    enemy3[i].index = i + 16;
	    enemy3[i].active = 1;
	    enemy3[i].aniState = 0;
	    enemy3[i].botRow = 2;
	    enemy3[i].bulletTimer = 0;

	   	enemy35[i].row = row + 72;
		enemy35[i].col = col;
		enemy35[i].rdel = 3;
	    enemy35[i].cdel = 3;
		enemy35[i].width = 16;
	    enemy35[i].height = 16;
	    enemy35[i].index = i + 16;
	    enemy35[i].active = 1;
	    enemy35[i].aniState = 0;
	    enemy35[i].botRow = 2;
	    enemy35[i].bulletTimer = 0;
	    
	    col += 18;
	}
}

// Enemies will move in a blocky fashion towards player. If the enemy is hit, it will disappear (die).
void updateEnemies() {
	for (int i = 0; i < ENEMYCOUNT; i++) {

	    if (enemy1[i].col + enemy1[i].width > SCREENWIDTH - 5 || enemy1[i].col < 5) {
	    	for (int i = 0; i < 8; i++) {
	    		enemy1[i].row += enemy1[i].rdel;
	    		enemy1[i].cdel *= -1;
	    		enemy1[i].col += enemy1[i].cdel;
	    	}
	 	}
	 	if (enemy1[i].active) {
	 		for (int j = 0; j < BULLETCOUNT; j++) {
	 			if (bullets[j].active && collision(enemy1[i].row, enemy1[i].col, enemy1[i].height, enemy1[i].width,
				bullets[j].row, bullets[j].col, bullets[j].height, bullets[j].width)) {
				// Put bullet back in the pool
					bullets[j].active = 0;
					enemy1[i].active = 0;
					enemycount--;
				}
	 		}
	    }
	
	    if (enemy2[i].col + enemy2[i].width > SCREENWIDTH - 5 || enemy2[i].col < 5) {
	    	for (int i = 0; i < 8; i++) {
	    		enemy2[i].row += enemy2[i].rdel;
	    		enemy2[i].cdel *= -1;
	    		enemy2[i].col += enemy2[i].cdel;
	    	}
	    }
	    if (enemy2[i].active) {
	 		for (int j = 0; j < BULLETCOUNT; j++) {
	 			if (bullets[j].active && collision(enemy2[i].row, enemy2[i].col, enemy2[i].height, enemy2[i].width,
				bullets[j].row, bullets[j].col, bullets[j].height, bullets[j].width)) {
				// Put bullet back in the pool
					bullets[j].active = 0;
					enemy2[i].active = 0;
					enemycount--;
				}
	 		}
	    }

	    if (enemy25[i].col + enemy25[i].width > SCREENWIDTH - 5 || enemy25[i].col < 5) {
	    	for (int i = 0; i < 8; i++) {
	    		enemy25[i].row += enemy25[i].rdel;
	    		enemy25[i].cdel *= -1;
	    		enemy25[i].col += enemy25[i].cdel;
	    	}
	    }
	    if (enemy25[i].active) {
	 		for (int j = 0; j < BULLETCOUNT; j++) {
	 			if (bullets[j].active && collision(enemy25[i].row, enemy25[i].col, enemy25[i].height, enemy25[i].width,
				bullets[j].row, bullets[j].col, bullets[j].height, bullets[j].width)) {
				// Put bullet back in the pool
					bullets[j].active = 0;
					enemy25[i].active = 0;
					enemycount--;
				}
	 		}
	    }
	    
		if (enemy3[i].col + enemy3[i].width > SCREENWIDTH - 5 || enemy3[i].col < 5) {
	    	for (int i = 0; i < 8; i++) {
	    		enemy3[i].row += enemy3[i].rdel;
	    		enemy3[i].cdel *= -1;
	    		enemy3[i].col += enemy3[i].cdel;
	    	}
	    }
	    if (enemy3[i].active) {
	 		for (int j = 0; j < BULLETCOUNT; j++) {
	 			if (bullets[j].active && collision(enemy3[i].row, enemy3[i].col, enemy3[i].height, enemy3[i].width,
				bullets[j].row, bullets[j].col, bullets[j].height, bullets[j].width)) {
				// Put bullet back in the pool
					bullets[j].active = 0;
					enemy3[i].active = 0;
					enemycount--;
				}
	 		}
	    }

	    if (enemy35[i].col + enemy35[i].width > SCREENWIDTH - 5 || enemy35[i].col < 5) {
	    	for (int i = 0; i < 8; i++) {
	    		enemy35[i].row += enemy35[i].rdel;
	    		enemy35[i].cdel *= -1;
	    		enemy35[i].col += enemy35[i].cdel;
	    		// If the enemy gets too close to us, we lose
	    		if (enemy35[i].row + enemy35[i].height >= player.row) {
	    			livesRemaining = 0;
	    		}
	    	}
		}
		if (enemy35[i].active) {
	 		for (int j = 0; j < BULLETCOUNT; j++) {
	 			if (bullets[j].active && collision(enemy35[i].row, enemy35[i].col, enemy35[i].height, enemy35[i].width,
				bullets[j].row, bullets[j].col, bullets[j].height, bullets[j].width)) {
				// Put bullet back in the pool
					bullets[j].active = 0;
					enemy35[i].active = 0;
					enemycount--;
				}
	 		}
	    }

	    // Shift the enemies every 20 frames
		if (frameCounter % 20 == 0) {
	    	enemy1[i].col += enemy1[i].cdel;
	    	enemy2[i].col += enemy2[i].cdel;
	    	enemy25[i].col += enemy25[i].cdel;
	    	enemy3[i].col += enemy3[i].cdel;
	    	enemy35[i].col += enemy35[i].cdel;
	    }
	}
}

// We shadowOAM the enemies here. If it's inactive, we hide them.
void drawEnemies() {
	for (int i = 0; i < ENEMYCOUNT; i++) {
		if (enemy1[i].active) {
			shadowOAM[i+4].attr0 = (enemy1[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
	   		shadowOAM[i+4].attr1 = (enemy1[i].col) | ATTR1_SMALL;
	    	shadowOAM[i+4].attr2 = ATTR2_TILEID(4, enemy1[i].aniState*2) | ATTR2_PALROW(0);
		} 
		if (!enemy1[i].active) {
			shadowOAM[i+4].attr0 = ATTR0_HIDE;
		}
		if (enemy2[i].active) {
		shadowOAM[i+21].attr0 = (enemy2[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
	   	shadowOAM[i+21].attr1 = (enemy2[i].col) | ATTR1_SMALL;
	    shadowOAM[i+21].attr2 = ATTR2_TILEID(2, enemy2[i].aniState*2) | ATTR2_PALROW(0);
		}
		if (!enemy2[i].active) {
			shadowOAM[i+21].attr0 = ATTR0_HIDE;
		}
		if (enemy25[i].active) {
		shadowOAM[i+29].attr0 = (enemy25[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
	   	shadowOAM[i+29].attr1 = (enemy25[i].col) | ATTR1_SMALL;
	    shadowOAM[i+29].attr2 = ATTR2_TILEID(2, enemy25[i].aniState*2) | ATTR2_PALROW(0);
		}
		if (!enemy25[i].active) {
			shadowOAM[i+29].attr0 = ATTR0_HIDE;
		}
		if (enemy3[i].active) {
		shadowOAM[i+37].attr0 = (enemy3[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
	    shadowOAM[i+37].attr1 = (enemy3[i].col) | ATTR1_SMALL;
	    shadowOAM[i+37].attr2 = ATTR2_TILEID(0, enemy3[i].aniState*2) | ATTR2_PALROW(0);
	  	}
	  	if (!enemy3[i].active) {
			shadowOAM[i+37].attr0 = ATTR0_HIDE;
		}
		if (enemy35[i].active) {
	  	shadowOAM[i+45].attr0 = (enemy35[i].row) | ATTR0_4BPP | ATTR0_SQUARE;
	    shadowOAM[i+45].attr1 = (enemy35[i].col) | ATTR1_SMALL;
	    shadowOAM[i+45].attr2 = ATTR2_TILEID(0, enemy35[i].aniState*2) | ATTR2_PALROW(0);
		}
		if (!enemy35[i].active) {
			shadowOAM[i+45].attr0 = ATTR0_HIDE;
		}
	}
}	

// Initialized bullet characteristics
void initBullets() {
   for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].row = -bullets[i].height;
        bullets[i].col = 0;
        bullets[i].height = 8;
        bullets[i].width = 8;
        bullets[i].rdel = -2;
        bullets[i].cdel = 0;
        bullets[i].active = 0;
        bullets[i].index = i + 61;
    }
}

// Update player's bullets here so they move towards enemies
void updateBullets(BULLET* b) {
	if (b->active) {
		if (b->row + b->height-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1) {

			b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
		}
	}
}

// We shadowOAM player's bullets here
void drawBullets(BULLET* b) {
	if (b->active) {
		shadowOAM[b->index].attr0 = (b->row) | ATTR0_4BPP | ATTR0_SQUARE;	  	  	
		shadowOAM[b->index].attr1 = (b->col) | ATTR1_SMALL;
	   	shadowOAM[b->index].attr2 =  ATTR2_TILEID(7, 4) | ATTR2_PALROW(0);
	} else if (!b->erased) {
		shadowOAM[b->index].attr0 = ATTR0_HIDE;
	}
}

// Find the first inactive bullet, initialize it, and set it active
void fireBullet() {
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {
			bullets[i].row = player.row;
			bullets[i].col = player.col;
			bullets[i].active = 1;
			bullets[i].erased = 0;
			break;
		}
	}
}

// Initialize the enemy bullets (non-red ones)
void initEnemyBullets() {
	for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
		enemybullets[i].height = 6; 
		enemybullets[i].width = 8;   
		enemybullets[i].row = -enemybullets[i].height;
		enemybullets[i].col = 0;
		enemybullets[i].rdel = 2;
        enemybullets[i].cdel = 0;
		enemybullets[i].active = 0;
		enemybullets[i].index = i + 85; 
		enemybullets[i].bulletType = 0;
	}
}

// Enemy bullets fly towards us 
void updateEnemyBullets(ENEMYBULLET* b) {
	if (b->active) {
		if (b->row + b->height-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1 && b->row <= SCREENHEIGHT) {

			b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
		}
	}
}

// We have three varieties of enemy bullets which are drawn here
void drawEnemyBullets(ENEMYBULLET* b) {
	if(b->active) {
		// GREEN
		if (b->bulletType == 0) {
			shadowOAM[b->index].attr0 = (b->row) | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[b->index].attr1 = (b->col) | ATTR1_SMALL;
			shadowOAM[b->index].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(0, 4);
		} 
		// BLUE
		if (b->bulletType == 1) {
			shadowOAM[b->index].attr0 = (b->row) | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[b->index].attr1 = (b->col) | ATTR1_SMALL;
			shadowOAM[b->index].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(2, 4);
		}
		// PINK
		if (b->bulletType == 2) {
			shadowOAM[b->index].attr0 = (b->row) | ATTR0_4BPP | ATTR0_SQUARE;
			shadowOAM[b->index].attr1 = (b->col) | ATTR1_SMALL;
			shadowOAM[b->index].attr2 = ATTR2_PALROW(0)| ATTR2_TILEID(4, 4);
		}
	} else {
		shadowOAM[b->index].attr0 = ATTR0_HIDE;
	}
}

// The color of the enemy bullet is randomized. botRow is to ensure they aren't the same color
void fireEnemyBullets(ENEMY* b) {
	if (b->active) {
		for (int i = 0; i < ENEMYBULLETCOUNT; i++) {
			if (!enemybullets[i].active) {
				enemybullets[i].row = b->row;
				enemybullets[i].col = b->col + b->width/2 - enemybullets[i].width/2;
				enemybullets[i].active = 1;
				enemybullets[i].bulletType = b->botRow;
				break;
			}
		}
	}
}