#ifndef MY_LIB_H
#define MY_LIB_H

typedef unsigned short u16;

#define REG_DISPCTL *(unsigned short *)0x4000000
#define MODE3 3
#define MODE4 4
#define BG2_ENABLE (1<<10)

#define PALETTE ((u16 *)0x5000000)

#define BACKBUFFER (1<<4)

#define SCANLINECOUNTER *(volatile u16 *)0x4000006


#define COLOR(r,g,b) ((r) | (g)<<5 | (b)<<10)
#define RED COLOR(31,0,0)
#define GREEN COLOR(0,31,0)
#define BLUE COLOR(0,0,31)
#define WHITE COLOR(31,31,31)
#define BLACK 0
#define SCREENWIDTH 240
#define OFFSET(r,c,rowlen) ((r)*(rowlen)+(c))

#define BLACKINDEX 0
#define REDINDEX 1
#define BLUEINDEX 2
#define GREENINDEX 3
#define WHITEINDEX 4

extern unsigned short *videoBuffer;

extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;

// Prototypes
// MODE 3 Drawing functions
void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void fillScreen3(unsigned short color);
void drawImage3(const unsigned short* image, int row, int col, int height, int width);

// MODE 4 Drawing functions
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




// *** Input =========================================================

// Buttons

#define BUTTON_A		(1<<0)
#define BUTTON_B		(1<<1)
#define BUTTON_SELECT	(1<<2)
#define BUTTON_START	(1<<3)
#define BUTTON_RIGHT	(1<<4)
#define BUTTON_LEFT		(1<<5)
#define BUTTON_UP		(1<<6)
#define BUTTON_DOWN		(1<<7)
#define BUTTON_R		(1<<8)
#define BUTTON_L		(1<<9)


extern unsigned int oldButtons;
extern unsigned int buttons;

#define BUTTONS *(volatile unsigned int *)0x04000130

#define BUTTON_HELD(key)  (~(BUTTONS) & (key))
#define BUTTON_PRESSED(key) (!(~(oldButtons)&(key)) && (~buttons & (key)))

// *** DMA =========================================================

void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);

// DMA channel 3 register definitions
#define REG_DMA3SAD         *(volatile u32*)0x40000D4  // source address
#define REG_DMA3DAD         *(volatile u32*)0x40000D8  // destination address
#define REG_DMA3CNT         *(volatile u32*)0x40000DC  // control register

typedef volatile struct
{
        volatile const void *src;
        volatile const void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;

#define DMA_DESTINATION_INCREMENT (0 << 21)
#define DMA_DESTINATION_DECREMENT (1 << 21)
#define DMA_DESTINATION_FIXED (2 << 21)
#define DMA_DESTINATION_RESET (3 << 21)

#define DMA_SOURCE_INCREMENT (0 << 23)
#define DMA_SOURCE_DECREMENT (1 << 23)
#define DMA_SOURCE_FIXED (2 << 23)

#define DMA_REPEAT (1 << 25)

#define DMA_16 (0 << 26)
#define DMA_32 (1 << 26)

#define DMA_NOW (0 << 28)
#define DMA_AT_VBLANK (1 << 28)
#define DMA_AT_HBLANK (2 << 28)
#define DMA_AT_REFRESH (3 << 28)

#define DMA_IRQ (1 << 30)
#define DMA_ON (1 << 31)

// Timers
// CONTROLLERS
#define REG_TM0CNT *(volatile unsigned short*)0x4000102
#define REG_TM1CNT *(volatile unsigned short*)0x4000106
#define REG_TM2CNT *(volatile unsigned short*)0x400010A
#define REG_TM3CNT *(volatile unsigned short*)0x400010E

// TIMER VALUES
#define REG_TM0D       *(volatile unsigned short*)0x4000100
#define REG_TM1D       *(volatile unsigned short*)0x4000104
#define REG_TM2D       *(volatile unsigned short*)0x4000108
#define REG_TM3D       *(volatile unsigned short*)0x400010C

// Timer flags
#define TIMER_ON      (1<<7)  
#define TM_IRQ        (1<<6)
#define TM_CASCADE    (1<<2)
#define TM_FREQ_1     0
#define TM_FREQ_64    1
#define TM_FREQ_256   2
#define TM_FREQ_1024  3

// Time factors to multiply clock ticks to convert to microsec (usec)
// The next line (uncommented) should be in myLib.c
// double timefactors[] = {0.059604, 3.811, 15.259, 59.382};
// extern double timefactors[];


// *** Interrupts ====================================================

// CONTROLLER
#define REG_IME *(unsigned short*)0x4000208 
// ENABLER
#define REG_IE *(unsigned short*)0x4000200  
// FLAG
#define REG_IF *(volatile unsigned short*)0x4000202

// 
#define REG_INTERRUPT *(unsigned int*)0x3007FFC
// DISPLAY STATUS
#define REG_DISPSTAT *(unsigned short*)0x4000004

//interrupt constants for turning them on
#define INT_VBLANK_ENABLE 1 << 3

//interrupt constants for checking which type of interrupt happened
#define INT_VBLANK 1 << 0
#define INT_TM1 1<<4
#define INT_BUTTON 1 << 12


// *** Sound =========================================================

#define REG_SOUNDCNT_X *(volatile u16 *)0x04000084

#define PROCESSOR_CYCLES_PER_SECOND (16777216)
#define VBLANK_FREQ (59.727)

// register definitions
#define REG_SOUNDCNT_L        *(u16*)0x04000080
#define REG_SOUNDCNT_H        *(volatile u16*)0x04000082

// flags
#define SND_ENABLED           (1<<7)
#define SND_OUTPUT_RATIO_25   0
#define SND_OUTPUT_RATIO_50   (1<<0)
#define SND_OUTPUT_RATIO_100  (1<<1)
#define DSA_OUTPUT_RATIO_50   (0<<2)
#define DSA_OUTPUT_RATIO_100  (1<<2)
#define DSA_OUTPUT_TO_RIGHT   (1<<8)
#define DSA_OUTPUT_TO_LEFT    (1<<9)
#define DSA_OUTPUT_TO_BOTH    (3<<8)
#define DSA_TIMER0            (0<<10)
#define DSA_TIMER1            (1<<10)
#define DSA_FIFO_RESET        (1<<11)
#define DSB_OUTPUT_RATIO_50   (0<<3)
#define DSB_OUTPUT_RATIO_100  (1<<3)
#define DSB_OUTPUT_TO_RIGHT   (1<<12)
#define DSB_OUTPUT_TO_LEFT    (1<<13)
#define DSB_OUTPUT_TO_BOTH    (3<<12)
#define DSB_TIMER0            (0<<14)
#define DSB_TIMER1            (1<<14)
#define DSB_FIFO_RESET        (1<<15)

// FIFO address defines
#define REG_FIFO_A          (u16*)0x040000A0
#define REG_FIFO_B          (u16*)0x040000A4


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
	int AI_STATE; // adding the AI_STATE to do the AI stuff in main.c
} MOVOBJ;
#endif