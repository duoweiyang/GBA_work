# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 27 "myLib.h"
extern unsigned short *videoBuffer;
# 47 "myLib.h"
void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
# 83 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 94 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    unsigned int cnt;
} DMA;


extern DMA *dma;
# 134 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 2 "myLib.c" 2


unsigned short *videoBuffer = (unsigned short *)0x6000000;


DMA *dma = (DMA *)0x40000B0;


void setPixel3(int row, int col, unsigned short color) {

 videoBuffer[((row)*(240)+(col))] = color;
}


void setPixel4(int row, int col, unsigned char colorIndex) {
    unsigned short pixels = videoBuffer[((row)*(240/2)+(col/2))];
    if (col & 1) {
        pixels &= 0xFF;
        videoBuffer[((row)*(240/2)+(col/2))] = pixels | colorIndex << 8;
    } else {
        pixels &= 0xFF << 8;
        videoBuffer[((row)*(240/2)+(col/2))] = pixels | colorIndex;
    }
}


void drawRect3(int row, int col, int height, int width, volatile unsigned short color) {

 for(int r = 0; r < height; r++) {
        DMANow(3, &color, &videoBuffer[((row+r)*(240)+(col))], (2 << 23) | width);
 }
}


void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex) {

    unsigned short pixels = colorIndex << 8 | colorIndex;

    for (int r = 0; r < height; r++) {
        if (col % 2 == 0) {
            if (width > 1) {
                DMANow(3, &pixels, &videoBuffer[((row + r)*(240/2)+(col/2))], (width/2) | (2 << 23));
            }
            if (width % 2 == 1) {
                setPixel4(row + r, col + width - 1, colorIndex);
            }
        }
        else {
            setPixel4(row + r, col, colorIndex);
            if (width % 2 == 1) {
                if (width > 1) {
                    DMANow(3, &pixels, &videoBuffer[((row + r)*(240/2)+((col + 1)/2))], (width/2) | (2 << 23));
                }
            } else {
                if (width > 2) {
                DMANow(3, &pixels, &videoBuffer[((row + r)*(240/2)+((col + 1)/2))], ((width/2) - 1) | (2 << 23));
                }
                setPixel4(row + r, col + width - 1, colorIndex);
            }
        }
    }
}


void fillScreen3(volatile unsigned short color) {

 DMANow(3, &color, videoBuffer, (2 << 23) | (240 * 160));
}


void fillScreen4(volatile unsigned char colorIndex) {

    volatile unsigned short c = colorIndex << 8 | colorIndex;
    DMANow(3, &c, videoBuffer, 160 * 240 / 2 | (1 << 31) | (2 << 23) | (0 << 23));
}


void drawImage3(int row, int col, int height, int width, const unsigned short *image) {

    for(int r = 0; r < height; r++) {
        DMANow(3, &image[((r)*(width)+(0))], &videoBuffer[((row+r)*(240)+(col))], width);
    }
}


void drawImage4(int row, int col, int height, int width, const unsigned short *image) {


    for (int y = 0; y < height; y++) {
        DMANow(3, &image[((y)*(width / 2)+(0))], videoBuffer + ((row + y)*(240)+(col))/2, (width/2) | (1 << 31));
    }
}


void drawFullscreenImage3(const unsigned short *image) {

    DMANow(3, image, videoBuffer, 240 * 160);
}


void drawFullscreenImage4(const unsigned short *image) {


    DMANow(3, (unsigned short*)image, videoBuffer, ((240 * 160)/2));

}


void waitForVBlank() {

 while((*(volatile unsigned short *)0x4000006) > 160);
 while((*(volatile unsigned short *)0x4000006) < 160);
}


void flipPage() {

    if ((*(unsigned short *)0x4000000) & (1<<4)) {
        videoBuffer = ((unsigned short *)0x600A000);
    } else {
        videoBuffer = ((unsigned short *)0x6000000);
    }
    (*(unsigned short *)0x4000000) ^= (1<<4);
}


void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {


    dma[channel].cnt = 0;


    dma[channel].src = src;
    dma[channel].dst = dst;


    dma[channel].cnt = cnt | (1 << 31);
}


int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB) {

    return rowA < rowB + heightB - 1 && rowA + heightA - 1 > rowB
        && colA < colB + widthB - 1 && colA + widthA - 1 > colB;
}
