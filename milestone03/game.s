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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #3
	ldr	ip, .L4
	mov	r0, r4
	ldr	r5, .L4+4
	mov	r3, #256
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	ip, #94
	mov	r4, #5
	mov	r1, #2
	mov	lr, #88
	mov	r0, #64
	ldr	r2, .L4+28
	str	r3, [r2]
	ldr	r2, .L4+32
	str	r3, [r2]
	ldr	r2, .L4+36
	str	r3, [r2]
	ldr	r2, .L4+40
	str	r3, [r2]
	ldr	r2, .L4+44
	str	r3, [r2]
	ldr	r2, .L4+48
	str	ip, [r2]
	ldr	ip, .L4+52
	str	r4, [ip]
	ldr	ip, .L4+56
	str	r1, [ip]
	ldr	ip, .L4+60
	ldr	r4, .L4+64
	str	r1, [ip]
	ldr	ip, .L4+68
	str	r1, [r4]
	ldrh	ip, [ip, #48]
	ldr	r1, .L4+72
	str	lr, [r2, #4]
	str	r3, [r2, #8]
	strh	ip, [r1]	@ movhi
	str	r0, [r2, #12]
	str	r0, [r2, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	livesRemaining
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	frameCounter
	.word	straightCounter
	.word	warningCounter
	.word	penguinFrameCounter
	.word	crashCounter
	.word	penguin
	.word	penguinState
	.word	curPath
	.word	backgroundState
	.word	nextPath
	.word	67109120
	.word	buttons
	.size	initGame, .-initGame
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #512
	ldr	r4, .L8
	mov	r2, #117440512
	ldr	r1, .L8+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	shadowOAM
	.size	drawGame, .-drawGame
	.align	2
	.global	initPenguin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPenguin, %function
initPenguin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #64
	str	lr, [sp, #-4]!
	mov	ip, #94
	mov	lr, #1
	mov	r0, #88
	mov	r1, #5
	ldr	r3, .L12
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	ldr	r2, .L12+4
	str	lr, [r3, #8]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	penguin
	.word	penguinState
	.size	initPenguin, .-initPenguin
	.align	2
	.global	checkCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollision, %function
checkCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L15
	ldr	r3, .L21+4
	ldr	r2, [r3]
	bic	r2, r2, #4
	cmp	r2, #3
	bxeq	lr
.L17:
	mov	r0, #7
	ldr	r1, .L21+8
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	str	r0, [r3]
	bx	lr
.L15:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L21+4
	ldr	r2, [r3]
	cmp	r2, #7
	cmpne	r2, #4
	bxeq	lr
	b	.L17
.L22:
	.align	2
.L21:
	.word	backgroundState
	.word	penguinState
	.word	livesRemaining
	.size	checkCollision, .-checkCollision
	.align	2
	.global	idlePenguin
	.syntax unified
	.arm
	.fpu softvfp
	.type	idlePenguin, %function
idlePenguin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L24
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L24+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L25:
	.align	2
.L24:
	.word	penguin
	.word	shadowOAM
	.size	idlePenguin, .-idlePenguin
	.align	2
	.global	leftPenguin
	.syntax unified
	.arm
	.fpu softvfp
	.type	leftPenguin, %function
leftPenguin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L34
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #80
	str	r3, [r2]
	bgt	.L27
	ldr	r1, .L34+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #8
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L34+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L27:
	sub	r2, r3, #81
	cmp	r2, #79
	bhi	.L28
	ldr	r1, .L34+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #16
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L34+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L28:
	sub	r2, r3, #161
	cmp	r2, #19
	bhi	.L29
	ldr	r1, .L34+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #256
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L34+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L29:
	sub	r2, r3, #181
	cmp	r2, #19
	bhi	.L30
	ldr	r1, .L34+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #272
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L34+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L30:
	sub	r2, r3, #201
	cmp	r2, #19
	bhi	.L31
	ldr	r1, .L34+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #280
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L34+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L31:
	sub	r2, r3, #221
	cmp	r2, #19
	bhi	.L32
	ldr	r2, .L34+4
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #288
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L34+8
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L32:
	cmp	r3, #240
	movgt	r2, #7
	ldrgt	r3, .L34+12
	strgt	r2, [r3]
	bx	lr
.L35:
	.align	2
.L34:
	.word	penguinFrameCounter
	.word	penguin
	.word	shadowOAM
	.word	penguinState
	.size	leftPenguin, .-leftPenguin
	.align	2
	.global	rightPenguin
	.syntax unified
	.arm
	.fpu softvfp
	.type	rightPenguin, %function
rightPenguin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L44
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #80
	str	r3, [r2]
	bgt	.L37
	mov	r0, #8
	ldr	r2, .L44+4
	ldr	r1, [r2, #4]
	ldr	ip, [r2]
	ldr	r2, .L44+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
.L37:
	sub	r2, r3, #81
	cmp	r2, #79
	bhi	.L38
	mov	r0, #16
	ldr	r2, .L44+4
	ldr	r1, [r2, #4]
	ldr	ip, [r2]
	ldr	r2, .L44+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
.L38:
	sub	r2, r3, #161
	cmp	r2, #19
	bhi	.L39
	mov	r0, #256
	ldr	r2, .L44+4
	ldr	r1, [r2, #4]
	ldr	ip, [r2]
	ldr	r2, .L44+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
.L39:
	sub	r2, r3, #181
	cmp	r2, #19
	bhi	.L40
	mov	r0, #272
	ldr	r2, .L44+4
	ldr	r1, [r2, #4]
	ldr	ip, [r2]
	ldr	r2, .L44+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
.L40:
	sub	r2, r3, #201
	cmp	r2, #19
	bhi	.L41
	mov	r0, #280
	ldr	r2, .L44+4
	ldr	r1, [r2, #4]
	ldr	ip, [r2]
	ldr	r2, .L44+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
.L41:
	sub	r2, r3, #221
	cmp	r2, #19
	bhi	.L42
	mov	r1, #288
	ldr	r3, .L44+4
	ldm	r3, {r0, r2}
	ldr	r3, .L44+8
	orr	r2, r2, #53248
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L42:
	cmp	r3, #240
	movgt	r2, #7
	ldrgt	r3, .L44+12
	strgt	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
	.word	penguinFrameCounter
	.word	penguin
	.word	shadowOAM
	.word	penguinState
	.size	rightPenguin, .-rightPenguin
	.align	2
	.global	crash
	.syntax unified
	.arm
	.fpu softvfp
	.type	crash, %function
crash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L48
	ldr	r1, [r3]
	ldr	r3, .L48+4
	cmp	r1, #2
	str	r2, [r3]
	moveq	r2, #5
	ldreq	r3, .L48+8
	streq	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	backgroundState
	.word	penguinFrameCounter
	.word	penguinState
	.size	crash, .-crash
	.align	2
	.global	drawCrash
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCrash, %function
drawCrash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L55
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #20
	str	r3, [r2]
	bgt	.L51
	ldr	r1, .L55+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #512
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L55+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L51:
	sub	r2, r3, #21
	cmp	r2, #9
	bhi	.L52
	ldr	r1, .L55+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #520
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L55+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L52:
	sub	r2, r3, #31
	cmp	r2, #9
	bhi	.L53
	ldr	r2, .L55+4
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #528
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L55+8
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L53:
	cmp	r3, #40
	movgt	r2, #512
	ldrgt	r3, .L55+8
	strhgt	r2, [r3]	@ movhi
	bx	lr
.L56:
	.align	2
.L55:
	.word	crashCounter
	.word	penguin
	.word	shadowOAM
	.size	drawCrash, .-drawCrash
	.align	2
	.global	updatePenguin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePenguin, %function
updatePenguin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L78
	ldr	r3, [r4]
	cmp	r3, #7
	beq	.L58
.L60:
	mov	r3, #5
	str	r3, [r4]
.L59:
	ldr	r3, .L78+4
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L61
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4]
	bne	.L62
.L64:
	mov	r3, #4
	str	r3, [r4]
.L63:
	pop	{r4, lr}
	b	rightPenguin
.L61:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L64
	ldr	r3, [r4]
	cmp	r3, #4
	beq	.L63
	cmp	r3, #5
	bne	.L77
	ldr	r2, .L78+8
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L78+12
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
.L57:
	pop	{r4, lr}
	bx	lr
.L77:
	cmp	r3, #3
	bne	.L57
.L62:
	pop	{r4, lr}
	b	leftPenguin
.L58:
	mov	r3, #1
	str	r3, [r4]
	bl	drawCrash
	ldr	r3, [r4]
	cmp	r3, #7
	beq	.L59
	b	.L60
.L79:
	.align	2
.L78:
	.word	penguinState
	.word	67109120
	.word	penguin
	.word	shadowOAM
	.size	updatePenguin, .-updatePenguin
	.align	2
	.global	straightCave
	.syntax unified
	.arm
	.fpu softvfp
	.type	straightCave, %function
straightCave:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L91
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L87
.L81:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L88
.L82:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L89
.L83:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L90
.L84:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L80
	ldr	r4, .L91+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L91+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3904
	mov	r2, #100663296
	ldr	r1, .L91+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L91+16
	ldr	r1, .L91+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L91+24
	str	r2, [r3]
.L80:
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	ldr	r5, .L91+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L91+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3904
	mov	r2, #100663296
	ldr	r1, .L91+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L91+16
	ldr	r1, .L91+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L91+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L84
.L89:
	ldr	r5, .L91+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L91+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3216
	mov	r2, #100663296
	ldr	r1, .L91+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L91+16
	ldr	r1, .L91+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L91+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L83
.L88:
	ldr	r5, .L91+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L91+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3296
	mov	r2, #100663296
	ldr	r1, .L91+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L91+16
	ldr	r1, .L91+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L91+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L82
.L87:
	ldr	r5, .L91+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L91+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3024
	mov	r2, #100663296
	ldr	r1, .L91+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L91+16
	ldr	r1, .L91+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L91+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L81
.L92:
	.align	2
.L91:
	.word	straightCounter
	.word	DMANow
	.word	bg4Pal
	.word	bg4Tiles
	.word	100720640
	.word	bg4Map
	.word	backgroundState
	.word	bg3Pal
	.word	bg3Tiles
	.word	bg3Map
	.word	bg2Pal
	.word	bg2Tiles
	.word	bg2Map
	.word	bg1Pal
	.word	bg1Tiles
	.word	bg1Map
	.size	straightCave, .-straightCave
	.align	2
	.global	leftWarning
	.syntax unified
	.arm
	.fpu softvfp
	.type	leftWarning, %function
leftWarning:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L104
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [r4]
	ble	.L100
.L94:
	sub	r2, r3, #10
	cmp	r2, #9
	bls	.L101
.L95:
	sub	r2, r3, #20
	cmp	r2, #9
	bls	.L102
.L96:
	sub	r2, r3, #30
	cmp	r2, #9
	bls	.L103
.L97:
	sub	r3, r3, #40
	cmp	r3, #9
	bhi	.L93
	ldr	r4, .L104+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L104+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L104+12
	mov	r2, #100663296
	ldr	r1, .L104+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L104+20
	ldr	r1, .L104+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L104+28
	str	r2, [r3]
.L93:
	pop	{r4, r5, r6, lr}
	bx	lr
.L103:
	ldr	r5, .L104+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L104+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3648
	mov	r2, #100663296
	ldr	r1, .L104+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L104+20
	ldr	r1, .L104+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #8
	ldr	r2, .L104+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L97
.L102:
	ldr	r5, .L104+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L104+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2976
	mov	r2, #100663296
	ldr	r1, .L104+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L104+20
	ldr	r1, .L104+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #8
	ldr	r2, .L104+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L96
.L101:
	ldr	r5, .L104+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L104+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3456
	mov	r2, #100663296
	ldr	r1, .L104+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L104+20
	ldr	r1, .L104+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #8
	ldr	r2, .L104+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L95
.L100:
	ldr	r5, .L104+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L104+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3008
	mov	r2, #100663296
	ldr	r1, .L104+72
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L104+20
	ldr	r1, .L104+76
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #8
	ldr	r2, .L104+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L94
.L105:
	.align	2
.L104:
	.word	warningCounter
	.word	DMANow
	.word	arrowLeft5Pal
	.word	5040
	.word	arrowLeft5Tiles
	.word	100720640
	.word	arrowLeft5Map
	.word	backgroundState
	.word	arrowLeft4Pal
	.word	arrowLeft4Tiles
	.word	arrowLeft4Map
	.word	arrowLeft3Pal
	.word	arrowLeft3Tiles
	.word	arrowLeft3Map
	.word	arrowLeft2Pal
	.word	arrowLeft2Tiles
	.word	arrowLeft2Map
	.word	arrowLeft1Pal
	.word	arrowLeft1Tiles
	.word	arrowLeft1Map
	.size	leftWarning, .-leftWarning
	.align	2
	.global	rightWarning
	.syntax unified
	.arm
	.fpu softvfp
	.type	rightWarning, %function
rightWarning:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L117
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [r4]
	ble	.L113
.L107:
	sub	r2, r3, #10
	cmp	r2, #9
	bls	.L114
.L108:
	sub	r2, r3, #20
	cmp	r2, #9
	bls	.L115
.L109:
	sub	r2, r3, #30
	cmp	r2, #9
	bls	.L116
.L110:
	sub	r3, r3, #40
	cmp	r3, #9
	bhi	.L106
	ldr	r4, .L117+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L117+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L117+12
	mov	r2, #100663296
	ldr	r1, .L117+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L117+20
	ldr	r1, .L117+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L117+28
	str	r2, [r3]
.L106:
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	ldr	r5, .L117+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L117+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3728
	mov	r2, #100663296
	ldr	r1, .L117+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L117+20
	ldr	r1, .L117+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L117+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L110
.L115:
	ldr	r5, .L117+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L117+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3088
	mov	r2, #100663296
	ldr	r1, .L117+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L117+20
	ldr	r1, .L117+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L117+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L109
.L114:
	ldr	r5, .L117+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L117+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3440
	mov	r2, #100663296
	ldr	r1, .L117+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L117+20
	ldr	r1, .L117+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L117+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L108
.L113:
	ldr	r5, .L117+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L117+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3152
	mov	r2, #100663296
	ldr	r1, .L117+72
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L117+20
	ldr	r1, .L117+76
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L117+28
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L107
.L118:
	.align	2
.L117:
	.word	warningCounter
	.word	DMANow
	.word	arrowRight5Pal
	.word	5088
	.word	arrowRight5Tiles
	.word	100720640
	.word	arrowRight5Map
	.word	backgroundState
	.word	arrowRight4Pal
	.word	arrowRight4Tiles
	.word	arrowRight4Map
	.word	arrowRight3Pal
	.word	arrowRight3Tiles
	.word	arrowRight3Map
	.word	arrowRight2Pal
	.word	arrowRight2Tiles
	.word	arrowRight2Map
	.word	arrowRight1Pal
	.word	arrowRight1Tiles
	.word	arrowRight1Map
	.size	rightWarning, .-rightWarning
	.align	2
	.global	updateCave
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCave, %function
updateCave:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L125
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L123
	cmp	r3, #1
	beq	.L124
.L119:
	pop	{r4, lr}
	bx	lr
.L123:
	bl	leftWarning
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L119
.L124:
	pop	{r4, lr}
	b	rightWarning
.L126:
	.align	2
.L125:
	.word	choosePath
	.size	updateCave, .-updateCave
	.align	2
	.global	leftCave
	.syntax unified
	.arm
	.fpu softvfp
	.type	leftCave, %function
leftCave:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L138
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L134
.L128:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L135
.L129:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L136
.L130:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L137
.L131:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L127
	ldr	r4, .L138+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L138+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2608
	mov	r2, #100663296
	ldr	r1, .L138+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L138+16
	ldr	r1, .L138+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L138+24
	str	r2, [r3]
.L127:
	pop	{r4, r5, r6, lr}
	bx	lr
.L137:
	ldr	r5, .L138+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L138+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2912
	mov	r2, #100663296
	ldr	r1, .L138+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L138+16
	ldr	r1, .L138+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L138+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L131
.L136:
	ldr	r5, .L138+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L138+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2848
	mov	r2, #100663296
	ldr	r1, .L138+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L138+16
	ldr	r1, .L138+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L138+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L130
.L135:
	ldr	r5, .L138+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L138+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L138+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L138+16
	ldr	r1, .L138+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L138+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L129
.L134:
	ldr	r5, .L138+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L138+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #4160
	mov	r2, #100663296
	ldr	r1, .L138+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L138+16
	ldr	r1, .L138+72
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L138+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L128
.L139:
	.align	2
.L138:
	.word	leftCounter
	.word	DMANow
	.word	turnLeft5Pal
	.word	turnLeft5Tiles
	.word	100720640
	.word	turnLeft5Map
	.word	backgroundState
	.word	turnLeft4Pal
	.word	turnLeft4Tiles
	.word	turnLeft4Map
	.word	turnLeft3Pal
	.word	turnLeft3Tiles
	.word	turnLeft3Map
	.word	turnLeft2Pal
	.word	turnLeft2Tiles
	.word	turnLeft2Map
	.word	turnLeft1Pal
	.word	turnLeft1Tiles
	.word	turnLeft1Map
	.size	leftCave, .-leftCave
	.align	2
	.global	rightCave
	.syntax unified
	.arm
	.fpu softvfp
	.type	rightCave, %function
rightCave:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L151
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L147
.L141:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L148
.L142:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L149
.L143:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L150
.L144:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L140
	ldr	r4, .L151+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L151+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3216
	mov	r2, #100663296
	ldr	r1, .L151+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L151+16
	ldr	r1, .L151+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r1, .L151+24
	ldr	r2, .L151+28
	str	r3, [r1]
	str	r3, [r2]
.L140:
	pop	{r4, r5, r6, lr}
	bx	lr
.L150:
	ldr	r5, .L151+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L151+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3376
	mov	r2, #100663296
	ldr	r1, .L151+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L151+16
	ldr	r1, .L151+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #1
	ldr	r0, .L151+24
	ldr	r1, .L151+28
	ldr	r3, [r4]
	str	r2, [r0]
	str	r2, [r1]
	b	.L144
.L149:
	ldr	r5, .L151+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L151+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3280
	mov	r2, #100663296
	ldr	r1, .L151+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L151+16
	ldr	r1, .L151+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L151+24
	ldr	r2, .L151+28
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L143
.L148:
	ldr	r5, .L151+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L151+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3536
	mov	r2, #100663296
	ldr	r1, .L151+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L151+16
	ldr	r1, .L151+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L151+24
	ldr	r2, .L151+28
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L142
.L147:
	ldr	r5, .L151+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L151+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L151+72
	mov	r2, #100663296
	ldr	r1, .L151+76
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L151+16
	ldr	r1, .L151+80
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L151+24
	ldr	r2, .L151+28
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L141
.L152:
	.align	2
.L151:
	.word	rightCounter
	.word	DMANow
	.word	turnRight5Pal
	.word	turnRight5Tiles
	.word	100720640
	.word	turnRight5Map
	.word	backgroundState
	.word	curPath
	.word	turnRight4Pal
	.word	turnRight4Tiles
	.word	turnRight4Map
	.word	turnRight3Pal
	.word	turnRight3Tiles
	.word	turnRight3Map
	.word	turnRight2Pal
	.word	turnRight2Tiles
	.word	turnRight2Map
	.word	turnRight1Pal
	.word	4240
	.word	turnRight1Tiles
	.word	turnRight1Map
	.size	rightCave, .-rightCave
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L172
	ldr	r3, [r5]
	ldr	r4, .L172+4
	add	r3, r3, #1
	str	r3, [r5]
	bl	updatePenguin
	bl	checkCollision
	ldr	r3, [r4]
	cmp	r3, #2
	beq	.L165
	cmp	r3, #0
	beq	.L166
	cmp	r3, #1
	beq	.L167
	cmp	r3, #9
	beq	.L168
	cmp	r3, #8
	beq	.L169
.L153:
	pop	{r4, r5, r6, lr}
	bx	lr
.L166:
	bl	leftCave
.L155:
	ldr	r2, [r5]
	ldr	r3, .L172+8
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	bne	.L153
	ldr	r3, [r4]
	cmp	r3, #2
	beq	.L160
	cmp	r3, #1
	beq	.L170
	cmp	r3, #0
	bne	.L162
	mov	r2, #1
	ldr	r3, .L172+12
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	straightCave
.L165:
	bl	straightCave
	b	.L155
.L167:
	bl	rightCave
	b	.L155
.L162:
	cmp	r3, #8
	beq	.L171
	cmp	r3, #9
	bne	.L153
	mov	r2, #1
	ldr	r3, .L172+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	rightCave
.L160:
	mov	r1, #1
	ldr	r2, .L172+20
	ldr	r3, .L172+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	ldr	r3, .L172+28
	rsblt	r0, r0, #0
	pop	{r4, r5, r6, lr}
	str	r0, [r3]
	b	updateCave
.L168:
	bl	rightWarning
	b	.L155
.L170:
	ldr	r2, .L172+32
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	straightCave
.L169:
	bl	leftWarning
	b	.L155
.L171:
	mov	r2, #1
	ldr	r3, .L172+16
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	leftCave
.L173:
	.align	2
.L172:
	.word	frameCounter
	.word	backgroundState
	.word	1374389535
	.word	leftCounter
	.word	warningCounter
	.word	straightCounter
	.word	rand
	.word	choosePath
	.word	rightCounter
	.size	updateGame, .-updateGame
	.comm	choosePath,4,4
	.comm	penguinState,4,4
	.comm	warningCounter,4,4
	.comm	crashCounter,4,4
	.comm	penguinFrameCounter,4,4
	.comm	rightCounter,4,4
	.comm	leftCounter,4,4
	.comm	straightCounter,4,4
	.comm	shadowOAM,1024,4
	.comm	lives,72,4
	.comm	penguin,20,4
	.comm	livesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	nextPath,4,4
	.comm	curPath,4,4
	.comm	backgroundState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
