# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern unsigned short *videoBuffer;
# 40 "myLib.h"
void setPixel(int row, int col, unsigned short color);
void drawRect(int row, int col, int height, int width, unsigned short color);
void drawCircle(int row, int col, int radius, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 67 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 79 "myLib.h"
int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 2 "main.c" 2


void initialize();
void update();
void draw();


unsigned short buttons;
unsigned short oldButtons;


unsigned short bgColor;


int lose;


int gRow;
int gCol;
int gOldRow;
int gOldCol;
int gRDel;
int gCDel;
int gHeight;
int gRadius;


int bRow;
int bCol;
int bOldRow;
int bOldCol;
int bRDel;
int bCDel;
int bHeight;
int bWidth;


int cRow;
int cCol;
int cOldRow;
int cOldCol;
int cRDel;
int cCDel;
int cHeight;
int cWidth;

int main() {

 initialize();

 while(1) {


  oldButtons = buttons;
  buttons = (*(volatile unsigned short *)0x04000130);


  if (lose == 0) {
  update();
  waitForVBlank();
  draw();
  }
 }
}


void initialize() {

 (*(unsigned short *)0x4000000) = 3 | (1<<10);


 buttons = (*(volatile unsigned short *)0x04000130);
 oldButtons = 0;


  bgColor = ((15) | (15)<<5 | (15)<<10);
    fillScreen(bgColor);


    lose = 0;


 gRow = 20;
 gCol = 20;
 gOldRow = gRow;
 gOldCol = gCol;
 gRDel = 1;
 gCDel = 1;
 gRadius = 5;


 bRow = 70;
 bCol = 10;
 bOldRow = bRow;
 bOldCol = bCol;
 bRDel = 1;
 bCDel = 1;
 bHeight = 30;
 bWidth = 5;


 cRow = 70;
 cCol = 225;
 cOldRow = cRow;
 cOldCol = cCol;
 cRDel = 1;
 cCDel = 1;
 cHeight = 30;
 cWidth = 5;
}


void update() {


  if ((~(*(volatile unsigned short *)0x04000130) & ((1<<0)))) {
   bRow -= 1;
  } else if ((~(*(volatile unsigned short *)0x04000130) & ((1<<1)))) {
   bRow += 1;
  }


  if ((~(*(volatile unsigned short *)0x04000130) & ((1<<6)))) {
   cRow -= 1;
  } else if ((~(*(volatile unsigned short *)0x04000130) & ((1<<7)))) {
   cRow += 1;
  }



 if (gRow <= 0 || gRow + gRadius - 1 >= 160 - 1)
  gRDel *= -1;
 if (gCol <= 0 || gCol + gRadius - 1 >= 240 - 1)
  lose = 1;


 if (bRow < 0) {
  bRow = 0;
 }
 if ((bRow + bHeight) > 160) {
  bRow = 160 - bHeight;
 }
 if (cRow < 0) {
  cRow = 0;
 }
 if ((cRow + cHeight) > 160) {
  cRow = 160 - cHeight;
 }




 if (collision(gRow - gRadius, gCol - gRadius, gRadius * 2, gRadius * 2, bRow, bCol, bHeight, bWidth)) {
  gCDel *= -1;
 }

 if (collision(gRow - gRadius, gCol - gRadius, gRadius * 2, gRadius * 2, cRow, cCol, cHeight, cWidth)) {
  gCDel *= -1;
 }



 gRow += gRDel;
 gCol += gCDel;
}


void draw() {


 drawCircle(gOldRow, gOldCol, gRadius, bgColor);
 drawRect(bOldRow, bOldCol, bHeight, bWidth, bgColor);
 drawRect(cOldRow, cOldCol, cHeight, cWidth, bgColor);


 drawCircle(gRow, gCol, gRadius, ((0) | (31)<<5 | (0)<<10));
 drawRect(bRow, bCol, bHeight, bWidth, ((0) | (0)<<5 | (31)<<10));
 drawRect(cRow, cCol, cHeight, cWidth, ((0) | (31)<<5 | (31)<<10));


 gOldRow = gRow;
 gOldCol = gCol;
 bOldRow = bRow;
 bOldCol = bCol;
 cOldRow = cRow;
 cOldCol = cCol;
}
