
//{{BLOCK(losePage)

//======================================================================
//
//	losePage, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 312 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9984 + 2048 = 12544
//
//	Time-stamp: 2019-04-04, 17:04:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSEPAGE_H
#define GRIT_LOSEPAGE_H

#define losePageTilesLen 9984
extern const unsigned short losePageTiles[4992];

#define losePageMapLen 2048
extern const unsigned short losePageMap[1024];

#define losePagePalLen 512
extern const unsigned short losePagePal[256];

#endif // GRIT_LOSEPAGE_H

//}}BLOCK(losePage)
