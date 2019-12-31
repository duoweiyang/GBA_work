
//{{BLOCK(pauseState)

//======================================================================
//
//	pauseState, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 426 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13632 + 2048 = 16192
//
//	Time-stamp: 2018-11-23, 02:07:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESTATE_H
#define GRIT_PAUSESTATE_H

#define pauseStateTilesLen 13632
extern const unsigned short pauseStateTiles[6816];

#define pauseStateMapLen 2048
extern const unsigned short pauseStateMap[1024];

#define pauseStatePalLen 512
extern const unsigned short pauseStatePal[256];

#endif // GRIT_PAUSESTATE_H

//}}BLOCK(pauseState)
