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
	mov	r2, #83886080
	ldr	r1, .L4
	mov	r3, #256
	mov	r0, #3
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r4
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, .L4+24
	ldr	r2, .L4+28
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	JoshyPal
	.word	DMANow
	.word	JoshyBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.word	seed
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
	.word	1044
	.size	initialize, .-initialize
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L16
	ldr	r3, [r4]
	ldr	r2, .L16+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L16+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L9
	ldr	r3, .L16+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L15
.L9:
	pop	{r4, lr}
	bx	lr
.L15:
	ldr	r0, [r4]
	ldr	r3, .L16+16
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L16+20
	ldr	r3, .L16+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	state
	.word	initGame
	.size	start, .-start
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
	@ link register save eliminated.
	mov	r2, #1
	ldr	r3, .L19
	str	r2, [r3]
	bx	lr
.L20:
	.align	2
.L19:
	.word	state
	.size	goToGame, .-goToGame
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
	mov	r0, #255
	ldr	r3, .L23
	mov	lr, pc
	bx	r3
	ldr	r4, .L23+4
	ldr	r2, .L23+8
	mov	r1, #105
	mov	r0, #77
	mov	r3, #250
	mov	lr, pc
	bx	r4
	ldr	r3, .L23+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+16
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L23+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L37
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L37+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L26
	ldr	r2, .L37+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L35
.L26:
	tst	r3, #4
	beq	.L25
	ldr	r3, .L37+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L36
.L25:
	pop	{r4, lr}
	bx	lr
.L35:
	mov	r2, #1
	ldr	r3, .L37+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L36:
	pop	{r4, lr}
	b	goToStart
.L38:
	.align	2
.L37:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	state
	.size	pause, .-pause
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
	mov	r0, #252
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldr	r4, .L41+4
	ldr	r2, .L41+8
	mov	r1, #111
	mov	r0, #77
	mov	r3, #250
	mov	lr, pc
	bx	r4
	ldr	r3, .L41+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+16
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L41+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	fillScreen4
	.word	drawString4
	.word	.LC1
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
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
	pop	{r4, lr}
	b	goToStart
.L51:
	.align	2
.L50:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	mov	r0, #253
	ldr	r3, .L54
	mov	lr, pc
	bx	r3
	ldr	r4, .L54+4
	ldr	r2, .L54+8
	mov	r1, #108
	mov	r0, #77
	mov	r3, #250
	mov	lr, pc
	bx	r4
	ldr	r3, .L54+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+16
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L54+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	fillScreen4
	.word	drawString4
	.word	.LC2
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L70
	ldr	r4, .L70+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+8
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldr	r1, .L70+12
	ldr	r3, .L70+16
	ldr	r0, .L70+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L70+24
	ldr	r2, .L70+20
	mov	r1, #5
	mov	r0, #145
	mov	r3, #254
	mov	lr, pc
	bx	r5
	ldr	r3, .L70+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L57
	ldr	r2, .L70+40
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L67
.L57:
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.L68
	tst	r3, #2
	beq	.L56
	ldr	r3, .L70+40
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L69
.L56:
	pop	{r4, r5, r6, lr}
	bx	lr
.L68:
	pop	{r4, r5, r6, lr}
	b	goToWin
.L67:
	pop	{r4, r5, r6, lr}
	b	goToPause
.L69:
	pop	{r4, r5, r6, lr}
	b	goToLose
.L71:
	.align	2
.L70:
	.word	updateGame
	.word	ballsRemaining
	.word	drawGame
	.word	.LC3
	.word	sprintf
	.word	buffer
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	game, .-game
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
	ldr	r1, .L83
	push	{r4, r7, fp, lr}
	ldr	r3, .L83+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L83+8
	ldr	fp, .L83+12
	ldr	r5, .L83+16
	ldr	r10, .L83+20
	ldr	r9, .L83+24
	ldr	r8, .L83+28
	ldr	r7, .L83+32
	ldr	r4, .L83+36
.L73:
	ldr	r2, [r6]
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
	b	.L73
.L78:
	mov	lr, pc
	bx	r8
	b	.L73
.L77:
	mov	lr, pc
	bx	r9
	b	.L73
.L75:
	mov	lr, pc
	bx	r10
	b	.L73
.L84:
	.align	2
.L83:
	.word	1044
	.word	goToStart
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	buffer,41,4
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Pause\000"
	.space	2
.LC1:
	.ascii	"Win\000"
.LC2:
	.ascii	"Lose\000"
	.space	3
.LC3:
	.ascii	"Balls Remaining: %d\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
