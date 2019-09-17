
//{{BLOCK(sideWalk)

//======================================================================
//
//	sideWalk, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 118 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3776 + 2048 = 6336
//
//	Time-stamp: 2019-04-02, 14:43:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SIDEWALK_H
#define GRIT_SIDEWALK_H

#define sideWalkTilesLen 3776
extern const unsigned short sideWalkTiles[1888];

#define sideWalkMapLen 2048
extern const unsigned short sideWalkMap[1024];

#define sideWalkPalLen 512
extern const unsigned short sideWalkPal[256];

#endif // GRIT_SIDEWALK_H

//}}BLOCK(sideWalk)
