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
	.type	updateBullets.part.1, %function
updateBullets.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	ldr	r3, [r0, #24]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L2
	ldr	r1, [r0, #20]
	ldr	r3, [r0, #4]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L5
.L2:
	mov	r3, #0
	str	r3, [r0, #32]
	bx	lr
.L5:
	ldr	r1, [r0, #16]
	add	r2, r1, r2
	stm	r0, {r2, r3}
	bx	lr
	.size	updateBullets.part.1, .-updateBullets.part.1
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyBullets.part.3, %function
updateEnemyBullets.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0]
	ldr	r3, [r0, #24]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L7
	ldr	r1, [r0, #20]
	ldr	r3, [r0, #4]
	add	r3, r3, r1
	sub	ip, r3, #1
	cmp	ip, #237
	movhi	r1, #0
	movls	r1, #1
	cmp	r2, #160
	movgt	r1, #0
	cmp	r1, #0
	bne	.L12
.L7:
	mov	r3, #0
	str	r3, [r0, #32]
	bx	lr
.L12:
	ldr	r1, [r0, #16]
	add	r2, r1, r2
	stm	r0, {r2, r3}
	bx	lr
	.size	updateEnemyBullets.part.3, .-updateEnemyBullets.part.3
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireEnemyBullets.part.5, %function
fireEnemyBullets.part.5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L23
	mov	r3, #0
	mov	r2, ip
	b	.L16
.L14:
	add	r3, r3, #1
	cmp	r3, #10
	add	r2, r2, #48
	bxeq	lr
.L16:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L14
	push	{r4, lr}
	mov	r4, #1
	ldr	r1, [r0, #16]
	add	r3, r3, r3, lsl r4
	lsl	r3, r3, #4
	add	lr, r1, r1, lsr #31
	ldr	r1, [r0]
	add	r2, ip, r3
	str	r1, [ip, r3]
	ldr	r3, [r0, #4]
	ldr	r1, [r2, #28]
	ldr	r0, [r0, #40]
	add	r3, r3, lr, asr r4
	add	r1, r1, r1, lsr #31
	sub	r3, r3, r1, asr r4
	str	r4, [r2, #32]
	str	r3, [r2, #4]
	str	r0, [r2, #44]
	pop	{r4, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	enemybullets
	.size	fireEnemyBullets.part.5, .-fireEnemyBullets.part.5
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #8
	mov	r1, #1
	mov	r0, #0
	mov	r6, #15
	mov	r5, #28
	mov	r4, #2
	mov	lr, #41
	mov	ip, #3
	ldr	r3, .L27
	str	r6, [r3, #4]
	str	r5, [r3, #28]
	str	r4, [r3, #40]
	str	lr, [r3, #52]
	str	r0, [r3]
	str	r0, [r3, #24]
	str	r0, [r3, #48]
	str	ip, [r3, #64]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #60]
	str	r2, [r3, #56]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #44]
	str	r1, [r3, #68]
	pop	{r4, r5, r6, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	lives
	.size	initLives, .-initLives
	.align	2
	.global	updateLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLives, %function
updateLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L33
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L32
	cmp	r3, #1
	moveq	r2, #0
	ldreq	r3, .L33+4
	streq	r2, [r3, #44]
	bx	lr
.L32:
	mov	r2, #0
	ldr	r3, .L33+4
	str	r2, [r3, #68]
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	lives
	.size	updateLives, .-updateLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	cmp	r3, #0
	ldr	r3, [r0, #16]
	bne	.L42
	mov	r1, #512
	ldr	r2, .L43
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L42:
	str	lr, [sp, #-4]!
	mov	lr, #256
	ldr	r2, [r0, #4]
	ldr	ip, .L43
	ldr	r0, [r0]
	lsl	r3, r3, #3
	add	r1, ip, r3
	orr	r2, r2, #16384
	strh	lr, [r1, #4]	@ movhi
	strh	r0, [ip, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L44:
	.align	2
.L43:
	.word	shadowOAM
	.size	drawLives, .-drawLives
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
	mov	ip, #1
	mov	r4, #16
	mov	lr, #8
	mov	r0, #142
	mov	r1, #116
	mov	r2, #10
	ldr	r3, .L47
	str	r4, [r3, #12]
	str	lr, [r3, #16]
	stm	r3, {r0, r1, ip}
	str	r2, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, .L72
	ldrh	r3, [r3, #48]
	tst	r3, #32
	sub	sp, sp, #20
	ldr	r6, .L72+4
	bne	.L50
	ldr	r3, [r6, #4]
	cmp	r3, #5
	ldrgt	r2, [r6, #8]
	subgt	r3, r3, r2
	strgt	r3, [r6, #4]
.L50:
	ldr	r3, .L72
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L51
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #12]
	add	r3, r2, r3
	cmp	r3, #234
	ldrle	r3, [r6, #8]
	addle	r2, r3, r2
	strle	r2, [r6, #4]
.L51:
	ldr	r3, .L72
	ldrh	r3, [r3, #48]
	ands	r3, r3, #1
	ldr	r2, [r6, #20]
	bne	.L70
	cmp	r2, #19
	bgt	.L54
.L70:
	add	r2, r2, #1
.L53:
	mov	r5, #0
	str	r2, [r6, #20]
	ldr	r4, .L72+8
	ldr	r8, .L72+12
	ldr	r9, .L72+16
	ldr	r7, .L72+20
	b	.L61
.L59:
	add	r5, r5, #1
	cmp	r5, #10
	add	r4, r4, #48
	beq	.L71
.L61:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L59
	add	ip, r4, #24
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #4]
	ldr	ip, [r4]
	ldr	r3, [r6, #12]
	ldr	r2, [r6, #16]
	ldm	r6, {r0, r1}
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L59
	mov	r1, #0
	ldr	r2, [r7]
	add	r3, r5, r5, lsl #1
	add	r5, r5, #1
	sub	r2, r2, #1
	add	r3, r9, r3, lsl #3
	cmp	r5, #10
	str	r1, [r4, #32]
	str	r2, [r7]
	str	r1, [r3, #20]
	add	r4, r4, #48
	bne	.L61
.L71:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L54:
	ldr	r0, .L72+24
	mov	r2, r0
	b	.L57
.L55:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #44
	beq	.L56
.L57:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L55
	mov	r2, #1
	add	ip, r3, r3, lsl #2
	add	r3, r3, ip, lsl r2
	ldr	ip, [r6]
	lsl	r3, r3, #2
	str	ip, [r0, r3]
	ldr	ip, [r6, #4]
	add	r3, r0, r3
	str	r1, [r3, #36]
	str	ip, [r3, #4]
	str	r2, [r3, #32]
.L56:
	mov	r2, #1
	b	.L53
.L73:
	.align	2
.L72:
	.word	67109120
	.word	player
	.word	enemybullets
	.word	collision
	.word	lives
	.word	.LANCHOR0
	.word	bullets
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
	@ link register save eliminated.
	mov	r1, #192
	ldr	r3, .L75
	ldm	r3, {r0, r2}
	ldr	r3, .L75+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L76:
	.align	2
.L75:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #16
	mov	r6, #7
	mov	r5, r7
	mov	fp, #20
	mov	r4, #3
	mov	r8, #1
	mov	lr, #0
	mov	r9, #2
	ldr	ip, .L81
	ldr	r0, .L81+4
	ldr	r1, .L81+8
	ldr	r2, .L81+12
	ldr	r3, .L81+16
.L78:
	mov	r10, #38
	str	r10, [r0]
	mov	r10, #56
	str	r10, [r1]
	mov	r10, #74
	str	r6, [ip, #4]
	str	r7, [ip, #24]
	str	r6, [r0, #4]
	str	r7, [r0, #24]
	str	r6, [r1, #4]
	str	r7, [r1, #24]
	str	fp, [ip]
	str	r4, [ip, #8]
	str	r4, [ip, #12]
	str	r5, [ip, #16]
	str	r5, [ip, #20]
	str	r8, [ip, #28]
	str	lr, [ip, #32]
	str	lr, [ip, #40]
	str	lr, [ip, #44]
	str	r4, [r0, #8]
	str	r4, [r0, #12]
	str	r5, [r0, #16]
	str	r5, [r0, #20]
	str	r8, [r0, #28]
	str	lr, [r0, #32]
	str	r8, [r0, #40]
	str	lr, [r0, #44]
	str	r4, [r1, #8]
	str	r4, [r1, #12]
	str	r5, [r1, #16]
	str	r5, [r1, #20]
	str	r8, [r1, #28]
	str	lr, [r1, #32]
	str	r8, [r1, #40]
	str	lr, [r1, #44]
	str	r10, [r2]
	mov	r10, #92
	str	r6, [r2, #4]
	str	r6, [r3, #4]
	add	r6, r6, #18
	cmp	r6, #151
	str	r7, [r2, #24]
	str	r7, [r3, #24]
	str	r4, [r2, #8]
	str	r4, [r2, #12]
	str	r5, [r2, #16]
	str	r5, [r2, #20]
	str	r8, [r2, #28]
	str	lr, [r2, #32]
	str	r9, [r2, #40]
	str	lr, [r2, #44]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r8, [r3, #28]
	str	lr, [r3, #32]
	str	r9, [r3, #40]
	str	lr, [r3, #44]
	str	r10, [r3]
	add	ip, ip, #48
	add	r7, r7, #1
	add	r0, r0, #48
	add	r1, r1, #48
	add	r2, r2, #48
	add	r3, r3, #48
	bne	.L78
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	enemy1
	.word	enemy2
	.word	enemy25
	.word	enemy3
	.word	enemy35
	.size	initEnemies, .-initEnemies
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
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L89
	mov	r2, #83886080
	ldr	r1, .L89+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #992
	mov	r2, #100663296
	ldr	r1, .L89+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L89+12
	ldr	r1, .L89+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L89+20
	ldr	r1, .L89+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L89+28
	ldr	r1, .L89+32
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L89+36
	mov	lr, pc
	bx	r3
	mov	r4, #8
	mov	lr, #16
	mov	ip, #1
	mov	r0, #142
	mov	r1, #116
	mov	r2, #10
	ldr	r3, .L89+40
	stm	r3, {r0, r1, ip, lr}
	str	r4, [r3, #16]
	str	r2, [r3, #20]
	bl	initLives
	bl	initEnemies
	mov	ip, r4
	mov	r0, #61
	mov	r1, #0
	mvn	r4, #1
	ldr	r3, .L89+44
	add	lr, r3, #880
.L84:
	ldr	r2, [r3, #24]
	rsb	r2, r2, #0
	str	r0, [r3, #40]
	str	r1, [r3, #4]
	str	ip, [r3, #28]
	str	r4, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #32]
	str	r2, [r3]
	str	ip, [r3, #24]
	add	r3, r3, #44
	cmp	r3, lr
	add	r0, r0, #1
	bne	.L84
	mov	r1, #85
	mov	r4, #6
	mov	lr, #8
	mvn	ip, #5
	mov	r2, #0
	mov	r0, #2
	ldr	r3, .L89+48
.L85:
	str	r1, [r3, #40]
	add	r1, r1, #1
	cmp	r1, #95
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	add	r3, r3, #48
	bne	.L85
	ldr	r3, .L89+52
	ldr	r0, .L89+56
	ldrh	ip, [r3, #48]
	ldr	r1, .L89+60
	ldr	r3, .L89+64
	strh	ip, [r0]	@ movhi
	str	r2, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100720640
	.word	bgMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	player
	.word	bullets
	.word	enemybullets
	.word	67109120
	.word	buttons
	.word	frameCounter
	.word	vOff
	.size	initGame, .-initGame
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L195
	mov	r10, r7
	ldr	r4, .L195+4
	ldr	fp, .L195+8
	ldr	r6, .L195+12
	ldr	r5, .L195+16
	sub	sp, sp, #28
.L131:
	ldr	r3, [r4, #4]
	cmp	r3, #4
	movgt	r2, #0
	movle	r2, #1
	ldr	r1, [r4, #16]
	add	r3, r3, r1
	cmp	r3, #235
	movle	r3, r2
	orrgt	r3, r2, #1
	cmp	r3, #0
	beq	.L92
	ldr	r3, .L195+4
.L93:
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	add	r0, r0, r1
	ldr	r1, [r3, #4]
	sub	r1, r1, r2
	rsb	r2, r2, #0
	str	r2, [r3, #12]
	ldr	r2, .L195+20
	str	r0, [r3]
	str	r1, [r3, #4]
	add	r3, r3, #48
	cmp	r3, r2
	bne	.L93
.L92:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L190
.L94:
	ldr	r3, [r10, #4]
	cmp	r3, #4
	movgt	r2, #0
	movle	r2, #1
	ldr	r1, [r10, #16]
	add	r3, r3, r1
	cmp	r3, #235
	movle	r3, r2
	orrgt	r3, r2, #1
	cmp	r3, #0
	beq	.L99
	ldr	r3, .L195
	add	ip, r3, #384
.L100:
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	add	r0, r0, r1
	ldr	r1, [r3, #4]
	sub	r1, r1, r2
	rsb	r2, r2, #0
	str	r0, [r3]
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	add	r3, r3, #48
	cmp	ip, r3
	bne	.L100
.L99:
	ldr	r3, [r10, #28]
	cmp	r3, #0
	bne	.L191
.L101:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	movgt	r2, #0
	movle	r2, #1
	ldr	r1, [fp, #16]
	add	r3, r3, r1
	cmp	r3, #235
	movle	r3, r2
	orrgt	r3, r2, #1
	cmp	r3, #0
	beq	.L106
	ldr	r3, .L195+8
	add	ip, r3, #384
.L107:
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	add	r0, r0, r1
	ldr	r1, [r3, #4]
	sub	r1, r1, r2
	rsb	r2, r2, #0
	str	r0, [r3]
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	add	r3, r3, #48
	cmp	ip, r3
	bne	.L107
.L106:
	ldr	r3, [fp, #28]
	cmp	r3, #0
	bne	.L192
.L108:
	ldr	r3, [r6, #4]
	cmp	r3, #4
	movgt	r2, #0
	movle	r2, #1
	ldr	r1, [r6, #16]
	add	r3, r3, r1
	cmp	r3, #235
	movle	r3, r2
	orrgt	r3, r2, #1
	cmp	r3, #0
	beq	.L113
	ldr	r3, .L195+12
	add	ip, r3, #384
.L114:
	add	r1, r3, #8
	ldm	r1, {r1, r2}
	ldr	r0, [r3]
	add	r0, r0, r1
	ldr	r1, [r3, #4]
	sub	r1, r1, r2
	rsb	r2, r2, #0
	str	r0, [r3]
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	add	r3, r3, #48
	cmp	ip, r3
	bne	.L114
.L113:
	ldr	r3, [r6, #28]
	cmp	r3, #0
	bne	.L193
.L115:
	ldr	r3, [r5, #4]
	cmp	r3, #4
	movgt	r8, #0
	movle	r8, #1
	ldr	r2, [r5, #16]
	add	r3, r3, r2
	cmp	r3, #235
	orrgt	r8, r8, #1
	cmp	r8, #0
	beq	.L121
	mov	ip, #0
	ldr	r2, .L195+24
	ldr	r7, [r2]
	ldr	r2, .L195+28
	ldr	r3, .L195+16
	ldr	lr, [r2]
	str	r4, [sp, #20]
	add	r9, r3, #384
.L123:
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	ldr	r4, [r3, #4]
	ldr	r0, [r3, #20]
	add	r1, r1, r2
	ldr	r2, [r3, #12]
	add	r0, r1, r0
	sub	r4, r4, r2
	rsb	r2, r2, #0
	cmp	r0, r7
	str	r1, [r3]
	str	r2, [r3, #12]
	str	r4, [r3, #4]
	add	r3, r3, #48
	movge	ip, r8
	movge	lr, #0
	cmp	r9, r3
	bne	.L123
	cmp	ip, #0
	ldrne	r3, .L195+28
	ldr	r4, [sp, #20]
	strne	lr, [r3]
.L121:
	ldr	r3, [r5, #28]
	cmp	r3, #0
	bne	.L194
.L125:
	ldr	r3, .L195+32
	ldr	r2, [r3]
	ldr	r3, .L195+36
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	bne	.L130
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #12]
	ldr	r0, [r10, #4]
	add	r3, r3, r2
	ldr	r2, [r10, #12]
	ldr	r1, [fp, #4]
	add	r0, r0, r2
	ldr	r2, [fp, #12]
	str	r3, [r4, #4]
	add	r1, r1, r2
	ldr	r3, [r6, #12]
	ldr	r2, [r6, #4]
	str	r0, [r10, #4]
	add	r2, r2, r3
	ldr	r0, [r5, #12]
	ldr	r3, [r5, #4]
	add	r3, r3, r0
	str	r1, [fp, #4]
	str	r2, [r6, #4]
	str	r3, [r5, #4]
.L130:
	ldr	r3, .L195+20
	add	r4, r4, #48
	cmp	r4, r3
	add	r10, r10, #48
	add	fp, fp, #48
	add	r6, r6, #48
	add	r5, r5, #48
	bne	.L131
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L194:
	ldr	r7, .L195+40
	mov	r9, #0
	add	r8, r7, #880
	b	.L129
.L127:
	add	r7, r7, #44
	cmp	r8, r7
	beq	.L125
.L129:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L127
	add	ip, r7, #24
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r3, [r5, #16]
	stm	sp, {ip, lr}
	ldr	r2, [r5, #20]
	ldm	r5, {r0, r1}
	ldr	ip, .L195+44
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L127
	ldr	r2, .L195+28
	ldr	r3, [r2, #4]
	sub	r3, r3, #1
	str	r9, [r7, #32]
	str	r9, [r5, #28]
	str	r3, [r2, #4]
	b	.L127
.L193:
	ldr	r7, .L195+40
	mov	r9, #0
	add	r8, r7, #880
	b	.L119
.L117:
	add	r7, r7, #44
	cmp	r8, r7
	beq	.L115
.L119:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L117
	add	ip, r7, #24
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	ldr	r3, [r6, #16]
	stm	sp, {ip, lr}
	ldr	r2, [r6, #20]
	ldm	r6, {r0, r1}
	ldr	ip, .L195+44
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L117
	ldr	r2, .L195+28
	ldr	r3, [r2, #4]
	sub	r3, r3, #1
	str	r9, [r7, #32]
	str	r9, [r6, #28]
	str	r3, [r2, #4]
	b	.L117
.L192:
	ldr	r7, .L195+40
	mov	r9, #0
	add	r8, r7, #880
	b	.L112
.L110:
	add	r7, r7, #44
	cmp	r8, r7
	beq	.L108
.L112:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L110
	add	ip, r7, #24
	ldm	ip, {ip, lr}
	ldr	r3, [fp, #16]
	ldr	r2, [fp, #20]
	ldm	fp, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	stm	sp, {ip, lr}
	ldr	ip, .L195+44
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L110
	ldr	r2, .L195+28
	ldr	r3, [r2, #4]
	sub	r3, r3, #1
	str	r9, [r7, #32]
	str	r9, [fp, #28]
	str	r3, [r2, #4]
	b	.L110
.L191:
	ldr	r7, .L195+40
	mov	r9, #0
	add	r8, r7, #880
	b	.L105
.L103:
	add	r7, r7, #44
	cmp	r8, r7
	beq	.L101
.L105:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L103
	add	ip, r7, #24
	ldm	ip, {ip, lr}
	ldr	r3, [r10, #16]
	ldr	r2, [r10, #20]
	ldm	r10, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	stm	sp, {ip, lr}
	ldr	ip, .L195+44
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L103
	ldr	r2, .L195+28
	ldr	r3, [r2, #4]
	sub	r3, r3, #1
	str	r9, [r7, #32]
	str	r9, [r10, #28]
	str	r3, [r2, #4]
	b	.L103
.L190:
	ldr	r7, .L195+40
	mov	r9, #0
	add	r8, r7, #880
	b	.L98
.L96:
	add	r7, r7, #44
	cmp	r7, r8
	beq	.L94
.L98:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L96
	add	ip, r7, #24
	ldm	ip, {ip, lr}
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldm	r4, {r0, r1}
	str	lr, [sp, #12]
	ldr	lr, [r7, #4]
	str	ip, [sp, #8]
	ldr	ip, [r7]
	stm	sp, {ip, lr}
	ldr	ip, .L195+44
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L96
	ldr	r2, .L195+28
	ldr	r3, [r2, #4]
	sub	r3, r3, #1
	str	r9, [r7, #32]
	str	r9, [r4, #28]
	str	r3, [r2, #4]
	b	.L96
.L196:
	.align	2
.L195:
	.word	enemy2
	.word	enemy1
	.word	enemy25
	.word	enemy3
	.word	enemy35
	.word	enemy1+384
	.word	player
	.word	.LANCHOR0
	.word	frameCounter
	.word	1717986919
	.word	bullets
	.word	collision
	.size	updateEnemies, .-updateEnemies
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L249
	ldr	r3, [r10]
	ldr	r2, .L249+4
	add	r3, r3, #1
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #2
	str	r3, [r10]
	beq	.L234
	ldr	r9, .L249+8
	ldr	r8, .L249+12
	ldr	r7, .L249+16
	ldr	r6, .L249+20
	ldr	r5, .L249+24
.L198:
	bl	updatePlayer
	ldr	r3, .L249+28
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L239
	cmp	r3, #1
	moveq	r2, #0
	ldreq	r3, .L249+32
	streq	r2, [r3, #44]
.L201:
	ldr	r4, .L249+36
	bl	updateEnemies
	add	fp, r4, #880
	b	.L203
.L202:
	add	r4, r4, #44
	cmp	fp, r4
	beq	.L240
.L203:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L202
	mov	r0, r4
	add	r4, r4, #44
	bl	updateBullets.part.1
	cmp	fp, r4
	bne	.L203
.L240:
	ldr	r4, .L249+40
	add	fp, r4, #480
	b	.L205
.L204:
	add	r4, r4, #48
	cmp	fp, r4
	beq	.L241
.L205:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L204
	mov	r0, r4
	add	r4, r4, #48
	bl	updateEnemyBullets.part.3
	cmp	fp, r4
	bne	.L205
.L241:
	ldr	r2, [r9, #44]
	ldr	r3, .L249+44
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	add	r1, r2, r1
	rsb	r3, r3, r1, asr #5
	rsb	r3, r3, r3, lsl #4
	cmp	r2, r3, lsl #2
	addne	ip, r2, #1
	beq	.L242
.L207:
	ldr	r2, [r8, #44]
	ldr	r3, .L249+44
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	add	r1, r2, r1
	rsb	r3, r3, r1, asr #5
	rsb	r3, r3, r3, lsl #4
	cmp	r2, r3, lsl #2
	str	ip, [r9, #44]
	beq	.L243
.L209:
	ldr	r3, [r7, #44]
	ldr	ip, .L249+44
	smull	r0, r1, r3, ip
	add	r0, r3, r1
	asr	r1, r3, #31
	rsb	r1, r1, r0, asr #5
	rsb	r1, r1, r1, lsl #4
	add	r2, r2, #1
	cmp	r3, r1, lsl #2
	str	r2, [r8, #44]
	beq	.L244
.L211:
	ldr	r2, [r6, #44]
	ldr	ip, .L249+44
	smull	r0, r1, r2, ip
	add	r0, r2, r1
	asr	r1, r2, #31
	rsb	r1, r1, r0, asr #5
	rsb	r1, r1, r1, lsl #4
	add	r3, r3, #1
	cmp	r2, r1, lsl #2
	str	r3, [r7, #44]
	beq	.L245
.L213:
	ldr	r3, [r5, #44]
	ldr	ip, .L249+44
	smull	r0, r1, r3, ip
	add	r0, r3, r1
	asr	r1, r3, #31
	rsb	r1, r1, r0, asr #5
	rsb	r1, r1, r1, lsl #4
	add	r2, r2, #1
	cmp	r3, r1, lsl #2
	str	r2, [r6, #44]
	beq	.L246
.L215:
	ldr	r2, .L249+48
	ldr	r1, [r10]
	add	r3, r3, #1
	str	r3, [r5, #44]
	ldr	r3, [r2]
	tst	r1, #1
	subeq	r3, r3, #1
	streq	r3, [r2]
	mov	r2, #67108864
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #18]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L234:
	mov	r3, #32
	ldr	r9, .L249+8
	ldr	r8, .L249+12
	ldr	r7, .L249+16
	ldr	r6, .L249+20
	ldr	r5, .L249+24
.L199:
	ldr	lr, [r9, r3]
	ldr	ip, [r8, r3]
	adds	lr, lr, #1
	and	lr, lr, #1
	ldr	r0, [r7, r3]
	rsbmi	lr, lr, #0
	adds	ip, ip, #1
	and	ip, ip, #1
	ldr	r1, [r6, r3]
	rsbmi	ip, ip, #0
	adds	r0, r0, #1
	and	r0, r0, #1
	ldr	r2, [r5, r3]
	rsbmi	r0, r0, #0
	adds	r1, r1, #1
	and	r1, r1, #1
	rsbmi	r1, r1, #0
	adds	r2, r2, #1
	and	r2, r2, #1
	rsbmi	r2, r2, #0
	str	lr, [r9, r3]
	str	ip, [r8, r3]
	str	r0, [r7, r3]
	str	r1, [r6, r3]
	str	r2, [r5, r3]
	add	r3, r3, #48
	cmp	r3, #416
	bne	.L199
	b	.L198
.L239:
	mov	r2, #0
	ldr	r3, .L249+32
	str	r2, [r3, #68]
	b	.L201
.L246:
	ldr	r3, .L249+52
	mov	lr, pc
	bx	r3
	rsbs	r2, r0, #0
	and	r2, r2, #7
	and	r3, r0, #7
	rsbpl	r3, r2, #0
	add	r3, r3, r3, lsl #1
	add	r0, r5, r3, lsl #4
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L216
.L238:
	ldr	r3, [r5, #44]
	b	.L215
.L245:
	ldr	r3, .L249+52
	mov	lr, pc
	bx	r3
	rsbs	r2, r0, #0
	and	r2, r2, #7
	and	r3, r0, #7
	rsbpl	r3, r2, #0
	add	r3, r3, r3, lsl #1
	add	r0, r6, r3, lsl #4
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L214
.L237:
	ldr	r2, [r6, #44]
	b	.L213
.L244:
	ldr	r3, .L249+52
	mov	lr, pc
	bx	r3
	rsbs	r2, r0, #0
	and	r2, r2, #7
	and	r3, r0, #7
	rsbpl	r3, r2, #0
	add	r3, r3, r3, lsl #1
	add	r0, r7, r3, lsl #4
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L212
.L236:
	ldr	r3, [r7, #44]
	b	.L211
.L243:
	ldr	r3, .L249+52
	mov	lr, pc
	bx	r3
	rsbs	r2, r0, #0
	and	r2, r2, #7
	and	r3, r0, #7
	rsbpl	r3, r2, #0
	add	r3, r3, r3, lsl #1
	add	r0, r8, r3, lsl #4
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L247
.L210:
	mov	r3, #0
	ldr	r2, [r8, #44]
	str	r3, [r9, #44]
	b	.L209
.L242:
	ldr	r3, .L249+52
	mov	lr, pc
	bx	r3
	rsbs	r2, r0, #0
	and	r2, r2, #7
	and	r3, r0, #7
	rsbpl	r3, r2, #0
	add	r3, r3, r3, lsl #1
	add	r0, r9, r3, lsl #4
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L248
.L208:
	mov	ip, #1
	b	.L207
.L216:
	bl	fireEnemyBullets.part.5
	b	.L238
.L248:
	bl	fireEnemyBullets.part.5
	b	.L208
.L247:
	bl	fireEnemyBullets.part.5
	b	.L210
.L212:
	bl	fireEnemyBullets.part.5
	b	.L236
.L214:
	bl	fireEnemyBullets.part.5
	b	.L237
.L250:
	.align	2
.L249:
	.word	frameCounter
	.word	1717986919
	.word	enemy1
	.word	enemy2
	.word	enemy25
	.word	enemy3
	.word	enemy35
	.word	.LANCHOR0
	.word	lives
	.word	bullets
	.word	enemybullets
	.word	-2004318071
	.word	vOff
	.word	rand
	.size	updateGame, .-updateGame
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, #512
	ldr	r1, .L266
	ldr	r3, .L266+4
	ldr	r4, .L266+8
	ldr	lr, .L266+12
	ldr	ip, .L266+16
	ldr	r0, .L266+20
	add	r7, r1, #384
	add	r2, r3, #296
.L257:
	ldr	r5, [r1, #28]
	cmp	r5, #0
	strheq	r6, [r3, #32]	@ movhi
	beq	.L258
	ldr	r5, [r1, #32]
	ldr	r8, [r1, #4]
	add	r5, r5, #64
	ldr	r9, [r1]
	lsl	r5, r5, #1
	orr	r8, r8, #16384
	strh	r5, [r3, #36]	@ movhi
	strh	r8, [r3, #34]	@ movhi
	strh	r9, [r3, #32]	@ movhi
.L258:
	ldr	r5, [r0, #28]
	cmp	r5, #0
	strheq	r6, [r3, #168]	@ movhi
	beq	.L259
	ldr	r5, [r0, #32]
	ldr	r8, [r0, #4]
	add	r5, r5, #32
	ldr	r9, [r0]
	lsl	r5, r5, #1
	orr	r8, r8, #16384
	strh	r5, [r3, #172]	@ movhi
	strh	r8, [r3, #170]	@ movhi
	strh	r9, [r3, #168]	@ movhi
.L259:
	ldr	r5, [ip, #28]
	cmp	r5, #0
	strheq	r6, [r3, #232]	@ movhi
	beq	.L260
	ldr	r5, [ip, #32]
	ldr	r8, [ip, #4]
	add	r5, r5, #32
	ldr	r9, [ip]
	lsl	r5, r5, #1
	orr	r8, r8, #16384
	strh	r5, [r3, #236]	@ movhi
	strh	r8, [r3, #234]	@ movhi
	strh	r9, [r3, #232]	@ movhi
.L260:
	ldr	r5, [lr, #28]
	cmp	r5, #0
	strheq	r6, [r2]	@ movhi
	beq	.L261
	ldr	r8, [lr, #4]
	ldr	r5, [lr, #32]
	ldr	r9, [lr]
	orr	r8, r8, #16384
	lsl	r5, r5, #1
	strh	r8, [r2, #2]	@ movhi
	strh	r5, [r2, #4]	@ movhi
	strh	r9, [r2]	@ movhi
.L261:
	ldr	r5, [r4, #28]
	cmp	r5, #0
	strheq	r6, [r2, #64]	@ movhi
	beq	.L262
	ldr	r8, [r4, #4]
	ldr	r5, [r4, #32]
	ldr	r9, [r4]
	orr	r8, r8, #16384
	lsl	r5, r5, #1
	strh	r8, [r2, #66]	@ movhi
	strh	r5, [r2, #68]	@ movhi
	strh	r9, [r2, #64]	@ movhi
.L262:
	add	r1, r1, #48
	cmp	r7, r1
	add	r4, r4, #48
	add	r3, r3, #8
	add	lr, lr, #48
	add	ip, ip, #48
	add	r0, r0, #48
	add	r2, r2, #8
	bne	.L257
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L267:
	.align	2
.L266:
	.word	enemy1
	.word	shadowOAM
	.word	enemy35
	.word	enemy3
	.word	enemy25
	.word	enemy2
	.size	drawEnemies, .-drawEnemies
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
	push	{r4, lr}
	mov	r0, #61
	mov	r1, #0
	mov	ip, #8
	mvn	r4, #1
	ldr	r3, .L272
	add	lr, r3, #880
.L269:
	ldr	r2, [r3, #24]
	rsb	r2, r2, #0
	str	r0, [r3, #40]
	str	r1, [r3, #4]
	str	ip, [r3, #28]
	str	r4, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #32]
	str	r2, [r3]
	str	ip, [r3, #24]
	add	r3, r3, #44
	cmp	r3, lr
	add	r0, r0, #1
	bne	.L269
	pop	{r4, lr}
	bx	lr
.L273:
	.align	2
.L272:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateBullets.part.1
	.size	updateBullets, .-updateBullets
	.align	2
	.global	drawBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullets, %function
drawBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bne	.L283
	ldr	r3, [r0, #36]
	cmp	r3, #0
	moveq	r1, #512
	ldreq	r3, [r0, #40]
	ldreq	r2, .L284
	lsleq	r3, r3, #3
	strheq	r1, [r2, r3]	@ movhi
	bx	lr
.L283:
	str	lr, [sp, #-4]!
	mov	lr, #228
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #4]
	ldr	ip, .L284
	ldr	r0, [r0]
	lsl	r3, r3, #3
	add	r1, ip, r3
	orr	r2, r2, #16384
	strh	lr, [r1, #4]	@ movhi
	strh	r0, [ip, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L285:
	.align	2
.L284:
	.word	shadowOAM
	.size	drawBullets, .-drawBullets
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
	ldr	r0, .L296
	mov	r3, #0
	mov	r2, r0
	b	.L289
.L287:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #44
	bxeq	lr
.L289:
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L287
	mov	ip, #1
	ldr	r2, .L296+4
	str	lr, [sp, #-4]!
	add	lr, r3, r3, lsl #2
	add	r3, r3, lr, lsl ip
	ldr	lr, [r2]
	lsl	r3, r3, #2
	ldr	r2, [r2, #4]
	str	lr, [r0, r3]
	add	r3, r0, r3
	str	r1, [r3, #36]
	str	r2, [r3, #4]
	str	ip, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L297:
	.align	2
.L296:
	.word	bullets
	.word	player
	.size	fireBullet, .-fireBullet
	.align	2
	.global	initEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemyBullets, %function
initEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #85
	mov	r4, #6
	mov	lr, #8
	mvn	ip, #5
	mov	r2, #0
	mov	r0, #2
	ldr	r3, .L302
.L299:
	str	r1, [r3, #40]
	add	r1, r1, #1
	cmp	r1, #95
	str	r4, [r3, #24]
	str	lr, [r3, #28]
	str	ip, [r3]
	str	r2, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	add	r3, r3, #48
	bne	.L299
	pop	{r4, lr}
	bx	lr
.L303:
	.align	2
.L302:
	.word	enemybullets
	.size	initEnemyBullets, .-initEnemyBullets
	.align	2
	.global	updateEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemyBullets, %function
updateEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateEnemyBullets.part.3
	.size	updateEnemyBullets, .-updateEnemyBullets
	.align	2
	.global	drawEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemyBullets, %function
drawEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	beq	.L307
	ldr	r3, [r0, #44]
	cmp	r3, #0
	str	lr, [sp, #-4]!
	moveq	lr, #4
	bne	.L316
.L315:
	ldr	r3, [r0, #40]
	ldr	r2, [r0, #4]
	ldr	ip, .L317
	ldr	r0, [r0]
	lsl	r3, r3, #3
	add	r1, ip, r3
	orr	r2, r2, #16384
	strh	r0, [ip, r3]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	strh	lr, [r1, #4]	@ movhi
.L306:
	ldr	lr, [sp], #4
	bx	lr
.L307:
	mov	r1, #512
	ldr	r3, [r0, #40]
	ldr	r2, .L317
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L316:
	cmp	r3, #1
	moveq	lr, #68
	beq	.L315
	cmp	r3, #2
	bne	.L306
	mov	lr, #132
	b	.L315
.L318:
	.align	2
.L317:
	.word	shadowOAM
	.size	drawEnemyBullets, .-drawEnemyBullets
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
	mov	r0, #192
	push	{r4, r5, r6, lr}
	mov	lr, #512
	mov	r4, #256
	ldr	r2, .L332
	ldm	r2, {r2, r3}
	ldr	r1, .L332+4
	orr	r3, r3, #16384
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, .L332+8
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	add	r0, r3, #72
.L322:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	ldr	r2, [r3, #16]
	ldrne	ip, [r3, #4]
	ldrne	r5, [r3]
	lslne	r2, r2, #3
	orrne	ip, ip, #16384
	strhne	r5, [r1, r2]	@ movhi
	lsleq	r2, r2, #3
	addne	r2, r1, r2
	add	r3, r3, #24
	strhne	r4, [r2, #4]	@ movhi
	strhne	ip, [r2, #2]	@ movhi
	strheq	lr, [r1, r2]	@ movhi
	cmp	r3, r0
	bne	.L322
	ldr	r3, .L332+12
	mov	r4, #512
	mov	r5, #228
	add	ip, r3, #880
	b	.L325
.L323:
	ldr	r2, [r3, #36]
	cmp	r2, #0
	ldreq	r2, [r3, #40]
	add	r3, r3, #44
	lsleq	r2, r2, #3
	strheq	r4, [r1, r2]	@ movhi
	cmp	r3, ip
	beq	.L331
.L325:
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L323
	ldr	r2, [r3, #40]
	ldr	r0, [r3, #4]
	ldr	r6, [r3]
	lsl	r2, r2, #3
	add	r3, r3, #44
	add	lr, r1, r2
	orr	r0, r0, #16384
	cmp	r3, ip
	strh	r6, [r1, r2]	@ movhi
	strh	r5, [lr, #4]	@ movhi
	strh	r0, [lr, #2]	@ movhi
	bne	.L325
.L331:
	ldr	r4, .L332+16
	add	r5, r4, #480
.L326:
	mov	r0, r4
	add	r4, r4, #48
	bl	drawEnemyBullets
	cmp	r4, r5
	bne	.L326
	bl	drawEnemies
	ldr	r3, .L332+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L332+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L332+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L333:
	.align	2
.L332:
	.word	player
	.word	shadowOAM
	.word	lives
	.word	bullets
	.word	enemybullets
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.align	2
	.global	fireEnemyBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireEnemyBullets, %function
fireEnemyBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bxeq	lr
	b	fireEnemyBullets.part.5
	.size	fireEnemyBullets, .-fireEnemyBullets
	.comm	vOff,4,4
	.global	enemycount
	.global	livesRemaining
	.comm	frameCounter,4,4
	.comm	shadowOAM,1024,4
	.comm	enemybullets,480,4
	.comm	bullets,880,4
	.comm	lives,72,4
	.comm	enemy35,384,4
	.comm	enemy3,384,4
	.comm	enemy25,384,4
	.comm	enemy2,384,4
	.comm	enemy1,384,4
	.comm	player,24,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	livesRemaining, %object
	.size	livesRemaining, 4
livesRemaining:
	.word	3
	.type	enemycount, %object
	.size	enemycount, 4
enemycount:
	.word	40
	.ident	"GCC: (devkitARM release 47) 7.1.0"
