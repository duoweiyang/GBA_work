# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern unsigned short *videoBuffer;
# 39 "myLib.h"
void setPixel(int row, int col, unsigned short color);
void drawRect(int row, int col, int height, int width, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 65 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 77 "myLib.h"
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 2 "myLib.c" 2

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int row, int col, unsigned short color) {

 videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect(int row, int col, int height, int width, unsigned short color) {

    for (int i = 0; i < height; i++) {
     for (int j = 0; j < width; j++) {
      setPixel(row + i, col + j, color);
     }
    }
}

void fillScreen(unsigned short color) {


    for (int i = 0; i < 240 * 160; i++) {
     videoBuffer[i] = color;
    }
}

void waitForVBlank() {

 while((*(volatile unsigned short *)0x4000006) > 160);
 while((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {



    if (colA < (colB + widthB) && rowA < (rowB + heightB) && (colB) < (colA + widthA) && rowB < (rowA + heightA)) {
     return 1;
    }
    return 0;
}
