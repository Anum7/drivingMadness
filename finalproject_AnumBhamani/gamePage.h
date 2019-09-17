
//{{BLOCK(gamePage)

//======================================================================
//
//	gamePage, 1024x768@8, 
//	+ palette 256 entries, not compressed
//	+ 2377 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x96 
//	Total size: 512 + 152128 + 24576 = 177216
//
//	Time-stamp: 2019-03-30, 01:27:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEPAGE_H
#define GRIT_GAMEPAGE_H

#define gamePageTilesLen 152128
extern const unsigned short gamePageTiles[76064];

#define gamePageMapLen 24576
extern const unsigned short gamePageMap[12288];

#define gamePagePalLen 512
extern const unsigned short gamePagePal[256];

#endif // GRIT_GAMEPAGE_H

//}}BLOCK(gamePage)
