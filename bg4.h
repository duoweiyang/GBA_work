
//{{BLOCK(bg4)

//======================================================================
//
//	bg4, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 244 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7808 + 2048 = 10368
//
//	Time-stamp: 2018-11-23, 02:03:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG4_H
#define GRIT_BG4_H

#define bg4TilesLen 7808
extern const unsigned short bg4Tiles[3904];

#define bg4MapLen 2048
extern const unsigned short bg4Map[1024];

#define bg4PalLen 512
extern const unsigned short bg4Pal[256];

#endif // GRIT_BG4_H

//}}BLOCK(bg4)
