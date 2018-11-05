
//{{BLOCK(bg)

//======================================================================
//
//	bg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 62 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1984 + 2048 = 4544
//
//	Time-stamp: 2018-10-31, 21:53:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_H
#define GRIT_BG_H

#define bgTilesLen 1984
extern const unsigned short bgTiles[992];

#define bgMapLen 2048
extern const unsigned short bgMap[1024];

#define bgPalLen 512
extern const unsigned short bgPal[256];

#endif // GRIT_BG_H

//}}BLOCK(bg)
