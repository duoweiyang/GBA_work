#include <stdlib.h>
#include "myLib.h"
#include "game.h"

// Variables
PLAYER player;
BALL ball;
BRICK bricks[BRICKCOUNT];

int bricksRemaining;

// Initialize the game
void initGame() {

	initPlayer();

	initBall();

	initBricks();
	bricksRemaining = BRICKCOUNT;
}

// Updates the game each frame
void updateGame() {

	updatePlayer();

	updateBall();
	
	// Update all the bricks
	for (int i = 0; i < BRICKCOUNT; i++) {
		updateBricks(&bricks[i], &ball);
	}
}

// Draws the game each frame
void drawGame() {

	drawPlayer();

	drawBall();

	// Draw all the bricks
	for (int i = 0; i < BRICKCOUNT; i++) {
		drawBricks(&bricks[i]);
	}
}

// // Initialize the player
void initPlayer() {
	player.row = 140;
 	player.col = 100;
 	player.oldRow = player.row;
 	player.oldCol = player.col;
 	player.cdel = 1;
 	player.height = 5;
 	player.width = 35;
 	player.color = GREEN;
}

// // Handle every-frame actions of the player
 void updatePlayer() {

// 	// Move the player
 	if (BUTTON_HELD(BUTTON_LEFT)
 		&& player.col >= player.cdel) {

 		player.col -= player.cdel;

 	} else if (BUTTON_HELD(BUTTON_RIGHT)
 		&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {

 		player.col += player.cdel;

 	}
 }

// // Draw the player
 void drawPlayer() {

 	drawRect(player.oldRow, player.oldCol, player.height, player.width, BLACK);
 	drawRect(player.row, player.col, player.height, player.width, player.color);

 	player.oldRow = player.row;
 	player.oldCol = player.col;
 }

// Initialize the ball
void initBall() {
	ball.row = 130;
	ball.col = 120;
	ball.oldRow = ball.row;
	ball.oldCol = ball.col;
	ball.rdel = 1;
	ball.cdel = 1;
	ball.radius = 5;
	ball.color = RED;
	ball.active = 1;
	ball.lose = 0;
}

// Depending on where the ball is, it will move in the opposite trajectory or cause you to lose
void updateBall() {
	if (ball.row <= 0) {
		ball.rdel *= -1;
	}
	if (ball.row + ball.radius - 1 >= SCREENHEIGHT - 1) {
		ball.lose = 1;
	}
	if (ball.col <= 0 || ball.col + ball.radius - 1 >= SCREENWIDTH - 1) {
		ball.cdel *= -1;
	}
	if (collision(ball.row - ball.radius, ball.col - ball.radius, ball.radius * 2, ball.radius * 2, player.row, player.col, player.height, player.width)) {
		ball.rdel *= -1;
	}

	ball.row += ball.rdel;
	ball.col += ball.cdel;
}

void drawBall() {
	// Erase previous ball
	drawCircle(ball.oldRow, ball.oldCol, ball.radius, BLACK);

	// Draw ball in its new location
	drawCircle(ball.row, ball.col, ball.radius, RED);

	ball.oldRow = ball.row;
	ball.oldCol = ball.col;
}

// Initialize the bricks
void initBricks() {

	for (int i = 0; i < BRICKCOUNT; i++) {
		bricks[i].height = 10;
		bricks[i].width = 24;
		bricks[i].row = rand() % 110;
		bricks[i].col = rand() % 130 + 10;
		bricks[i].oldRow = bricks[i].row;
		bricks[i].oldCol = bricks[i].col;
		bricks[i].rdel = 1;
		bricks[i].cdel = 1;
		bricks[i].color = GRAY;
		bricks[i].active = 1;
		bricks[i].erased = 0;
	}
}

// Handle every-frame actions of a brick
void updateBricks(BRICK* b, BALL* ball) {
	if (b->active) {
		if (b->active && ball->active) {
			if (collision(b->row, b->col, b->height, b->width, ball->row, ball->col, ball->radius, ball->radius)) {
				b->erased = 0;
				b->active = 0;
				bricksRemaining--;
			}
		}
	}
}

// Draw a brick
void drawBricks(BRICK* b) {

	if(b->active) {
		drawRect(b->row, b->col, b->height, b->width, b->color);
	} else if (!b->erased) {
		drawRect(b->oldRow, b->oldCol, b->height, b->width, BLACK);
		b->erased = 1;
	}
	b->oldRow = b->row;
	b->oldCol = b->col;
}