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
	mov	r1, #1
	mov	ip, #94
	mov	r4, #5
	mov	r0, #2
	mov	lr, #88
	mov	r2, #64
	ldr	r3, .L4+28
	str	r1, [r3]
	ldr	r3, .L4+32
	str	ip, [r3]
	ldr	ip, .L4+36
	str	r4, [ip]
	ldr	ip, .L4+40
	ldr	r4, .L4+44
	str	r0, [ip]
	ldr	ip, .L4+48
	str	r0, [r4]
	ldrh	ip, [ip, #48]
	ldr	r0, .L4+52
	str	lr, [r3, #4]
	str	r1, [r3, #8]
	strh	ip, [r0]	@ movhi
	str	r2, [r3, #12]
	str	r2, [r3, #16]
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
	.word	penguin
	.word	penguinState
	.word	nextPath
	.word	curPath
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
	.global	updatePenguin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePenguin, %function
updatePenguin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L40
	ldr	r2, [r3]
	cmp	r2, #7
	movne	r2, #5
	strne	r2, [r3]
	ldr	r2, .L40+4
	ldrh	r1, [r2, #48]
	tst	r1, #32
	bne	.L25
	mov	r1, #3
	ldrh	r2, [r2, #48]
	tst	r2, #16
	str	r1, [r3]
	bne	.L26
.L28:
	mov	r2, #4
	str	r2, [r3]
.L27:
	mov	r1, #8
	ldr	r3, .L40+8
	ldm	r3, {r0, r2}
	ldr	r3, .L40+12
	orr	r2, r2, #53248
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L25:
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L28
	ldr	r2, [r3]
	sub	r2, r2, #3
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L23
.L30:
	.word	.L26
	.word	.L27
	.word	.L31
	.word	.L23
	.word	.L32
.L26:
	ldr	r2, .L40+8
	ldr	r3, [r2, #4]
	mov	r1, #8
	mvn	r3, r3, lsl #18
.L39:
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L40+12
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L32:
	ldr	r2, .L40+16
	ldr	r2, [r2]
	cmp	r2, #2
	bxne	lr
	mov	r2, #5
	str	r2, [r3]
.L23:
	bx	lr
.L31:
	ldr	r2, .L40+8
	ldr	r3, [r2, #4]
	mov	r1, #0
	mvn	r3, r3, lsl #18
	b	.L39
.L41:
	.align	2
.L40:
	.word	penguinState
	.word	67109120
	.word	penguin
	.word	shadowOAM
	.word	backgroundState
	.size	updatePenguin, .-updatePenguin
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
	ldr	r2, .L43
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L43+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L44:
	.align	2
.L43:
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
	ldr	r2, .L46
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #8
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L46+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L47:
	.align	2
.L46:
	.word	penguin
	.word	shadowOAM
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
	mov	r1, #8
	ldr	r3, .L49
	ldm	r3, {r0, r2}
	ldr	r3, .L49+4
	orr	r2, r2, #53248
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L50:
	.align	2
.L49:
	.word	penguin
	.word	shadowOAM
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
	ldr	r3, .L53
	ldr	r3, [r3]
	cmp	r3, #2
	moveq	r2, #5
	ldreq	r3, .L53+4
	streq	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
	.word	backgroundState
	.word	penguinState
	.size	crash, .-crash
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L57
	mov	r2, #83886080
	ldr	r1, .L57+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	ldr	r1, .L57+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L57+12
	ldr	r1, .L57+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L57+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100720640
	.word	bgMap
	.word	backgroundState
	.size	straightCave, .-straightCave
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L61
	mov	r2, #83886080
	ldr	r1, .L61+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	ldr	r1, .L61+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L61+12
	ldr	r1, .L61+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r1, .L61+20
	ldr	r2, .L61+24
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	DMANow
	.word	turnLeftPal
	.word	turnLeftTiles
	.word	100720640
	.word	turnLeftMap
	.word	backgroundState
	.word	curPath
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L65
	mov	r2, #83886080
	ldr	r1, .L65+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r2, #100663296
	ldr	r1, .L65+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L65+12
	ldr	r1, .L65+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r1, .L65+20
	ldr	r2, .L65+24
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	DMANow
	.word	turnRightPal
	.word	turnRightTiles
	.word	100720640
	.word	turnRightMap
	.word	backgroundState
	.word	curPath
	.size	rightCave, .-rightCave
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
	ldr	r4, .L75
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L72
	cmp	r3, #1
	beq	.L73
.L69:
	cmp	r3, #2
	beq	.L74
.L67:
	pop	{r4, lr}
	bx	lr
.L72:
	bl	straightCave
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L69
.L73:
	bl	leftCave
	ldr	r3, [r4]
	cmp	r3, #2
	bne	.L67
.L74:
	pop	{r4, lr}
	b	rightCave
.L76:
	.align	2
.L75:
	.word	choosePath
	.size	updateCave, .-updateCave
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
	push	{r4, lr}
	ldr	r4, .L82
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	bl	updatePenguin
	ldr	r2, [r4]
	ldr	r3, .L82+4
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	beq	.L81
	pop	{r4, lr}
	bx	lr
.L81:
	bl	checkCollision
	ldr	r2, .L82+8
	ldr	r3, .L82+12
	ldr	r1, [r2]
	ldr	r2, [r3]
	ldr	r3, .L82+16
	cmp	r1, #2
	str	r2, [r3]
	popne	{r4, lr}
	bne	straightCave
.L79:
	ldr	r3, .L82+20
	mov	lr, pc
	bx	r3
	ldr	r1, .L82+24
	smull	r2, r3, r0, r1
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	ldr	r2, .L82+28
	sub	r0, r0, r3
	pop	{r4, lr}
	str	r0, [r2]
	b	updateCave
.L83:
	.align	2
.L82:
	.word	frameCounter
	.word	1374389535
	.word	backgroundState
	.word	nextPath
	.word	curPath
	.word	rand
	.word	1431655766
	.word	choosePath
	.size	updateGame, .-updateGame
	.comm	choosePath,4,4
	.comm	penguinState,4,4
	.comm	shadowOAM,1024,4
	.comm	penguin,20,4
	.comm	livesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	nextPath,4,4
	.comm	curPath,4,4
	.comm	backgroundState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
