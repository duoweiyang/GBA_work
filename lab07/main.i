# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



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





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();
# 178 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 189 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 229 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 2 "main.c" 2
# 1 "bg.h" 1
# 22 "bg.h"
extern const unsigned short bgTiles[4848];


extern const unsigned short bgMap[4096];


extern const unsigned short bgPal[256];
# 3 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "main.c" 2




void initialize();

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int vOff = 0;

OBJ_ATTR shadowOAM[128];

typedef struct {
 int row;
 int col;
    int rdel;
    int cdel;
 int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
} ANISPRITE;

ANISPRITE pikachu;




enum { PIKAFRONT, PIKABACK, PIKARIGHT, PIKALEFT, PIKAIDLE};

int main() {

    initialize();

 while(1) {






  pikachu.prevAniState = pikachu.aniState;
  pikachu.aniState = PIKAIDLE;


  if(pikachu.aniCounter % 20 == 0) {


   if (pikachu.curFrame < pikachu.numFrames - 1) {
    pikachu.curFrame++;
   } else {
    pikachu.curFrame = 0;
   }
  }


  if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {

   pikachu.aniState = PIKABACK;
   vOff--;
  }
  if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {

   pikachu.aniState = PIKAFRONT;
   vOff++;
  }
  if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {

   pikachu.aniState = PIKALEFT;
   hOff--;
  }
  if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {

   pikachu.aniState = PIKARIGHT;
   hOff++;
  }





  if (pikachu.aniState == PIKAIDLE) {
   pikachu.curFrame = 0;
   pikachu.aniState = pikachu.prevAniState;
  } else {
   pikachu.aniCounter++;
  }
# 112 "main.c"
  shadowOAM[0].attr0 = pikachu.row | (0<<13) | (0<<14);
  shadowOAM[0].attr1 = pikachu.col | (1<<14);
  shadowOAM[0].attr2 = ((pikachu.curFrame * 2)*32+(pikachu.aniState * 2)) | ((0)<<12);

  waitForVBlank();


  DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

        (*(volatile unsigned short *)0x04000010) = hOff;
        (*(volatile unsigned short *)0x04000012) = vOff;
 }

 return 0;
}


void initialize() {



 DMANow(3, bgPal, ((unsigned short *)0x5000000), 512/2);
 DMANow(3, bgTiles, &((charblock *)0x6000000)[0], 9696/2);
 DMANow(3, bgMap, &((screenblock *)0x6000000)[28], 8192/2);




 DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512/2);
 DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);


 hideSprites();
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);


    (*(volatile unsigned short*)0x4000008) = (0<<7) | (3<<14) | ((0)<<2) | ((28)<<8);

    pikachu.width = 16;
    pikachu.height = 16;
    pikachu.rdel = 1;
    pikachu.cdel = 1;
 pikachu.row = 160/2-pikachu.width/2;
 pikachu.col = 240/2-pikachu.height/2;
# 166 "main.c"
 pikachu.aniCounter = 0;
    pikachu.curFrame = 0;
    pikachu.numFrames = 3;

 pikachu.aniState = PIKAFRONT;

    buttons = (*(volatile unsigned short *)0x04000130);


 hOff = 0;
 vOff = 100;

}
