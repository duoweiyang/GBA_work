// Player Struct
typedef struct {
	int row;
	int col;
	int cdel;
	int rdel;
	int height;
	int width;
	unsigned char color;
} PLAYER;

// Fly Struct
typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
} FLY;

// Garbage Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	int active;
	unsigned char color;
} GARBAGE;

// Constants
#define FLYCOUNT 8
#define GARBAGECOUNT 6
#define LIVESCOUNT 3

// Variables
extern PLAYER player;
extern FLY flies[FLYCOUNT];
extern GARBAGE garbage[GARBAGECOUNT];
extern int fliesRemaining;
extern int livesRemaining;

// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void drawPlayer(PLAYER *);
void initGarbage();
void updateGarbage(GARBAGE *, PLAYER *);
void drawGarbage(GARBAGE *);
void initFlies();
void updateFly(FLY *, PLAYER *);
void drawFly(FLY *);