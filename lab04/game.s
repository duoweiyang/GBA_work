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
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall.part.1, %function
updateBall.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, [r0]
	cmp	r2, #0
	mov	r5, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #16]
	ble	.L2
	ldr	r3, [r5, #24]
	add	r3, r2, r3
	cmp	r3, #120
	bgt	.L2
.L3:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ldr	r1, [r5, #20]
	ble	.L4
	ldr	ip, [r5, #28]
	add	ip, r3, ip
	cmp	ip, #239
	bgt	.L4
.L5:
	mov	r7, #0
	add	r2, r2, r0
	add	r3, r3, r1
	ldr	r4, .L17
	stm	r5, {r2, r3}
	ldr	r8, .L17+4
	ldr	r9, .L17+8
	add	r6, r4, #200
.L9:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L16
.L7:
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L9
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L4:
	rsb	r1, r1, #0
	str	r1, [r5, #20]
	b	.L5
.L2:
	rsb	r0, r0, #0
	str	r0, [r5, #16]
	b	.L3
.L16:
	add	ip, r4, #20
	ldm	ip, {ip, lr}
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #4]
	ldr	ip, [r4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r9]
	subne	r3, r3, #1
	strne	r7, [r4, #32]
	strne	r3, [r9]
	strne	r7, [r5, #36]
	b	.L7
.L18:
	.align	2
.L17:
	.word	bullets
	.word	collision
	.word	ballsRemaining
	.size	updateBall.part.1, .-updateBall.part.1
	.align	2
	.global	drawBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #31
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #240
	mov	r2, #3
	mov	r1, #0
	mov	r0, #120
	ldr	r4, .L21
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	drawRect
	.size	drawBar, .-drawBar
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
	push	{r4, r5, lr}
	mov	r1, #130
	mov	r5, #1
	mov	r4, #10
	mov	lr, #5
	mov	r2, #118
	mov	ip, #992
	mov	r0, #20
	ldr	r3, .L25
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #24]
	str	r1, [r3]
	str	r1, [r3, #8]
	strh	ip, [r3, #28]	@ movhi
	str	r0, [r3, #32]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	player
	.size	initPlayer, .-initPlayer
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
	ldr	r4, .L29
	sub	sp, sp, #12
	add	r2, r4, #20
	add	r0, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L29+4
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
.L30:
	.align	2
.L29:
	.word	player
	.word	drawRect
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #1
	mov	r6, #2
	mvn	r1, #1
	mov	r2, #0
	mvn	r5, #32768
	ldr	ip, .L35
	ldr	r3, .L35+4
	ldm	ip, {r4, lr}
	add	ip, r3, #200
.L32:
	str	r6, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	strh	r5, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	str	r0, [r3, #36]
	stm	r3, {r1, r2, r4, lr}
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L32
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	player
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L48
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L47
.L38:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L38
.L47:
	push	{r4, r5, r6, lr}
	mov	r4, #1
	ldr	r5, .L48+4
	add	r3, r3, r3, lsl #2
	lsl	r3, r3, #3
	ldr	r2, [r5, #24]
	ldr	r6, [r5]
	add	ip, r0, r3
	add	lr, r2, r2, lsr #31
	str	r6, [r0, r3]
	ldr	r2, [r5, #4]
	ldr	r3, [ip, #24]
	add	r2, r2, lr, asr r4
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr r4
	str	r4, [ip, #32]
	str	r1, [ip, #36]
	str	r3, [ip, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	bullets
	.word	player
	.size	fireBullet, .-fireBullet
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
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	ldr	r4, .L62+4
	bne	.L51
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4, #4]
	blt	.L51
.L52:
	ldr	r3, .L62+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #32]
	beq	.L61
	ldr	r2, .L62+12
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L61
	cmp	r3, #19
	bgt	.L56
.L61:
	add	r3, r3, #1
	str	r3, [r4, #32]
	pop	{r4, lr}
	bx	lr
.L51:
	ldr	r3, .L62
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L52
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #16]
	ldr	r3, [r4, #24]
	rsb	r0, r1, #240
	add	r3, r2, r3
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4, #4]
	b	.L52
.L56:
	bl	fireBullet
	mov	r3, #1
	str	r3, [r4, #32]
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
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
	mov	ip, #0
	ldr	r3, .L81
	add	r1, r3, #200
.L67:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	bne	.L79
.L65:
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L67
	ldr	r4, .L81+4
	add	r5, r4, #220
.L69:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L80
.L68:
	add	r4, r4, #44
	cmp	r4, r5
	bne	.L69
	pop	{r4, r5, r6, lr}
	bx	lr
.L80:
	mov	r0, r4
	bl	updateBall.part.1
	b	.L68
.L79:
	ldr	r0, [r3]
	ldr	r2, [r3, #20]
	add	r2, r0, r2
	cmp	r2, #0
	ldrgt	r2, [r3, #16]
	addgt	r0, r2, r0
	strgt	r0, [r3]
	strle	ip, [r3, #32]
	b	.L65
.L82:
	.align	2
.L81:
	.word	bullets
	.word	balls
	.size	updateGame, .-updateGame
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0]
	ldr	r3, [r0, #20]
	add	r3, r2, r3
	cmp	r3, #0
	movle	r3, #0
	ldrgt	r3, [r0, #16]
	addgt	r2, r3, r2
	strgt	r2, [r0]
	strle	r3, [r0, #32]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	bne	.L93
	ldr	ip, [r0, #36]
	cmp	ip, #0
	beq	.L94
.L91:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L94:
	add	r2, r0, #20
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L95
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L91
.L93:
	mov	ip, #0
	add	r2, r0, #20
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L95
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
	b	.L91
.L96:
	.align	2
.L95:
	.word	drawRect
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBalls
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalls, %function
initBalls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #10
	ldr	r4, .L101
	ldr	r5, .L101+4
	ldr	r9, .L101+8
	ldr	r8, .L101+12
	ldr	r7, .L101+16
	sub	sp, sp, #12
	add	r6, r4, #220
.L98:
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	fp, ip, r0, r8
	asr	r2, r0, #31
	rsb	r3, r2, ip, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	lr, #31744
	mov	ip, #0
	smull	r2, r3, r0, r7
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r1
	ldm	r9, {r2, r3}
	add	r0, r0, #10
	str	r0, [r4, #4]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #36]
	strh	lr, [r4, #32]	@ movhi
	str	ip, [r4, #40]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L98
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	balls
	.word	rand
	.word	player
	.word	156180629
	.word	2114445439
	.size	initBalls, .-initBalls
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #130
	mov	r8, #1
	ldr	r0, .L107
	mov	r6, #118
	str	r7, [r0]
	str	r7, [r0, #8]
	mov	fp, #10
	mov	r10, #5
	mov	r9, #992
	mov	r5, r7
	mov	r7, #20
	mov	r1, r8
	mov	lr, #2
	mvn	r2, #1
	mov	r3, #0
	mvn	ip, #32768
	str	r6, [r0, #4]
	str	r6, [r0, #12]
	mov	r4, r6
	ldr	r6, .L107+4
	str	fp, [r0, #20]
	str	r10, [r0, #24]
	strh	r9, [r0, #28]	@ movhi
	str	r7, [r0, #32]
	str	r8, [r0, #16]
	add	r0, r6, #200
.L104:
	str	lr, [r6, #20]
	str	r1, [r6, #24]
	str	r4, [r6, #12]
	str	r2, [r6, #16]
	strh	ip, [r6, #28]	@ movhi
	str	r3, [r6, #32]
	str	r1, [r6, #36]
	stm	r6, {r2, r3, r5}
	add	r6, r6, #40
	cmp	r6, r0
	bne	.L104
	bl	initBalls
	mov	r2, #5
	ldr	r3, .L107+8
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L108:
	.align	2
.L107:
	.word	player
	.word	bullets
	.word	ballsRemaining
	.size	initGame, .-initGame
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
	@ link register save eliminated.
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	b	updateBall.part.1
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	bne	.L115
	ldr	ip, [r0, #40]
	cmp	ip, #0
	beq	.L116
.L113:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L116:
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L117
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L113
.L115:
	mov	ip, #0
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L117
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #32]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	b	.L113
.L118:
	.align	2
.L117:
	.word	drawRect
	.size	drawBall, .-drawBall
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
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawPlayer
	mov	r3, #31
	ldr	r5, .L121
	mov	r2, #3
	mov	r1, #0
	str	r3, [sp]
	mov	r0, #120
	mov	r3, #240
	ldr	r4, .L121+4
	mov	lr, pc
	bx	r4
	mov	r0, r5
	bl	drawBullet
	add	r0, r5, #40
	bl	drawBullet
	add	r0, r5, #80
	ldr	r4, .L121+8
	bl	drawBullet
	add	r0, r5, #120
	bl	drawBullet
	add	r0, r5, #160
	bl	drawBullet
	mov	r0, r4
	bl	drawBall
	add	r0, r4, #44
	bl	drawBall
	add	r0, r4, #88
	bl	drawBall
	add	r0, r4, #132
	bl	drawBall
	add	r0, r4, #176
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawBall
.L122:
	.align	2
.L121:
	.word	bullets
	.word	drawRect
	.word	balls
	.size	drawGame, .-drawGame
	.comm	ballsRemaining,4,4
	.comm	balls,220,4
	.comm	bullets,200,4
	.comm	player,36,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
