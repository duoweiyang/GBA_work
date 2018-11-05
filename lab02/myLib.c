#include "myLib.h"

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int row, int col, unsigned short color) {

	videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

void drawRect(int row, int col, int height, int width, unsigned short color) {
    // TODO #1: Implement this function
    for (int i = 0; i < height; i++) {
    	for (int j = 0; j < width; j++) {
    		setPixel(row + i, col + j, color); 
    	}
    }
}

void fillScreen(unsigned short color) {
    // TODO #2: Implement this function
    // Note: You may only use a single loop
    for (int i = 0; i < 240 * 160; i++) {
    	videoBuffer[i] = color;
    }
}

void waitForVBlank() {

	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}

int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {
    // TODO #5.0: Implement this function

    // Left side of rectangle a and right of rectangle b
    if (colA < (colB + widthB) && rowA < (rowB + heightB) && (colB) < (colA + widthA) && rowB < (rowA + heightA)) {
    	return 1;
    } 
    return 0;
}










