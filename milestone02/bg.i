# 1 "bg.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "bg.c"
# 18 "bg.c"
const unsigned short bgTiles[32] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short bgMap[1024] __attribute__((aligned(4)))=
{
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
};

const unsigned short bgPal[256] __attribute__((aligned(4)))=
{
 0x7C1F,0x1080,0x0110,0x001F,0x03FF,0x0000,0x0000,0x0000,
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
