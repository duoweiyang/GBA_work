
//{{BLOCK(turnLeft)

//======================================================================
//
//	turnLeft, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2018-11-08, 17:20:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TURNLEFT_H
#define GRIT_TURNLEFT_H

#define turnLeftTilesLen 64
extern const unsigned short turnLeftTiles[32];

#define turnLeftMapLen 2048
extern const unsigned short turnLeftMap[1024];

#define turnLeftPalLen 512
extern const unsigned short turnLeftPal[256];

#endif // GRIT_TURNLEFT_H

//}}BLOCK(turnLeft)
