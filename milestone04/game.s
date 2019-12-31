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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #512
	mov	r6, #832
	ldr	r3, .L9
	ldr	r1, .L9+4
	ldr	r5, .L9+8
	add	r0, r3, #72
.L4:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	ldr	r2, [r3, #16]
	lsleq	r2, r2, #3
	strheq	r4, [r1, r2]	@ movhi
	bne	.L8
.L3:
	add	r3, r3, #24
	cmp	r3, r0
	bne	.L4
	ldr	r4, .L9+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L9+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L8:
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	orr	lr, lr, #16384
	orr	ip, ip, r5
	strh	lr, [r1, r2]	@ movhi
	add	r2, r1, r2
	strh	r6, [r2, #4]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	b	.L3
.L10:
	.align	2
.L9:
	.word	lives
	.word	shadowOAM
	.word	-32768
	.word	DMANow
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
	mov	r1, #64
	push	{r4, lr}
	mov	r2, #6
	mov	r4, #1
	mov	lr, #94
	mov	ip, #88
	ldr	r3, .L13
	ldr	r0, .L13+4
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	ldr	r1, .L13+8
	str	r4, [r3, #8]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r2, [r0]
	str	r2, [r1]
	pop	{r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	penguin
	.word	penguinState
	.word	previousPenguinState
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
	ldr	r3, .L22
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L16
	ldr	r3, .L22+4
	ldr	r2, [r3]
	sub	r2, r2, #4
	bics	r2, r2, #4
	bxeq	lr
.L18:
	mov	r0, #8
	ldr	r1, .L22+8
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	str	r0, [r3]
	bx	lr
.L16:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L22+4
	ldr	r2, [r3]
	cmp	r2, #8
	cmpne	r2, #5
	bxeq	lr
	b	.L18
.L23:
	.align	2
.L22:
	.word	backgroundState
	.word	penguinState
	.word	livesRemaining
	.size	checkCollision, .-checkCollision
	.align	2
	.global	initScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScore, %function
initScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #8
	mov	r0, #6
	mov	r1, #0
	mov	r7, #210
	mov	r6, #1
	mov	r5, #218
	mov	r4, #226
	mov	lr, #3
	mov	ip, #2
	ldr	r3, .L26
	str	r7, [r3, #4]
	str	r6, [r3, #16]
	str	r5, [r3, #32]
	str	r4, [r3, #60]
	str	lr, [r3, #72]
	str	r0, [r3]
	str	r0, [r3, #28]
	str	r0, [r3, #56]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #40]
	str	r2, [r3, #36]
	str	r2, [r3, #68]
	str	r2, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #76]
	str	ip, [r3, #44]
	str	ip, [r3, #48]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	score
	.size	initScore, .-initScore
	.align	2
	.global	updateScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateScore, %function
updateScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L30
	ldr	r2, .L30+4
	ldr	r0, [r3]
	ldr	r3, .L30+8
	push	{r4, r5, r6, r7, lr}
	smull	r6, r7, r0, r2
	smull	r4, r5, r0, r3
	asr	r1, r0, #31
	rsb	ip, r1, r7, asr #5
	rsb	r1, r1, r5, asr #2
	smull	r4, r5, r1, r3
	smull	r6, r7, ip, r3
	asr	r2, ip, #31
	asr	r3, r1, #31
	rsb	r2, r2, r7, asr #2
	rsb	r3, r3, r5, asr #2
	add	lr, r1, r1, lsl #2
	add	r2, r2, r2, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r2, ip, r2, lsl #1
	sub	r0, r0, lr, lsl #1
	ldr	ip, .L30+12
	sub	r3, r1, r3, lsl #1
	lsl	r4, r2, #1
	lsl	lr, r0, #1
	lsl	r1, r3, #1
	str	r4, [ip, #24]
	str	lr, [ip, #80]
	str	r2, [ip, #20]
	str	r0, [ip, #76]
	str	r3, [ip, #48]
	str	r1, [ip, #52]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	points
	.word	1374389535
	.word	1717986919
	.word	score
	.size	updateScore, .-updateScore
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #16]
	ldr	r1, [r0, #4]
	ldr	r2, [r0, #24]
	ldr	ip, .L34
	str	lr, [sp, #-4]!
	lsl	r3, r3, #3
	ldr	lr, [r0]
	orr	r1, r1, #16384
	add	r0, ip, r3
	add	r2, r2, #960
	strh	lr, [ip, r3]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	shadowOAM
	.size	drawScore, .-drawScore
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #8
	mov	r1, #1
	mov	r0, #6
	mov	r6, #9
	mov	r5, #21
	mov	r4, #2
	mov	lr, #34
	mov	ip, #3
	ldr	r3, .L38
	str	r6, [r3, #4]
	str	r5, [r3, #28]
	str	r4, [r3, #40]
	str	lr, [r3, #52]
	str	r0, [r3]
	str	r0, [r3, #24]
	str	r0, [r3, #48]
	str	ip, [r3, #64]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #60]
	str	r2, [r3, #56]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #44]
	str	r1, [r3, #68]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	lives
	.size	initLives, .-initLives
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
	ldr	ip, .L42
	mov	r0, r4
	ldr	r5, .L42+4
	mov	r3, #256
	ldr	r2, .L42+8
	ldr	r1, .L42+12
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	ldr	r2, .L42+16
	ldr	r1, .L42+20
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, .L42+24
	mov	lr, pc
	bx	r3
	mov	r1, #64
	mov	r4, #1
	mov	r2, #6
	mov	lr, #94
	mov	ip, #88
	ldr	r3, .L42+28
	ldr	r0, .L42+32
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	ldr	r1, .L42+36
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r4, [r3, #8]
	str	r2, [r0]
	str	r2, [r1]
	bl	initLives
	mov	r1, #11
	mov	r3, #2
	ldr	r2, .L42+40
	ldr	r0, .L42+44
	str	r4, [r2]
	ldr	r2, .L42+48
	str	r4, [r0]
	str	r4, [r2]
	ldr	lr, .L42+52
	ldr	ip, .L42+56
	ldr	r0, .L42+60
	ldr	r2, .L42+64
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r0]
	ldr	lr, .L42+68
	ldr	ip, .L42+72
	ldr	r0, .L42+76
	str	r1, [r2]
	ldr	r2, .L42+80
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	ldrh	r2, [r2, #48]
	ldr	r3, .L42+84
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L43:
	.align	2
.L42:
	.word	livesRemaining
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	penguin
	.word	penguinState
	.word	previousPenguinState
	.word	straightCounter
	.word	frameCounter
	.word	crashCounter
	.word	warningCounter
	.word	endingCounter
	.word	penguinFrameCounter
	.word	mode
	.word	curPath
	.word	nextPath
	.word	backgroundState
	.word	67109120
	.word	buttons
	.size	initGame, .-initGame
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L47
	cmp	r3, #1
	moveq	r2, #0
	ldreq	r3, .L48+4
	streq	r2, [r3, #44]
	bx	lr
.L47:
	mov	r2, #0
	ldr	r3, .L48+4
	str	r2, [r3, #68]
	bx	lr
.L49:
	.align	2
.L48:
	.word	livesRemaining
	.word	lives
	.size	updateLives, .-updateLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	ldr	r3, [r0, #16]
	bne	.L57
	mov	r1, #512
	ldr	r2, .L58
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L57:
	ldr	r2, [r0, #4]
	mvn	r2, r2, lsl #17
	str	lr, [sp, #-4]!
	mvn	r2, r2, lsr #17
	mov	lr, #832
	ldr	r1, [r0]
	ldr	ip, .L58
	lsl	r3, r3, #3
	add	r0, ip, r3
	orr	r1, r1, #16384
	strh	lr, [r0, #4]	@ movhi
	strh	r1, [ip, r3]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L59:
	.align	2
.L58:
	.word	shadowOAM
	.size	drawLives, .-drawLives
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
	ldr	r2, .L61
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L61+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L62:
	.align	2
.L61:
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
	ldr	r2, .L73
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #40
	push	{r4, r5, r6, lr}
	str	r3, [r2]
	bgt	.L64
	ldr	r0, .L73+4
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	mov	lr, #8
	ldr	r4, [r0]
	ldr	ip, .L73+8
	ldr	r0, .L73+12
	strh	r1, [r0, #2]	@ movhi
	ldr	r1, [ip]
	add	r1, r1, #2
	strh	r4, [r0]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	str	r1, [ip]
.L64:
	sub	r1, r3, #41
	cmp	r1, #19
	bhi	.L65
	ldr	r0, .L73+4
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	mov	lr, #16
	ldr	r4, [r0]
	ldr	ip, .L73+8
	ldr	r0, .L73+12
	strh	r1, [r0, #2]	@ movhi
	ldr	r1, [ip]
	add	r1, r1, #2
	strh	r4, [r0]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	str	r1, [ip]
.L65:
	ldr	r1, .L73+16
	ldr	r1, [r1]
	cmp	r1, #12
	moveq	r3, #1
	streq	r3, [r2]
	beq	.L63
	sub	r2, r3, #61
	cmp	r2, #19
	sub	r4, r3, #81
	sub	lr, r3, #101
	sub	r0, r3, #121
	bhi	.L68
	ldr	r1, .L73+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	r5, #256
	ldr	r6, [r1]
	ldr	ip, .L73+8
	ldr	r1, .L73+12
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, [ip]
	add	r2, r2, #4
	strh	r6, [r1]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	str	r2, [ip]
.L68:
	cmp	r4, #19
	bhi	.L69
	ldr	r1, .L73+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	r4, #272
	ldr	r5, [r1]
	ldr	ip, .L73+8
	ldr	r1, .L73+12
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, [ip]
	add	r2, r2, #6
	strh	r5, [r1]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	str	r2, [ip]
.L69:
	cmp	lr, #19
	bhi	.L70
	ldr	r1, .L73+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	lr, #280
	ldr	r4, [r1]
	ldr	ip, .L73+8
	ldr	r1, .L73+12
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, [ip]
	add	r2, r2, #6
	strh	r4, [r1]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	str	r2, [ip]
.L70:
	cmp	r0, #19
	bhi	.L71
	ldr	r1, .L73+4
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #18
	mov	ip, #288
	mvn	r3, r3, lsr #18
	ldr	r0, .L73+8
	ldr	r2, [r0]
	ldr	lr, [r1]
	ldr	r1, .L73+12
	add	r2, r2, #8
	strh	r3, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	str	r2, [r0]
.L63:
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	cmp	r3, #140
	movgt	r2, #8
	ldrgt	r3, .L73+20
	pop	{r4, r5, r6, lr}
	strgt	r2, [r3]
	bx	lr
.L74:
	.align	2
.L73:
	.word	penguinFrameCounter
	.word	penguin
	.word	points
	.word	shadowOAM
	.word	mode
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
	ldr	r2, .L85
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #40
	push	{r4, r5, lr}
	str	r3, [r2]
	bgt	.L76
	mov	ip, #8
	ldr	r1, .L85+4
	ldr	r0, [r1, #4]
	ldr	lr, [r1]
	ldr	r1, .L85+8
	orr	r0, r0, #53248
	strh	r0, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	ip, [r1, #4]	@ movhi
.L76:
	sub	r1, r3, #41
	cmp	r1, #19
	bhi	.L77
	mov	ip, #16
	ldr	r1, .L85+4
	ldr	r0, [r1, #4]
	ldr	lr, [r1]
	ldr	r1, .L85+8
	orr	r0, r0, #53248
	strh	r0, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	ip, [r1, #4]	@ movhi
.L77:
	ldr	r1, .L85+12
	ldr	r1, [r1]
	cmp	r1, #12
	moveq	r3, #1
	streq	r3, [r2]
	beq	.L75
	sub	r2, r3, #61
	cmp	r2, #19
	sub	lr, r3, #81
	sub	ip, r3, #101
	sub	r0, r3, #121
	bhi	.L80
	mov	r4, #256
	ldr	r2, .L85+4
	ldr	r1, [r2, #4]
	ldr	r5, [r2]
	ldr	r2, .L85+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	r5, [r2]	@ movhi
	strh	r4, [r2, #4]	@ movhi
.L80:
	cmp	lr, #19
	bhi	.L81
	mov	lr, #272
	ldr	r2, .L85+4
	ldr	r1, [r2, #4]
	ldr	r4, [r2]
	ldr	r2, .L85+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	r4, [r2]	@ movhi
	strh	lr, [r2, #4]	@ movhi
.L81:
	cmp	ip, #19
	bhi	.L82
	mov	ip, #280
	ldr	r2, .L85+4
	ldr	r1, [r2, #4]
	ldr	lr, [r2]
	ldr	r2, .L85+8
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
.L82:
	cmp	r0, #19
	bhi	.L83
	mov	r1, #288
	ldr	r3, .L85+4
	ldm	r3, {r0, r2}
	ldr	r3, .L85+8
	orr	r2, r2, #53248
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
.L75:
	pop	{r4, r5, lr}
	bx	lr
.L83:
	cmp	r3, #140
	movgt	r2, #8
	ldrgt	r3, .L85+16
	pop	{r4, r5, lr}
	strgt	r2, [r3]
	bx	lr
.L86:
	.align	2
.L85:
	.word	penguinFrameCounter
	.word	penguin
	.word	shadowOAM
	.word	mode
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
	ldr	r3, .L89
	ldr	r1, [r3]
	ldr	r3, .L89+4
	cmp	r1, #2
	str	r2, [r3]
	moveq	r2, #6
	ldreq	r3, .L89+8
	streq	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L99
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L98
.L92:
	add	r3, r3, #1
	cmp	r3, #20
	str	r3, [r4]
	bgt	.L93
	ldr	r1, .L99+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #512
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L99+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L93:
	sub	r2, r3, #21
	cmp	r2, #9
	bhi	.L94
	ldr	r1, .L99+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #520
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L99+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L94:
	sub	r2, r3, #31
	cmp	r2, #9
	bhi	.L95
	ldr	r2, .L99+4
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #528
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L99+8
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L95:
	cmp	r3, #40
	movgt	r2, #512
	ldrgt	r3, .L99+8
	pop	{r4, r5, r6, lr}
	strhgt	r2, [r3]	@ movhi
	bx	lr
.L98:
	mov	r3, #0
	ldr	r2, .L99+12
	mov	r1, #12096
	ldr	r0, .L99+16
	ldr	r5, .L99+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L92
.L100:
	.align	2
.L99:
	.word	crashCounter
	.word	penguin
	.word	shadowOAM
	.word	11025
	.word	crashSound
	.word	playSoundB
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L143
	ldr	r3, [r4]
	cmp	r3, #8
	beq	.L140
	mov	r2, #6
	ldr	r5, .L143+4
	ldrh	r3, [r5]
	tst	r3, #32
	str	r2, [r4]
	beq	.L105
	ldr	r2, .L143+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L105
.L106:
	mov	r3, #0
	ldr	r2, .L143+12
	ldr	r1, .L143+16
	ldr	r0, .L143+20
	ldr	r6, .L143+24
	mov	lr, pc
	bx	r6
	ldrh	r3, [r5]
.L107:
	tst	r3, #2
	beq	.L108
	ldr	r3, .L143+8
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #12
	ldreq	r3, .L143+28
	streq	r2, [r3]
.L108:
	ldr	r3, .L143+32
	ldrh	r3, [r3, #48]
	tst	r3, #32
	moveq	r3, #4
	streq	r3, [r4]
	ldr	r3, .L143+32
	ldrh	r3, [r3, #48]
	ldr	r2, .L143+36
	tst	r3, #16
	ldr	r1, [r2]
	bne	.L110
	mov	r3, #5
	cmp	r1, r3
	str	r3, [r4]
	movne	r0, #1
	ldrne	r1, .L143+40
	strne	r3, [r2]
	strne	r0, [r1]
.L112:
	pop	{r4, r5, r6, r7, r8, lr}
	b	rightPenguin
.L105:
	tst	r3, #16
	beq	.L107
	ldr	r2, .L143+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L107
	b	.L106
.L140:
	mov	r6, #1
	ldr	r3, .L143+40
	mov	r7, #67108864
	str	r6, [r3]
	bl	drawCrash
	mov	r2, #4864
	mov	r3, #512
	strh	r2, [r7]	@ movhi
	ldr	r1, .L143+44
	ldr	r2, .L143+48
	mov	r0, #3
	ldr	r5, .L143+52
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L143+56
	ldr	r1, .L143+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L143+4
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L141
.L103:
	ldr	r2, .L143+36
	ldr	r1, [r2]
.L110:
	ldr	r3, [r4]
	cmp	r3, r1
	movne	r0, #1
	ldrne	r1, .L143+40
	strne	r0, [r1]
	cmp	r3, #5
	str	r3, [r2]
	beq	.L112
	cmp	r3, #6
	ldreq	r2, .L143+64
	beq	.L104
	cmp	r3, #4
	beq	.L142
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L141:
	ldr	r3, .L143+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L103
	mov	r2, #4608
	mov	r1, #64
	mov	r3, #6
	mov	lr, #94
	mov	ip, #88
	strh	r2, [r7]	@ movhi
	ldr	r2, .L143+64
	ldr	r0, .L143+36
	str	r1, [r2, #12]
	str	r1, [r2, #16]
	ldr	r1, .L143+68
	str	r3, [r4]
	str	r6, [r2, #8]
	str	lr, [r2]
	str	ip, [r2, #4]
	str	r3, [r0]
	str	r6, [r1]
.L104:
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L143+72
	pop	{r4, r5, r6, r7, r8, lr}
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L142:
	pop	{r4, r5, r6, r7, r8, lr}
	b	leftPenguin
.L144:
	.align	2
.L143:
	.word	penguinState
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	6624
	.word	turn
	.word	playSoundB
	.word	mode
	.word	67109120
	.word	previousPenguinState
	.word	penguinFrameCounter
	.word	continueTiles
	.word	100679680
	.word	DMANow
	.word	100718592
	.word	continueMap
	.word	penguin
	.word	crashCounter
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
	ldr	r4, .L156
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L152
.L146:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L153
.L147:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L154
.L148:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L155
.L149:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L145
	mov	r3, #3904
	mov	r2, #100663296
	ldr	r1, .L156+4
	mov	r0, #3
	ldr	r4, .L156+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L156+12
	ldr	r1, .L156+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L156+20
	str	r2, [r3]
.L145:
	pop	{r4, r5, r6, lr}
	bx	lr
.L155:
	mov	r3, #3904
	mov	r2, #100663296
	ldr	r1, .L156+4
	mov	r0, #3
	ldr	r5, .L156+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L156+12
	ldr	r1, .L156+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L156+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L149
.L154:
	mov	r3, #3216
	mov	r2, #100663296
	ldr	r1, .L156+24
	mov	r0, #3
	ldr	r5, .L156+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L156+12
	ldr	r1, .L156+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L156+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L148
.L153:
	mov	r3, #3296
	mov	r2, #100663296
	ldr	r1, .L156+32
	mov	r0, #3
	ldr	r5, .L156+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L156+12
	ldr	r1, .L156+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L156+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L147
.L152:
	mov	r3, #3024
	mov	r2, #100663296
	ldr	r1, .L156+40
	mov	r0, #3
	ldr	r5, .L156+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L156+12
	ldr	r1, .L156+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L156+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L146
.L157:
	.align	2
.L156:
	.word	straightCounter
	.word	bg4Tiles
	.word	DMANow
	.word	100720640
	.word	bg4Map
	.word	backgroundState
	.word	bg3Tiles
	.word	bg3Map
	.word	bg2Tiles
	.word	bg2Map
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
	ldr	r4, .L169
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [r4]
	ble	.L165
.L159:
	sub	r2, r3, #10
	cmp	r2, #9
	bls	.L166
.L160:
	sub	r2, r3, #20
	cmp	r2, #9
	bls	.L167
.L161:
	sub	r2, r3, #30
	cmp	r2, #9
	bls	.L168
.L162:
	sub	r3, r3, #40
	cmp	r3, #9
	bhi	.L158
	ldr	r3, .L169+4
	mov	r2, #100663296
	ldr	r1, .L169+8
	mov	r0, #3
	ldr	r4, .L169+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L169+16
	ldr	r1, .L169+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L169+24
	str	r2, [r3]
.L158:
	pop	{r4, r5, r6, lr}
	bx	lr
.L168:
	mov	r3, #3648
	mov	r2, #100663296
	ldr	r1, .L169+28
	mov	r0, #3
	ldr	r5, .L169+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L169+16
	ldr	r1, .L169+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L169+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L162
.L167:
	mov	r3, #2976
	mov	r2, #100663296
	ldr	r1, .L169+36
	mov	r0, #3
	ldr	r5, .L169+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L169+16
	ldr	r1, .L169+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L169+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L161
.L166:
	mov	r3, #3456
	mov	r2, #100663296
	ldr	r1, .L169+44
	mov	r0, #3
	ldr	r5, .L169+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L169+16
	ldr	r1, .L169+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L169+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L160
.L165:
	mov	r3, #3008
	mov	r2, #100663296
	ldr	r1, .L169+52
	mov	r0, #3
	ldr	r5, .L169+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L169+16
	ldr	r1, .L169+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L169+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L159
.L170:
	.align	2
.L169:
	.word	warningCounter
	.word	5040
	.word	arrowLeft5Tiles
	.word	DMANow
	.word	100720640
	.word	arrowLeft5Map
	.word	backgroundState
	.word	arrowLeft4Tiles
	.word	arrowLeft4Map
	.word	arrowLeft3Tiles
	.word	arrowLeft3Map
	.word	arrowLeft2Tiles
	.word	arrowLeft2Map
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
	ldr	r4, .L182
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [r4]
	ble	.L178
.L172:
	sub	r2, r3, #10
	cmp	r2, #9
	bls	.L179
.L173:
	sub	r2, r3, #20
	cmp	r2, #9
	bls	.L180
.L174:
	sub	r2, r3, #30
	cmp	r2, #9
	bls	.L181
.L175:
	sub	r3, r3, #40
	cmp	r3, #9
	bhi	.L171
	ldr	r3, .L182+4
	mov	r2, #100663296
	ldr	r1, .L182+8
	mov	r0, #3
	ldr	r4, .L182+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L182+16
	ldr	r1, .L182+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L182+24
	str	r2, [r3]
.L171:
	pop	{r4, r5, r6, lr}
	bx	lr
.L181:
	mov	r3, #3728
	mov	r2, #100663296
	ldr	r1, .L182+28
	mov	r0, #3
	ldr	r5, .L182+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L182+16
	ldr	r1, .L182+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L182+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L175
.L180:
	mov	r3, #3088
	mov	r2, #100663296
	ldr	r1, .L182+36
	mov	r0, #3
	ldr	r5, .L182+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L182+16
	ldr	r1, .L182+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L182+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L174
.L179:
	mov	r3, #3440
	mov	r2, #100663296
	ldr	r1, .L182+44
	mov	r0, #3
	ldr	r5, .L182+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L182+16
	ldr	r1, .L182+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L182+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L173
.L178:
	mov	r3, #3152
	mov	r2, #100663296
	ldr	r1, .L182+52
	mov	r0, #3
	ldr	r5, .L182+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L182+16
	ldr	r1, .L182+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L182+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L172
.L183:
	.align	2
.L182:
	.word	warningCounter
	.word	5088
	.word	arrowRight5Tiles
	.word	DMANow
	.word	100720640
	.word	arrowRight5Map
	.word	backgroundState
	.word	arrowRight4Tiles
	.word	arrowRight4Map
	.word	arrowRight3Tiles
	.word	arrowRight3Map
	.word	arrowRight2Tiles
	.word	arrowRight2Map
	.word	arrowRight1Tiles
	.word	arrowRight1Map
	.size	rightWarning, .-rightWarning
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
	ldr	r4, .L195
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L191
.L185:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L192
.L186:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L193
.L187:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L194
.L188:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L184
	mov	r3, #2608
	mov	r2, #100663296
	ldr	r1, .L195+4
	mov	r0, #3
	ldr	r4, .L195+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L195+12
	ldr	r1, .L195+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L195+20
	str	r2, [r3]
.L184:
	pop	{r4, r5, r6, lr}
	bx	lr
.L194:
	mov	r3, #2912
	mov	r2, #100663296
	ldr	r1, .L195+24
	mov	r0, #3
	ldr	r5, .L195+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L195+12
	ldr	r1, .L195+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L195+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L188
.L193:
	mov	r3, #2848
	mov	r2, #100663296
	ldr	r1, .L195+32
	mov	r0, #3
	ldr	r5, .L195+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L195+12
	ldr	r1, .L195+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L195+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L187
.L192:
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L195+40
	mov	r0, #3
	ldr	r5, .L195+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L195+12
	ldr	r1, .L195+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L195+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L186
.L191:
	mov	r3, #4160
	mov	r2, #100663296
	ldr	r1, .L195+48
	mov	r0, #3
	ldr	r5, .L195+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L195+12
	ldr	r1, .L195+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L195+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L185
.L196:
	.align	2
.L195:
	.word	leftCounter
	.word	turnLeft5Tiles
	.word	DMANow
	.word	100720640
	.word	turnLeft5Map
	.word	backgroundState
	.word	turnLeft4Tiles
	.word	turnLeft4Map
	.word	turnLeft3Tiles
	.word	turnLeft3Map
	.word	turnLeft2Tiles
	.word	turnLeft2Map
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
	ldr	r4, .L208
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L204
.L198:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L205
.L199:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L206
.L200:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L207
.L201:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L197
	mov	r3, #3216
	mov	r2, #100663296
	ldr	r1, .L208+4
	mov	r0, #3
	ldr	r4, .L208+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L208+12
	ldr	r1, .L208+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r1, .L208+20
	ldr	r2, .L208+24
	str	r3, [r1]
	str	r3, [r2]
.L197:
	pop	{r4, r5, r6, lr}
	bx	lr
.L207:
	mov	r3, #3376
	mov	r2, #100663296
	ldr	r1, .L208+28
	mov	r0, #3
	ldr	r5, .L208+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L208+12
	ldr	r1, .L208+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #1
	ldr	r0, .L208+20
	ldr	r1, .L208+24
	ldr	r3, [r4]
	str	r2, [r0]
	str	r2, [r1]
	b	.L201
.L206:
	mov	r3, #3280
	mov	r2, #100663296
	ldr	r1, .L208+36
	mov	r0, #3
	ldr	r5, .L208+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L208+12
	ldr	r1, .L208+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L208+20
	ldr	r2, .L208+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L200
.L205:
	mov	r3, #3536
	mov	r2, #100663296
	ldr	r1, .L208+44
	mov	r0, #3
	ldr	r5, .L208+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L208+12
	ldr	r1, .L208+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L208+20
	ldr	r2, .L208+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L199
.L204:
	ldr	r3, .L208+52
	mov	r2, #100663296
	ldr	r1, .L208+56
	mov	r0, #3
	ldr	r5, .L208+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L208+12
	ldr	r1, .L208+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L208+20
	ldr	r2, .L208+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L198
.L209:
	.align	2
.L208:
	.word	rightCounter
	.word	turnRight5Tiles
	.word	DMANow
	.word	100720640
	.word	turnRight5Map
	.word	backgroundState
	.word	curPath
	.word	turnRight4Tiles
	.word	turnRight4Map
	.word	turnRight3Tiles
	.word	turnRight3Map
	.word	turnRight2Tiles
	.word	turnRight2Map
	.word	4240
	.word	turnRight1Tiles
	.word	turnRight1Map
	.size	rightCave, .-rightCave
	.align	2
	.global	endingCave
	.syntax unified
	.arm
	.fpu softvfp
	.type	endingCave, %function
endingCave:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L221
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L217
.L211:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L218
.L212:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L219
.L213:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L220
.L214:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L210
	mov	r3, #32
	mov	r2, #100663296
	ldr	r1, .L221+4
	mov	r0, #3
	ldr	r4, .L221+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L221+12
	ldr	r1, .L221+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L221+20
	str	r2, [r3]
.L210:
	pop	{r4, r5, r6, lr}
	bx	lr
.L220:
	mov	r3, #3552
	mov	r2, #100663296
	ldr	r1, .L221+24
	mov	r0, #3
	ldr	r5, .L221+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L221+12
	ldr	r1, .L221+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L221+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L214
.L219:
	mov	r3, #5504
	mov	r2, #100663296
	ldr	r1, .L221+32
	mov	r0, #3
	ldr	r5, .L221+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L221+12
	ldr	r1, .L221+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L221+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L213
.L218:
	mov	r3, #3008
	mov	r2, #100663296
	ldr	r1, .L221+40
	mov	r0, #3
	ldr	r5, .L221+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L221+12
	ldr	r1, .L221+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L221+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L212
.L217:
	mov	r3, #2960
	mov	r2, #100663296
	ldr	r1, .L221+48
	mov	r0, #3
	ldr	r5, .L221+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L221+12
	ldr	r1, .L221+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L221+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L211
.L222:
	.align	2
.L221:
	.word	endingCounter
	.word	ending5Tiles
	.word	DMANow
	.word	100720640
	.word	ending5Map
	.word	backgroundState
	.word	ending4Tiles
	.word	ending4Map
	.word	ending3Tiles
	.word	ending3Map
	.word	ending2Tiles
	.word	ending2Map
	.word	ending1Tiles
	.word	ending1Map
	.size	endingCave, .-endingCave
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
	ldr	r4, .L231
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L228
	cmp	r3, #1
	beq	.L229
.L225:
	cmp	r3, #2
	beq	.L230
.L223:
	pop	{r4, lr}
	bx	lr
.L228:
	bl	leftWarning
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L225
.L229:
	bl	rightWarning
	ldr	r3, [r4]
	cmp	r3, #2
	bne	.L223
.L230:
	pop	{r4, lr}
	b	endingCave
.L232:
	.align	2
.L231:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L263
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	bl	updatePenguin
	ldr	r3, .L263+4
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L254
	cmp	r3, #1
	moveq	r2, #0
	ldreq	r3, .L263+8
	streq	r2, [r3, #44]
.L235:
	ldr	r5, .L263+12
	bl	checkCollision
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L255
	cmp	r3, #0
	beq	.L256
	cmp	r3, #1
	beq	.L257
	cmp	r3, #10
	beq	.L258
	cmp	r3, #9
	beq	.L259
	cmp	r3, #3
	beq	.L260
.L233:
	pop	{r4, r5, r6, lr}
	bx	lr
.L254:
	mov	r2, #0
	ldr	r3, .L263+8
	str	r2, [r3, #68]
	b	.L235
.L256:
	bl	leftCave
.L237:
	ldr	r2, [r4]
	ldr	r3, .L263+16
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	bne	.L233
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L243
	cmp	r3, #1
	beq	.L261
	cmp	r3, #0
	bne	.L245
	mov	r2, #1
	ldr	r3, .L263+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	straightCave
.L255:
	bl	straightCave
	b	.L237
.L257:
	bl	rightCave
	b	.L237
.L261:
	ldr	r2, .L263+24
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	straightCave
.L243:
	mov	r0, #1
	ldr	ip, .L263+28
	ldr	r1, .L263+32
	cmp	r2, ip
	str	r0, [r1]
	ble	.L248
	ldr	r2, .L263+36
	ldr	r2, [r2]
	cmp	r2, #8
	ldrne	r2, .L263+40
	popne	{r4, r5, r6, lr}
	strne	r3, [r2]
	bne	updateCave
.L248:
	ldr	r3, .L263+44
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	ldr	r3, .L263+40
	rsblt	r0, r0, #0
	pop	{r4, r5, r6, lr}
	str	r0, [r3]
	b	updateCave
.L245:
	cmp	r3, #9
	beq	.L262
	cmp	r3, #10
	bne	.L247
	mov	r2, #1
	ldr	r3, .L263+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	rightCave
.L258:
	bl	rightWarning
	b	.L237
.L259:
	bl	leftWarning
	b	.L237
.L260:
	bl	endingCave
	b	.L237
.L247:
	cmp	r3, #3
	bne	.L233
	pop	{r4, r5, r6, lr}
	b	endingCave
.L262:
	mov	r2, #1
	ldr	r3, .L263+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	leftCave
.L264:
	.align	2
.L263:
	.word	frameCounter
	.word	livesRemaining
	.word	lives
	.word	backgroundState
	.word	1374389535
	.word	leftCounter
	.word	rightCounter
	.word	1500
	.word	straightCounter
	.word	penguinState
	.word	choosePath
	.word	rand
	.word	warningCounter
	.size	updateGame, .-updateGame
	.comm	mode,4,4
	.comm	choosePath,4,4
	.comm	previousPenguinState,4,4
	.comm	penguinState,4,4
	.comm	points,4,4
	.comm	warningCounter,4,4
	.comm	crashCounter,4,4
	.comm	penguinFrameCounter,4,4
	.comm	endingCounter,4,4
	.comm	rightCounter,4,4
	.comm	leftCounter,4,4
	.comm	straightCounter,4,4
	.comm	shadowOAM,1024,4
	.comm	score,84,4
	.comm	lives,72,4
	.comm	penguin,20,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	livesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	nextPath,4,4
	.comm	curPath,4,4
	.comm	backgroundState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
