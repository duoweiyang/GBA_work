
//{{BLOCK(bg3)

//======================================================================
//
//	bg3, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 201 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6432 + 2048 = 8992
//
//	Time-stamp: 2018-11-23, 02:03:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG3_H
#define GRIT_BG3_H

#define bg3TilesLen 6432
extern const unsigned short bg3Tiles[3216];

#define bg3MapLen 2048
extern const unsigned short bg3Map[1024];

#define bg3PalLen 512
extern const unsigned short bg3Pal[256];

#endif // GRIT_BG3_H

//}}BLOCK(bg3)
