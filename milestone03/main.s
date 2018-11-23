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
	mov	r3, #8512
	mov	r2, #100663296
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	str	r5, [r3]
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
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #56320
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	b	goToStart
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
	ldr	r4, .L9
	mov	r2, #83886080
	ldr	r1, .L9+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L9+8
	mov	r2, #100663296
	ldr	r1, .L9+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L9+16
	ldr	r1, .L9+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L9+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L10:
	.align	2
.L9:
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
	ldr	r4, .L23
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L12
	ldr	r2, .L23+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L21
.L12:
	tst	r3, #32
	beq	.L11
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L22
.L11:
	pop	{r4, lr}
	bx	lr
.L22:
	pop	{r4, lr}
	b	goToInstruction1
.L21:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L12
.L24:
	.align	2
.L23:
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
	ldr	r4, .L27
	mov	r2, #83886080
	ldr	r1, .L27+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #5376
	mov	r2, #100663296
	ldr	r1, .L27+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L27+12
	ldr	r1, .L27+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L27+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L28:
	.align	2
.L27:
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
	ldr	r4, .L41
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L30
	ldr	r2, .L41+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L39
.L30:
	tst	r3, #16
	beq	.L29
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L40
.L29:
	pop	{r4, lr}
	bx	lr
.L40:
	pop	{r4, lr}
	b	goToInstruction2
.L39:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L30
.L42:
	.align	2
.L41:
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
	ldr	r4, .L45
	mov	r2, #83886080
	ldr	r1, .L45+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #3024
	mov	r2, #100663296
	ldr	r1, .L45+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L45+12
	ldr	r1, .L45+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L45+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L46:
	.align	2
.L45:
	.word	DMANow
	.word	bg1Pal
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
	ldr	r4, .L59
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L48
	ldr	r2, .L59+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L57
.L48:
	tst	r3, #1
	beq	.L47
	ldr	r3, .L59+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L58
.L47:
	pop	{r4, lr}
	bx	lr
.L58:
	pop	{r4, lr}
	b	goToInstruction1
.L57:
	ldr	r3, .L59+8
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L48
.L60:
	.align	2
.L59:
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
	ldr	r4, .L73
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L62
	ldr	r2, .L73+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L71
.L62:
	tst	r3, #4
	beq	.L61
	ldr	r3, .L73+4
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L72
.L61:
	pop	{r4, lr}
	bx	lr
.L72:
	pop	{r4, lr}
	b	goToStart
.L71:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L62
.L74:
	.align	2
.L73:
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L77
	mov	r2, #83886080
	ldr	r1, .L77+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+8
	mov	r2, #100663296
	ldr	r1, .L77+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L77+16
	ldr	r1, .L77+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L77+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L77+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	r3, .L86
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
	ldr	r3, .L86+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L85
.L79:
	pop	{r4, lr}
	bx	lr
.L85:
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #56320
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	pop	{r4, lr}
	b	goToStart
.L87:
	.align	2
.L86:
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r3, .L90+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L90+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L90+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L90+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #5376
	mov	r2, #100663296
	ldr	r1, .L90+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L90+24
	ldr	r1, .L90+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L90+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	instruction2Pal
	.word	instruction2Tiles
	.word	100720640
	.word	instruction2Map
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
	mov	r3, #256
	ldr	r4, .L95
	strh	r1, [r2, #18]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L95+4
	mov	lr, pc
	bx	r4
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L95+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L95+12
	ldr	r1, .L95+16
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L95+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L95+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L95+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L95+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r3, .L106
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L106+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L98
	ldr	r3, .L106+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L104
.L98:
	ldr	r3, .L106+20
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L105
	pop	{r4, lr}
	bx	lr
.L105:
	ldr	r3, .L106+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L104:
	bl	goToPause
	b	.L98
.L107:
	.align	2
.L106:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	livesRemaining
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
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #56320
	push	{r4, r7, fp, lr}
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r6, .L121+4
	ldr	r8, .L121+8
	ldr	r5, .L121+12
	ldr	fp, .L121+16
	ldr	r10, .L121+20
	ldr	r9, .L121+24
	ldr	r7, .L121+28
	ldr	r4, .L121+32
.L109:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L110:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L110
.L112:
	.word	.L111
	.word	.L113
	.word	.L114
	.word	.L115
	.word	.L116
	.word	.L117
	.word	.L117
.L117:
	mov	lr, pc
	bx	r7
	b	.L109
.L116:
	ldr	r3, .L121+36
	mov	lr, pc
	bx	r3
	b	.L109
.L115:
	ldr	r3, .L121+40
	mov	lr, pc
	bx	r3
	b	.L109
.L114:
	mov	lr, pc
	bx	r9
	b	.L109
.L113:
	mov	lr, pc
	bx	r10
	b	.L109
.L111:
	mov	lr, pc
	bx	fp
	b	.L109
.L122:
	.align	2
.L121:
	.word	goToStart
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
	.comm	livesRemaining,4,4
	.comm	frameCounter,4,4
	.comm	nextPath,4,4
	.comm	curPath,4,4
	.comm	backgroundState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
