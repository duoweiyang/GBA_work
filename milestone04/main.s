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
	mov	r1, #67108864
	mov	r4, #0
	ldr	r5, .L4
	strh	r4, [r1, #18]	@ movhi
	mov	r3, #256
	strh	r4, [r1, #22]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #8512
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+20
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	splashScreenPal
	.word	splashScreenTiles
	.word	100720640
	.word	splashScreenMap
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+8
	mov	r3, #1
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	ldr	r0, .L8+20
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r0, #56320
	mov	r1, #4608
	ldr	r2, .L8+24
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	1153766
	.word	soundtrack
	.word	-9468
	.size	initialize, .-initialize
	.align	2
	.global	goToInstruction1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction1, %function
goToInstruction1:
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
	ldr	r3, .L12+8
	mov	r2, #100663296
	ldr	r1, .L12+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instruction1Pal
	.word	4560
	.word	instruction1Tiles
	.word	100720640
	.word	instruction1Map
	.word	state
	.size	goToInstruction1, .-goToInstruction1
	.align	2
	.global	instructionState2
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructionState2, %function
instructionState2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L26
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L15
	ldr	r2, .L26+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L24
.L15:
	tst	r3, #32
	beq	.L14
	ldr	r3, .L26+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L25
.L14:
	pop	{r4, lr}
	bx	lr
.L25:
	pop	{r4, lr}
	b	goToInstruction1
.L24:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L15
.L27:
	.align	2
.L26:
	.word	oldButtons
	.word	buttons
	.size	instructionState2, .-instructionState2
	.align	2
	.global	goToInstruction2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruction2, %function
goToInstruction2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L30
	mov	r2, #83886080
	ldr	r1, .L30+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #5376
	mov	r2, #100663296
	ldr	r1, .L30+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L30+12
	ldr	r1, .L30+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L30+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	DMANow
	.word	instruction2Pal
	.word	instruction2Tiles
	.word	100720640
	.word	instruction2Map
	.word	state
	.size	goToInstruction2, .-goToInstruction2
	.align	2
	.global	instructionState1
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructionState1, %function
instructionState1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L44
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L33
	ldr	r2, .L44+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L42
.L33:
	tst	r3, #16
	beq	.L32
	ldr	r3, .L44+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L43
.L32:
	pop	{r4, lr}
	bx	lr
.L43:
	pop	{r4, lr}
	b	goToInstruction2
.L42:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L33
.L45:
	.align	2
.L44:
	.word	oldButtons
	.word	buttons
	.size	instructionState1, .-instructionState1
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
	ldr	r4, .L48
	mov	r2, #83886080
	ldr	r1, .L48+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3024
	mov	r2, #100663296
	ldr	r1, .L48+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L48+12
	ldr	r1, .L48+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L48+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	DMANow
	.word	arrowLeft1Pal
	.word	bg1Tiles
	.word	100720640
	.word	bg1Map
	.word	state
	.size	goToGame, .-goToGame
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
	push	{r4, lr}
	ldr	r4, .L62
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L51
	ldr	r2, .L62+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L60
.L51:
	tst	r3, #1
	beq	.L50
	ldr	r3, .L62+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L61
.L50:
	pop	{r4, lr}
	bx	lr
.L61:
	pop	{r4, lr}
	b	goToInstruction1
.L60:
	ldr	r3, .L62+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L51
.L63:
	.align	2
.L62:
	.word	oldButtons
	.word	buttons
	.word	initGame
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
	ldr	r4, .L76
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L65
	ldr	r2, .L76+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L74
.L65:
	tst	r3, #4
	beq	.L64
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L75
.L64:
	pop	{r4, lr}
	bx	lr
.L75:
	pop	{r4, lr}
	b	goToStart
.L74:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L65
.L77:
	.align	2
.L76:
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
	mov	r2, #67108864
	mov	r1, #4608
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L80
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L80+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+8
	mov	r2, #100663296
	ldr	r1, .L80+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L80+16
	ldr	r1, .L80+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L80+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L80+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L80+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L81:
	.align	2
.L80:
	.word	DMANow
	.word	pauseStatePal
	.word	6816
	.word	pauseStateTiles
	.word	100720640
	.word	pauseStateMap
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
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
	ldr	r3, .L89
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L89+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
	ldr	r3, .L89+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L88
.L82:
	pop	{r4, lr}
	bx	lr
.L88:
	pop	{r4, lr}
	b	initialize
.L90:
	.align	2
.L89:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
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
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4608
	ldr	r4, .L93+8
	strh	r1, [r2]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L93+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L93+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L93+20
	mov	r2, #100663296
	ldr	r1, .L93+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L93+28
	ldr	r1, .L93+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L93+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L94:
	.align	2
.L93:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	winPal
	.word	6768
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
	mov	r1, #67108864
	mov	r0, #0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L98
	strh	r0, [r1, #18]	@ movhi
	mov	r2, #83886080
	strh	r0, [r1, #22]	@ movhi
	ldr	r1, .L98+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1808
	mov	r2, #100663296
	ldr	r1, .L98+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L98+12
	ldr	r1, .L98+16
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L98+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L98+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L98+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L98+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L99:
	.align	2
.L98:
	.word	DMANow
	.word	losePal
	.word	loseTiles
	.word	100720640
	.word	loseMap
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
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
	ldr	r3, .L111
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L111+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L101
	ldr	r3, .L111+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L108
.L101:
	ldr	r3, .L111+20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L109
.L102:
	ldr	r3, .L111+24
	ldr	r3, [r3]
	cmp	r3, #50
	bgt	.L110
	pop	{r4, lr}
	bx	lr
.L110:
	pop	{r4, lr}
	b	goToWin
.L109:
	ldr	r3, .L111+28
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L102
.L108:
	bl	goToPause
	b	.L101
.L112:
	.align	2
.L111:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	livesRemaining
	.word	endingCounter
	.word	drawCrash
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
	ldr	r3, .L126
	mov	lr, pc
	bx	r3
	ldr	r6, .L126+4
	ldr	r8, .L126+8
	ldr	r5, .L126+12
	ldr	fp, .L126+16
	ldr	r10, .L126+20
	ldr	r9, .L126+24
	ldr	r7, .L126+28
	ldr	r4, .L126+32
.L114:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L115:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L115
.L117:
	.word	.L116
	.word	.L118
	.word	.L119
	.word	.L120
	.word	.L121
	.word	.L122
	.word	.L122
.L122:
	mov	lr, pc
	bx	r7
	b	.L114
.L121:
	ldr	r3, .L126+36
	mov	lr, pc
	bx	r3
	b	.L114
.L120:
	ldr	r3, .L126+40
	mov	lr, pc
	bx	r3
	b	.L114
.L119:
	mov	lr, pc
	bx	r9
	b	.L114
.L118:
	mov	lr, pc
	bx	r10
	b	.L114
.L116:
	mov	lr, pc
	bx	fp
	b	.L114
.L127:
	.align	2
.L126:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	startState
	.word	instructionState1
	.word	instructionState2
	.word	winState
	.word	67109120
	.word	pauseState
	.word	gameState
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	endingCounter,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	livesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	nextPath,4,4
	.comm	curPath,4,4
	.comm	backgroundState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
