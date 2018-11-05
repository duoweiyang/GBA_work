# 1 "lab01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab01.c"
# 23 "lab01.c"
void setPixel(int, int, unsigned short);
void drawTriangle(int, int);


unsigned short *videoBuffer = (unsigned short *)0x6000000;

int main() {

    (*(unsigned short *)0x4000000) = 3 | (1<<10);


    drawTriangle(3, 10);
    drawTriangle(50, 60);
    drawTriangle(80, 150);

    while(1);
}



void setPixel(int row, int col, unsigned short color) {

    videoBuffer[((row)*(240)+(col))] = color;
}

void drawTriangle(int row, int col) {

    for (int i = 0; i < 50; i++) {
     for (int j = 0; j < i; j++) {
            setPixel(row + i, col + j, ((0) | (31)<<5 | (31)<<10));
        }
    }
}
