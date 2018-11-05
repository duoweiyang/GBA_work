	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 2048
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #272
	mov	r2, #8064
	push	{r4, r5, r6, r7, r8, lr}
	mov	r0, #3
	sub	sp, sp, #2048
	ldr	r5, .L4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r5
	mov	r8, #7
	mov	r0, sp
	mov	r2, #2048
	mov	r1, #0
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r7, #6
	mov	ip, #8
	mov	r3, #9
	mov	lr, #2
	mov	r0, #10
	strh	r8, [sp, #66]	@ movhi
	add	r8, r8, #1024
	strh	ip, [sp, #68]	@ movhi
	strh	r8, [sp, #124]	@ movhi
	strh	ip, [sp, #70]	@ movhi
	strh	ip, [sp, #72]	@ movhi
	strh	ip, [sp, #74]	@ movhi
	strh	ip, [sp, #76]	@ movhi
	strh	ip, [sp, #78]	@ movhi
	strh	ip, [sp, #80]	@ movhi
	strh	ip, [sp, #82]	@ movhi
	strh	ip, [sp, #84]	@ movhi
	strh	ip, [sp, #86]	@ movhi
	strh	ip, [sp, #88]	@ movhi
	strh	ip, [sp, #90]	@ movhi
	strh	ip, [sp, #92]	@ movhi
	strh	ip, [sp, #94]	@ movhi
	strh	ip, [sp, #96]	@ movhi
	strh	ip, [sp, #98]	@ movhi
	strh	ip, [sp, #100]	@ movhi
	strh	ip, [sp, #102]	@ movhi
	strh	ip, [sp, #104]	@ movhi
	strh	ip, [sp, #106]	@ movhi
	strh	ip, [sp, #108]	@ movhi
	strh	ip, [sp, #110]	@ movhi
	strh	ip, [sp, #112]	@ movhi
	strh	ip, [sp, #114]	@ movhi
	strh	ip, [sp, #116]	@ movhi
	strh	ip, [sp, #118]	@ movhi
	strh	ip, [sp, #120]	@ movhi
	strh	ip, [sp, #122]	@ movhi
	strh	r3, [sp, #130]	@ movhi
	strh	r3, [sp, #188]	@ movhi
	strh	r3, [sp, #194]	@ movhi
	strh	r7, [sp, #198]	@ movhi
	add	r7, r7, #1024
	strh	r7, [sp, #248]	@ movhi
	add	r7, sp, #256
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #316
	strh	r3, [r7]	@ movhi
	add	r7, sp, #320
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #380
	strh	r3, [r7]	@ movhi
	add	r7, sp, #384
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #444
	strh	r3, [r7]	@ movhi
	add	r7, sp, #448
	mov	r1, #1
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #508
	strh	r3, [r7]	@ movhi
	add	r7, sp, #512
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #572
	strh	r3, [r7]	@ movhi
	add	r7, sp, #576
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #636
	strh	r3, [r7]	@ movhi
	add	r7, sp, #640
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #700
	strh	r3, [r7]	@ movhi
	add	r7, sp, #704
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #764
	strh	r3, [r7]	@ movhi
	add	r7, sp, #768
	strh	r3, [r7, #2]	@ movhi
	add	r7, sp, #828
	strh	r3, [r7]	@ movhi
	add	r7, sp, #296
	strh	lr, [r7, #2]	@ movhi
	add	r7, sp, #332
	strh	lr, [r7, #2]	@ movhi
	add	r7, sp, #364
	strh	lr, [sp, #202]	@ movhi
	strh	lr, [sp, #218]	@ movhi
	strh	lr, [r7, #2]	@ movhi
	add	lr, sp, #372
	strh	r0, [lr]	@ movhi
	add	lr, sp, #392
	strh	r0, [lr]	@ movhi
	add	lr, sp, #416
	strh	r0, [lr, #2]	@ movhi
	add	lr, sp, #428
	strh	r0, [lr]	@ movhi
	add	lr, sp, #536
	strh	r0, [sp, #222]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	add	r0, sp, #832
	strh	r3, [sp, #252]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	r0, sp, #892
	strh	r3, [r0]	@ movhi
	add	r0, sp, #896
	strh	r3, [r0, #2]	@ movhi
	add	r0, sp, #956
	strh	r3, [r0]	@ movhi
	add	r0, sp, #960
	strh	r3, [r0, #2]	@ movhi
	add	r0, sp, #1020
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1024
	strh	r3, [r0, #2]	@ movhi
	add	r0, sp, #1072
	mov	r4, #3
	add	r0, r0, #12
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1136
	add	r0, r0, #12
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1152
	strh	r3, [r0, #2]	@ movhi
	add	lr, sp, #1088
	add	r0, sp, #1200
	strh	r3, [lr, #2]	@ movhi
	strh	r1, [lr, #14]	@ movhi
	add	r0, r0, #12
	add	lr, sp, #1104
	strh	r1, [lr]	@ movhi
	strh	r3, [r0]	@ movhi
	mov	r6, #5
	add	r0, sp, #1264
	add	lr, sp, #1216
	add	r0, r0, #12
	add	lr, lr, #12
	strh	r3, [r0]	@ movhi
	strh	r1, [lr]	@ movhi
	add	r0, sp, #1280
	add	lr, sp, #1232
	strh	r3, [r0, #2]	@ movhi
	add	lr, lr, #8
	add	r0, sp, #1328
	strh	r1, [lr]	@ movhi
	add	r0, r0, #12
	add	lr, sp, #1296
	strh	r3, [r0]	@ movhi
	strh	r1, [lr]	@ movhi
	add	r0, sp, #1360
	add	lr, sp, #1216
	strh	r3, [lr, #2]	@ movhi
	strh	r1, [lr, #14]	@ movhi
	strh	r1, [lr, #10]	@ movhi
	strh	r3, [r0]	@ movhi
	add	lr, sp, #1232
	ldr	r0, .L4+12
	strh	r1, [lr, #2]	@ movhi
	strh	r1, [lr]	@ movhi
	add	lr, sp, #1344
	strh	r3, [lr, #2]	@ movhi
	strh	r3, [lr, #14]	@ movhi
	str	r0, [sp, #1164]
	str	r0, [sp, #1168]
	str	r0, [sp, #1292]
	str	r0, [sp, #1300]
	str	r0, [sp, #1304]
	str	r0, [sp, #1364]
	str	r0, [sp, #1428]
	add	r0, sp, #1392
	add	r0, r0, #12
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1360
	add	r0, r0, #8
	strh	r1, [r0]	@ movhi
	add	r0, sp, #1424
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1424
	add	r0, r0, #8
	strh	r1, [r0]	@ movhi
	add	r1, sp, #1488
	add	r1, r1, #8
	strh	r3, [r1]	@ movhi
	add	r0, sp, #1456
	add	r1, sp, #1552
	add	r0, r0, #12
	add	r1, r1, #8
	strh	r3, [r1]	@ movhi
	strh	r3, [r0]	@ movhi
	add	r1, sp, #1600
	add	r0, sp, #1520
	add	r0, r0, #12
	add	r1, r1, #4
	strh	ip, [r1]	@ movhi
	strh	r3, [r0]	@ movhi
	add	r1, sp, #1408
	add	r0, sp, #1584
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [r1, #14]	@ movhi
	add	r0, r0, #12
	add	r1, sp, #1488
	strh	r3, [r1]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	strh	r3, [r0]	@ movhi
	add	r1, sp, #1552
	add	r0, sp, #1600
	strh	r3, [r1]	@ movhi
	strh	r3, [r1, #6]	@ movhi
	add	r0, r0, #8
	add	r1, sp, #1504
	strh	ip, [r0]	@ movhi
	add	r1, r1, #12
	add	r0, sp, #1472
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r1, sp, #1568
	add	r1, r1, #4
	strh	r4, [r1]	@ movhi
	add	r1, sp, #1568
	add	r1, r1, #12
	mov	r2, #4
	strh	r4, [r1]	@ movhi
	add	r1, sp, #1440
	add	r0, sp, #1536
	ldr	lr, .L4+16
	add	r1, r1, #8
	strh	r6, [r1]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	add	r1, sp, #1440
	strh	r3, [r0, #14]	@ movhi
	add	r0, sp, #1600
	strh	r6, [r1, #6]	@ movhi
	strh	r6, [r1, #10]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	ip, [r0, #6]	@ movhi
	str	lr, [sp, #1508]
	str	lr, [sp, #1512]
	strh	ip, [r0, #10]	@ movhi
	strh	ip, [r0, #14]	@ movhi
	add	r0, sp, #1600
	add	r0, r0, #12
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1616
	add	r0, r0, #4
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1616
	add	r0, r0, #8
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1616
	add	r0, r0, #12
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1632
	add	r0, r0, #4
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1632
	add	r0, r0, #8
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1632
	add	r0, r0, #12
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1648
	add	r0, r0, #4
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1648
	add	r0, r0, #8
	strh	ip, [r0]	@ movhi
	add	r0, sp, #1648
	add	r0, r0, #12
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1680
	add	r0, r0, #8
	strh	r3, [r0]	@ movhi
	add	r0, sp, #1616
	strh	ip, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	ip, [r0, #6]	@ movhi
	strh	ip, [r0, #10]	@ movhi
	strh	ip, [r0, #14]	@ movhi
	add	r0, sp, #1632
	strh	ip, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	ip, [r0, #6]	@ movhi
	strh	ip, [r0, #10]	@ movhi
	strh	ip, [r0, #14]	@ movhi
	add	r0, sp, #1648
	strh	ip, [r0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	strh	ip, [r0, #6]	@ movhi
	strh	ip, [r0, #10]	@ movhi
	add	r0, sp, #1664
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r0, #14]	@ movhi
	add	r0, sp, #1680
	strh	r3, [r0]	@ movhi
	strh	r3, [r0, #6]	@ movhi
	add	r0, sp, #1696
	add	r0, r0, #4
	strh	r2, [r0]	@ movhi
	add	r0, sp, #1696
	add	r0, r0, #12
	strh	r2, [r0]	@ movhi
	add	r7, sp, #1792
	add	r0, sp, #1712
	add	r0, r0, #12
	add	r7, r7, #2
	strh	r3, [r0]	@ movhi
	strh	r3, [r7]	@ movhi
	add	r7, sp, #1792
	add	r7, r7, #10
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1792
	add	r7, r7, #12
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1792
	add	r7, r7, #14
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1808
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1808
	add	r7, r7, #2
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1808
	add	r7, r7, #6
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1808
	add	r7, r7, #8
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1808
	add	r7, r7, #10
	strh	r2, [r7]	@ movhi
	add	r7, sp, #1840
	add	r7, r7, #12
	strh	r3, [r7]	@ movhi
	add	r7, sp, #1856
	add	r7, r7, #2
	strh	r3, [r7]	@ movhi
	add	r7, sp, #1872
	add	r7, r7, #6
	strh	r2, [r7]	@ movhi
	add	r0, sp, #1744
	add	r7, sp, #1872
	strh	r2, [r0]	@ movhi
	add	r7, r7, #8
	add	r0, sp, #1744
	strh	r2, [r7]	@ movhi
	add	r0, r0, #8
	add	r7, sp, #1904
	strh	r2, [r0]	@ movhi
	add	r7, r7, #12
	add	r0, sp, #1760
	strh	r3, [r7]	@ movhi
	add	r0, r0, #12
	add	r7, sp, #1920
	strh	r2, [r0]	@ movhi
	add	r7, r7, #4
	add	r0, sp, #1728
	strh	r2, [r0, #14]	@ movhi
	strh	ip, [r7]	@ movhi
	add	r2, sp, #1776
	add	r7, sp, #1920
	add	r7, r7, #6
	add	r2, r2, #12
	ldr	r1, .L4+20
	strh	r3, [r2]	@ movhi
	strh	ip, [r7]	@ movhi
	add	r2, sp, #1840
	add	r7, sp, #1920
	ldr	lr, .L4+24
	add	r7, r7, #8
	add	r2, r2, #8
	strh	r3, [r0, #2]	@ movhi
	strh	ip, [r7]	@ movhi
	str	r1, [sp, #1868]
	str	r1, [sp, #1872]
	add	r7, sp, #1920
	str	r1, [sp, #1748]
	str	r1, [sp, #1764]
	str	r1, [sp, #1768]
	add	r3, sp, #1792
	strh	lr, [r2]	@ movhi
	add	r1, sp, #1920
	add	lr, sp, #1920
	ldr	r6, .L4+28
	add	r7, r7, #10
	add	r8, r8, #1024
	add	r3, r3, #6
	add	r1, r1, #2
	add	lr, lr, #12
	strh	ip, [r7]	@ movhi
	strh	r6, [r3]	@ movhi
	strh	r8, [r1]	@ movhi
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1920
	add	lr, lr, #14
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #2
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #4
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #6
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #8
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #10
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #12
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1936
	add	lr, lr, #14
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #2
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #4
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #6
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #8
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #10
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #12
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1952
	add	lr, lr, #14
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1968
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1968
	add	lr, lr, #2
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1968
	add	lr, lr, #4
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1968
	add	lr, lr, #6
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1968
	add	lr, lr, #8
	strh	ip, [lr]	@ movhi
	add	lr, sp, #1968
	add	lr, lr, #10
	strh	ip, [lr]	@ movhi
	ldr	r7, .L4+32
	add	ip, sp, #1968
	add	ip, ip, #12
	mov	r0, r4
	mov	r3, #1152
	mov	r2, #100663296
	ldr	r1, .L4+36
	strh	r7, [ip]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r1, sp
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L4+40
	mov	lr, pc
	bx	r5
	mov	r3, #0
	ldr	r2, .L4+44
	ldr	r1, .L4+48
	str	r3, [r2]
	ldr	r2, .L4+52
	str	r3, [r1]
	ldrh	r2, [r2, #48]
	ldr	r3, .L4+56
	strh	r2, [r3]	@ movhi
	add	sp, sp, #2048
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	lab06Pal
	.word	memset
	.word	65537
	.word	196611
	.word	262148
	.word	3078
	.word	2054
	.word	3079
	.word	lab06Tiles
	.word	100726784
	.word	vOff
	.word	hOff
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	push	{r4, r5, r6, lr}
	ldr	r5, .L16+4
	tst	r3, #32
	ldreq	r3, [r5]
	addeq	r3, r3, #1
	streq	r3, [r5]
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, [r5]
	subeq	r3, r3, #1
	streq	r3, [r5]
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	ldr	r4, .L16+8
	tst	r3, #64
	ldreq	r3, [r4]
	addeq	r3, r3, #1
	streq	r3, [r4]
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, [r4]
	subeq	r3, r3, #1
	streq	r3, [r4]
	ldr	r3, .L16+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4]
	ldrh	r2, [r5]
	strh	r1, [r3, #18]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	67109120
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	ldr	r3, .L21
	mov	lr, pc
	bx	r3
	ldr	r7, .L21+4
	ldr	r6, .L21+8
	ldr	r4, .L21+12
	ldr	r5, .L21+16
.L19:
	mov	lr, pc
	bx	r7
	ldrh	r3, [r4]
	strh	r3, [r6]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	b	.L19
.L22:
	.align	2
.L21:
	.word	initialize
	.word	game
	.word	oldButtons
	.word	buttons
	.word	67109120
	.size	main, .-main
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 47) 7.1.0"
