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
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #130
	mov	r4, #1
	mov	lr, #5
	mov	r2, #100
	mov	ip, #35
	mov	r0, #992
	ldr	r3, .L4
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #24]
	strh	r0, [r3, #28]	@ movhi
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L10
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L7
	ldr	r3, .L10+4
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #16]
	cmp	r2, r1
	bge	.L9
.L7:
	ldr	r3, .L10
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bxne	lr
	ldr	r3, .L10+4
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #16]
	ldr	r2, [r3, #24]
	rsb	ip, r0, #240
	add	r2, r1, r2
	cmp	r2, ip
	addle	r1, r1, r0
	strle	r1, [r3, #4]
	bx	lr
.L9:
	sub	r2, r2, r1
	str	r2, [r3, #4]
	bx	lr
.L11:
	.align	2
.L10:
	.word	67109120
	.word	player
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r4, r5, lr}
	ldr	r4, .L14
	sub	sp, sp, #12
	add	r2, r4, #20
	add	r0, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L14+4
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #28]
	add	r2, r4, #20
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	player
	.word	drawRect
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBall, %function
initBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #120
	mov	r1, #1
	mov	lr, #5
	mov	ip, #31
	mov	r0, #0
	ldr	r3, .L18
	str	lr, [r3, #24]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	strh	ip, [r3, #28]	@ movhi
	str	r0, [r3, #40]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	ball
	.size	initBall, .-initBall
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L28
	ldr	r0, [r4]
	cmp	r0, #0
	ldrle	r3, [r4, #16]
	rsble	r3, r3, #0
	strle	r3, [r4, #16]
	ldr	r3, [r4, #24]
	add	r2, r0, r3
	cmp	r2, #159
	movgt	r2, #1
	ldr	r1, [r4, #4]
	strgt	r2, [r4, #40]
	cmp	r1, #0
	sub	sp, sp, #16
	ble	.L23
	add	r2, r3, r1
	cmp	r2, #239
	ble	.L24
.L23:
	ldr	r2, [r4, #20]
	rsb	r2, r2, #0
	str	r2, [r4, #20]
.L24:
	ldr	r5, .L28+4
	ldr	r2, [r5, #24]
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #4]
	str	r2, [sp, #12]
	ldr	r2, [r5]
	sub	r1, r1, r3
	sub	r0, r0, r3
	lsl	r3, r3, #1
	stm	sp, {r2, ip, lr}
	ldr	r6, .L28+8
	mov	r2, r3
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r5]
	ldrne	r2, [r4, #24]
	ldrne	r1, [r4, #16]
	ldreq	r3, [r4]
	subne	r3, r3, r2
	ldreq	r1, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #20]
	rsbne	r1, r1, #0
	add	r3, r3, r1
	add	r2, r2, r0
	strne	r1, [r4, #16]
	str	r3, [r4]
	str	r2, [r4, #4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	ball
	.word	player
	.word	collision
	.size	updateBall, .-updateBall
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L32
	add	r0, r4, #8
	ldr	r2, [r4, #24]
	ldr	r5, .L32+4
	mov	r3, #0
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	ldm	r4, {r0, r1}
	mov	r3, #31
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	ball
	.word	drawCircle
	.size	drawBall, .-drawBall
	.align	2
	.global	initBricks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBricks, %function
initBricks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L38
	ldr	r5, .L38+4
	add	r6, r4, #1312
	ldr	r9, .L38+8
	ldr	r8, .L38+12
	ldr	r7, .L38+16
	add	r6, r6, #8
.L35:
	mov	r2, #10
	mov	r3, #24
	str	r2, [r4, #24]
	str	r3, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r10, fp, r0, r9
	asr	r3, r0, #31
	rsb	r3, r3, fp, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	ip, #0
	smull	r10, fp, r0, r8
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r1
	ldr	r3, [r4]
	add	r0, r0, #10
	strh	r7, [r4, #32]	@ movhi
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #36]
	str	ip, [r4, #40]
	str	r3, [r4, #8]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L35
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	bricks
	.word	rand
	.word	156180629
	.word	2114445439
	.word	15855
	.size	initBricks, .-initBricks
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
	mov	r3, #100
	push	{r4, r5, r6, r7, r8, lr}
	mov	r0, #1
	mov	r1, #120
	mov	lr, #130
	mov	ip, #5
	mov	r7, #35
	mov	r6, #992
	mov	r5, #31
	mov	r4, #0
	ldr	r2, .L42
	str	r3, [r2, #4]
	str	r3, [r2, #12]
	ldr	r3, .L42+4
	str	lr, [r2]
	str	lr, [r2, #8]
	str	r7, [r2, #24]
	strh	r6, [r2, #28]	@ movhi
	strh	r5, [r3, #28]	@ movhi
	str	r4, [r3, #40]
	str	r0, [r2, #16]
	str	ip, [r2, #20]
	str	ip, [r3, #24]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r0, [r3, #32]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	bl	initBricks
	mov	r2, #30
	ldr	r3, .L42+8
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	player
	.word	ball
	.word	bricksRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateBricks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBricks, %function
updateBricks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	ldr	r3, [r1, #32]
	cmp	r3, #0
	bxeq	lr
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	ip, [r1, #24]
	sub	sp, sp, #16
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldr	lr, [r5, #4]
	mov	r4, r0
	ldm	r0, {r0, r1}
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r5]
	ldr	r6, .L58
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L44
	mov	r1, #0
	ldr	r0, .L58+4
	ldr	r3, [r5, #16]
	ldr	r2, [r0]
	rsb	r3, r3, #0
	sub	r2, r2, #1
	str	r1, [r4, #40]
	str	r1, [r4, #36]
	str	r2, [r0]
	str	r3, [r5, #16]
.L44:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	collision
	.word	bricksRemaining
	.size	updateBricks, .-updateBricks
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
	bl	updatePlayer
	bl	updateBall
	ldr	r4, .L64
	ldr	r6, .L64+4
	add	r5, r4, #1312
	add	r5, r5, #8
.L61:
	mov	r0, r4
	mov	r1, r6
	add	r4, r4, #44
	bl	updateBricks
	cmp	r4, r5
	bne	.L61
	pop	{r4, r5, r6, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	bricks
	.word	ball
	.size	updateGame, .-updateGame
	.align	2
	.global	drawBricks
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBricks, %function
drawBricks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	bne	.L70
	ldr	ip, [r0, #40]
	cmp	ip, #0
	beq	.L71
.L68:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L71:
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L72
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L68
.L70:
	ldrh	ip, [r4, #32]
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L72
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	b	.L68
.L73:
	.align	2
.L72:
	.word	drawRect
	.size	drawBricks, .-drawBricks
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
	bl	drawPlayer
	bl	drawBall
	ldr	r4, .L78
	add	r5, r4, #1312
	add	r5, r5, #8
.L75:
	mov	r0, r4
	add	r4, r4, #44
	bl	drawBricks
	cmp	r4, r5
	bne	.L75
	pop	{r4, r5, r6, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	bricks
	.size	drawGame, .-drawGame
	.comm	bricksRemaining,4,4
	.comm	bricks,1320,4
	.comm	ball,44,4
	.comm	player,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
