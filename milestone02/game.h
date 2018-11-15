// Our player
typedef struct {
	int row;
	int col;
    int cdel;
	int width;
    int height;
} PLAYER;

// Variables
int state;
int backgroundState;
int curPath;
int nextPath;
int frameCounter;
int livesRemaining;
extern OBJ_ATTR shadowOAM[128];

// Constants
#define ENEMYCOUNT 8
#define LIFECOUNT 3

// Mode4 Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

//Prototypes
void initGame();
void updateGame();
void drawGame();

void initPenguin();
void updatePenguin();
void idlePenguin();
void leftPenguin();
void rightPenguin();

void straightCave();
void leftCave();
void rightCave();

void goToLose();

void checkCollision();
void crash();
