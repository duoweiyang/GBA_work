
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

const unsigned short bg4Tiles[3904] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x9999,0xFF99,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0xA999,0x9999,0xCAA9,
	0xFFFF,0xFFFF,0x9999,0xFFFF,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0xAAA9,0xAAAA,0xCCAA,0xACCC,0x255C,0x5552,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xF999,0xFFFF,0xFFF9,0xFFFF,
	0xFFF9,0xFFFF,0x9999,0x9999,0xAAAA,0xAAAA,0x2555,0xC222,

	0xFFFF,0x33FF,0xFFFF,0x3FFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x999F,0x9999,0x9999,0x9999,0xAAAA,0xAAAA,0x777C,0xAAA7,
	0x3333,0x3333,0x3333,0x3333,0x333F,0x3333,0x33FF,0x3333,
	0x3999,0x3333,0x9999,0xFFFF,0x7777,0xF997,0x7777,0x9777,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xFFF3,0xFFFF,0xFFFF,0xF999,0x99FF,0x9999,0x9999,0x9979,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x33FF,0x3333,0xFFFF,0xFFFF,0xFFF9,0xFFFF,0xF999,0xFFFF,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0xF333,
	0x3333,0x99F3,0xFFFF,0x999F,0xAFFF,0xAAAA,0xAA9F,0xAAAA,
	0xF333,0xFFFF,0xFF33,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0x9999,0x9999,0x9999,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0x9999,0x9999,0x9999,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFF99,0xFFFF,0xF999,0xFFFF,0xF999,0xFFFF,0x999A,0x9FFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFF99,0x9FFF,
	0xA999,0x5CCA,0xAA99,0x225C,0xCAAA,0x2222,0x25CA,0x2222,
	0x225C,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x77C2,0x7777,0x2222,0x77C5,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x7777,0x7777,0x7777,0x7777,0x2552,0xC522,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x7777,0x7777,0x7777,0x7777,0x777C,0x7777,0xC522,0x7777,
	0x2222,0x7752,0x2222,0xC222,0x2222,0x2222,0x2222,0x2222,
	0x9999,0xFFF9,0x9997,0x9999,0x9997,0x9999,0x9977,0x9999,
	0x9997,0x9999,0x9997,0x9999,0x9975,0x9999,0x9752,0x9999,

	0xFFFF,0xFFFF,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0xFFFF,0xFFFF,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x7779,0x7777,
	0xFFFF,0xFFFF,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x7777,0x7777,
	0xFFFF,0xFFFF,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x7777,0x9997,

	0xFFFF,0xFFFF,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0xA999,0x9999,0xA799,0x9999,0xA999,0x7999,0xAC77,
	0xFFFF,0x99FF,0x9999,0xA999,0x9999,0xAA99,0x97AA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xCAAA,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xCCCC,0xAAAA,0x5225,0xCCC5,
	0x9AAA,0x9F99,0xAAAA,0x9999,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x9999,0xA999,0x9A99,0xAA99,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x7522,0x9999,0x2222,0x9997,0x2222,0x9975,0x2222,0x9752,
	0x2222,0x7C22,0x2222,0x5222,0x2222,0x2222,0x2222,0x2222,

	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9977,0x9999,0x7C52,0x9999,0x2222,0x999C,
	0x7779,0x7777,0x7799,0x7777,0x7799,0x7777,0x7799,0x7777,
	0x7799,0x7777,0x7779,0x7777,0x7779,0x7777,0x7799,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x9999,0x7777,0x9997,0x7777,0x9977,0x7777,0x9977,
	0x7777,0x9977,0x7777,0x7797,0x7777,0x2779,0x7777,0x22C7,

	0xC799,0xC225,0x2C79,0x2222,0x2279,0x2222,0x2257,0x2222,
	0x2227,0x2222,0x2225,0x2222,0x2222,0x2222,0x2222,0x2222,
	0xAAAA,0xAAAA,0xAAAC,0xAAAA,0xAAC5,0xAAAA,0xC522,0xCAAA,
	0x2222,0x2252,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0xAAAA,0xAAAA,0xCCAA,0xACCC,0x225C,0x5522,0x2225,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0xAAAA,0x5CAA,0xAAAA,0x25CC,0xCCCC,0x2225,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x2222,0x5222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0xAACC,0xAAAA,0xCC52,0xAAAA,0xC522,0xAAAC,0xC522,0xAACC,
	0x5222,0xACCC,0x2222,0xCC52,0x2222,0xC522,0x2222,0x5222,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAC,0xAAAA,0xACCC,0xCCCA,0xCCCC,0x25CC,
	0x2222,0x9752,0x2222,0x7222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x7799,0x7777,0x7799,0x7777,0x7975,0x7777,0x7722,0x7777,
	0x5222,0x7777,0x2222,0x7772,0x2222,0x7752,0x2222,0x4440,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x9777,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x5557,0x7755,0x33F9,0x0000,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x5777,0x7755,0x0000,0x1DD0,0x4444,0x4444,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x5555,0x7557,0x1111,0x4441,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7775,0x7777,0x4444,0x4444,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x9977,0xFF99,0x4444,0x4444,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x0000,0x0003,0x4444,0x4444,0x4444,0x4444,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x11DD,0x1111,0x4444,0x4444,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7C77,0x9777,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x0FF9,0x0000,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x0000,0x1DDD,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x7777,0x7777,0x7777,0x7777,0x7577,0x2777,0x5755,0x2257,
	0x1111,0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,
	0xC777,0x2225,0x2227,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x5552,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x2222,0x4440,0x2222,0x4440,0x2222,0x111F,0x2222,0x41C2,
	0x2222,0x4422,0x2222,0x4422,0x2222,0x4122,0x2222,0x4122,
	0x4444,0x4444,0x4444,0x4444,0x1111,0x1111,0x1444,0x1111,
	0x4444,0x1111,0x4444,0x1144,0x4444,0xA444,0x4444,0x2444,
	0x4444,0x4444,0x4444,0x4444,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0xAAAA,0x7777,0xCCC5,0x777C,
	0x4444,0x4444,0x4444,0x4444,0x1111,0x4411,0x1111,0x4441,
	0x1111,0x4444,0x1111,0x4444,0x4777,0x4444,0x44A7,0x4444,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x1144,0x4444,0x1144,
	0x4444,0x1144,0x4444,0xD144,0x4444,0x7714,0x4444,0x77A1,
	0x4444,0x4444,0x1144,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x0000,0x0000,0x7777,0x7777,0x7777,0x7777,
	0x4444,0x4444,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0xFF00,0x9999,0x7777,0x7777,0x7777,0x7777,
	0x4444,0x4444,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x7777,0x5557,0x7777,0x7777,0x7777,0x7777,

	0x4444,0x4444,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0xD111,0x5555,0x7555,0x7777,0x7777,0x7777,0x7777,
	0x4444,0x4444,0x1111,0x4441,0x1111,0x4441,0x1111,0x4444,
	0xDDDD,0x4444,0x7777,0x4447,0x7777,0x4497,0x7777,0x4D77,
	0x1114,0x1111,0x4444,0x1114,0x4444,0x1114,0x4444,0x1144,
	0x4444,0x1444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x77AA,0xCCCC,0x77C7,0x55C7,0x7774,0x5555,0x5744,0x2555,

	0x1111,0x1111,0x1111,0x4411,0x1111,0x4444,0x4111,0x4444,
	0x44C5,0x4444,0x4455,0x4444,0x4422,0x4444,0x4422,0x4444,
	0x3D11,0x2222,0x2144,0x2222,0x2444,0x2222,0x2444,0x2222,
	0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,
	0x2222,0x4122,0x2222,0x4122,0x2222,0x4022,0x2222,0x4022,
	0x2222,0x4022,0x2222,0x4022,0x2222,0x4022,0x2222,0x4322,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,0x4444,0x2444,

	0xCC52,0x77CC,0xC552,0x57CC,0xC522,0x4CCC,0xC222,0x44CC,
	0x2222,0x444C,0x5222,0x4444,0x2222,0x4444,0x4222,0x4444,
	0x4447,0x4444,0x4444,0x1444,0x4444,0x1144,0x4444,0x1114,
	0x4444,0x1111,0x1444,0x0111,0x1144,0x9011,0x1114,0x9901,
	0x1444,0x7779,0x9141,0x7777,0x7111,0x7777,0x7731,0x9977,
	0x9993,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7799,0x7777,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0xFF99,0x999F,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0xF777,0x7777,0x7777,0x7777,0x7777,0x7999,0x7777,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9FFF,0x9999,

	0x4444,0x4444,0x4140,0x4441,0x1107,0x4441,0x1077,0x4411,
	0x0999,0x4111,0xAA99,0x111D,0xFA99,0x110A,0xA999,0x1DCA,
	0xC444,0x2255,0x4444,0x222C,0x4444,0x2224,0x4444,0x2244,
	0x4444,0x2444,0x4444,0x4444,0x4444,0x4444,0x4411,0x4444,
	0x4422,0x4444,0x4422,0x4444,0x4222,0x4444,0x4222,0x4444,
	0x4222,0x4444,0x4222,0x4444,0x4224,0x4444,0x4244,0x4444,
	0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,
	0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,

	0x2222,0x4322,0x2222,0x4F22,0x2222,0x4922,0x2222,0x4722,
	0x2222,0x4722,0x2222,0x4522,0x2222,0x4522,0x2222,0x4222,
	0x4444,0x2444,0x4444,0x2444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4422,0x4444,0x4442,0x4444,0x4444,0x1444,0x4444,0x1144,
	0x4444,0x1114,0x4444,0x1114,0x4444,0x5114,0x4444,0xCA14,
	0x1111,0xFFFD,0xD111,0xF99A,0xAD11,0xF9AA,0xAA11,0xFAAA,
	0xAAC1,0xAAAA,0xACCA,0xAAAA,0xACC5,0xAAAA,0xAACC,0xAAAA,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFF3,0x33FF,0x3333,
	0x33FF,0x3333,0x3FF9,0x3333,0x3FF9,0x3333,0x3FF9,0x0003,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x33FF,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x3FF3,0x3333,0xFF33,0x3333,
	0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x3333,0xFF33,0x3333,0x3333,
	0x3333,0x3333,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x333F,0xFFFF,0x3333,0x3333,
	0x3333,0x3333,0x0000,0x3000,0x0000,0x0000,0x0000,0x0000,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFF3F,0xFFFF,
	0xF333,0xA9FF,0xFF33,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,
	0xA999,0xD5CA,0xAA99,0x2CCA,0xAAA9,0x55CC,0xAAAA,0x55CC,
	0xAAAA,0x55CC,0xAAAA,0x55CC,0xCAAA,0x55CC,0xAAAA,0x55CC,
	0x4441,0x4444,0x4441,0x4444,0x4412,0x4444,0x4122,0x4444,
	0x1222,0x4444,0x2222,0x4444,0x2222,0x444C,0x2222,0x44A2,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x2444,0x2222,0x2444,0x2222,0x2444,0x2222,0x1444,0x2222,
	0xD444,0x2222,0xD444,0x2222,0x0444,0x2222,0x0444,0x2222,
	0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,
	0x2222,0x4222,0x2222,0x4222,0x2222,0x4222,0x2222,0x2222,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x1444,0x4444,0x1444,

	0x4444,0x52C1,0x4444,0x525A,0xA444,0x5522,0x2344,0x5522,
	0x22F4,0x5522,0x222D,0x5522,0x2222,0x5522,0x2222,0x5522,
	0xAACC,0xAAAA,0xAACC,0xAAAA,0xAACC,0xAAAA,0xAACC,0xAAAA,
	0xAACC,0xAAAA,0xAACC,0xAAAA,0xAACC,0xAAAA,0xAACC,0xAAAA,
	0xFFF9,0x0033,0xFFF9,0x0033,0xFFF9,0x0033,0xFFF9,0x0333,
	0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,
	0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,
	0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,

	0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,
	0xCAAA,0x55CC,0xCAAA,0x55CC,0xCAAA,0x55CC,0xCAAA,0x55CC,
	0x2222,0x4F22,0x2222,0x3222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x4444,0x4444,0x4444,0x4444,0x4443,0x4444,0x4402,0x4444,
	0x4022,0x4444,0x1222,0x4444,0x1222,0x4444,0x1222,0x4444,
	0x0444,0x2222,0x0444,0x2222,0x0444,0x2222,0xD444,0x2222,
	0xD444,0x2222,0x1444,0x2222,0x1444,0x2222,0x4444,0x2222,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x4222,0x2222,0x2222,0x2222,0x1222,0x2222,0x1222,
	0x4444,0x1444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x2222,0x5522,0x2222,0x5222,0x2222,0x5222,0x2222,0x5222,
	0x2222,0x5222,0x2222,0x5522,0x2222,0x5522,0x2222,0x5522,
	0xAACC,0xAAAA,0xAACC,0xAAAA,0xAACC,0xAAAA,0xAACC,0xAAAA,
	0xACCC,0xAAAA,0xACCC,0xAAAA,0xACCC,0xAAAA,0xACCC,0xAAAA,

	0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,
	0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,
	0xF330,0xA9FF,0xF330,0xA9FF,0x3330,0xA9FF,0x3330,0xA9FF,
	0x3330,0xA9FF,0x3330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,
	0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,
	0xCAAA,0x55CC,0xCAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,
	0x1222,0x4444,0xD222,0x4444,0xD222,0x4444,0x0222,0x4444,
	0x0222,0x4444,0x0222,0x4444,0x0222,0x4444,0xF222,0x4444,

	0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,
	0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,
	0x2222,0x1222,0x2222,0x1222,0x2222,0xD222,0x2222,0xD222,
	0x2222,0x0222,0x2222,0x0222,0x2222,0x0222,0x2222,0x0222,
	0x2222,0x5522,0x2222,0x5222,0x2222,0x5222,0x2222,0x5222,
	0x2222,0x5222,0x2222,0x5222,0x2222,0x5222,0x222C,0x5222,
	0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,0xFFF9,0x0333,
	0xFFF9,0x033F,0x3FF9,0x0333,0x3FF9,0x0333,0x3FF9,0x0333,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x3000,
	0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,
	0xF330,0xA9FF,0xF330,0xA9FF,0xF330,0xA9FF,0xF333,0xA9FF,
	0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,
	0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,
	0x2225,0x2222,0x2225,0x2222,0x2225,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0xF222,0x4444,0x9222,0x4444,0xA222,0x4444,0x5222,0x4444,
	0x5222,0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,
	0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,
	0x4444,0x2222,0x4444,0x2225,0x4444,0x222A,0x4444,0x2229,
	0x2222,0x3222,0x2222,0x3222,0x2222,0xF222,0x2222,0xF222,
	0x2222,0x7222,0x2222,0xC222,0x2222,0x5222,0x2222,0x5222,
	0x222A,0x5222,0x222F,0x5222,0x2223,0x5222,0x2220,0x5522,
	0x2220,0x5522,0x2220,0x5522,0x2220,0x5522,0x2220,0x5522,

	0xAACC,0xAAAA,0xACCC,0xAAAA,0xACCC,0xAAAA,0xACCC,0xAAAA,
	0xACCC,0xAAAA,0xCCCC,0x9AAA,0xCCCC,0x9ACC,0xCCC5,0x99AC,
	0x3FF9,0x3333,0x3FF9,0x3333,0xFFF9,0xFFF3,0xFFF9,0xFFF3,
	0xFFF9,0xFFFF,0xFFFF,0x999F,0xFFFF,0x999F,0x9999,0x7779,
	0x0000,0x3300,0x3333,0x3333,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0x9999,0x9999,0x9999,0x9999,0x9997,0x7779,
	0x0003,0x0000,0x3333,0xDD03,0x3FFF,0x0003,0xFFFF,0xFFF3,
	0xFFFF,0xFF3F,0x9999,0xF90F,0x9999,0x9933,0x9777,0x9973,

	0x0000,0x0000,0x300D,0x3333,0x3000,0xFFF3,0xF00F,0xFFFF,
	0xF03F,0xFFFF,0xFA3F,0xF999,0x9299,0x9999,0x9279,0x7779,
	0x0000,0x0000,0x3333,0x3333,0x33FF,0x3333,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0x999F,0x9999,0x9999,0x9997,0x9999,
	0xF333,0xA9FF,0xF333,0xA9FF,0xFF33,0xA9FF,0xFFF3,0xA9FF,
	0xFFFF,0xAAFF,0xFFF9,0xA9FF,0xFFF9,0xA9FF,0x9999,0x9999,
	0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,0xAAAA,0x55CC,
	0xAAAA,0x55CC,0xAAAA,0x55CC,0xCAAA,0x55CC,0xCAAA,0x55CC,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2225,0x2222,0x2225,0x2222,
	0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,0x2222,0x4444,
	0x2222,0x4444,0x2222,0x4444,0x2222,0x4441,0x2222,0x4441,
	0x4444,0x2223,0x4444,0x2220,0x4444,0x222D,0x4444,0x2220,
	0x4444,0x2220,0x4444,0x222D,0x4444,0x222D,0x4444,0x222D,
	0x222D,0x5522,0x222D,0x5522,0x222D,0x5522,0x222D,0x5522,
	0x2221,0x5522,0x5521,0xC5C5,0x5551,0x5555,0x5554,0x5555,

	0xCCC5,0x9997,0xACCC,0x7779,0x9ACC,0x7777,0x77C5,0x7777,
	0x777C,0x7777,0xCCCC,0xCCCC,0xC555,0xCCCC,0x5555,0x5555,
	0x9999,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x5CCC,0x7775,0x5CCC,0x5555,0x5555,0x5555,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x5555,0x5555,0x5555,0x5555,
	0x7777,0x777A,0x7777,0x7772,0x7777,0x7772,0x7777,0x7772,
	0x7777,0x777F,0xF777,0x777F,0x2555,0x5555,0x2455,0x4444,

	0x7177,0x7779,0x9377,0x7777,0x3077,0x7777,0x9F77,0x7777,
	0x2777,0x7777,0x2777,0x7777,0x2555,0x5555,0x2444,0x5511,
	0x9997,0x9799,0x9997,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7CC7,0x7777,0xCCC7,0xCCCC,0xCCC5,0xCCCC,0x5555,0x5555,
	0xCAA7,0x55CC,0xCA77,0x555C,0xC777,0x555C,0x7777,0x555C,
	0xCC77,0x55CC,0xCCCC,0xCCCC,0xCCCC,0x5CCC,0x5555,0x5555,
	0x2225,0x2222,0x2225,0x2222,0x2225,0x2222,0x2222,0x2222,
	0x2225,0x2222,0x2255,0x2222,0x5555,0x2225,0x5555,0x2555,

	0x2222,0x4441,0x2222,0x4441,0x2222,0x444D,0x2222,0x444D,
	0x2222,0x444D,0x2222,0x4440,0x2222,0x4440,0x2222,0x4443,
	0x4444,0x2221,0x4444,0x2221,0x4444,0x2224,0x4444,0x2224,
	0x4444,0x2224,0x4444,0x2224,0x4444,0x2224,0x4444,0x2224,
	0x5554,0x5555,0x5554,0x5555,0x5554,0x5555,0x5554,0x5555,
	0x5554,0x5555,0x5554,0x5555,0x5554,0x5555,0x5550,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0x2455,0x4444,0x21D5,0x4444,0x2055,0x333F,0x2255,0x5555,
	0xA255,0x5555,0x5255,0x5555,0x5255,0x5555,0x5255,0x5555,
	0x2444,0x5541,0x2444,0x5541,0x2333,0x55F2,0x3555,0x5552,
	0xF555,0x5552,0xA555,0x5552,0x5555,0x5552,0x5555,0x5592,
	0x2222,0x444F,0x2225,0x4449,0x2225,0x4449,0x2225,0x444C,
	0x2555,0x4442,0x5555,0x4442,0x5555,0x4445,0x5555,0x4445,
	0x4444,0x2224,0x4444,0x2224,0x4444,0x2224,0x4444,0x2224,
	0x4444,0x2224,0x4444,0x2224,0x4444,0x2224,0x4444,0x2224,

	0x2222,0x5222,0x2222,0x5552,0x2222,0x5555,0x2222,0x5555,
	0x5222,0x5555,0x5222,0x5555,0x5522,0x5555,0x5552,0x5555,
	0x4444,0xF444,0x4441,0x5C14,0x000F,0x5550,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x1555,0x5555,0x4555,0x5555,0x4555,
	0x5205,0x5555,0x5225,0x5555,0x5225,0x5555,0x5C25,0x5555,
	0x5325,0x5555,0x1123,0x1111,0x442D,0x4444,0x4422,0x4444,

	0x5555,0x5522,0x5555,0x5522,0x5555,0x5522,0x5555,0x5522,
	0x5555,0x552A,0x1111,0x112D,0x4444,0x412D,0x4444,0x4221,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x555A,0x5555,0x5554,0x5555,0x5554,0x5555,
	0x5555,0x4445,0x5555,0x4445,0x5555,0x4445,0x5555,0x4445,
	0x5555,0x4445,0x5555,0x4415,0x5555,0x4415,0x5555,0x4415,
	0x4444,0x2224,0x4444,0x22C4,0x4444,0x22A4,0x4444,0x22A4,
	0x4444,0x2234,0x4444,0x22D4,0x4444,0x2204,0x4444,0x2204,

	0x2222,0x2222,0x2222,0x5222,0x2222,0x5522,0x2222,0x5555,
	0x5222,0x5555,0x5552,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x4155,0x5555,0x1155,0x5555,0xD055,0x5555,0x7555,
	0x5555,0x2555,0x5555,0x2555,0x5555,0x2555,0x5555,0x2555,
	0x4422,0x4444,0x4422,0x4444,0xDD22,0xDDDD,0x55A2,0x5555,
	0x55F2,0x5555,0x5552,0x5555,0x5552,0x5555,0x5552,0x5555,
	0x4444,0x4221,0x4444,0x4221,0xDDDD,0xD22D,0x5555,0x9225,
	0x5555,0x2225,0x5555,0x2225,0x5555,0x2225,0x5555,0x22A5,

	0x5554,0x5555,0x5514,0x5555,0x553D,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x4D55,0x5555,0x0555,0x5555,0x2555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x2204,0x4444,0x2553,0x5701,0x5555,0x5755,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2225,0x2222,
	0x2255,0x2222,0x2555,0x2222,0x5555,0x2222,0x5555,0x2225,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x5222,0x2222,0x5522,
	0x2222,0x5522,0x2222,0x5552,0x2222,0x5555,0x5222,0x5555,
	0x5552,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x2F55,0x5555,0x2A55,0x5555,0x2255,0x5555,0x2255,
	0x5555,0x2255,0x5555,0x2255,0x5555,0x22F5,0x5555,0x2225,
	0x5552,0x5555,0x5552,0x5555,0x5552,0x5555,0x5552,0x5555,
	0x5559,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0x5555,0x22F5,0x5555,0x2255,0x5555,0x2255,0x5555,0x2255,
	0x5555,0x2255,0x5555,0x2255,0x5555,0x2255,0x5555,0x2255,
	0x5555,0x5555,0x5555,0x5555,0x555C,0x5555,0x5552,0x5555,
	0x5552,0x5555,0x5552,0x5555,0x5552,0x5555,0x5552,0x5555,
	0x5555,0x2555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x2222,0x2222,0x2222,0x2222,0x2225,0x2222,0x2555,0x2222,
	0x5555,0x2222,0x5555,0x2225,0x5555,0x2555,0x5555,0x5555,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x5222,0x2222,0x5522,0x2222,0x5552,0x2222,0x5555,
	0x2222,0x5552,0x5522,0x5555,0x5552,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x2225,0x5555,0x2225,0x5555,0x2227,0x5555,0x222F,
	0x7555,0x722A,0x7755,0x7222,0x7755,0x7222,0x7775,0x7222,
	0x7757,0x5775,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,

	0x5555,0x2255,0x7577,0x2A57,0x7777,0x2977,0x7777,0x2777,
	0x7777,0x2777,0x7777,0x2777,0x7777,0x2777,0x7777,0x2777,
	0x5572,0x5555,0x5522,0x5555,0x5522,0x5555,0x5522,0x5555,
	0x5522,0x5555,0x5522,0x5555,0x5522,0x5555,0x7222,0x5555,
	0x2225,0x2222,0x2255,0x2222,0x2555,0x2222,0x5555,0x2222,
	0x5555,0x2225,0x5555,0x2255,0x5555,0x5555,0x5555,0x5555,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x5222,
	0x2222,0xCC22,0x2222,0xCCC2,0x5222,0x7CCC,0xCC22,0x777C,

	0x5222,0x5555,0x5522,0x5555,0x5552,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x555C,0x5555,0x5CCC,0x5555,0xC777,0x5555,0x7777,0x5CC7,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x7555,0x5755,0x7775,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x7555,
	0x5555,0x7775,0x5555,0x7775,0x7777,0x7777,0x7777,0x7777,
	0x7775,0x7222,0xF775,0x7222,0x2777,0x7222,0x2777,0x7222,
	0x2777,0x7A22,0x2777,0x7922,0x2977,0x7722,0x2F77,0x7722,
	0x7777,0x2777,0x7777,0x2777,0x7777,0xA777,0x7777,0x3777,
	0x7777,0x3777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7222,0x5557,0x7222,0x5577,0x7222,0x5577,0x7222,0x7777,
	0x7222,0x7777,0x2222,0x7777,0x2222,0x7777,0x2222,0x7777,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5577,0x5555,0x7777,0x5555,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x7555,0xCCCC,0x7775,0xCCCC,0x7777,0x7777,0x7777,0x7777,
	0x2255,0x2222,0x2555,0x2222,0x5555,0x2225,0x5555,0x2255,
	0xCCCC,0x2CCC,0xCCCC,0xCCCC,0x7777,0xCC77,0x7777,0xC777,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2225,0x2222,0x225C,0x2222,0x2CCC,0x2222,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x5522,0x5555,0x5555,
	0x5555,0x5555,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xAAAA,
	0x2222,0x2222,0x2222,0x2222,0x2255,0x2222,0x5555,0x2555,
	0x5555,0x5555,0xCCCC,0x555C,0xCCCC,0xCCCC,0xCCCA,0xCCCC,
	0x2222,0x2222,0x2222,0x2222,0x2222,0xC552,0x2222,0xCC55,
	0x5555,0x7CCC,0xC555,0x77AC,0xCCCC,0xF99A,0xACCC,0xFF99,
	0xCCC2,0x7777,0x7CCC,0x7777,0x777C,0x7777,0x9977,0x7779,
	0x9997,0x7779,0x9999,0x7779,0x999F,0x9999,0x99FF,0x9999,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x9997,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x9977,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7999,0x7777,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x9999,0x7777,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x4D77,0x7777,0x1D77,
	0x9977,0x1199,0x9999,0x1179,0x9999,0x1139,0xFFFF,0x1109,
	0x2277,0x7722,0x2277,0x7722,0x2244,0x4422,0x22D1,0x1122,
	0x22D1,0x11A2,0x2221,0x11D2,0x2221,0x11D2,0x2221,0x11D2,
	0x7777,0x7777,0x7777,0x7777,0x4444,0x4444,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x2222,0x7777,0x2222,0x7779,0x2222,0x7441,0x2222,0xF111,
	0x2221,0x0112,0x2220,0x1112,0x2220,0x1112,0x222D,0x11D2,
	0x7777,0x7777,0x7777,0x7777,0x9779,0x7779,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9997,0x9999,0x999F,0x9999,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7799,0x7777,
	0x9999,0x7777,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x7777,0x5555,0x7777,0x5557,0x7777,0x5C77,0x7777,0xC777,
	0x7777,0x7777,0x9999,0x7999,0x9999,0x9999,0x9999,0x9999,

	0x2225,0x2222,0x5555,0x2225,0x5555,0x5555,0x55CC,0x5555,
	0xCCCC,0xCCCC,0xCCC7,0xCCCC,0xAA99,0xCCCC,0xA999,0xAAAA,
	0x2222,0x2222,0x2222,0x2222,0x2225,0x2222,0x2555,0x2222,
	0x5555,0x5555,0x5CCC,0x5555,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0x2222,0x2222,0x2222,0x5222,0x2222,0x5552,0x2222,0xCC55,
	0x5555,0xCCC5,0xC555,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0xCCAA,0xCCCC,0xCAAA,0xCCCC,0xAAAA,0xAAAA,0xAAAA,0x9AAA,
	0xAAAA,0xF9AA,0xAAAA,0xFF9A,0xAAAA,0xFFF9,0x9AAA,0xFFFF,

	0x9AAC,0xFFFF,0xF99A,0xFFFF,0xFF99,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x99FF,0x9999,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFF9,0x9999,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0x9999,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0xFFF9,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x999F,0x9999,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0xFF99,0x99FF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0xFFFF,0x11D9,0xFFFF,0xD11F,0xFFFF,0xDDDF,0xFFFF,0x000F,
	0xFFFF,0xF9FF,0xFFFF,0xFFFF,0xFFFF,0x0FFF,0xFFFF,0x0FFF,
	0x222D,0x1112,0x2220,0x1112,0x2223,0xDDDA,0x2221,0x000A,
	0xA2AA,0xFFF1,0xA2A1,0xFFF3,0xAAA1,0xFFF0,0x1AA1,0xFFF0,
	0x1111,0x1111,0x1111,0x1111,0xDDDD,0xDDDD,0x0000,0x0000,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x1111,0x1111,0x1111,0xD111,0xDDDD,0xDDDD,0x0000,0x0000,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0x222D,0x11D2,0x2221,0x1112,0x22AD,0xDD22,0x22A0,0x0012,
	0x2A1F,0xFF1A,0x2A1F,0xF31A,0xAA3F,0xF01A,0xA10F,0xF31A,
	0x9990,0x9999,0x999D,0x9999,0x999D,0x9999,0x9990,0x9999,
	0x99FF,0xF999,0xFFFF,0xFF99,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0x9999,0x9999,0xFF99,0x9999,0xFFFF,0xFFF9,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0x9999,0xFFFF,0x9999,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0x9999,0x9999,0x9999,0x9999,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x9999,0xAAA9,0x9999,0xAA99,0xFFFF,0x9FFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xAAAA,0xCCAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x999F,0xAA99,
	0x9FFF,0x9999,0xFFFF,0x9FFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xACCC,0xACCC,0xAAAA,0xAAAA,0xAAAA,0xCAAA,0xAAAA,0xAAAA,
	0xAAA9,0xAAAA,0xAAA9,0xAAAA,0xAAA9,0xAAAA,0xAA99,0xAAAA,
};

const unsigned short bg4Map[1024] __attribute__((aligned(4)))=
{
	0x2001,0x2002,0x2003,0x2004,0x2005,0x2006,0x2007,0x2008,
	0x2008,0x2008,0x2008,0x2008,0x2008,0x2008,0x2008,0x2008,
	0x2008,0x2008,0x2008,0x2008,0x2008,0x2008,0x2008,0x2008,
	0x2008,0x2009,0x200A,0x200B,0x200C,0x200D,0x0000,0x0000,
	0x200E,0x200F,0x200F,0x2010,0x2011,0x2012,0x2013,0x2014,
	0x2015,0x2016,0x2016,0x2016,0x2016,0x2016,0x2016,0x2016,
	0x2016,0x2016,0x2016,0x2016,0x2016,0x2016,0x2017,0x2018,
	0x2019,0x201A,0x201B,0x201C,0x201D,0x201E,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x201F,0x2020,
	0x2021,0x2022,0x2022,0x2022,0x2022,0x2022,0x2022,0x2022,
	0x2022,0x2022,0x2022,0x2022,0x2022,0x2022,0x2023,0x2024,
	0x2025,0x2026,0x2027,0x2028,0x2029,0x202A,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x202B,
	0x202C,0x202D,0x202E,0x202F,0x2030,0x2031,0x2032,0x2033,
	0x2034,0x2035,0x2036,0x2037,0x2038,0x2039,0x203A,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x203B,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x203C,0x203D,0x203E,0x203F,0x2040,0x2041,0x2042,0x2043,
	0x2044,0x2045,0x2046,0x2047,0x2048,0x2049,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x204A,0x204B,0x204C,0x204D,0x204E,0x204F,0x2050,0x2051,
	0x2052,0x2053,0x2054,0x2055,0x2056,0x2057,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x2058,0x2059,0x205A,0x205B,0x205C,0x205D,0x205E,0x205F,
	0x2060,0x2061,0x2062,0x2063,0x2064,0x2065,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x2066,0x2067,0x2068,0x2069,0x206A,0x0000,0x0000,0x0000,
	0x0000,0x206B,0x206C,0x206D,0x206E,0x206F,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x2070,0x2071,0x2072,0x2073,0x2074,0x0000,0x0000,0x0000,
	0x0000,0x2075,0x2076,0x200F,0x2077,0x2078,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x2079,0x2064,0x207A,0x2069,0x207B,0x0000,0x207C,0x0000,
	0x0000,0x207D,0x207E,0x207F,0x2080,0x2081,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x2082,0x2064,0x2083,0x2084,0x2085,0x2086,0x2087,0x2088,
	0x2089,0x208A,0x208B,0x208C,0x208D,0x208E,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x2028,0x2064,0x208F,0x2090,0x2091,0x2092,0x2093,0x2094,
	0x2092,0x2095,0x2096,0x2097,0x2098,0x2099,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x200F,0x2064,0x209A,0x209B,0x209B,0x209B,0x209C,0x209D,
	0x209B,0x209B,0x209B,0x209B,0x209E,0x209F,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,
	0x20A0,0x20A1,0x209B,0x209B,0x209B,0x20A2,0x20A3,0x20A4,
	0x20A5,0x209B,0x209B,0x209B,0x20A6,0x20A7,0x200F,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x2828,0x20A8,
	0x209B,0x209B,0x209B,0x209B,0x209B,0x20A9,0x20AA,0x20AB,
	0x20AC,0x209B,0x209B,0x209B,0x20AD,0x20AE,0x20AF,0x200F,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x20B0,0x20B1,0x209B,
	0x209B,0x209B,0x209B,0x209B,0x209B,0x20B2,0x20B3,0x20B4,
	0x20B5,0x209B,0x209B,0x209B,0x209B,0x209B,0x20B6,0x20B7,
	0x200F,0x200F,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x200F,0x200F,0x200F,0x200F,0x20B8,0x20B9,0x209B,0x209B,
	0x209B,0x209B,0x209B,0x209B,0x209B,0x20BA,0x20BB,0x20BC,
	0x20BD,0x209B,0x209B,0x209B,0x209B,0x209B,0x209B,0x209B,
	0x20BE,0x2C28,0x200F,0x200F,0x200F,0x200F,0x0000,0x0000,
	0x200F,0x200F,0x200F,0x20BF,0x20C0,0x20C1,0x20C1,0x20C1,
	0x20C1,0x20C1,0x20C2,0x20C3,0x20C4,0x20C5,0x2022,0x20C6,
	0x20C7,0x20C8,0x20C9,0x20C1,0x20C1,0x20C1,0x20C1,0x20C1,
	0x20C1,0x20CA,0x20CB,0x200F,0x200F,0x200F,0x0000,0x0000,

	0x20CC,0x20CD,0x20CE,0x20CF,0x20D0,0x20D1,0x20D2,0x20D3,
	0x20D1,0x20D1,0x20D2,0x20D4,0x20D5,0x20D6,0x20D7,0x20D7,
	0x20D8,0x20D9,0x20DA,0x20D1,0x20D1,0x20D1,0x20D1,0x20D1,
	0x20D1,0x20D1,0x20DB,0x20DC,0x20DD,0x20DE,0x0000,0x0000,
	0x201A,0x20DF,0x20E0,0x20E1,0x20E2,0x20E3,0x20E4,0x20E5,
	0x20E5,0x20E6,0x20E3,0x20E7,0x20E8,0x20E9,0x20EA,0x20EB,
	0x20EC,0x20ED,0x20EE,0x20E3,0x20E3,0x20E3,0x20E3,0x20E3,
	0x20EF,0x20F0,0x20F0,0x20F1,0x20F2,0x20F3,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short bg4Pal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0087,0x24C4,0x0820,0x08EC,0x1C82,0x27BD,0x1861,
	0x2149,0x1041,0x1462,0x1C83,0x1862,0x0023,0x2D6B,0x0C20,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(bg4)