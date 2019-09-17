
//{{BLOCK(mainRoad)

//======================================================================
//
//	mainRoad, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 64 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2048 + 2048 = 4608
//
//	Time-stamp: 2019-04-16, 13:49:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAINROAD_H
#define GRIT_MAINROAD_H

#define mainRoadTilesLen 2048
extern const unsigned short mainRoadTiles[1024];

#define mainRoadMapLen 2048
extern const unsigned short mainRoadMap[1024];

#define mainRoadPalLen 512
extern const unsigned short mainRoadPal[256];

#endif // GRIT_MAINROAD_H

//}}BLOCK(mainRoad)
