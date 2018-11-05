# 1 "hw01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "hw01.c"
# 23 "hw01.c"
void setPixel(int, int, unsigned short);
void frame1();
void frame2();
void frame3();
void drawCircle(int row, int col, int radius, unsigned short color);
void delay(int amount);


unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {

    (*(unsigned short *)0x4000000) = 3 | (1<<10);


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

    videoBuffer[((row)*(240)+(col))] = color;
}

void frame1() {

    drawCircle(65, 115, 30, 0);
    drawCircle(65, 115, 8, ((31) | (0)<<5 | (0)<<10));
}

void frame2() {

    drawCircle(65, 115, 8, 0);
    drawCircle(55, 130, 3, ((31) | (0)<<5 | (0)<<10));
    drawCircle(60, 99, 3, ((31) | (0)<<5 | (0)<<10));
    drawCircle(50, 120, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(60, 130, 4, ((31) | (0)<<5 | (0)<<10));
    drawCircle(70, 93, 3, ((31) | (0)<<5 | (0)<<10));
    drawCircle(72, 99, 4, ((31) | (0)<<5 | (0)<<10));
    drawCircle(77, 110, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(65, 115, 13, ((31) | (0)<<5 | (0)<<10));
    drawCircle(70, 135, 3, ((31) | (0)<<5 | (0)<<10));
    drawCircle(75, 130, 3, ((31) | (0)<<5 | (0)<<10));
    drawCircle(82, 113, 3, ((31) | (0)<<5 | (0)<<10));
}

void frame3() {

    drawCircle(65, 115, 20, 0);
    drawCircle(55, 135, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(47, 100, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(50, 110, 2, ((31) | (31)<<5 | (0)<<10));
    drawCircle(40, 123, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(55, 132, 3, ((31) | (31)<<5 | (0)<<10));
    drawCircle(72, 93, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(70, 100, 3, ((31) | (31)<<5 | (0)<<10));
    drawCircle(78, 112, 2, ((31) | (0)<<5 | (0)<<10));
    drawCircle(73, 113, 2, ((31) | (31)<<5 | (0)<<10));
    drawCircle(64, 123, 2, ((31) | (31)<<5 | (0)<<10));
    drawCircle(65, 115, 5, ((31) | (31)<<5 | (0)<<10));
    drawCircle(73, 136, 3, ((31) | (0)<<5 | (0)<<10));
    drawCircle(76, 132, 2, ((31) | (31)<<5 | (0)<<10));
    drawCircle(85, 114, 2, ((31) | (0)<<5 | (0)<<10));
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
