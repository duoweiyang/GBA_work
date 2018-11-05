// GBA Video Registers and Flags
#define REG_DISPCTL (*(unsigned short *)0x4000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)

// Create a color with the specified RGB values
#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

// Calculate the position of a pixel based on its row and column
#define OFFSET(r, c, rowlen) ((r)*(rowlen)+(c))

// Predefined colors
#define RED COLOR(31, 0, 0)
#define GREEN COLOR(0, 31, 0)
#define BLUE COLOR(0, 0, 31)
#define MAGENTA COLOR(31, 0, 31)
#define CYAN COLOR(0, 31, 31)
#define YELLOW COLOR(31, 31, 0)
#define BLACK 0
#define WHITE COLOR(31, 31, 31)

// Function Prototypes
void setPixel(int, int, unsigned short);
void frame1();
void frame2();
void frame3();
void drawCircle(int row, int col, int radius, unsigned short color);
void delay(int amount);

// Global Variables
unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    

    while(1) {

    frame1();
    delay(90000);

    frame2();
    delay(90000);

    frame3();
    delay(90000);

    }
}



void setPixel(int row, int col, unsigned short color) {
    // TODO: Complete this function
    videoBuffer[OFFSET(row, col, 240)] = color;
}

void frame1() {
    // don't erase the whole screen, just erase the shape/use a bounding box
    drawCircle(65, 115, 30, BLACK);
    drawCircle(65, 115, 8, RED);
}

void frame2() {
    // don't erase the whole screen, just erase the shape/use a bounding box
    drawCircle(65, 115, 8, BLACK);
    drawCircle(55, 130, 3, RED);
    drawCircle(60, 99, 3, RED);
    drawCircle(50, 120, 2, RED);
    drawCircle(60, 130, 4, RED);
    drawCircle(70, 93, 3, RED);
    drawCircle(72, 99, 4, RED);
    drawCircle(77, 110, 2, RED);
    drawCircle(65, 115, 13, RED);
    drawCircle(70, 135, 3, RED);
    drawCircle(75, 130, 3, RED);
    drawCircle(82, 113, 3, RED);
}

void frame3() {
    // don't erase the whole screen, just erase the shape/use a bounding box
    drawCircle(65, 115, 20, BLACK);
    drawCircle(55, 135, 2, RED);
    drawCircle(47, 100, 2, RED);
    drawCircle(50, 110, 2, YELLOW);
    drawCircle(40, 123, 2, RED);
    drawCircle(55, 132, 3, YELLOW);
    drawCircle(72, 93, 2, RED);
    drawCircle(70, 100, 3, YELLOW);
    drawCircle(78, 112, 2, RED);
    drawCircle(73, 113, 2, YELLOW);
    drawCircle(64, 123, 2, YELLOW);
    drawCircle(65, 115, 5, YELLOW);
    drawCircle(73, 136, 3, RED);
    drawCircle(76, 132, 2, YELLOW);
    drawCircle(85, 114, 2, RED);
}

void drawCircle(int row, int col, int radius, unsigned short color) {
    for (int y = -radius; y <= radius; y++) {
        for (int x = -radius; x <= radius; x++) {
            if (x*x + y*y <= radius * radius) {
                setPixel(row + x, col + y, color);
            }
        }
    }
}


void delay(int amount) {
    volatile int trash = amount;
    for (int i = 0; i < trash; i++) {
    } 
}
