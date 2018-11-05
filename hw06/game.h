// Our player
typedef struct {
	int row;
	int col;
    int cdel;
	int width;
    int height;
    int bulletTimer;
} PLAYER;

// The enemies 
typedef struct {
	int row;
	int col;
	int rdel;
    int cdel;
	int width;
    int height;
    int index;
    int active;
    int aniState;
    int cDirection;
    int botRow;
    int bulletTimer;
} ENEMY;

// Lives
typedef struct {
	int row;
	int col;
	int width;
    int height;
    int index;
    int active;
} LIFE;

// Bullet Struct
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
	int erased;
	int index;
} BULLET;

// Enemy Bullet Struct
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
	int erased;
	int index;
	int bulletType;
} ENEMYBULLET;

// Variables
extern int vOff;
extern int hOff;
extern int livesRemaining;
extern int enemycount;
extern OBJ_ATTR shadowOAM[128];

// Constants
#define BULLETCOUNT 20
#define ENEMYBULLETCOUNT 10
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

void initLives();

void initPlayer();
void updatePlayer();
void drawPlayer();

void initLives();
void updateLives();
void drawLives(LIFE* b);

void initEnemies();
void updateEnemies();
void drawEnemies();

void initBullets();
void updateBullets(BULLET *);
void drawBullets(BULLET *);
void fireBullet();

void initEnemyBullets();
void updateEnemyBullets(ENEMYBULLET *);
void drawEnemyBullets(ENEMYBULLET *);
void fireEnemyBullets(ENEMY *);