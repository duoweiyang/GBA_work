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
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #50
	push	{r4, lr}
	mov	r0, r1
	mov	r3, #3
	ldr	r2, .L9
	ldr	r4, .L9+4
	mov	lr, pc
	bx	r4
	mov	r3, #3
	ldr	r2, .L9+8
	mov	r1, #50
	mov	r0, #70
	mov	lr, pc
	bx	r4
	ldr	r3, .L9+12
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L1
	ldr	r3, .L9+16
	ldr	r3, [r3]
	tst	r3, #8
	beq	.L8
.L1:
	pop	{r4, lr}
	bx	lr
.L8:
	ldr	r3, .L9+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L9+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L10:
	.align	2
.L9:
	.word	.LC1
	.word	drawString4
	.word	.LC2
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	state
	.size	pause, .-pause
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #50
	push	{r4, lr}
	mov	r3, #3
	ldr	r4, .L13
	mov	r0, r1
	ldr	r2, .L13+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	drawString4
	.word	.LC3
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #50
	push	{r4, lr}
	mov	r3, #1
	ldr	r4, .L17
	mov	r0, r1
	ldr	r2, .L17+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	drawString4
	.word	.LC4
	.size	lose, .-lose
	.global	__aeabi_idivmod
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L23
	sub	sp, sp, #16
	ldm	r3, {r0, r1, r2, r3}
	add	ip, sp, #16
	stmdb	ip, {r0, r1, r2, r3}
	ldr	r4, .L23+4
	ldr	r8, .L23+8
	ldr	r5, .L23+12
	ldr	r6, .L23+16
	add	r7, r4, #140
.L20:
	ldr	r3, [r8]
	str	r3, [r4, #16]
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #16]
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r6
	str	r1, [r4]
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #16]
	rsb	r1, r1, #240
	mov	lr, pc
	bx	r6
	str	r1, [r4, #4]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r0, r0, #1
	strh	r0, [r4, #20]	@ movhi
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r3, sp, #16
	add	r0, r3, r0, lsl #2
	ldr	r3, [r0, #-16]
	str	r3, [r4, #8]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	add	r3, sp, #16
	add	r0, r3, r0, lsl #2
	ldr	r3, [r0, #-16]
	add	r4, r4, #28
	str	r3, [r4, #-16]
	cmp	r4, r7
	bne	.L20
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR0
	.word	objs
	.word	.LANCHOR1
	.word	rand
	.word	__aeabi_idivmod
	.size	initialize, .-initialize
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #50
	push	{r4, r5, r6, lr}
	mov	r0, r1
	ldr	r4, .L32
	mov	r3, #4
	ldr	r2, .L32+4
	mov	lr, pc
	bx	r4
	mov	r3, #4
	ldr	r2, .L32+8
	mov	r1, #50
	mov	r0, #70
	mov	lr, pc
	bx	r4
	ldr	r4, .L32+12
	ldr	r2, .L32+16
	ldr	r3, [r4]
	ldr	r2, [r2]
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r4]
	beq	.L25
	ldr	r3, .L32+20
	ldr	r3, [r3]
	ands	r5, r3, #8
	beq	.L31
.L25:
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	mov	r6, #1
	ldr	r2, .L32+24
	ldr	r3, .L32+28
	str	r6, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, r6
	ldr	r2, .L32+32
	ldr	r1, .L32+36
	ldr	r0, .L32+40
	ldr	r6, .L32+44
	mov	lr, pc
	bx	r6
	mov	r3, r5
	ldr	r2, .L32+32
	ldr	r1, .L32+48
	ldr	r0, .L32+52
	ldr	r5, .L32+56
	mov	lr, pc
	bx	r5
	ldr	r0, [r4]
	ldr	r3, .L32+60
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	initialize
.L33:
	.align	2
.L32:
	.word	drawString4
	.word	.LC5
	.word	.LC6
	.word	.LANCHOR2
	.word	oldButtons
	.word	buttons
	.word	state
	.word	stopSound
	.word	11025
	.word	195382
	.word	GameSong
	.word	playSoundA
	.word	127584
	.word	StartSFX
	.word	playSoundB
	.word	srand
	.size	start, .-start
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #0
	ldr	r2, .L42
	ldr	r3, .L42+4
	ldr	r6, [r2]
	add	r7, r3, #140
	rsb	r5, r6, #159
	rsb	r4, r6, #239
.L39:
	ldr	lr, [r3, #8]
	ldr	r2, [r3]
	add	r2, lr, r2
	cmp	r2, #0
	str	r2, [r3]
	movlt	r2, #0
	rsblt	lr, lr, #0
	strlt	lr, [r3, #8]
	strlt	r8, [r3]
	cmp	r2, r5
	ldrgt	r2, [r3, #8]
	ldr	r1, [r3, #4]
	ldr	ip, [r3, #12]
	rsbgt	r2, r2, #0
	add	r0, ip, r1
	strgt	r2, [r3, #8]
	strgt	r5, [r3]
	cmp	r0, #0
	mov	r1, r0
	movlt	r1, #0
	rsblt	ip, ip, #0
	strlt	ip, [r3, #12]
	str	r0, [r3, #4]
	strlt	r8, [r3, #4]
	cmp	r1, r4
	ldrgt	r2, [r3, #12]
	rsbgt	r2, r2, #0
	str	r6, [r3, #16]
	strgt	r4, [r3, #4]
	strgt	r2, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r7
	bne	.L39
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR1
	.word	objs
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L48
	ldr	r6, .L48+4
	sub	sp, sp, #8
	add	r5, r4, #140
.L45:
	ldr	r3, [r4, #16]
	ldrb	ip, [r4, #20]	@ zero_extendqisi2
	ldm	r4, {r0, r1}
	mov	r2, r3
	str	ip, [sp]
	add	r4, r4, #28
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L45
	ldr	r3, .L48+8
	ldr	r1, .L48+12
	ldr	r2, [r3, #28]
	ldr	r0, .L48+16
	ldr	r3, .L48+20
	mov	lr, pc
	bx	r3
	mov	r1, #10
	mov	r3, #4
	mov	r0, r1
	ldr	r2, .L48+16
	ldr	r4, .L48+24
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	objs
	.word	drawRect4
	.word	soundA
	.word	.LC7
	.word	fpsbuffer
	.word	sprintf
	.word	drawString4
	.size	draw, .-draw
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
	mov	r1, #50
	push	{r4, r5, r6, lr}
	mov	r0, r1
	ldr	r4, .L85
	mov	r3, #2
	ldr	r2, .L85+4
	mov	lr, pc
	bx	r4
	mov	r3, #2
	ldr	r2, .L85+8
	mov	r1, #50
	mov	r0, #70
	mov	lr, pc
	bx	r4
	ldr	r2, .L85+12
	mov	r1, #50
	mov	r0, #90
	mov	r3, #2
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #512
	ldreq	r2, .L85+16
	ldreq	r3, [r2]
	subeq	r3, r3, #1
	streq	r3, [r2]
	mov	r3, #67108864
	ldr	r3, [r3, #304]
	tst	r3, #256
	ldreq	r2, .L85+16
	ldreq	r3, [r2]
	ldr	r4, .L85+20
	addeq	r3, r3, #1
	streq	r3, [r2]
	bl	update
	bl	draw
	ldr	r3, [r4]
	tst	r3, #8
	beq	.L53
	ldr	r2, .L85+24
	ldr	r2, [r2]
	tst	r2, #8
	beq	.L82
.L53:
	tst	r3, #4
	beq	.L54
	ldr	r2, .L85+24
	ldr	r2, [r2]
	ands	r5, r2, #4
	beq	.L83
.L54:
	tst	r3, #1
	beq	.L50
	ldr	r3, .L85+24
	ldr	r3, [r3]
	tst	r3, #1
	beq	.L84
.L50:
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	ldr	r3, .L85+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+32
	smull	r4, r5, r0, r3
	asr	r3, r0, #31
	add	r2, r0, r5
	rsb	r3, r3, r2, asr #2
	rsb	r3, r3, r3, lsl #3
	ldr	r2, .L85+36
	sub	r3, r0, r3
	str	r3, [r2, #4]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L56
.L58:
	.word	.L57
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
.L82:
	ldr	r3, .L85+40
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r2, .L85+44
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L53
.L83:
	ldr	r3, .L85+48
	mov	lr, pc
	bx	r3
	ldr	r6, .L85+52
	mov	r3, #1
	ldr	r2, .L85+56
	ldr	r1, .L85+60
	ldr	r0, .L85+64
	mov	lr, pc
	bx	r6
	ldr	r2, .L85+44
	ldr	r3, [r4]
	str	r5, [r2]
	b	.L54
.L64:
	ldr	r1, .L85+68
	ldr	r2, .L85+72
	mov	r0, r1
	mov	r3, r2
	ldr	lr, .L85+76
	ldr	ip, .L85+80
	str	r1, [lr]
	str	r2, [ip]
.L65:
	ldr	r1, [r3]
	ldr	r4, .L85+84
	mov	r3, #0
	ldr	r2, .L85+56
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L63:
	ldr	r1, .L85+76
	ldr	r0, .L85+88
	ldr	r2, .L85+80
	ldr	r3, .L85+92
	str	r0, [r1]
	str	r3, [r2]
	b	.L65
.L62:
	ldr	r1, .L85+76
	ldr	r0, .L85+96
	ldr	r2, .L85+80
	ldr	r3, .L85+100
	str	r0, [r1]
	str	r3, [r2]
	b	.L65
.L61:
	ldr	r1, .L85+76
	ldr	r0, .L85+104
	ldr	r2, .L85+80
	ldr	r3, .L85+108
	str	r0, [r1]
	str	r3, [r2]
	b	.L65
.L60:
	ldr	r1, .L85+76
	ldr	r0, .L85+112
	ldr	r2, .L85+80
	ldr	r3, .L85+116
	str	r0, [r1]
	str	r3, [r2]
	b	.L65
.L59:
	ldr	r1, .L85+76
	ldr	r0, .L85+120
	ldr	r2, .L85+80
	ldr	r3, .L85+124
	str	r0, [r1]
	str	r3, [r2]
	b	.L65
.L57:
	ldr	r1, .L85+76
	ldr	r0, .L85+128
	ldr	r2, .L85+80
	ldr	r3, .L85+132
	str	r0, [r1]
	str	r3, [r2]
	b	.L65
.L56:
	ldr	r2, .L85+76
	ldr	r3, .L85+80
	ldr	r0, [r2]
	ldr	r3, [r3]
	b	.L65
.L86:
	.align	2
.L85:
	.word	drawString4
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	rand
	.word	-1840700269
	.word	.LANCHOR2
	.word	pauseSound
	.word	state
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	447027
	.word	TitleSong
	.word	space07
	.word	_space07len
	.word	spaceSound
	.word	spaceSoundLen
	.word	playSoundB
	.word	space06
	.word	_space06len
	.word	space05
	.word	_space05len
	.word	space04
	.word	_space04len
	.word	space03
	.word	_space03len
	.word	space02
	.word	_space02len
	.word	space01
	.word	_space01len
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
	mov	r5, #67108864
	mov	r6, #0
	ldr	r3, .L97
	push	{r4, r7, fp, lr}
	ldr	r2, [r5, #304]
	ldr	r4, .L97+4
	ldr	r8, .L97+8
	strh	r3, [r5]	@ movhi
	ldr	r3, .L97+12
	str	r2, [r4]
	str	r6, [r8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+16
	mov	lr, pc
	bx	r3
	mov	r3, #83886080
	mov	ip, #31
	mov	r0, #31744
	mov	r1, #992
	mvn	r2, #32768
	strh	r6, [r3]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	ldr	r6, .L97+20
	mov	r3, #1
	ldr	r2, .L97+24
	ldr	r1, .L97+28
	ldr	r0, .L97+32
	mov	lr, pc
	bx	r6
	ldr	r10, .L97+36
	ldr	r9, .L97+40
	ldr	fp, .L97+44
	ldr	r7, .L97+48
	ldr	r6, .L97+52
.L95:
	ldr	r3, [r4]
	str	r3, [r10]
	ldr	r3, [r5, #304]
	mov	r0, #0
	str	r3, [r4]
	mov	lr, pc
	bx	r9
	ldr	r3, [r8]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L88
.L90:
	.word	.L89
	.word	.L91
	.word	.L92
	.word	.L93
	.word	.L94
.L94:
	ldr	r3, .L97+56
	mov	lr, pc
	bx	r3
.L88:
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L95
.L93:
	mov	r1, #50
	mov	r3, #3
	mov	r0, r1
	ldr	r2, .L97+60
	mov	lr, pc
	bx	fp
	b	.L88
.L92:
	mov	r1, #50
	mov	r3, #1
	mov	r0, r1
	ldr	r2, .L97+64
	mov	lr, pc
	bx	fp
	b	.L88
.L89:
	ldr	r3, .L97+68
	mov	lr, pc
	bx	r3
	b	.L88
.L91:
	ldr	r3, .L97+72
	mov	lr, pc
	bx	r3
	b	.L88
.L98:
	.align	2
.L97:
	.word	1028
	.word	buttons
	.word	state
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	447027
	.word	TitleSong
	.word	oldButtons
	.word	fillScreen4
	.word	drawString4
	.word	waitForVblank
	.word	flipPage
	.word	pause
	.word	.LC3
	.word	.LC4
	.word	start
	.word	game
	.size	main, .-main
	.comm	fpsbuffer,30,4
	.comm	scanLineCounter,2,2
	.comm	oldButtons,4,4
	.comm	buttons,4,4
	.global	randomSeed
	.comm	state,4,4
	.global	spaceSoundToPlay
	.comm	spaceSoundLen,4,4
	.comm	spaceSound,4,4
	.global	size
	.comm	objs,140,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	-2
	.word	-1
	.word	1
	.word	2
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	size, %object
	.size	size, 4
size:
	.word	5
	.bss
	.align	2
	.set	.LANCHOR2,. + 0
	.type	randomSeed, %object
	.size	randomSeed, 4
randomSeed:
	.space	4
	.type	spaceSoundToPlay, %object
	.size	spaceSoundToPlay, 4
spaceSoundToPlay:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"PAUSE SCREEN\000"
	.space	3
.LC2:
	.ascii	"Press START to return\000"
	.space	2
.LC3:
	.ascii	"WIN SCREEN\000"
	.space	1
.LC4:
	.ascii	"LOSE SCREEN\000"
.LC5:
	.ascii	"START SCREEN\000"
	.space	3
.LC6:
	.ascii	"Press START to begin\000"
	.space	3
.LC7:
	.ascii	"%d\000"
	.space	1
.LC8:
	.ascii	"GAME SCREEN\000"
.LC9:
	.ascii	"Press START to pause\000"
	.space	3
.LC10:
	.ascii	"Press SELECT to return\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
