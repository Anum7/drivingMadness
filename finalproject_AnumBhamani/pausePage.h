
//{{BLOCK(pausePage)

//======================================================================
//
//	pausePage, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 232 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7424 + 2048 = 9984
//
//	Time-stamp: 2019-04-11, 01:41:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSEPAGE_H
#define GRIT_PAUSEPAGE_H

#define pausePageTilesLen 7424
extern const unsigned short pausePageTiles[3712];

#define pausePageMapLen 2048
extern const unsigned short pausePageMap[1024];

#define pausePagePalLen 512
extern const unsigned short pausePagePal[256];

#endif // GRIT_PAUSEPAGE_H

//}}BLOCK(pausePage)
