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
	ldr	r3, .L11
	ldr	lr, .L11+4
	ldr	r5, .L11+8
	add	r1, r3, #72
.L4:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	ldr	r2, [r3, #16]
	lsleq	r2, r2, #3
	strheq	r4, [lr, r2]	@ movhi
	bne	.L10
.L3:
	add	r3, r3, #24
	cmp	r1, r3
	bne	.L4
	ldr	r3, .L11+12
	add	r5, r3, #140
.L5:
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #24]
	ldr	r4, [r3]
	lsl	r2, r2, #3
	add	r3, r3, #28
	add	ip, lr, r2
	orr	r0, r0, #16384
	add	r1, r1, #960
	cmp	r5, r3
	strh	r4, [lr, r2]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	bne	.L5
	ldr	r4, .L11+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L11+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	ldr	ip, [r3]
	ldr	r0, [r3, #4]
	lsl	r2, r2, #3
	orr	ip, ip, #16384
	orr	r0, r0, r5
	strh	ip, [lr, r2]	@ movhi
	add	r2, lr, r2
	strh	r6, [r2, #4]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	b	.L3
.L12:
	.align	2
.L11:
	.word	lives
	.word	shadowOAM
	.word	-32768
	.word	score
	.word	DMANow
	.size	drawGame, .-drawGame
	.align	2
	.global	drawScores
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScores, %function
drawScores:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L17
	push	{r4, r5, lr}
	ldr	lr, .L17+4
	add	r5, r3, #140
.L14:
	ldr	r2, [r3, #16]
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #24]
	ldr	r4, [r3]
	lsl	r2, r2, #3
	add	r3, r3, #28
	add	ip, lr, r2
	orr	r0, r0, #16384
	add	r1, r1, #960
	cmp	r5, r3
	strh	r4, [lr, r2]	@ movhi
	strh	r0, [ip, #2]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	bne	.L14
	pop	{r4, r5, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	score
	.word	shadowOAM
	.size	drawScores, .-drawScores
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
	ldr	r3, .L21
	ldr	r0, .L21+4
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	ldr	r1, .L21+8
	str	r4, [r3, #8]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r2, [r0]
	str	r2, [r1]
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
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
	ldr	r3, .L30
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L24
	ldr	r3, .L30+4
	ldr	r2, [r3]
	sub	r2, r2, #4
	bics	r2, r2, #4
	bxeq	lr
.L26:
	mov	r0, #8
	ldr	r1, .L30+8
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	str	r0, [r3]
	bx	lr
.L24:
	cmp	r3, #1
	bxne	lr
	ldr	r3, .L30+4
	ldr	r2, [r3]
	cmp	r2, #8
	cmpne	r2, #5
	bxeq	lr
	b	.L26
.L31:
	.align	2
.L30:
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
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #8
	mov	r0, #6
	mov	fp, #194
	mov	r10, #7
	mov	r9, #202
	mov	r8, #210
	mov	r7, #9
	mov	r6, #218
	mov	r5, #10
	mov	r4, #2
	mov	lr, #226
	mov	ip, #11
	ldr	r3, .L34
	str	r1, [r3]
	ldr	r3, .L34+4
	str	fp, [r3, #4]
	str	r10, [r3, #16]
	str	r9, [r3, #32]
	str	r8, [r3, #60]
	str	r7, [r3, #72]
	str	r6, [r3, #88]
	str	r5, [r3, #100]
	str	r4, [r3, #104]
	str	lr, [r3, #116]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #48]
	str	r1, [r3, #52]
	str	r1, [r3, #76]
	str	r1, [r3, #80]
	str	r1, [r3, #108]
	str	r0, [r3]
	str	r0, [r3, #28]
	str	r0, [r3, #56]
	str	r0, [r3, #84]
	str	r0, [r3, #112]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #40]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	str	r2, [r3, #68]
	str	r2, [r3, #64]
	str	r2, [r3, #96]
	str	r2, [r3, #92]
	str	r2, [r3, #124]
	str	r2, [r3, #120]
	str	r1, [r3, #132]
	str	r1, [r3, #136]
	str	ip, [r3, #128]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	points
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	ldr	ip, .L38+4
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L38+8
	ldr	lr, .L38+12
	ldr	r0, .L38+16
	ldr	r1, .L38+20
	smull	r8, r9, r3, ip
	smull	r6, r7, r3, r0
	smull	r4, r5, r3, r1
	smull	r10, fp, r3, lr
	smull	r0, r1, r3, r2
	asr	r3, r3, #31
	rsb	r10, r3, r9, asr #12
	rsb	lr, r3, r7, asr #6
	rsb	ip, r3, r5, asr #5
	rsb	fp, r3, fp, asr #13
	rsb	r3, r3, r1, asr #2
	smull	r0, r1, r10, r2
	sub	sp, sp, #36
	stm	sp, {r0-r1}
	smull	r0, r1, lr, r2
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	smull	r0, r1, ip, r2
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	smull	r0, r1, r3, r2
	smull	r8, r9, fp, r2
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	asr	r0, fp, #31
	rsb	r0, r0, r9, asr #2
	ldr	r1, [sp, #4]
	add	r0, r0, r0, lsl #2
	ldr	r2, .L38+24
	sub	r0, fp, r0, lsl #1
	asr	r6, r10, #31
	lsl	r4, r0, #1
	rsb	r6, r6, r1, asr #2
	ldr	r1, [sp, #12]
	str	r4, [r2, #24]
	asr	r4, lr, #31
	rsb	r4, r4, r1, asr #2
	ldr	r1, [sp, #20]
	ldr	r5, [sp, #28]
	str	r0, [r2, #20]
	asr	r0, ip, #31
	rsb	r0, r0, r1, asr #2
	asr	r1, r3, #31
	rsb	r1, r1, r5, asr #2
	add	r6, r6, r6, lsl #2
	add	r4, r4, r4, lsl #2
	add	r0, r0, r0, lsl #2
	add	r1, r1, r1, lsl #2
	sub	r6, r10, r6, lsl #1
	sub	r4, lr, r4, lsl #1
	sub	r0, ip, r0, lsl #1
	sub	r1, r3, r1, lsl #1
	lsl	r5, r6, #1
	lsl	lr, r4, #1
	lsl	ip, r0, #1
	lsl	r3, r1, #1
	str	r6, [r2, #48]
	str	r5, [r2, #52]
	str	r4, [r2, #76]
	str	lr, [r2, #80]
	str	r0, [r2, #104]
	str	ip, [r2, #108]
	str	r1, [r2, #132]
	str	r3, [r2, #136]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	points
	.word	1759218605
	.word	1717986919
	.word	351843721
	.word	274877907
	.word	1374389535
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
	ldr	ip, .L42
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
.L43:
	.align	2
.L42:
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
	ldr	r3, .L46
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
.L47:
	.align	2
.L46:
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
	ldr	ip, .L50
	mov	r0, r4
	ldr	r5, .L50+4
	mov	r3, #256
	ldr	r2, .L50+8
	ldr	r1, .L50+12
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	ldr	r2, .L50+16
	ldr	r1, .L50+20
	mov	r3, #16384
	mov	lr, pc
	bx	r5
	ldr	r3, .L50+24
	mov	lr, pc
	bx	r3
	mov	r1, #64
	mov	r4, #1
	mov	r2, #6
	mov	lr, #94
	mov	ip, #88
	ldr	r3, .L50+28
	ldr	r0, .L50+32
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	ldr	r1, .L50+36
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r4, [r3, #8]
	str	r2, [r0]
	str	r2, [r1]
	bl	initLives
	bl	initScore
	mov	r1, #11
	mov	r3, #2
	ldr	r2, .L50+40
	ldr	r0, .L50+44
	str	r4, [r2]
	ldr	r2, .L50+48
	str	r4, [r0]
	str	r4, [r2]
	ldr	lr, .L50+52
	ldr	ip, .L50+56
	ldr	r0, .L50+60
	ldr	r2, .L50+64
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r0]
	ldr	lr, .L50+68
	ldr	ip, .L50+72
	ldr	r0, .L50+76
	str	r1, [r2]
	ldr	r2, .L50+80
	str	r3, [lr]
	str	r3, [ip]
	str	r3, [r0]
	ldrh	r2, [r2, #48]
	ldr	r3, .L50+84
	pop	{r4, r5, r6, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L51:
	.align	2
.L50:
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
	ldr	r3, .L56
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L55
	cmp	r3, #1
	moveq	r2, #0
	ldreq	r3, .L56+4
	streq	r2, [r3, #44]
	bx	lr
.L55:
	mov	r2, #0
	ldr	r3, .L56+4
	str	r2, [r3, #68]
	bx	lr
.L57:
	.align	2
.L56:
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
	bne	.L65
	mov	r1, #512
	ldr	r2, .L66
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L65:
	ldr	r2, [r0, #4]
	mvn	r2, r2, lsl #17
	str	lr, [sp, #-4]!
	mvn	r2, r2, lsr #17
	mov	lr, #832
	ldr	r1, [r0]
	ldr	ip, .L66
	lsl	r3, r3, #3
	add	r0, ip, r3
	orr	r1, r1, #16384
	strh	lr, [r0, #4]	@ movhi
	strh	r1, [ip, r3]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L67:
	.align	2
.L66:
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
	ldr	r2, .L69
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L69+4
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r2, .L81
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #40
	push	{r4, r5, r6, lr}
	str	r3, [r2]
	bgt	.L72
	ldr	r0, .L81+4
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	mov	lr, #8
	ldr	r4, [r0]
	ldr	ip, .L81+8
	ldr	r0, .L81+12
	strh	r1, [r0, #2]	@ movhi
	ldr	r1, [ip]
	add	r1, r1, #2
	strh	r4, [r0]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	str	r1, [ip]
.L72:
	sub	r1, r3, #41
	cmp	r1, #19
	bhi	.L73
	ldr	r0, .L81+4
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	mov	lr, #16
	ldr	r4, [r0]
	ldr	ip, .L81+8
	ldr	r0, .L81+12
	strh	r1, [r0, #2]	@ movhi
	ldr	r1, [ip]
	add	r1, r1, #2
	strh	r4, [r0]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	str	r1, [ip]
.L73:
	ldr	r1, .L81+16
	ldr	r1, [r1]
	cmp	r1, #12
	moveq	r3, #1
	streq	r3, [r2]
	beq	.L71
	sub	r2, r3, #61
	cmp	r2, #19
	sub	r4, r3, #81
	sub	lr, r3, #101
	sub	r0, r3, #121
	bhi	.L76
	ldr	r1, .L81+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	r5, #256
	ldr	r6, [r1]
	ldr	ip, .L81+8
	ldr	r1, .L81+12
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, [ip]
	add	r2, r2, #4
	strh	r6, [r1]	@ movhi
	strh	r5, [r1, #4]	@ movhi
	str	r2, [ip]
.L76:
	cmp	r4, #19
	bhi	.L77
	ldr	r1, .L81+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	r4, #272
	ldr	r5, [r1]
	ldr	ip, .L81+8
	ldr	r1, .L81+12
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, [ip]
	add	r2, r2, #6
	strh	r5, [r1]	@ movhi
	strh	r4, [r1, #4]	@ movhi
	str	r2, [ip]
.L77:
	cmp	lr, #19
	bhi	.L78
	ldr	r1, .L81+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	mov	lr, #280
	ldr	r4, [r1]
	ldr	ip, .L81+8
	ldr	r1, .L81+12
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, [ip]
	add	r2, r2, #6
	strh	r4, [r1]	@ movhi
	strh	lr, [r1, #4]	@ movhi
	str	r2, [ip]
.L78:
	cmp	r0, #19
	bhi	.L79
	ldr	r1, .L81+4
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #18
	mov	ip, #288
	mvn	r3, r3, lsr #18
	ldr	r0, .L81+8
	ldr	r2, [r0]
	ldr	lr, [r1]
	ldr	r1, .L81+12
	add	r2, r2, #8
	strh	r3, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	str	r2, [r0]
.L71:
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	cmp	r3, #140
	movgt	r2, #8
	ldrgt	r3, .L81+20
	pop	{r4, r5, r6, lr}
	strgt	r2, [r3]
	bx	lr
.L82:
	.align	2
.L81:
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
	ldr	r2, .L93
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #40
	push	{r4, r5, r6, lr}
	str	r3, [r2]
	bgt	.L84
	mov	r4, #8
	ldr	ip, .L93+4
	ldr	lr, .L93+8
	ldr	r1, [ip]
	ldr	r0, [lr, #4]
	add	r1, r1, #2
	ldr	lr, [lr]
	str	r1, [ip]
	ldr	r1, .L93+12
	orr	r0, r0, #53248
	strh	r0, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	r4, [r1, #4]	@ movhi
.L84:
	sub	r1, r3, #41
	cmp	r1, #19
	bhi	.L85
	mov	r4, #16
	ldr	ip, .L93+4
	ldr	lr, .L93+8
	ldr	r1, [ip]
	ldr	r0, [lr, #4]
	add	r1, r1, #2
	ldr	lr, [lr]
	str	r1, [ip]
	ldr	r1, .L93+12
	orr	r0, r0, #53248
	strh	r0, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	strh	r4, [r1, #4]	@ movhi
.L85:
	ldr	r1, .L93+16
	ldr	r1, [r1]
	cmp	r1, #12
	moveq	r3, #1
	streq	r3, [r2]
	beq	.L83
	sub	r2, r3, #61
	cmp	r2, #19
	sub	r5, r3, #81
	sub	lr, r3, #101
	sub	r0, r3, #121
	bhi	.L88
	mov	r6, #256
	ldr	ip, .L93+4
	ldr	r4, .L93+8
	ldr	r2, [ip]
	ldr	r1, [r4, #4]
	add	r2, r2, #4
	ldr	r4, [r4]
	str	r2, [ip]
	ldr	r2, .L93+12
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	r4, [r2]	@ movhi
	strh	r6, [r2, #4]	@ movhi
.L88:
	cmp	r5, #19
	bhi	.L89
	mov	r5, #272
	ldr	ip, .L93+4
	ldr	r4, .L93+8
	ldr	r2, [ip]
	ldr	r1, [r4, #4]
	add	r2, r2, #6
	ldr	r4, [r4]
	str	r2, [ip]
	ldr	r2, .L93+12
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	r4, [r2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
.L89:
	cmp	lr, #19
	bhi	.L90
	mov	r4, #280
	ldr	ip, .L93+4
	ldr	lr, .L93+8
	ldr	r2, [ip]
	ldr	r1, [lr, #4]
	add	r2, r2, #6
	ldr	lr, [lr]
	str	r2, [ip]
	ldr	r2, .L93+12
	orr	r1, r1, #53248
	strh	r1, [r2, #2]	@ movhi
	strh	lr, [r2]	@ movhi
	strh	r4, [r2, #4]	@ movhi
.L90:
	cmp	r0, #19
	bhi	.L91
	mov	ip, #288
	ldr	r3, .L93+8
	ldr	r0, .L93+4
	ldr	r2, [r3, #4]
	ldr	r1, [r0]
	ldr	lr, [r3]
	ldr	r3, .L93+12
	add	r1, r1, #8
	orr	r2, r2, #53248
	str	r1, [r0]
	strh	r2, [r3, #2]	@ movhi
	strh	lr, [r3]	@ movhi
	strh	ip, [r3, #4]	@ movhi
.L83:
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	cmp	r3, #140
	movgt	r2, #8
	ldrgt	r3, .L93+20
	pop	{r4, r5, r6, lr}
	strgt	r2, [r3]
	bx	lr
.L94:
	.align	2
.L93:
	.word	penguinFrameCounter
	.word	points
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
	ldr	r3, .L97
	ldr	r1, [r3]
	ldr	r3, .L97+4
	cmp	r1, #2
	str	r2, [r3]
	moveq	r2, #6
	ldreq	r3, .L97+8
	streq	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r4, .L107
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L106
.L100:
	add	r3, r3, #1
	cmp	r3, #20
	str	r3, [r4]
	bgt	.L101
	ldr	r1, .L107+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #512
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L107+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L101:
	sub	r2, r3, #21
	cmp	r2, #9
	bhi	.L102
	ldr	r1, .L107+4
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mov	r0, #520
	mvn	r2, r2, lsr #18
	ldr	ip, [r1]
	ldr	r1, .L107+8
	strh	r2, [r1, #2]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
.L102:
	sub	r2, r3, #31
	cmp	r2, #9
	bhi	.L103
	ldr	r2, .L107+4
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #528
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L107+8
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L103:
	cmp	r3, #40
	movgt	r2, #512
	ldrgt	r3, .L107+8
	pop	{r4, r5, r6, lr}
	strhgt	r2, [r3]	@ movhi
	bx	lr
.L106:
	mov	r3, #0
	ldr	r2, .L107+12
	mov	r1, #12096
	ldr	r0, .L107+16
	ldr	r5, .L107+20
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L100
.L108:
	.align	2
.L107:
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
	ldr	r4, .L151
	ldr	r3, [r4]
	cmp	r3, #8
	beq	.L148
	mov	r2, #6
	ldr	r5, .L151+4
	ldrh	r3, [r5]
	tst	r3, #32
	str	r2, [r4]
	beq	.L113
	ldr	r2, .L151+8
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L113
.L114:
	mov	r3, #0
	ldr	r2, .L151+12
	ldr	r1, .L151+16
	ldr	r0, .L151+20
	ldr	r6, .L151+24
	mov	lr, pc
	bx	r6
	ldrh	r3, [r5]
.L115:
	tst	r3, #2
	beq	.L116
	ldr	r3, .L151+8
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #12
	ldreq	r3, .L151+28
	streq	r2, [r3]
.L116:
	ldr	r3, .L151+32
	ldrh	r3, [r3, #48]
	tst	r3, #32
	moveq	r3, #4
	streq	r3, [r4]
	ldr	r3, .L151+32
	ldrh	r3, [r3, #48]
	ldr	r2, .L151+36
	tst	r3, #16
	ldr	r1, [r2]
	bne	.L118
	mov	r3, #5
	cmp	r1, r3
	str	r3, [r4]
	movne	r0, #1
	ldrne	r1, .L151+40
	strne	r3, [r2]
	strne	r0, [r1]
.L120:
	pop	{r4, r5, r6, r7, r8, lr}
	b	rightPenguin
.L113:
	tst	r3, #16
	beq	.L115
	ldr	r2, .L151+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L115
	b	.L114
.L148:
	mov	r6, #1
	ldr	r3, .L151+40
	mov	r7, #67108864
	str	r6, [r3]
	bl	drawCrash
	mov	r2, #4864
	mov	r3, #512
	strh	r2, [r7]	@ movhi
	ldr	r1, .L151+44
	ldr	r2, .L151+48
	mov	r0, #3
	ldr	r5, .L151+52
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L151+56
	ldr	r1, .L151+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L151+4
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L149
.L111:
	ldr	r2, .L151+36
	ldr	r1, [r2]
.L118:
	ldr	r3, [r4]
	cmp	r3, r1
	movne	r0, #1
	ldrne	r1, .L151+40
	strne	r0, [r1]
	cmp	r3, #5
	str	r3, [r2]
	beq	.L120
	cmp	r3, #6
	ldreq	r2, .L151+64
	beq	.L112
	cmp	r3, #4
	beq	.L150
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L149:
	ldr	r3, .L151+8
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L111
	mov	r2, #4608
	mov	r1, #64
	mov	r3, #6
	mov	lr, #94
	mov	ip, #88
	strh	r2, [r7]	@ movhi
	ldr	r2, .L151+64
	ldr	r0, .L151+36
	str	r1, [r2, #12]
	str	r1, [r2, #16]
	ldr	r1, .L151+68
	str	r3, [r4]
	str	r6, [r2, #8]
	str	lr, [r2]
	str	ip, [r2, #4]
	str	r3, [r0]
	str	r6, [r1]
.L112:
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #18
	mov	r1, #0
	mvn	r3, r3, lsr #18
	ldr	r0, [r2]
	ldr	r2, .L151+72
	pop	{r4, r5, r6, r7, r8, lr}
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	bx	lr
.L150:
	pop	{r4, r5, r6, r7, r8, lr}
	b	leftPenguin
.L152:
	.align	2
.L151:
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
	ldr	r4, .L164
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L160
.L154:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L161
.L155:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L162
.L156:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L163
.L157:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L153
	mov	r3, #3904
	mov	r2, #100663296
	ldr	r1, .L164+4
	mov	r0, #3
	ldr	r4, .L164+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L164+12
	ldr	r1, .L164+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L164+20
	str	r2, [r3]
.L153:
	pop	{r4, r5, r6, lr}
	bx	lr
.L163:
	mov	r3, #3904
	mov	r2, #100663296
	ldr	r1, .L164+4
	mov	r0, #3
	ldr	r5, .L164+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L164+12
	ldr	r1, .L164+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L164+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L157
.L162:
	mov	r3, #3216
	mov	r2, #100663296
	ldr	r1, .L164+24
	mov	r0, #3
	ldr	r5, .L164+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L164+12
	ldr	r1, .L164+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L164+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L156
.L161:
	mov	r3, #3296
	mov	r2, #100663296
	ldr	r1, .L164+32
	mov	r0, #3
	ldr	r5, .L164+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L164+12
	ldr	r1, .L164+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L164+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L155
.L160:
	mov	r3, #3024
	mov	r2, #100663296
	ldr	r1, .L164+40
	mov	r0, #3
	ldr	r5, .L164+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L164+12
	ldr	r1, .L164+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #2
	ldr	r2, .L164+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L154
.L165:
	.align	2
.L164:
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
	ldr	r4, .L177
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [r4]
	ble	.L173
.L167:
	sub	r2, r3, #10
	cmp	r2, #9
	bls	.L174
.L168:
	sub	r2, r3, #20
	cmp	r2, #9
	bls	.L175
.L169:
	sub	r2, r3, #30
	cmp	r2, #9
	bls	.L176
.L170:
	sub	r3, r3, #40
	cmp	r3, #9
	bhi	.L166
	ldr	r3, .L177+4
	mov	r2, #100663296
	ldr	r1, .L177+8
	mov	r0, #3
	ldr	r4, .L177+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L177+16
	ldr	r1, .L177+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L177+24
	str	r2, [r3]
.L166:
	pop	{r4, r5, r6, lr}
	bx	lr
.L176:
	mov	r3, #3648
	mov	r2, #100663296
	ldr	r1, .L177+28
	mov	r0, #3
	ldr	r5, .L177+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L177+16
	ldr	r1, .L177+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L177+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L170
.L175:
	mov	r3, #2976
	mov	r2, #100663296
	ldr	r1, .L177+36
	mov	r0, #3
	ldr	r5, .L177+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L177+16
	ldr	r1, .L177+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L177+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L169
.L174:
	mov	r3, #3456
	mov	r2, #100663296
	ldr	r1, .L177+44
	mov	r0, #3
	ldr	r5, .L177+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L177+16
	ldr	r1, .L177+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L177+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L168
.L173:
	mov	r3, #3008
	mov	r2, #100663296
	ldr	r1, .L177+52
	mov	r0, #3
	ldr	r5, .L177+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L177+16
	ldr	r1, .L177+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #9
	ldr	r2, .L177+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L167
.L178:
	.align	2
.L177:
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
	ldr	r4, .L190
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #9
	str	r3, [r4]
	ble	.L186
.L180:
	sub	r2, r3, #10
	cmp	r2, #9
	bls	.L187
.L181:
	sub	r2, r3, #20
	cmp	r2, #9
	bls	.L188
.L182:
	sub	r2, r3, #30
	cmp	r2, #9
	bls	.L189
.L183:
	sub	r3, r3, #40
	cmp	r3, #9
	bhi	.L179
	ldr	r3, .L190+4
	mov	r2, #100663296
	ldr	r1, .L190+8
	mov	r0, #3
	ldr	r4, .L190+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L190+16
	ldr	r1, .L190+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #10
	ldr	r3, .L190+24
	str	r2, [r3]
.L179:
	pop	{r4, r5, r6, lr}
	bx	lr
.L189:
	mov	r3, #3728
	mov	r2, #100663296
	ldr	r1, .L190+28
	mov	r0, #3
	ldr	r5, .L190+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L190+16
	ldr	r1, .L190+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L190+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L183
.L188:
	mov	r3, #3088
	mov	r2, #100663296
	ldr	r1, .L190+36
	mov	r0, #3
	ldr	r5, .L190+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L190+16
	ldr	r1, .L190+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L190+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L182
.L187:
	mov	r3, #3440
	mov	r2, #100663296
	ldr	r1, .L190+44
	mov	r0, #3
	ldr	r5, .L190+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L190+16
	ldr	r1, .L190+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L190+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L181
.L186:
	mov	r3, #3152
	mov	r2, #100663296
	ldr	r1, .L190+52
	mov	r0, #3
	ldr	r5, .L190+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L190+16
	ldr	r1, .L190+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #10
	ldr	r2, .L190+24
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L180
.L191:
	.align	2
.L190:
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
	ldr	r4, .L203
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L199
.L193:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L200
.L194:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L201
.L195:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L202
.L196:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L192
	mov	r3, #2608
	mov	r2, #100663296
	ldr	r1, .L203+4
	mov	r0, #3
	ldr	r4, .L203+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L203+12
	ldr	r1, .L203+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L203+20
	str	r2, [r3]
.L192:
	pop	{r4, r5, r6, lr}
	bx	lr
.L202:
	mov	r3, #2912
	mov	r2, #100663296
	ldr	r1, .L203+24
	mov	r0, #3
	ldr	r5, .L203+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L203+12
	ldr	r1, .L203+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L203+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L196
.L201:
	mov	r3, #2848
	mov	r2, #100663296
	ldr	r1, .L203+32
	mov	r0, #3
	ldr	r5, .L203+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L203+12
	ldr	r1, .L203+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L203+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L195
.L200:
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L203+40
	mov	r0, #3
	ldr	r5, .L203+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L203+12
	ldr	r1, .L203+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L203+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L194
.L199:
	mov	r3, #4160
	mov	r2, #100663296
	ldr	r1, .L203+48
	mov	r0, #3
	ldr	r5, .L203+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L203+12
	ldr	r1, .L203+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #0
	ldr	r2, .L203+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L193
.L204:
	.align	2
.L203:
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
	ldr	r4, .L216
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L212
.L206:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L213
.L207:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L214
.L208:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L215
.L209:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L205
	mov	r3, #3216
	mov	r2, #100663296
	ldr	r1, .L216+4
	mov	r0, #3
	ldr	r4, .L216+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L216+12
	ldr	r1, .L216+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r1, .L216+20
	ldr	r2, .L216+24
	str	r3, [r1]
	str	r3, [r2]
.L205:
	pop	{r4, r5, r6, lr}
	bx	lr
.L215:
	mov	r3, #3376
	mov	r2, #100663296
	ldr	r1, .L216+28
	mov	r0, #3
	ldr	r5, .L216+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L216+12
	ldr	r1, .L216+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #1
	ldr	r0, .L216+20
	ldr	r1, .L216+24
	ldr	r3, [r4]
	str	r2, [r0]
	str	r2, [r1]
	b	.L209
.L214:
	mov	r3, #3280
	mov	r2, #100663296
	ldr	r1, .L216+36
	mov	r0, #3
	ldr	r5, .L216+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L216+12
	ldr	r1, .L216+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L216+20
	ldr	r2, .L216+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L208
.L213:
	mov	r3, #3536
	mov	r2, #100663296
	ldr	r1, .L216+44
	mov	r0, #3
	ldr	r5, .L216+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L216+12
	ldr	r1, .L216+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L216+20
	ldr	r2, .L216+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L207
.L212:
	ldr	r3, .L216+52
	mov	r2, #100663296
	ldr	r1, .L216+56
	mov	r0, #3
	ldr	r5, .L216+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L216+12
	ldr	r1, .L216+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1
	ldr	r1, .L216+20
	ldr	r2, .L216+24
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r4]
	b	.L206
.L217:
	.align	2
.L216:
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
	ldr	r4, .L229
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L225
.L219:
	sub	r2, r3, #11
	cmp	r2, #9
	bls	.L226
.L220:
	sub	r2, r3, #21
	cmp	r2, #9
	bls	.L227
.L221:
	sub	r2, r3, #31
	cmp	r2, #9
	bls	.L228
.L222:
	sub	r3, r3, #41
	cmp	r3, #9
	bhi	.L218
	mov	r3, #32
	mov	r2, #100663296
	ldr	r1, .L229+4
	mov	r0, #3
	ldr	r4, .L229+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L229+12
	ldr	r1, .L229+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L229+20
	str	r2, [r3]
.L218:
	pop	{r4, r5, r6, lr}
	bx	lr
.L228:
	mov	r3, #3552
	mov	r2, #100663296
	ldr	r1, .L229+24
	mov	r0, #3
	ldr	r5, .L229+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L229+12
	ldr	r1, .L229+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L229+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L222
.L227:
	mov	r3, #5504
	mov	r2, #100663296
	ldr	r1, .L229+32
	mov	r0, #3
	ldr	r5, .L229+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L229+12
	ldr	r1, .L229+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L229+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L221
.L226:
	mov	r3, #3008
	mov	r2, #100663296
	ldr	r1, .L229+40
	mov	r0, #3
	ldr	r5, .L229+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L229+12
	ldr	r1, .L229+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L229+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L220
.L225:
	mov	r3, #2960
	mov	r2, #100663296
	ldr	r1, .L229+48
	mov	r0, #3
	ldr	r5, .L229+8
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L229+12
	ldr	r1, .L229+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #3
	ldr	r2, .L229+20
	ldr	r3, [r4]
	str	r1, [r2]
	b	.L219
.L230:
	.align	2
.L229:
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
	ldr	r4, .L239
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L236
	cmp	r3, #1
	beq	.L237
.L233:
	cmp	r3, #2
	beq	.L238
.L231:
	pop	{r4, lr}
	bx	lr
.L236:
	bl	leftWarning
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L233
.L237:
	bl	rightWarning
	ldr	r3, [r4]
	cmp	r3, #2
	bne	.L231
.L238:
	pop	{r4, lr}
	b	endingCave
.L240:
	.align	2
.L239:
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
	ldr	r4, .L271
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	bl	updatePenguin
	ldr	r3, .L271+4
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L262
	cmp	r3, #1
	moveq	r2, #0
	ldreq	r3, .L271+8
	streq	r2, [r3, #44]
.L243:
	ldr	r5, .L271+12
	bl	updateScore
	bl	checkCollision
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L263
	cmp	r3, #0
	beq	.L264
	cmp	r3, #1
	beq	.L265
	cmp	r3, #10
	beq	.L266
	cmp	r3, #9
	beq	.L267
	cmp	r3, #3
	beq	.L268
.L241:
	pop	{r4, r5, r6, lr}
	bx	lr
.L262:
	mov	r2, #0
	ldr	r3, .L271+8
	str	r2, [r3, #68]
	b	.L243
.L264:
	bl	leftCave
.L245:
	ldr	r2, [r4]
	ldr	r3, .L271+16
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	bne	.L241
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L251
	cmp	r3, #1
	beq	.L269
	cmp	r3, #0
	bne	.L253
	mov	r2, #1
	ldr	r3, .L271+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	straightCave
.L263:
	bl	straightCave
	b	.L245
.L265:
	bl	rightCave
	b	.L245
.L269:
	ldr	r2, .L271+24
	pop	{r4, r5, r6, lr}
	str	r3, [r2]
	b	straightCave
.L251:
	mov	r0, #1
	ldr	ip, .L271+28
	ldr	r1, .L271+32
	cmp	r2, ip
	str	r0, [r1]
	ble	.L256
	ldr	r2, .L271+36
	ldr	r2, [r2]
	cmp	r2, #8
	ldrne	r2, .L271+40
	popne	{r4, r5, r6, lr}
	strne	r3, [r2]
	bne	updateCave
.L256:
	ldr	r3, .L271+44
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	ldr	r3, .L271+40
	rsblt	r0, r0, #0
	pop	{r4, r5, r6, lr}
	str	r0, [r3]
	b	updateCave
.L253:
	cmp	r3, #9
	beq	.L270
	cmp	r3, #10
	bne	.L255
	mov	r2, #1
	ldr	r3, .L271+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	rightCave
.L266:
	bl	rightWarning
	b	.L245
.L267:
	bl	leftWarning
	b	.L245
.L268:
	bl	endingCave
	b	.L245
.L255:
	cmp	r3, #3
	bne	.L241
	pop	{r4, r5, r6, lr}
	b	endingCave
.L270:
	mov	r2, #1
	ldr	r3, .L271+48
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	b	leftCave
.L272:
	.align	2
.L271:
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
	.comm	score,140,4
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
