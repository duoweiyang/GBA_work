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
	push	{r4, lr}
	ldr	r0, .L4
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+8
	mov	r3, #0
	ldr	r2, .L4+12
	mov	r1, #95
	mov	r0, #79
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	32736
	.word	fillScreen
	.word	drawString
	.word	.LC0
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
	ldr	r2, .L7
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	winState.part.2, %function
winState.part.2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
	.word	buttons
	.size	winState.part.2, .-winState.part.2
	.set	loseState.part.3,winState.part.2
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
	mov	r0, #0
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	ldr	r4, .L15+4
	ldr	r3, .L15+8
	ldr	r2, .L15+12
	mov	r1, #5
	mov	r0, #145
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L15+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC1
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
	ldr	r4, .L24
	ldr	r3, [r4]
	ldr	r2, .L24+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L24+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L17
	ldr	r3, .L24+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L23
.L17:
	pop	{r4, lr}
	bx	lr
.L23:
	ldr	r0, [r4]
	ldr	r3, .L24+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L24+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L25:
	.align	2
.L24:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
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
	push	{r4, lr}
	ldr	r0, .L42
	ldr	r3, .L42+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L42+8
	ldr	r3, .L42+12
	ldr	r2, .L42+16
	mov	r1, #98
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L42+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	15855
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC2
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
	@ link register save eliminated.
	ldr	r3, .L46
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	winState.part.2
.L47:
	.align	2
.L46:
	.word	oldButtons
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
	mov	r0, #992
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	ldr	r4, .L50+4
	mov	r3, #0
	ldr	r2, .L50+8
	mov	r1, #108
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L50+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	fillScreen
	.word	drawString
	.word	.LC3
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
	push	{r4, lr}
	mov	r0, #31
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r4, .L55+4
	ldr	r3, .L55+8
	ldr	r2, .L55+12
	mov	r1, #103
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L55+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC4
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
	push	{r4, r5, lr}
	ldr	r4, .L68
	sub	sp, sp, #12
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldr	r1, .L68+8
	ldr	r3, .L68+12
	ldr	r0, .L68+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L68+20
	ldr	r2, .L68+16
	mov	r1, #110
	mov	r0, #145
	ldr	r3, .L68+24
	mov	lr, pc
	bx	r5
	ldr	r3, .L68+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+32
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r3, #12
	str	r2, [sp]
	mov	r1, #110
	mov	r2, #8
	mov	r0, #145
	ldr	r5, .L68+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L68+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
	ldr	r3, .L68+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L58:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L66
	ldr	r3, .L68+48
	ldr	r3, [r3, #40]
	cmp	r3, #1
	beq	.L67
.L57:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L66:
	bl	goToWin
	ldr	r3, .L68+48
	ldr	r3, [r3, #40]
	cmp	r3, #1
	bne	.L57
.L67:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	goToLose
.L65:
	bl	goToPause
	b	.L58
.L69:
	.align	2
.L68:
	.word	bricksRemaining
	.word	updateGame
	.word	.LC5
	.word	sprintf
	.word	buffer
	.word	drawString
	.word	32767
	.word	waitForVBlank
	.word	drawGame
	.word	drawRect
	.word	oldButtons
	.word	buttons
	.word	ball
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
	mov	r2, #67108864
	ldr	r1, .L86
	push	{r4, r7, fp, lr}
	ldr	r3, .L86+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	fp, .L86+8
	ldr	r5, .L86+12
	ldr	r9, .L86+16
	ldr	r8, .L86+20
	ldr	r7, .L86+24
	ldr	r6, .L86+28
	ldr	r10, .L86+32
	ldr	r4, .L86+36
.L71:
	ldrh	r2, [fp]
	strh	r2, [r5]	@ movhi
	ldr	r3, [r9]
	ldrh	r1, [r4, #48]
	strh	r1, [fp]	@ movhi
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L71
.L74:
	.word	.L73
	.word	.L75
	.word	.L76
	.word	.L77
	.word	.L78
.L78:
	tst	r2, #8
	beq	.L71
	ldr	r3, .L86+40
	mov	lr, pc
	bx	r3
	b	.L71
.L77:
	tst	r2, #8
	beq	.L71
	mov	lr, pc
	bx	r10
	b	.L71
.L75:
	mov	lr, pc
	bx	r7
	b	.L71
.L76:
	mov	lr, pc
	bx	r6
	b	.L71
.L73:
	mov	lr, pc
	bx	r8
	b	.L71
.L87:
	.align	2
.L86:
	.word	1027
	.word	goToStart
	.word	buttons
	.word	oldButtons
	.word	state
	.word	startState
	.word	gameState
	.word	pauseState
	.word	winState.part.2
	.word	67109120
	.word	loseState.part.3
	.size	main, .-main
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BREAKOUT\000"
	.space	3
.LC1:
	.ascii	"Bricks Remaining:\000"
	.space	2
.LC2:
	.ascii	"Paused\000"
	.space	1
.LC3:
	.ascii	"Win\000"
.LC4:
	.ascii	"Lose\000"
	.space	3
.LC5:
	.ascii	"%d\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
