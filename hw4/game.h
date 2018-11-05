// Player Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	unsigned short color;
} PLAYER;

typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int radius;
	unsigned short color;
	int active;
	int erased;
	int lose;
} BALL;

// Brick Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BRICK;

// Constants
#define BRICKCOUNT 30

// Variables
extern PLAYER player;
extern BALL ball;
extern BRICK bricks[BRICKCOUNT];
extern int bricksRemaining;

// Prototypes
void initGame();
void updateGame();
void drawGame();

void initPlayer();
void updatePlayer();
void drawPlayer();

void initBall();
void updateBall();
void drawBall();

void initBricks();
void updateBricks(BRICK *, BALL *);
void drawBricks(BRICK *);