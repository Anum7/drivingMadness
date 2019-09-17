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
#include "crashSound.h"
#include "collectingCoins.h"

SOUND soundB;

//structs objects
CAR car;
OBSTACLECARS enemiesCar[ENEMIESCOUNT];
COINS coins[COINSCOUNT];
FUELBAR fuelBar;
HEALTH health[HEALTHCOUNT];
HEALTH1 health1[HEALTH1COUNT];
FINISHLINE finishline;
FINISHLINE finishline1;
LIVES lives[LIFECOUNT];
CHEATS cheat;

//variables
volatile int enemiesTimer;
volatile int coinsTimer;
volatile int fuel;
volatile int scores;
volatile int scores1;
volatile int livesTimer;
volatile int liveCollide;
int mosaicCounter;
int lineTimer;
int lineTimer1;
int cheatON;


//initializing game
void initGame() {
    enemiesTimer = 0;
    coinsTimer = 0;
    fuel = 5;
    scores = 0;
    scores1 = 0;
    livesTimer = 0;
    liveCollide = 0;
    mosaicCounter = 0;
    lineTimer = 0;
    lineTimer1 = 0;
    cheatON = 0;

    initCar();
    initenemiesCar();
    initCoins();
    initFuelBar();
    initHealth();
    initFinishline();
    initLive();
    initFinishline1();
    initHealth1();
    initCheat();
}

//updating game
void updateGame() {
    updateCar();
    updateenemiesCar();
    updateCoins();
    updateFuelBar();
    updateHealth();
    updateLive();
    updateFinishLine();
    updateHealth1();
    updateCheat();

    if (BUTTON_PRESSED(BUTTON_R)) {
        if (cheatON == 1) {
            cheatON = 0;
        } else if (cheatON == 0){
            cheatON = 1;
        }
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

//Drawing game
void drawGame() {       
    drawCar();
    drawenemiesCar();    
    drawCoins();
    drawFuelBar();
    drawHealth();
    drawFinishline();
    drawLive();
    drawFinishline1();
    drawHealth1();
    drawCheat();
}

//initilaizing player car
void initCar() {
    car.width = 16;
    car.height = 30;
    car.cdel = 2;
    car.row = 130;
    car.col = 120;
    car.bulletTimer = 0;
    car.aniCounter = 0;
    car.curFrame = 0;
    car.numFrames = 2;
    car.aniState = RED_CAR;
    car.collideCar = 0;
    car.collideCoins = 0;
}

//inializing enemies car
void initenemiesCar(){
    for (int i = 0; i < ENEMIESCOUNT; i++) {
        int random = (rand() % 3) + 1;
        enemiesCar[i].width = 16;
        enemiesCar[i].height = 30;
        enemiesCar[i].cdel = 2;
        enemiesCar[i].row = 5;
        enemiesCar[i].col = 125;        
        enemiesCar[i].aniCounter = 0;
        enemiesCar[i].curFrame = 0;
        enemiesCar[i].numFrames = 2;        
        if (cheatON == 1) {
            if (scores < 5) {
                enemiesCar[i].aniState = CONE; 
            } else {
                enemiesCar[i].aniState = LIFE ;
            }  
        } else if (cheatON == 0) {
            enemiesCar[i].aniState = random;
        }
        enemiesCar[i].active = 0;
    }   
}

//initializing coins
void initCoins(){
    for (int i = 0; i < COINSCOUNT; i++) {
        // int random = (rand() % 3) + 1;
        coins[i].width = 16;
        coins[i].height = 16;
        coins[i].cdel = 2;
        coins[i].row = 5;
        coins[i].col = 135;        
        coins[i].aniCounter = 0;
        coins[i].curFrame = 0;
        coins[i].numFrames = 2;
        coins[i].aniState = CONE;
        coins[i].active = 0;
    }
}

//Initializing fuel bar which shows player how much they have left
void initFuelBar() {
    fuelBar.width = 32;
    fuelBar.height = 32;
    fuelBar.cdel = 2;
    fuelBar.row = 2;
    fuelBar.col = 205;
    fuelBar.curFrame = 3;
    fuelBar.numFrames = 2;
    fuelBar.aniState = FUEL_LEFT1;
}

//Inializing health that shows how many coins they collected and how much more needed to move to next level
void initHealth(){
    int rowFirst = 0;
    for (int i = 0; i < HEALTHCOUNT; i++) {
        health[i].width = 16;
        health[i].height = 16;
        health[i].row = rowFirst;
        health[i].col = 12;        
        health[i].aniCounter = 0;
        health[i].curFrame = 0;
        health[i].numFrames = 2;
        health[i].aniState = STARS;
        health[i].active = 1;
        rowFirst += 11;
    }   
}

//Inializing health that shows how many coins they collected and how much more needed to move to next level
void initHealth1(){
    int rowFirst = 0;
    for (int i = 0; i < HEALTH1COUNT; i++) {
        health1[i].width = 16;
        health1[i].height = 16;
        health1[i].row = rowFirst;
        health1[i].col = 12;        
        health1[i].aniCounter = 0;
        health1[i].curFrame = 0;
        health1[i].numFrames = 2;
        health1[i].aniState = STARS;
        health1[i].active = 1;
        rowFirst += 11;
    }   
}

//inializing Finishline which shows player reaches the end of the game
void initFinishline() {
    finishline.width = 64;
    finishline.height = 16;
    finishline.cdel = 2;
    finishline.row = 0;
    finishline.col = 57;
    finishline.bulletTimer = 0;
    finishline.aniCounter = 0;
    finishline.curFrame = 6;
    finishline.numFrames = 2;
    finishline.aniState = ENDLINE1;
}

//inializing Finishline which shows player reaches the end of the game 
//just to mekt it bigger
void initFinishline1() {
    finishline1.width = 64;
    finishline1.height = 16;
    finishline1.cdel = 2;
    finishline1.row = 0;
    finishline1.col = 121;
    finishline1.bulletTimer = 0;
    finishline1.aniCounter = 0;
    finishline1.curFrame = 6;
    finishline1.numFrames = 2;
    finishline1.aniState = ENDLINE1;
}

//inializing lives
//things to collect in second level to regain fuel
void initLive(){
    for (int i = 0; i < LIFECOUNT; i++) {
        // int random = (rand() % 3) + 1;
        lives[i].width = 16;
        lives[i].height = 16;
        lives[i].cdel = 2;
        lives[i].row = 15;
        lives[i].col = 135;        
        lives[i].aniCounter = 0;
        lives[i].curFrame = 0;
        lives[i].numFrames = 2;
        lives[i].aniState = LIFE;
        lives[i].active = 0;
    }
}

//Inializing cheatDisplay when cheat is on
void initCheat(){
        cheat.width = 16;
        cheat.height = 16;
        cheat.row = 140;
        cheat.col = 210;        
        cheat.aniCounter = 0;
        cheat.curFrame = 3;
        cheat.numFrames = 2;
        cheat.aniState = CHEATDISPLAY;
        cheat.active = 0;
}

//Drawing main player car
void drawCar() {
    car.aniCounter++;
    
    shadowOAM[0].attr0 = car.row | ATTR0_SQUARE; // ATTR0_8BPP
    shadowOAM[0].attr1 = car.col | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(car.curFrame, car.aniState * 4);
    //Mosaic effect when collide with enemies cars
    if (car.collideCar) {
        shadowOAM[0].attr0 |= ATTR0_MOSAIC;
    }

}

//Drawing enemies car
void drawenemiesCar(){
    for (int i = 0; i < ENEMIESCOUNT; i++) {
        if (enemiesCar[i].active) {            
            shadowOAM[i + 1].attr0 = enemiesCar[i].row | ATTR0_SQUARE; // ATTR0_8BPP
            shadowOAM[i + 1].attr1 = enemiesCar[i].col | ATTR1_MEDIUM;
            shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(enemiesCar[i].curFrame, enemiesCar[i].aniState * 4);
        }
    }
    
}

//drawing coins
void drawCoins(){
    for (int i = 0; i < COINSCOUNT; i++) {
        if (coins[i].active) {            
            shadowOAM[i + 1 + ENEMIESCOUNT].attr0 = coins[i].row | ATTR0_SQUARE; // ATTR0_8BPP
            shadowOAM[i + 1 + ENEMIESCOUNT].attr1 = coins[i].col | ATTR1_MEDIUM;
            shadowOAM[i + 1 + ENEMIESCOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(coins[i].curFrame * 4, coins[i].aniState * 4);
        }
    }
    
}

//Drawing fuelBar
void drawFuelBar() {
    fuelBar.aniCounter++;
    
    shadowOAM[1 + ENEMIESCOUNT + COINSCOUNT].attr0 = fuelBar.row | ATTR0_SQUARE; // ATTR0_8BPP
    shadowOAM[1 + ENEMIESCOUNT + COINSCOUNT].attr1 = fuelBar.col | ATTR1_MEDIUM;
    shadowOAM[1 + ENEMIESCOUNT + COINSCOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(fuelBar.curFrame, fuelBar.aniState * 4);
}

//drawing health
void drawHealth() {
    fuelBar.aniCounter++;
    for (int i = 0; i < HEALTHCOUNT; i++) {
        if (health[i].active) {
            shadowOAM[i + 2 + ENEMIESCOUNT + COINSCOUNT].attr0 = health[i].row | ATTR0_SQUARE; // ATTR0_8BPP
            shadowOAM[i + 2 + ENEMIESCOUNT + COINSCOUNT].attr1 = health[i].col | ATTR1_MEDIUM;
            shadowOAM[i + 2 + ENEMIESCOUNT + COINSCOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(health[i].curFrame, health[i].aniState * 4);
        }
    }
}

//Drawing finish line
void drawFinishline() {
    finishline.aniCounter++;
    
    shadowOAM[3 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = finishline.row | ATTR0_WIDE; // ATTR0_8BPP
    shadowOAM[3 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr1 = finishline.col | ATTR1_LARGE;
    shadowOAM[3 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(finishline.curFrame, finishline.aniState * 4);
}

//Drawing finish line
void drawFinishline1() {
    finishline.aniCounter++;
    
    shadowOAM[5 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr0 = finishline1.row | ATTR0_WIDE; // ATTR0_8BPP
    shadowOAM[5 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr1 = finishline1.col | ATTR1_LARGE;
    shadowOAM[5 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(finishline1.curFrame, finishline1.aniState * 4);
}

//Draein lives
void drawLive(){
    for (int i = 0; i < LIFECOUNT; i++) {
        if (lives[i].active) {
            
            shadowOAM[i + 4 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = lives[i].row | ATTR0_SQUARE; // ATTR0_8BPP
            shadowOAM[i + 4 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr1 = lives[i].col | ATTR1_MEDIUM;
            shadowOAM[i + 4 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(lives[i].curFrame * 4, lives[i].aniState * 4);
        }
    }
    
}

//drawing health
void drawHealth1() {
    fuelBar.aniCounter++;
    for (int i = 0; i < HEALTH1COUNT; i++) {
        if (health1[i].active) {
            shadowOAM[i + 6 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr0 = health1[i].row | ATTR0_SQUARE; // ATTR0_8BPP
            shadowOAM[i + 6 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr1 = health1[i].col | ATTR1_MEDIUM;
            shadowOAM[i + 6 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(health1[i].curFrame, health1[i].aniState * 4);
        }
    }
}

//Drawing cheat display
void drawCheat() {
    shadowOAM[7 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT + HEALTH1COUNT].attr0 = cheat.row | ATTR0_SQUARE; // ATTR0_8BPP
    shadowOAM[7 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT + HEALTH1COUNT].attr1 = cheat.col | ATTR1_MEDIUM;
    shadowOAM[7 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT + HEALTH1COUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(cheat.curFrame, cheat.aniState * 4);
    
}

void updateCheat() {
    if (!cheatON) {
        shadowOAM[7 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT + HEALTH1COUNT].attr0 = ATTR0_HIDE;
    }
}

//updating player car if a player press right or left key
void updateCar() {
    if (BUTTON_HELD(BUTTON_RIGHT) && (car.col + car.width - 1) < 195) {
        car.col = car.col + car.cdel;
       } else if (BUTTON_HELD(BUTTON_LEFT) && car.col >= 34) {
        car.col = car.col - car.cdel;
    } 

    if (BUTTON_PRESSED(BUTTON_RIGHT) && (car.col + car.width - 1) < 195) {
        car.col = car.col + car.cdel;
       } else if (BUTTON_PRESSED(BUTTON_LEFT) && car.col >= 34) {
        car.col = car.col - car.cdel;
    }   

    if ((car.collideCar) && mosaicCounter < 5) {
        REG_MOSAIC = MOSAIC_OH(mosaicCounter) | MOSAIC_OV(mosaicCounter);
        mosaicCounter++;
    } else {
        car.collideCar = 0;
        mosaicCounter = 0;
    }        
}

//Upadting enemies car
void updateenemiesCar() {   
    
    //As enemies leaves the screen it disappears
    for (int i = 0; i < ENEMIESCOUNT; i++) {        
        if (enemiesCar[i].row >= 160 && enemiesCar[i].active){
            enemiesCar[i].active = 0;
            shadowOAM[i + 1].attr0 = ATTR0_HIDE;
        }        
        //handling enemies car & player car collision
        if ((enemiesCar[i].active) && collision(enemiesCar[i].row, enemiesCar[i].col, enemiesCar[i].height, enemiesCar[i].width, car.row, car.col, car.height, car.width)) {
            //handling when cheat is on
            if ((enemiesCar[i].active) && (enemiesCar[i].aniState == CONE)) { 
                if ((enemiesCar[i].active) && collision(enemiesCar[i].row, enemiesCar[i].col, coins[0].width, coins[0].height, car.row, car.col, car.height, car.width)) {
                    shadowOAM[i + 1].attr0 |= ATTR0_HIDE; 
                    enemiesCar[i].active = 0;
                    playSoundB(collectingCoins, COLLECTINGCOINSLEN, COLLECTINGCOINSFREQ, 0);
                    scores++;
                }
            } else if ((enemiesCar[i].aniState == LIFE)) {  //Handling when cheat is on 
                if ((enemiesCar[i].active) && collision(enemiesCar[i].row, enemiesCar[i].col, lives[0].height, lives[0].width, car.row, car.col, car.height, car.width)) {
                        shadowOAM[i + 1].attr0 |= ATTR0_HIDE; 
                        enemiesCar[i].active = 0;
                        playSoundB(collectingCoins, COLLECTINGCOINSLEN, COLLECTINGCOINSFREQ, 0);                        
                        liveCollide++;
                        fuel++;
                        scores1++;
                        if (fuel > 5) {
                            fuel = 5;
                        }
                }
            } else {
                //when cheat is off and it's normal enemies car
                if ((enemiesCar[i].active) && collision(enemiesCar[i].row, enemiesCar[i].col, enemiesCar[i].height, enemiesCar[i].width, car.row, car.col, car.height, car.width)) {                    
                    shadowOAM[i + 1].attr0 |= ATTR0_HIDE;
                    playSoundB(crashSound, CRASHSOUNDLEN, CRASHSOUNDFREQ, 0);
                    car.collideCar = 1; 
                    enemiesCar[i].active = 0;                   
                    fuel--; 
                }                                    

            }

        }

    }

    //moving enemies car 
    for (int i = 0; i < ENEMIESCOUNT; i++) {
        if (enemiesCar[i].active) {
            enemiesCar[i].row++;
        }
    }

    //Upadting enemies location every 20 frame
    if (enemiesTimer % 20 == 0) {
        for (int j = 0; j < ENEMIESCOUNT; j++) { 
            if(enemiesCar[j].active == 0) {
                int random = (rand() % 3) + 1; 
                int location = rand() % 160 + 1;                    
                if (location < 35) { location = location + 45;}
                
                enemiesCar[j].col = location;
                enemiesCar[j].row = 5;

                if (cheatON == 1) {                    
                    if (scores < 5) {
                        enemiesCar[j].aniState = CONE; 
                    } else {
                        enemiesCar[j].aniState = LIFE ;
                    }  
                } else if (cheatON == 0){
                    enemiesCar[j].aniState = random;
                }

                enemiesCar[j].active = 1;                

                //handling enemies cars don't overlap each other
                for (int i = 0; i < ENEMIESCOUNT; i++) {                                       
                    if(i != j) {
                        if (enemiesCar[i].active && collision(enemiesCar[j].row, enemiesCar[j].col, enemiesCar[j].height, enemiesCar[j].width, enemiesCar[i].row, enemiesCar[i].col, enemiesCar[i].height, enemiesCar[i].width)){
                            enemiesCar[j].active = 0;
                            break;                            
                        } 
                    }
                }

                //handling enemies cars don't overalp coins
                for (int k = 0; k < COINSCOUNT; k++) {                                                           
                        if (coins[k].active && collision(enemiesCar[j].row, enemiesCar[j].col, enemiesCar[j].height, enemiesCar[j].width, coins[k].row, coins[k].col, coins[k].height, coins[k].width)){
                            enemiesCar[j].active = 0;
                            break;
                       }                     
                }

                //handling enemies car and lives overlap            
                for (int k = 0; k < LIFECOUNT; k++) {                                                               
                        if (lives[k].active && collision(lives[k].row, lives[k].col, lives[k].height, lives[k].width, enemiesCar[j].row, enemiesCar[j].col, enemiesCar[j].height, enemiesCar[j].width)){
                            enemiesCar[j].active = 0;
                            break;                                
                       }                         
                }             
            }
        }
    }
    enemiesTimer++;

}


//updating coins
void updateCoins() {
    //hiding coins when player collect 5 of them
    for (int i = 0; i < COINSCOUNT; i++) {
        if (scores >= 5) {
            coins[i].active = 0;
            shadowOAM[i + 1 + ENEMIESCOUNT].attr0 = ATTR0_HIDE;
        } 

        //Disappearing coins when they go out of the screen
        if (coins[i].row >= 160 && coins[i].active){
            coins[i].active = 0;
            shadowOAM[i + 1 + ENEMIESCOUNT].attr0 = ATTR0_HIDE;
        }

        //handling car & coins collision
        if ((coins[i].active) && collision(coins[i].row, coins[i].col, coins[i].height, coins[i].width, car.row, car.col, car.height, car.width)) {
            coins[i].active = 0;
            shadowOAM[i + 1 + ENEMIESCOUNT].attr0 = ATTR0_HIDE;
            scores++; 
            playSoundB(collectingCoins, COLLECTINGCOINSLEN, COLLECTINGCOINSFREQ, 0);
        }
    }

    //updating coins location
    for (int i = 0; i < COINSCOUNT; i++) {
        if (coins[i].active) {
            coins[i].row++;
        }
    }

    //changing coins location every 50 frame
    if (coinsTimer % 50 == 0) {
        for (int j= 0; j < COINSCOUNT; j++) { 
            if(coins[j].active == 0) {
                    int location = rand() % 162 + 1;  
                    if (location < 35) { location = location + 50;}  
                    coins[j].col = location;
                    coins[j].row = 5;
                    coins[j].curFrame = 0;                
                    coins[j].numFrames = 2;
                    coins[j].aniState = CONE;
                    coins[j].active = 1;

                    //handling coins overlap
                    for (int i = 0; i < COINSCOUNT; i++) {                                       
                        if(i != j) {
                            if (coins[i].active && collision(coins[j].row, coins[j].col, coins[j].height, coins[j].width, coins[i].row, coins[i].col, coins[i].height, coins[i].width)){
                                coins[j].active = 0;
                                break;                            
                            } 
                        }
                    }        

                    //handling enemies cars and coins overlap        
                    for (int k = 0; k < ENEMIESCOUNT; k++) {                                                               
                            if (enemiesCar[k].active && collision(coins[j].row, coins[j].col, coins[j].height, coins[j].width, enemiesCar[k].row, enemiesCar[k].col, enemiesCar[k].height, enemiesCar[k].width)){
                                coins[j].active = 0;
                                break;                                
                           }                         
                    }                                                            
            }
        }
    }

    //animating coins
    for (int i = 0; i < COINSCOUNT; i++) {
        if (coins[i].active && coinsTimer % 11 == 0) {
            coins[i].curFrame = (coins[i].curFrame + 1) % 2;
        }
    }
    coinsTimer++;

}

//updating fuel bar based on how many enemies car collide with car
void updateFuelBar() {
    if (fuel == 5) {
        fuelBar.aniState = FUEL_LEFT1;
    } else if (fuel == 4) {
        fuelBar.aniState = FUEL_LEFT2;
    } else if (fuel == 3) {
        fuelBar.aniState = FUEL_LEFT3;
    } else if (fuel == 2) {
        fuelBar.aniState = FUEL_LEFT4;
    } else {
        fuelBar.aniState = FUEL_LEFT5;
    }
}

//updating health based on how many coins collected
void updateHealth() {
    for (int i = 0; i < HEALTHCOUNT; i++) {
        if (scores >= 5) {
            health[i].active = 0;
            shadowOAM[i + 2 + ENEMIESCOUNT + COINSCOUNT].attr0 = ATTR0_HIDE;

        }
    }

    if (scores == 1) {
        health[0].aniState = FILLEDSTARS;
    } else if (scores == 2) {
        health[0].aniState = FILLEDSTARS;
        health[1].aniState = FILLEDSTARS;
    } else if (scores == 3) {
        health[0].aniState = FILLEDSTARS;
        health[1].aniState = FILLEDSTARS;
        health[2].aniState = FILLEDSTARS;
    } else if (scores == 4) {
        health[0].aniState = FILLEDSTARS;
        health[1].aniState = FILLEDSTARS;
        health[2].aniState = FILLEDSTARS;
        health[3].aniState = FILLEDSTARS;
    } else if (scores >= 5){
        health[0].aniState = FILLEDSTARS;
        health[1].aniState = FILLEDSTARS;
        health[2].aniState = FILLEDSTARS;
        health[3].aniState = FILLEDSTARS;
        health[4].aniState = FILLEDSTARS;
    }
}

//updating health based on how many coins collected
void updateHealth1() {
    for (int i = 0; i < HEALTH1COUNT; i++) {
        if (scores < 5) {
            health1[i].active = 0;
            shadowOAM[i + 6 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr0 = ATTR0_HIDE;

        } else {
            health1[i].active = 1;
        }
    }

    if (scores1 == 1) {
        health1[0].aniState = FILLEDSTARS;
    } else if (scores1 >= 2) {
        health1[1].aniState = FILLEDSTARS;
    } 
}
//update lives (second form of coins)
void updateLive() {

    //hiding them until certain conditions matched
    for (int i = 0; i < LIFECOUNT; i++) {
        if (scores < 5) {
            lives[i].active = 0;
            shadowOAM[i + 4 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = ATTR0_HIDE;

        }

        if (liveCollide >= 2) {
            cheatON = 0;
            lives[i].active = 0;
            shadowOAM[i + 4 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = ATTR0_HIDE;
            car.row--;
        }

        //disappearing lives when move of the screen
        if (lives[i].row >= 160 && lives[i].active){
            lives[i].active = 0;
            shadowOAM[i + 3 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = ATTR0_HIDE;
        }

        //handling car-lives collision
        if ((lives[i].active) && collision(lives[i].row, lives[i].col, lives[i].height, lives[i].width, car.row, car.col, car.height, car.width)) {
            lives[i].active = 0;
            shadowOAM[i + 4 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = ATTR0_HIDE;              
            fuel++;
            scores1++;
            playSoundB(collectingCoins, COLLECTINGCOINSLEN, COLLECTINGCOINSFREQ, 0);
            if (fuel > 5) {
                fuel = 5;
            } 

            liveCollide++;         
        }
    }

    //upading live movement
    for (int i = 0; i < LIFECOUNT; i++) {
        if (lives[i].active) {
            lives[i].row++;
        }
    }

    //updating lives location
    if (livesTimer % 50 == 0) {
        for (int j= 0; j < LIFECOUNT; j++) { 
            if(lives[j].active == 0) {
                    int location = rand() % 160 + 1;  
                    if (location < 35) { location = location + 50;}  
                    lives[j].col = location;
                    lives[j].row = 5;
                    lives[j].curFrame = 0;                
                    lives[j].numFrames = 2;
                    lives[j].aniState = LIFE; 
                    lives[j].active = 1; 

                    //handling lives overlap
                    for (int i = 0; i < LIFECOUNT; i++) {                                       
                        if(i != j) {
                            if (lives[i].active && collision(lives[j].row, lives[j].col, lives[j].height, lives[j].width, lives[i].row, lives[i].col, lives[i].height, lives[i].width)){
                                lives[j].active = 0;
                                break;                            
                            } 
                        }
                    }    

                    //handling enemies car and lives overlap            
                    for (int k = 0; k < ENEMIESCOUNT; k++) {                                                               
                            if (enemiesCar[k].active && collision(lives[j].row, lives[j].col, lives[j].height, lives[j].width, enemiesCar[k].row, enemiesCar[k].col, enemiesCar[k].height, enemiesCar[k].width)){
                                lives[j].active = 0;
                                break;                                
                           }                         
                    }                                                              
            }
        }
    }

    //animating lives
    for (int i = 0; i < LIFECOUNT; i++) {
        if (lives[i].active && livesTimer % 11 == 0) {
            lives[i].curFrame = (lives[i].curFrame + 1) % 2;
        }
    }

    livesTimer++;

}

//updating finish lines
void updateFinishLine() {
    if (liveCollide < 2) {
        shadowOAM[3 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT].attr0 = ATTR0_HIDE;
        shadowOAM[5 + ENEMIESCOUNT + COINSCOUNT + HEALTHCOUNT + LIFECOUNT].attr0 = ATTR0_HIDE;
    }
}