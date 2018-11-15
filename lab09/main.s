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
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L4
	ldr	r4, .L4+4
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r3, #896
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
	mov	r1, #7936
	ldr	r3, .L4+24
	ldrh	r2, [r3]
	ldr	r3, .L4+28
	strh	r2, [r5, #18]	@ movhi
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #16]	@ movhi
	mov	r3, #16384
	strh	r1, [r5, #8]	@ movhi
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+40
	ldr	r1, .L4+44
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #4352
	mov	r2, #0
	ldr	r3, .L4+56
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	waitForVBlank
	.word	DMANow
	.word	housePal
	.word	houseTiles
	.word	100726784
	.word	houseMap
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToGame, .-goToGame
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
	mov	r2, #0
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	bl	goToGame
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	initGame
	.size	initialize, .-initialize
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
	mov	r1, #0
	push	{r7, lr}
	ldr	r3, .L15
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+4
	mov	lr, pc
	bx	r3
	ldr	r8, .L15+8
	ldr	r4, .L15+12
	ldr	r9, .L15+16
	ldr	r7, .L15+20
	ldr	r6, .L15+24
	ldr	r5, .L15+28
.L13:
	ldr	r2, [r8]
	ldrh	r3, [r4]
.L11:
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	cmp	r2, #0
	strh	r3, [r4]	@ movhi
	bne	.L11
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L13
.L16:
	.align	2
.L15:
	.word	goToGame
	.word	initGame
	.word	state
	.word	buttons
	.word	oldButtons
	.word	updateGame
	.word	drawGame
	.word	67109120
	.size	main, .-main
	.text
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
	push	{r4, lr}
	ldr	r3, .L19
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	updateGame
	.word	drawGame
	.size	game, .-game
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
