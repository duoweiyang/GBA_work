
//{{BLOCK(startScreen)

//======================================================================
//
//	startScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 310 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9920 + 2048 = 12480
//
//	Time-stamp: 2018-11-02, 13:55:07
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startScreenTilesLen 9920
extern const unsigned short startScreenTiles[4960];

#define startScreenMapLen 2048
extern const unsigned short startScreenMap[1024];

#define startScreenPalLen 512
extern const unsigned short startScreenPal[256];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startScreen)
