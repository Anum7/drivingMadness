
//{{BLOCK(menuScreen)

//======================================================================
//
//	menuScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 383 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12256 + 2048 = 14816
//
//	Time-stamp: 2019-04-17, 16:57:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MENUSCREEN_H
#define GRIT_MENUSCREEN_H

#define menuScreenTilesLen 12256
extern const unsigned short menuScreenTiles[6128];

#define menuScreenMapLen 2048
extern const unsigned short menuScreenMap[1024];

#define menuScreenPalLen 512
extern const unsigned short menuScreenPal[256];

#endif // GRIT_MENUSCREEN_H

//}}BLOCK(menuScreen)
