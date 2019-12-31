
//{{BLOCK(continue)

//======================================================================
//
//	continue, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 32 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1024 + 2048 = 3584
//
//	Time-stamp: 2018-11-28, 19:20:56
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CONTINUE_H
#define GRIT_CONTINUE_H

#define continueTilesLen 1024
extern const unsigned short continueTiles[512];

#define continueMapLen 2048
extern const unsigned short continueMap[1024];

#define continuePalLen 512
extern const unsigned short continuePal[256];

#endif // GRIT_CONTINUE_H

//}}BLOCK(continue)
