
//{{BLOCK(bg5)

//======================================================================
//
//	bg5, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 278 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8896 + 2048 = 11456
//
//	Time-stamp: 2018-11-23, 02:03:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG5_H
#define GRIT_BG5_H

#define bg5TilesLen 8896
extern const unsigned short bg5Tiles[4448];

#define bg5MapLen 2048
extern const unsigned short bg5Map[1024];

#define bg5PalLen 512
extern const unsigned short bg5Pal[256];

#endif // GRIT_BG5_H

//}}BLOCK(bg5)
