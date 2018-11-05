#include "myLib.h"

// The start of the video memory
unsigned short *videoBuffer = (unsigned short *)0x6000000;

// The start of DMA registers
DMA *dma = (DMA *)0x40000B0;

// Set a pixel on the screen
void setPixel(int row, int col, unsigned short color) {

	videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

// Draw a rectangle at the specified location and size
void drawRect(int row, int col, int height, int width, unsigned short color) {
    // TODO 4.2: Rewrite this function using DMA
    volatile unsigned short c = color;
	for (int i = 0; i < height; i++) {
        DMANow(3, &c, &videoBuffer[OFFSET(row + i, col, SCREENWIDTH)],
            width | DMA_ON | DMA_SOURCE_FIXED | DMA_SOURCE_INCREMENT);
    }
}


// Fill the entire screen with a single color
void fillScreen(unsigned short color) {
    volatile unsigned short c = color; 
    // TODO 4.1: Rewrite this function using DMA
    DMANow(3, &c, videoBuffer, 38400 | DMA_ON | DMA_SOURCE_FIXED | DMA_SOURCE_INCREMENT);
}

// Pause code execution until vertical blank begins
void waitForVBlank() {
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}

// Set up and begin a DMA transfer
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    // TODO 4.0: Complete this function
    // First, turn this channel of DMA off (cnt = 0)
    dma[channel].cnt = 0;
    // Second, set the source and destination registers of this DMA channel to the given parameters
    dma[3].src = src;
    dma[3].dst = dst;
    dma[3].cnt = cnt | DMA_ON;

    // Finally, set the control to the given parameter, and bitwise-or DMA_ON to the end to turn it on

}

// Return true if the two rectangular areas are overlapping
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {

    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}