#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "Frog.h"
#include "fly.h"
#include "Pond.h"

// Variables
PLAYER player;
FLY flies[FLYCOUNT];
GARBAGE garbage[GARBAGECOUNT];
int fliesRemaining;
int livesRemaining;

// Initialize the game
void initGame() {

	initPlayer();
    initFlies();
    initGarbage();

    // Initialize the score
	fliesRemaining = FLYCOUNT;
	livesRemaining = LIVESCOUNT;

    // Initialize the colors
    unsigned short colors[NUMCOLORS] = {BLACK, BLUE, GREEN, RED, WHITE, GRAY};

    // Load the fly and pond colors
    DMANow(3, flyPal, PALETTE, 256);
    DMANow(3, PondPal, PALETTE, 256);

    // Load the custom game colors to the end
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256 - NUMCOLORS + i] = colors[i];
    }
}

// Updates the game each frame
void updateGame() {

	updatePlayer();

	// Update all the flies
	for (int i = 0; i < FLYCOUNT; i++) {
		updateFly(&flies[i], &player);
	}

	// Update all the garbage
	for (int i = 0; i < GARBAGECOUNT; i++) {
		updateGarbage(&garbage[i], &player);
	}
}

// Draws the game each frame
void drawGame() {
    drawFullscreenImage4(PondBitmap);
	drawPlayer(&player);

	// Draw all the flies
	for (int i = 0; i < FLYCOUNT; i++) {
		drawFly(&flies[i]);
	}

	// Draw all the garbage
	for (int i = 0; i < GARBAGECOUNT; i++) {
		drawGarbage(&garbage[i]);
	}
}

// Initialize the player
void initPlayer() {
	player.row = 130;
	player.col = 118;
	player.cdel = 5;
	player.rdel = 1;
	player.height = 12;
	player.width = 12;
}

// Handle every-frame actions of the player
void updatePlayer() {
	// Make sure frog does not go out of bounds
	if (player.row < 0) {
		player.row = 0;
	}
	if ((player.row + player.height) > SCREENHEIGHT) {
		player.row = SCREENHEIGHT - player.height;
	}

	// Move the player
	if (BUTTON_PRESSED(BUTTON_LEFT)
		&& player.col >= player.cdel) {

		player.col -= player.cdel;

	} else if (BUTTON_PRESSED(BUTTON_RIGHT)
		&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {

		player.col += player.cdel;

	} else if (BUTTON_PRESSED(BUTTON_UP)
		&& player.row >= player.rdel) {

		player.row -= player.cdel;

	} else if (BUTTON_PRESSED(BUTTON_DOWN)
		&& player.row >= player.rdel) {
		player.row += player.cdel;
	}
}

// Draw the player
void drawPlayer(PLAYER* b) {
	drawImage4(b->row, b->col, b->height, b->width, FrogBitmap);
}

// Initialize the pool of trash
void initGarbage() {
	for (int i = 0; i < GARBAGECOUNT; i++) {
		garbage[i].height = i + 2;  // Varies size for trash
		garbage[i].width = i + 2;    // Varies size for trash
		garbage[i].row = rand() % 80;
		garbage[i].col = rand() % 130;
		garbage[i].oldRow = garbage[i].row;
		garbage[i].oldCol = garbage[i].col;
		garbage[i].rdel = 2;
        garbage[i].cdel = 2;
		garbage[i].color = REDID;
		garbage[i].active = 1;
	}
}

// Handle every-frame actions of a bullet
void updateGarbage(GARBAGE* g, PLAYER* player) {
	if (g->active) {

		// Bounce the trash off the sides of the box
		if (g->row <= 1 || g->row + g->height-1 >= 119)
			g->rdel *= -1;
		if (g->col <= 1 || g->col + g->width-1 >= SCREENWIDTH-2)
			g->cdel *= -1;

		// Move the trash
		g->row += g->rdel;
		g->col += g->cdel;

		// Handle trash collisions with player
		if (collision(g->row, g->col, g->height, g->width,
				player->row, player->col, player->height, player->width)) {

				// Put trash back in the pool (literally)
				g->active = 0;

				// Update the score
				livesRemaining--;
			}
		}
	}

// Draw trash
void drawGarbage(GARBAGE* g) {
	if (g->active) {
		drawRect4(g->row, g->col, g->height, g->width, g->color);
	} 
}

// Initialize the flies
void initFlies() {
	for (int i = 0; i < FLYCOUNT; i++) {
		flies[i].height = 8;
		flies[i].width = 8;
		flies[i].row = rand() % 110;
		flies[i].col = rand() % 130 + 10;
		flies[i].rdel = 2;
		flies[i].cdel = 2;
		flies[i].active = 1;
	}
}

// Handle every-frame actions of a fly
void updateFly(FLY* b, PLAYER* player) {
	if (b->active) {

		// Bounce the fly off the sides of the box
		if (b->row <= 1 || b->row + b->height-1 >= 119)
			b->rdel *= -1;
		if (b->col <= 1 || b->col + b->width-1 >= SCREENWIDTH-2)
			b->cdel *= -1;

		// Move the fly
		b->row += b->rdel;
		b->col += b->cdel;

		// Handle fly-player collisions. If hit, fly is gone
		if (collision(b->row, b->col, b->height, b->width,
				player->row, player->col, player->height, player->width)) {

				// Put fly back in the pool
				b->active = 0;

				// Update how many flies are left to eat
				fliesRemaining--;
			}
		}
}

// Draw a fly
void drawFly(FLY* b) {
	if (b->active) {
	 	drawImage4(b->row, b->col, b->height, b->width, flyBitmap);
	} 
}

