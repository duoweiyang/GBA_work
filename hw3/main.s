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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L4
	push	{r4, lr}
	ldr	r0, .L4+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	state
	.size	initialize, .-initialize
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
	ldr	r3, .L16
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L16+4
	ldrh	r0, [r3]
	push	{r4, lr}
	ands	r4, r0, #8
	beq	.L15
	pop	{r4, lr}
	bx	lr
.L15:
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L16+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	oldButtons
	.word	buttons
	.word	initGame
	.word	fillScreen
	.word	state
	.size	startState, .-startState
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
	ldr	r3, .L20
	ldr	r0, .L20+4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L20+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	fillScreen
	.word	32736
	.word	state
	.size	goToStart, .-goToStart
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
	ldr	r3, .L33
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L33+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L23
	ldr	r3, .L33+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L30
.L23:
	ldr	r3, .L33+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L31
	ldr	r3, .L33+24
	ldr	r3, [r3, #40]
	cmp	r3, #1
	beq	.L32
.L22:
	pop	{r4, lr}
	bx	lr
.L31:
	ldr	r3, .L33+28
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L33+32
	str	r2, [r3]
	ldr	r3, .L33+24
	ldr	r3, [r3, #40]
	cmp	r3, #1
	bne	.L22
.L32:
	ldr	r3, .L33+28
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L33+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L30:
	ldr	r3, .L33+28
	ldr	r0, .L33+36
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L33+32
	str	r2, [r3]
	b	.L23
.L34:
	.align	2
.L33:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	bricksRemaining
	.word	ball
	.word	fillScreen
	.word	state
	.word	15855
	.size	gameState, .-gameState
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
	ldr	r3, .L37
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L37+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L38:
	.align	2
.L37:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
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
	ldr	r4, .L51
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L40
	ldr	r2, .L51+4
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L49
.L40:
	tst	r3, #4
	beq	.L39
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L50
.L39:
	pop	{r4, lr}
	bx	lr
.L50:
	ldr	r3, .L51+8
	ldr	r0, .L51+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L49:
	ldr	r3, .L51+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L51+16
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L40
.L52:
	.align	2
.L51:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
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
	ldr	r3, .L55
	ldr	r0, .L55+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L55+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	fillScreen
	.word	15855
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
	ldr	r3, .L67
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L67+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L66
	pop	{r4, lr}
	bx	lr
.L66:
	ldr	r3, .L67+8
	ldr	r0, .L67+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
	.size	winState, .-winState
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
	ldr	r2, .L80
	push	{r4, r7, fp, lr}
	ldr	r0, .L80+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L80+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	ldr	r6, .L80+12
	ldr	fp, .L80+16
	str	r3, [r6]
	ldr	r5, .L80+20
	ldr	r10, .L80+24
	ldr	r9, .L80+28
	ldr	r8, .L80+32
	ldr	r7, .L80+36
	ldr	r4, .L80+40
.L70:
	ldrh	r3, [fp]
.L71:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L71
.L73:
	.word	.L72
	.word	.L74
	.word	.L75
	.word	.L76
	.word	.L76
.L76:
	mov	lr, pc
	bx	r7
.L77:
	ldr	r2, [r6]
	b	.L70
.L75:
	mov	lr, pc
	bx	r8
	b	.L77
.L74:
	mov	lr, pc
	bx	r9
	b	.L77
.L72:
	mov	lr, pc
	bx	r10
	b	.L77
.L81:
	.align	2
.L80:
	.word	1027
	.word	32736
	.word	fillScreen
	.word	state
	.word	buttons
	.word	oldButtons
	.word	startState
	.word	gameState
	.word	pauseState
	.word	winState
	.word	67109120
	.size	main, .-main
	.text
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
	ldr	r3, .L84
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L84+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	fillScreen
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
	ldr	r3, .L89
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L89+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
	.word	fillScreen
	.word	state
	.size	goToLose, .-goToLose
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
