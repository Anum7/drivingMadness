
/*Driving Madness game is almost finish. I have sort of two levels. 
In first level, player has to avoid colliding with different cars. Colliding each time with cars will reduce the fuel and player can see it on fuel bar
goal is to collect 5 coins and player can see how many they heave collected by looking at the hearts
Once player has collected all 5 coins without running out of fuel, speed of the game will increase and coins will disappear and finish line will appear
Now there will be different kinds of coins 'lives coins' appear on the screen. Collecting these coins will increase the fuel
Goal is to collect two of those lives coins and once player will collect two of those, car will start moving forward towards the finish line
To win player has to reach the finish line without running out of fuel. 
I made last step to reach finish line little easy after collecting two lives coins just to make sure player wins.

I have added sound to my game and also I have cheat. When cheat is on, instead of enemiescar, coins will appear depends which coins appears on what level player is. When cheat is on player will easily win.
My cheat can be turned on and off by using BUTTON_R and my cheat will automatically turned off when player has collected all 7 coins. 
enemies car that becomes coins do not animate.
I have mosaic effect when player car collide with enemies car.

Input Buttons: Right and Left arrow key to control car.
BUTTON_L: to read instruction when on start and pause page
BUTTON_START: to start or pause game
BUTTON_SELECT: to go back to start screen from pause and instruction
BUTTON_R: to turn on & off cheat */

#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "menuScreen.h"
#include "losePage.h"
#include "winPage.h"
#include "pausePage.h"
#include "gamePage.h"
#include "instructionPage.h"
#include "sideWalk.h"
#include "mainRoad.h"
#include "spritesheet.h"
#include "game.h"
#include "sound.h"
#include "GameSong.h"
#include "StartSFX.h"
#include "winSong.h"
#include "loseSound.h"
#include "mainSong.h"
#include "crashSound.h"
#include "collectingCoins.h"
#include "instructSong.h"


// State Prototypes
void initialize();
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();


void goToWin();
void win();
void goToLose();
void lose();
void goToInstruct();
void instruct();

SOUND soundA;
SOUND soundB;

//variables
int hOff;
int vOff;
int pauseVOff; 
int timer;
int counter;
int flag;

OBJ_ATTR shadowOAM[128];


// States
enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCT};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;



int main() {
    // hideSprites();
    initialize();

    setupSounds();
    setupInterrupts();

    playSoundA(mainSong,MAINSONGLEN,MAINSONGFREQ, 1);

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
             
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case INSTRUCT:
                instruct();
                break;
        }
               
    }
}

// Sets up GBA
void initialize() {

    initGame();
    timer = 0;
    hOff = 0;
    vOff = 0;
    pauseVOff = 0;
    counter = 0;
    flag = 0;

    //load sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2 );
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], (spritesheetTilesLen / 2));
    
    //hideSprites();

    buttons = BUTTONS;
    // Set up the first state
    goToStart();
}


// Sets up the start state
void goToStart() {

    REG_BG0VOFF = 0;

    DMANow(3, menuScreenPal, PALETTE, menuScreenPalLen / 2);
    DMANow(3, menuScreenTiles, &CHARBLOCK[0], (menuScreenTilesLen / 2));
    DMANow(3, menuScreenMap, &SCREENBLOCK[28], (menuScreenMapLen / 2));
    
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT =BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);  
 
    waitForVBlank();

    state = START;

    seed = 0;
    hOff = 0;
    vOff = 0;

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

}

// Runs every frame of the start state
void start() {
    
    seed++;

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_DISPCTL |= SPRITE_ENABLE;

        srand(seed);

        stopSound();                        
        playSoundA(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);

        
        goToGame();
    }

    if (BUTTON_PRESSED(BUTTON_L)){
        stopSound();
        playSoundA(instructSong, INSTRUCTSONGLEN, INSTRUCTSONGFREQ, 1);
        goToInstruct();
    }
      
    /*if (BUTTON_PRESSED(BUTTON_L)) {
        REG_BG0CNT |= MOSAIC_ON;
        flag = 1;
        
     }    
     if (flag) {
        if (counter <= 8) {
            counter++;
            REG_MOSAIC = MOSAIC_OH(counter) | MOSAIC_OV(mosaicCounter);
            //waitForVBlank();
        } else {
            counter = 0;
            flag = 0;
            goToInstruct();
        }
     }*/ 
     waitForVBlank();
}

// Sets up the game state
void goToGame() {
    timer =0;

    REG_BG0VOFF = vOff;
    DMANow(3, mainRoadPal, PALETTE, mainRoadPalLen / 2);
    DMANow(3, mainRoadTiles, &CHARBLOCK[0], (mainRoadTilesLen / 2));
    DMANow(3, mainRoadMap, &SCREENBLOCK[27], (mainRoadMapLen / 2));
    
    DMANow(3, sideWalkTiles, &CHARBLOCK[1], (sideWalkTilesLen / 2));
    DMANow(3, sideWalkMap, &SCREENBLOCK[24], (sideWalkMapLen / 2));

    REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(24);
    REG_BG1CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(27);
    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    
     //load sprites
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2 );
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], (spritesheetTilesLen / 2));

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);


    waitForVBlank();

    initGame();
    state = GAME;
}


// Runs every frame of the game state
void game() { 
    updateGame();
    drawGame();

    //changing the speed of game
    if (scores < 5 || liveCollide >= 2) {
       if (timer % 4 != 0) {
        vOff = vOff - 1;
        }  
    } 
    if (scores >= 5) {
        if(timer % 4 == 0) {
            vOff = vOff - 2;
        } else {
            vOff = vOff - 1;
        }
    }
    timer++;
    REG_BG0VOFF = vOff;

    waitForVBlank();

    REG_BG1VOFF = vOff;

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }  
    if(fuel == 0) {
        stopSound();
        playSoundA(loseSound, LOSESOUNDLEN, LOSESOUNDFREQ, 1);
        goToLose();
    }  

    if ((car.row <= 0)) {
        stopSound();
        playSoundA(winSong, WINSONGLEN, WINSONGFREQ, 1);
        goToWin();
    }
   
}

// Sets up the pause state
void goToPause() {

    pauseVOff = vOff;
    REG_BG0VOFF = 0;

    DMANow(3, pausePagePal, PALETTE, pausePagePalLen / 2);
    DMANow(3, pausePageTiles, &CHARBLOCK[0], (pausePageTilesLen / 2));
    DMANow(3, pausePageMap, &SCREENBLOCK[28], (pausePageMapLen / 2));


    
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    
    waitForVBlank();
    state = PAUSE;
    
}

// Runs every frame of the pause state
void pause() {
    hideSprites();    
    waitForVBlank(); 

    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_DISPCTL |= SPRITE_ENABLE;
        vOff = pauseVOff;
        //goToGame();
        unpauseSound();
        REG_BG0VOFF = vOff;
        DMANow(3, mainRoadPal, PALETTE, mainRoadPalLen / 2);
        DMANow(3, mainRoadTiles, &CHARBLOCK[0], (mainRoadTilesLen / 2));
        DMANow(3, mainRoadMap, &SCREENBLOCK[27], (mainRoadMapLen / 2));
    

        //DMANow(3, sideWalkPal, PALETTE, sideWalkPalLen / 2);
        DMANow(3, sideWalkTiles, &CHARBLOCK[1], (sideWalkTilesLen / 2));
        DMANow(3, sideWalkMap, &SCREENBLOCK[24], (sideWalkMapLen / 2));

        // REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
        REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(24);
        REG_BG1CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(27);
        REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    
         //load sprites
        DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2 );
        DMANow(3, spritesheetTiles, &CHARBLOCK[4], (spritesheetTilesLen / 2));

        hideSprites();
        DMANow(3, shadowOAM, OAM, 128*4);


        waitForVBlank();

        state = GAME;

    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        playSoundA(mainSong,MAINSONGLEN,MAINSONGFREQ, 1);
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_L)) {
        stopSound();
        playSoundA(instructSong,INSTRUCTSONGLEN,INSTRUCTSONGFREQ, 1);
        goToInstruct();
     }
}

// Sets up the win state
void goToWin() {

    REG_BG0VOFF = 0;

    DMANow(3, winPagePal, PALETTE, winPagePalLen / 2);
    DMANow(3, winPageTiles, &CHARBLOCK[0], (winPageTilesLen / 2));
    DMANow(3, winPageMap, &SCREENBLOCK[28], (winPageMapLen / 2));
    
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    waitForVBlank();
    state = WIN;

}

// Runs every frame of the win state
void win() {
    hideSprites();
    waitForVBlank(); 

    
    
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        playSoundA(mainSong,MAINSONGLEN,MAINSONGFREQ, 1);
        goToStart();
     }

     if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();                        
        playSoundA(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);
        goToGame();
     }

}

// Sets up the lose state
void goToLose() {

    REG_BG0VOFF = 0;

    DMANow(3, losePagePal, PALETTE, losePagePalLen / 2);
    DMANow(3, losePageTiles, &CHARBLOCK[0], (losePageTilesLen / 2));
    DMANow(3, losePageMap, &SCREENBLOCK[28], (losePageMapLen / 2));
    
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28); 

    waitForVBlank();

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
   hideSprites();
    waitForVBlank(); 

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        playSoundA(mainSong,MAINSONGLEN,MAINSONGFREQ, 1);
        goToStart();
     }

     if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();                        
        playSoundA(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);
        goToGame();
     }

}


//sets up the instruct state
void goToInstruct(){

    REG_BG0VOFF = 0; 

    DMANow(3, instructionPagePal, PALETTE, instructionPagePalLen / 2);
    DMANow(3, instructionPageTiles, &CHARBLOCK[0], (instructionPageTilesLen / 2));
    DMANow(3, instructionPageMap, &SCREENBLOCK[28], (instructionPageMapLen / 2));
    
    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    waitForVBlank();
    state = INSTRUCT;
}


//runs every frame of the instruct state
void instruct() {
    hideSprites();
    waitForVBlank(); 
    

    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();                        
        playSoundA(GameSong, GAMESONGLEN, GAMESONGFREQ, 1);
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        playSoundA(mainSong, MAINSONGLEN, MAINSONGFREQ, 1);
        goToStart();     
    }
}

