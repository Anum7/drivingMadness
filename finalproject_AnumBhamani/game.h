//structs
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
    int bulletTimer;
    int collideCar;
    int collideCoins;
} CAR;

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
    int bulletTimer;
    int active;
} OBSTACLECARS;

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
    int active;
} COINS;

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
    int active;
} FUELBAR;

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
    int bulletTimer;
    int active;
} HEALTH;

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
    int bulletTimer;
    int active;
} HEALTH1;

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
    int bulletTimer;
    int active;
} FINISHLINE;

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
    int active;
} LIVES;

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
    int bulletTimer;
    int active;
} CHEATS;

//constants
#define ENEMIESCOUNT 4
#define COINSCOUNT 3
#define HEALTHCOUNT 5
#define HEALTH1COUNT 2
#define LIFECOUNT 1

//shadowOAM
extern OBJ_ATTR shadowOAM[];

//struct objects
extern CAR car;
extern OBSTACLECARS enemiesCar[ENEMIESCOUNT];
extern COINS coins[COINSCOUNT]; 
extern FUELBAR fuelBar;
extern HEALTH health[HEALTHCOUNT];
extern HEALTH1 health1[HEALTH1COUNT];
extern FINISHLINE finishline;
extern FINISHLINE finishline1;
extern LIVES lives[LIFECOUNT];
extern CHEATS cheat;

//varaibles
extern volatile int enemiesTimer;
extern volatile int newEnemiesTimer;
extern volatile int fuel;
extern volatile int scores;
extern volatile int liveCollide;
extern volatile int finishlineTimer;
extern int mosaicCounter;
extern int lineTimer;
extern int lineTimer1;


enum {RED_CAR, GRAY_CAR, ORANGE_CAR, YELLOW_CAR, CONE, STARS, FILLEDSTARS, LIFE, FUEL_LEFT1, FUEL_LEFT2, FUEL_LEFT3, FUEL_LEFT4, EMPTY3, FUEL_LEFT5, CHEATDISPLAY, EMPTY5, ENDLINE1, ENDLINE2, ENDLINE3};

//functions
void initGame();
void drawGame();
void updateGame();

void initCar();
void updateCar();
void drawCar();

void initenemiesCar();
void updateenemiesCar();
void drawenemiesCar();

void initCoins();
void updateCoins();
void drawCoins();

void initFuelBar();
void drawFuelBar();
void updateFuelBar();

void initHealth();
void drawHealth();
void updateHealth();


void initFinishline();
void updateFinishLine();
void drawFinishline();

void initLive();
void updateLive();
void drawLive();

void initFinishline1();
void drawFinishline1();

void initHealth1();
void drawHealth1();
void updateHealth1();

void initCheat();
void drawCheat();
void updateCheat();

