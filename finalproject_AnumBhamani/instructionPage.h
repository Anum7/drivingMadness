
//{{BLOCK(instructionPage)

//======================================================================
//
//	instructionPage, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 341 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10912 + 2048 = 13472
//
//	Time-stamp: 2019-04-20, 23:18:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONPAGE_H
#define GRIT_INSTRUCTIONPAGE_H

#define instructionPageTilesLen 10912
extern const unsigned short instructionPageTiles[5456];

#define instructionPageMapLen 2048
extern const unsigned short instructionPageMap[1024];

#define instructionPagePalLen 512
extern const unsigned short instructionPagePal[256];

#endif // GRIT_INSTRUCTIONPAGE_H

//}}BLOCK(instructionPage)
