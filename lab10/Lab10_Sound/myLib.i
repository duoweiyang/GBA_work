# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1



typedef unsigned short u16;
# 33 "myLib.h"
extern unsigned short *videoBuffer;

extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void fillScreen3(unsigned short color);
void drawImage3(const unsigned short* image, int row, int col, int height, int width);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, unsigned char colorIndex);
void fillScreen4(unsigned char color);

void drawBackgroundImage4(const unsigned short* image);
void drawImage4(const unsigned short* image, int row, int col, int height, int width);
void drawSubImage4(const unsigned short* sourceImage, int sourceRow, int sourceCol, int sourceWidth,
       int row, int col, int height, int width);

void loadPalette(const unsigned short* palette);

void waitForVblank();
void flipPage();
# 79 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 89 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);






typedef volatile struct
{
        volatile const void *src;
        volatile const void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;
# 216 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

typedef struct
{
 int row;
 int col;
 int rdel;
 int cdel;
 int size;
 u16 color;
 int AI_STATE;
} MOVOBJ;
# 2 "myLib.c" 2

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer = (u16 *)0x600A000;

DMA *dma = (DMA *)0x40000B0;

void setPixel3(int row, int col, unsigned short color)
{
 videoBuffer[((row)*(240)+(col))] = color;
}

void drawRect3(int row, int col, int height, int width, unsigned short color)
{
 unsigned short c = color;

 int i;
 for(i = 0; i < height; i++)
 {
  DMANow(3, &c, &videoBuffer[((row+i)*(240)+(col))], (width) | (2 << 23));
 }
}

void drawImage3(const unsigned short* image, int row, int col, int height, int width)
{
 int i;
 for(i = 0; i < height; i++)
 {
  DMANow(3, &image[((i)*(width)+(0))], &videoBuffer[((row+i)*(240)+(col))], (width));
 }
}

void fillScreen3(unsigned short color)
{
 volatile unsigned short c = color;

 DMANow(3, &c, videoBuffer, (240*160) | (2 << 23));

}

void setPixel4(int row, int col, unsigned char colorIndex)
{
 unsigned short pixels = videoBuffer[((row)*(240/2)+(col/2))];

 if(col & 1)
 {
  pixels &= 0xFF;
  videoBuffer[((row)*(240/2)+(col/2))] = pixels | colorIndex << 8;
 }
 else
 {
  pixels &= 0xFF << 8;
  videoBuffer[((row)*(240/2)+(col/2))] = pixels | colorIndex;
 }
}

void drawRect4(int row, int col, int height, int width, unsigned char colorIndex)
{

 volatile unsigned short pixels = ((colorIndex << 8) | (colorIndex));

 int r;
 for(r = 0; r < height; r++)
 {
  if(col & 1)
  {
   setPixel4(row+r, col, colorIndex);

   if(width & 1)
   {
    DMANow(3, &pixels, &videoBuffer[((row + r)*(240/2)+((col+1)/2))], ((width/2) | (2 << 23)));
   }
   else
   {
    DMANow(3, &pixels, &videoBuffer[((row + r)*(240/2)+((col+1)/2))], (((width/2)-1) | (2 << 23)));
    setPixel4(row+r, col+width - 1, colorIndex);
   }
  }
  else
  {
   DMANow(3, &pixels, &videoBuffer[((row + r)*(240/2)+(col/2))], ((width/2) | (2 << 23)));
   if(width & 1)
   {
    setPixel4(row+r, col+width - 1, colorIndex);
   }
  }
 }
}

void fillScreen4(unsigned char colorIndex)
{
 volatile unsigned short pixels = colorIndex << 8 | colorIndex;
 DMANow(3, &pixels, videoBuffer, ((240 * 160)/2) | (2 << 23));
}



void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control)
{
 dma[channel].src = source;
 dma[channel].dst = destination;
 dma[channel].cnt = (1 << 31) | control;
}

void waitForVblank()
{
 while(*(volatile u16 *)0x4000006 > 160);
 while(*(volatile u16 *)0x4000006 < 160);
}


void flipPage()
{
    if(*(unsigned short *)0x4000000 & (1<<4))
    {
        *(unsigned short *)0x4000000 &= ~(1<<4);
        videoBuffer = backBuffer;
    }
    else
    {
        *(unsigned short *)0x4000000 |= (1<<4);
        videoBuffer = frontBuffer;
    }
}
