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
	ldr	r2, .L16+4
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #8
	str	r0, [r3]
	bxeq	lr
	ldr	r3, .L16+8
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L15
	pop	{r4, lr}
	bx	lr
.L15:
	ldr	r3, .L16+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+16
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L16+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
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
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+4
	ldr	r3, .L36+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L23
	ldr	r3, .L36+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L33
.L23:
	ldr	r3, .L36+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L34
.L24:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L22
	ldr	r3, .L36+16
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L35
.L22:
	pop	{r4, lr}
	bx	lr
.L34:
	ldr	r3, .L36+24
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L36+28
	str	r2, [r3]
	b	.L24
.L35:
	ldr	r3, .L36+24
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L36+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L33:
	ldr	r3, .L36+24
	ldr	r0, .L36+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L36+28
	str	r2, [r3]
	b	.L23
.L37:
	.align	2
.L36:
	.word	updateGame
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	buttons
	.word	ballsRemaining
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
	ldr	r3, .L40
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L40+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r4, .L54
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L43
	ldr	r2, .L54+4
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L52
.L43:
	tst	r3, #4
	beq	.L42
	ldr	r3, .L54+4
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L53
.L42:
	pop	{r4, lr}
	bx	lr
.L53:
	ldr	r3, .L54+8
	ldr	r0, .L54+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L52:
	ldr	r3, .L54+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L54+16
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L43
.L55:
	.align	2
.L54:
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
	ldr	r3, .L58
	ldr	r0, .L58+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L58+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L70
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L70+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L69
	pop	{r4, lr}
	bx	lr
.L69:
	ldr	r3, .L70+8
	ldr	r0, .L70+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r2, .L83
	push	{r4, r7, fp, lr}
	ldr	r0, .L83+4
	strh	r2, [r3]	@ movhi
	ldr	r3, .L83+8
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	ldr	r6, .L83+12
	ldr	fp, .L83+16
	str	r3, [r6]
	ldr	r5, .L83+20
	ldr	r10, .L83+24
	ldr	r9, .L83+28
	ldr	r8, .L83+32
	ldr	r7, .L83+36
	ldr	r4, .L83+40
.L73:
	ldrh	r3, [fp]
.L74:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L74
.L76:
	.word	.L75
	.word	.L77
	.word	.L78
	.word	.L79
	.word	.L79
.L79:
	mov	lr, pc
	bx	r7
.L80:
	ldr	r2, [r6]
	b	.L73
.L78:
	mov	lr, pc
	bx	r8
	b	.L80
.L77:
	mov	lr, pc
	bx	r9
	b	.L80
.L75:
	mov	lr, pc
	bx	r10
	b	.L80
.L84:
	.align	2
.L83:
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
	ldr	r3, .L87
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L87+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L88:
	.align	2
.L87:
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
	ldr	r3, .L92
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L92+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L93:
	.align	2
.L92:
	.word	fillScreen
	.word	state
	.size	goToLose, .-goToLose
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
