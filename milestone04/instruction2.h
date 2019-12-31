
//{{BLOCK(instruction2)

//======================================================================
//
//	instruction2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 336 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10752 + 2048 = 13312
//
//	Time-stamp: 2018-11-23, 02:04:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTION2_H
#define GRIT_INSTRUCTION2_H

#define instruction2TilesLen 10752
extern const unsigned short instruction2Tiles[5376];

#define instruction2MapLen 2048
extern const unsigned short instruction2Map[1024];

#define instruction2PalLen 512
extern const unsigned short instruction2Pal[256];

#endif // GRIT_INSTRUCTION2_H

//}}BLOCK(instruction2)
