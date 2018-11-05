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
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r5, #0
	ldr	r4, .L4
	strh	r5, [r2, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+8
	mov	r2, #100663296
	ldr	r1, .L4+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScreenPal
	.word	4960
	.word	startScreenTiles
	.word	100720640
	.word	startScreenMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #4352
	str	lr, [sp, #-4]!
	mov	lr, #56320
	mov	ip, #3
	mov	r1, #40
	strh	r2, [r3]	@ movhi
	ldr	r0, .L8
	ldr	r2, .L8+4
	strh	lr, [r3, #8]	@ movhi
	ldr	lr, [sp], #4
	str	ip, [r0]
	str	r1, [r2]
	b	goToStart
.L9:
	.align	2
.L8:
	.word	livesRemaining
	.word	enemycount
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	mov	r2, #83886080
	ldr	r1, .L12+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #992
	mov	r2, #100663296
	ldr	r1, .L12+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100720640
	.word	bgMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	startState.part.0, %function
startState.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L20
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, lr}
	bl	goToGame
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	buttons
	.word	initGame
	.size	startState.part.0, .-startState.part.0
	.align	2
	.global	startState
	.syntax unified
	.arm
	.fpu softvfp
	.type	startState, %function
startState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	startState.part.0
.L25:
	.align	2
.L24:
	.word	oldButtons
	.size	startState, .-startState
	.align	2
	.global	pauseState
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseState, %function
pauseState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L38
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L27
	ldr	r2, .L38+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L27:
	tst	r3, #4
	beq	.L26
	ldr	r3, .L38+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L37
.L26:
	pop	{r4, lr}
	bx	lr
.L37:
	pop	{r4, lr}
	b	goToStart
.L36:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L27
.L39:
	.align	2
.L38:
	.word	oldButtons
	.word	buttons
	.size	pauseState, .-pauseState
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #2
	ldr	r3, .L41
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	winState
	.syntax unified
	.arm
	.fpu softvfp
	.type	winState, %function
winState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L50
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L43
	ldr	r3, .L50+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L49
.L43:
	pop	{r4, lr}
	bx	lr
.L49:
	mov	r3, #67108864
	mov	r2, #4352
	mov	lr, #56320
	mov	ip, #3
	mov	r1, #40
	strh	r2, [r3]	@ movhi
	ldr	r0, .L50+12
	ldr	r2, .L50+16
	strh	lr, [r3, #8]	@ movhi
	pop	{r4, lr}
	str	ip, [r0]
	str	r1, [r2]
	b	goToStart
.L51:
	.align	2
.L50:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	livesRemaining
	.word	enemycount
	.size	winState, .-winState
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	push	{r4, lr}
	ldr	r3, .L54
	strh	r1, [r2, #18]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L54+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L54+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L54+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2640
	mov	r2, #100663296
	ldr	r1, .L54+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L54+24
	ldr	r1, .L54+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L54+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	winPal
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	loseState
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseState, %function
loseState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	winState
	.size	loseState, .-loseState
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #0
	push	{r4, lr}
	ldr	r3, .L59
	strh	r1, [r2, #18]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L59+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L59+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L59+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L59+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L59+24
	ldr	r1, .L59+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L59+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L60:
	.align	2
.L59:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	gameState
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameState, %function
gameState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L62
	ldr	r3, .L71+16
	ldrh	r3, [r3]
	tst	r3, #8
	moveq	r2, #2
	ldreq	r3, .L71+20
	streq	r2, [r3]
.L62:
	ldr	r3, .L71+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L69
.L63:
	ldr	r3, .L71+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L70
	pop	{r4, lr}
	bx	lr
.L70:
	pop	{r4, lr}
	b	goToLose
.L69:
	bl	goToWin
	b	.L63
.L72:
	.align	2
.L71:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	state
	.word	enemycount
	.word	livesRemaining
	.size	gameState, .-gameState
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
	push	{r4, r7, fp, lr}
	mov	r3, #67108864
	mov	r4, #4352
	mov	lr, #56320
	mov	ip, #3
	mov	r1, #40
	ldr	r0, .L85
	ldr	r2, .L85+4
	strh	r4, [r3]	@ movhi
	strh	lr, [r3, #8]	@ movhi
	ldr	r3, .L85+8
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r10, .L85+12
	ldr	r5, .L85+16
	ldr	fp, .L85+20
	ldr	r9, .L85+24
	ldr	r8, .L85+28
	ldr	r7, .L85+32
	ldr	r6, .L85+36
	ldr	r4, .L85+40
.L74:
	ldrh	r2, [r10]
	strh	r2, [r5]	@ movhi
	ldr	r3, [fp]
	ldrh	r1, [r4, #48]
	strh	r1, [r10]	@ movhi
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L74
.L77:
	.word	.L76
	.word	.L78
	.word	.L79
	.word	.L80
	.word	.L80
.L80:
	mov	lr, pc
	bx	r6
	b	.L74
.L79:
	mov	lr, pc
	bx	r7
	b	.L74
.L78:
	mov	lr, pc
	bx	r8
	b	.L74
.L76:
	tst	r2, #8
	beq	.L74
	mov	lr, pc
	bx	r9
	b	.L74
.L86:
	.align	2
.L85:
	.word	livesRemaining
	.word	enemycount
	.word	goToStart
	.word	buttons
	.word	oldButtons
	.word	state
	.word	startState.part.0
	.word	gameState
	.word	pauseState
	.word	winState
	.word	67109120
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	enemycount,4,4
	.comm	livesRemaining,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
