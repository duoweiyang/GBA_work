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
	.type	updateBullet.part.0, %function
updateBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	ldr	r3, [r0, #16]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L2
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #4]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L5
.L2:
	mov	r3, #0
	str	r3, [r0, #28]
	bx	lr
.L5:
	ldr	r1, [r0, #8]
	add	r2, r1, r2
	stm	r0, {r2, r3}
	bx	lr
	.size	updateBullet.part.0, .-updateBullet.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall.part.2, %function
updateBall.part.2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, [r0]
	cmp	r2, #1
	mov	r5, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #8]
	ble	.L7
	ldr	r3, [r5, #16]
	add	r3, r2, r3
	cmp	r3, #119
	bgt	.L7
.L8:
	ldr	r3, [r5, #4]
	cmp	r3, #1
	ldr	r1, [r5, #12]
	ble	.L9
	ldr	ip, [r5, #20]
	add	ip, r3, ip
	cmp	ip, #238
	bgt	.L9
.L10:
	mov	r7, #0
	add	r2, r2, r0
	add	r3, r3, r1
	ldr	r4, .L21
	stm	r5, {r2, r3}
	ldr	r8, .L21+4
	ldr	r9, .L21+8
	add	r6, r4, #160
.L14:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L20
.L12:
	add	r4, r4, #32
	cmp	r4, r6
	bne	.L14
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L9:
	rsb	r1, r1, #0
	str	r1, [r5, #12]
	b	.L10
.L7:
	rsb	r0, r0, #0
	str	r0, [r5, #8]
	b	.L8
.L20:
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	add	r2, r5, #16
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
	strne	r7, [r4, #28]
	strne	r3, [r9]
	strne	r7, [r5, #28]
	b	.L12
.L22:
	.align	2
.L21:
	.word	bullets
	.word	collision
	.word	ballsRemaining
	.size	updateBall.part.2, .-updateBall.part.2
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
	mov	r2, #253
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #240
	mov	r2, #3
	mov	r1, #0
	mov	r0, #120
	ldr	r4, .L25
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	drawRect4
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
	mvn	r1, #3
	push	{r4, r5, lr}
	mov	ip, #12
	mov	r5, #130
	mov	r4, #118
	mov	lr, #2
	mov	r0, #4
	mov	r2, #20
	ldr	r3, .L29
	strb	r1, [r3, #20]
	str	r5, [r3]
	stmib	r3, {r4, lr}
	str	ip, [r3, #12]
	str	r0, [r3, #16]
	str	r2, [r3, #24]
	pop	{r4, r5, lr}
	bx	lr
.L30:
	.align	2
.L29:
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
	push	{r4, lr}
	ldr	ip, .L33
	ldm	ip, {r0, r1}
	add	r2, ip, #12
	ldrb	ip, [ip, #20]	@ zero_extendqisi2
	sub	sp, sp, #8
	ldm	r2, {r2, r3}
	ldr	r4, .L33+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	player
	.word	drawRect4
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
	@ link register save eliminated.
	mov	r2, #0
	mvn	r0, #1
	mov	r1, r2
	ldr	r3, .L39
.L36:
	add	r2, r2, #1
	rsb	ip, r2, #0
	cmp	r2, #5
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	strb	r0, [r3, #24]
	str	r1, [r3, #28]
	str	ip, [r3]
	add	r3, r3, #32
	bne	.L36
	bx	lr
.L40:
	.align	2
.L39:
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
	ldr	r0, .L52
	mov	r2, r0
	ldr	r1, [r2, #28]
	cmp	r1, #0
	mov	r3, #0
	beq	.L51
.L42:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #32
	bxeq	lr
	ldr	r1, [r2, #28]
	cmp	r1, #0
	bne	.L42
.L51:
	push	{r4, lr}
	mov	r4, #1
	ldr	ip, .L52+4
	ldr	lr, [ip, #16]
	ldr	r2, [ip, #4]
	add	r1, r0, r3, lsl #5
	add	lr, lr, lr, lsr #31
	add	r2, r2, lr, asr r4
	ldr	lr, [r1, #20]
	add	lr, lr, lr, lsr #31
	sub	r2, r2, lr, asr r4
	ldr	lr, [ip, #28]
	ldr	ip, [ip]
	str	lr, [r1, #12]
	str	r4, [r1, #28]
	str	r2, [r1, #4]
	str	ip, [r0, r3, lsl #5]
	pop	{r4, lr}
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L68
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	ldr	r4, .L68+4
	bne	.L55
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #8]
	cmp	r3, r2
	blt	.L55
	mvn	r1, #0
	sub	r3, r3, r2
	str	r3, [r4, #4]
	str	r1, [r4, #28]
	b	.L56
.L55:
	ldr	r3, .L68
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L67
.L57:
	mov	r3, #0
	str	r3, [r4, #28]
.L56:
	ldr	r3, .L68+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #24]
	beq	.L66
	ldr	r2, .L68+12
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L66
	cmp	r3, #12
	bgt	.L61
.L66:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, lr}
	bx	lr
.L67:
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #16]
	ldr	r1, [r4, #8]
	add	r3, r2, r3
	rsb	r0, r1, #240
	cmp	r3, r0
	bgt	.L57
	mov	r3, #1
	add	r2, r2, r1
	str	r2, [r4, #4]
	str	r3, [r4, #28]
	b	.L56
.L61:
	bl	fireBullet
	mov	r3, #1
	str	r3, [r4, #24]
	pop	{r4, lr}
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r4, .L86
	add	r5, r4, #160
.L72:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L84
.L71:
	add	r4, r4, #32
	cmp	r4, r5
	bne	.L72
	ldr	r4, .L86+4
	add	r5, r4, #160
.L74:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L85
.L73:
	add	r4, r4, #32
	cmp	r5, r4
	bne	.L74
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	mov	r0, r4
	bl	updateBall.part.2
	b	.L73
.L84:
	mov	r0, r4
	bl	updateBullet.part.0
	b	.L71
.L87:
	.align	2
.L86:
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
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	updateBullet.part.0
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
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	mov	ip, r0
	push	{r4, lr}
	ldrb	ip, [ip, #24]	@ zero_extendqisi2
	sub	sp, sp, #8
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L99
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	drawRect4
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBalls
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalls, %function
initBalls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #0
	mov	r9, #12
	ldr	r4, .L105
	ldr	r5, .L105+4
	ldr	r7, .L105+8
	ldr	r6, .L105+12
.L102:
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	mov	lr, pc
	bx	r5
	smull	fp, ip, r0, r7
	asr	r2, r0, #31
	rsb	r3, r2, ip, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	ip, #1
	mov	r1, #2
	smull	r10, fp, r0, r6
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl ip
	and	r3, r8, ip
	add	r8, r8, ip
	add	r0, r0, #10
	cmp	r8, #5
	stmib	r4, {r0, r1}
	str	r1, [r4, #12]
	str	ip, [r4, #28]
	str	r3, [r4, #24]
	add	r4, r4, #32
	bne	.L102
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	balls
	.word	rand
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r8, #130
	mov	r7, #118
	mov	r6, #2
	mov	lr, #12
	mov	ip, #4
	mvn	r0, #3
	mov	r1, #20
	mov	r5, r4
	mvn	r2, #1
	ldr	r3, .L111
	str	r8, [r3]
	str	r7, [r3, #4]
	str	r6, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #16]
	strb	r0, [r3, #20]
	str	r1, [r3, #24]
	ldr	r3, .L111+4
.L108:
	add	r4, r4, #1
	rsb	r1, r4, #0
	cmp	r4, #5
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r5, [r3, #4]
	str	r2, [r3, #8]
	str	r5, [r3, #12]
	strb	r2, [r3, #24]
	str	r5, [r3, #28]
	str	r1, [r3]
	add	r3, r3, #32
	bne	.L108
	bl	initBalls
	ldr	ip, .L111+8
	mov	r3, #256
	str	r4, [ip]
	mov	r2, #83886080
	ldr	r1, .L111+12
	mov	r0, #3
	ldr	r4, .L111+16
	mov	lr, pc
	bx	r4
	mov	lr, #31744
	mov	ip, #992
	mov	r0, #31
	mvn	r1, #32768
	ldr	r3, .L111+20
	ldr	r2, .L111+24
	strh	lr, [r3, #246]	@ movhi
	strh	r5, [r3, #244]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	player
	.word	bullets
	.word	ballsRemaining
	.word	pumpkinPal
	.word	DMANow
	.word	83886336
	.word	15855
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
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	updateBall.part.2
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
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	mov	r3, r0
	push	{r4, lr}
	ldr	r2, [r0, #24]
	cmp	r2, #0
	add	r2, r3, #16
	sub	sp, sp, #8
	ldm	r0, {r0, r1}
	ldm	r2, {r2, r3}
	bne	.L125
	mov	ip, #251
	ldr	r4, .L126
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L125:
	ldr	ip, .L126+4
	ldr	r4, .L126+8
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	drawRect4
	.word	pumpkinBitmap
	.word	drawImage4
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
	push	{r4, r5, r6, lr}
	mov	r0, #250
	sub	sp, sp, #8
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	mov	r2, #253
	mov	r3, #240
	str	r2, [sp]
	mov	r1, #0
	mov	r2, #3
	mov	r0, #120
	ldr	r6, .L137+4
	mov	lr, pc
	bx	r6
	ldr	r4, .L137+8
	add	r5, r4, #160
.L130:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L136
.L129:
	add	r4, r4, #32
	cmp	r4, r5
	bne	.L130
	ldr	r0, .L137+12
	bl	drawBall
	ldr	r0, .L137+16
	bl	drawBall
	ldr	r0, .L137+20
	bl	drawBall
	ldr	r0, .L137+24
	bl	drawBall
	ldr	r0, .L137+28
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawBall
.L136:
	ldrb	ip, [r4, #24]	@ zero_extendqisi2
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	b	.L129
.L138:
	.align	2
.L137:
	.word	fillScreen4
	.word	drawRect4
	.word	bullets
	.word	balls
	.word	balls+32
	.word	balls+64
	.word	balls+96
	.word	balls+128
	.size	drawGame, .-drawGame
	.comm	ballsRemaining,4,4
	.comm	balls,160,4
	.comm	bullets,160,4
	.comm	player,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
