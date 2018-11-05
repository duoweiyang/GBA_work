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
	.type	updateGarbage.part.0, %function
updateGarbage.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #1
	sub	sp, sp, #20
	ldr	r2, [r4, #24]
	ldr	r5, [r4, #16]
	ble	.L2
	add	r3, r0, r2
	cmp	r3, #119
	bgt	.L2
.L3:
	ldr	ip, [r4, #4]
	cmp	ip, #1
	ldr	r3, [r4, #28]
	ldr	lr, [r4, #20]
	ble	.L4
	add	r6, ip, r3
	cmp	r6, #238
	bgt	.L4
.L5:
	ldr	r6, [r1, #20]
	ldr	r7, [r1, #4]
	add	ip, ip, lr
	add	r0, r0, r5
	ldr	lr, [r1]
	ldr	r5, [r1, #16]
	stm	r4, {r0, ip}
	mov	r1, ip
	str	r5, [sp, #8]
	str	r6, [sp, #12]
	str	r7, [sp, #4]
	str	lr, [sp]
	ldr	r5, .L12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L1
	mov	r1, #0
	ldr	r2, .L12+4
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #32]
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L4:
	rsb	lr, lr, #0
	str	lr, [r4, #20]
	b	.L5
.L2:
	rsb	r5, r5, #0
	str	r5, [r4, #16]
	b	.L3
.L13:
	.align	2
.L12:
	.word	collision
	.word	livesRemaining
	.size	updateGarbage.part.0, .-updateGarbage.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFly.part.2, %function
updateFly.part.2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #1
	sub	sp, sp, #20
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #8]
	ble	.L15
	add	r3, r0, r2
	cmp	r3, #119
	bgt	.L15
.L16:
	ldr	ip, [r4, #4]
	cmp	ip, #1
	ldr	r3, [r4, #20]
	ldr	lr, [r4, #12]
	ble	.L17
	add	r6, ip, r3
	cmp	r6, #238
	bgt	.L17
.L18:
	ldr	r6, [r1, #20]
	ldr	r7, [r1, #4]
	add	ip, ip, lr
	add	r0, r0, r5
	ldr	lr, [r1]
	ldr	r5, [r1, #16]
	stm	r4, {r0, ip}
	mov	r1, ip
	str	r5, [sp, #8]
	str	r6, [sp, #12]
	str	r7, [sp, #4]
	str	lr, [sp]
	ldr	r5, .L24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L14
	mov	r1, #0
	ldr	r2, .L24+4
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #24]
.L14:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L17:
	rsb	lr, lr, #0
	str	lr, [r4, #12]
	b	.L18
.L15:
	rsb	r5, r5, #0
	str	r5, [r4, #8]
	b	.L16
.L25:
	.align	2
.L24:
	.word	collision
	.word	fliesRemaining
	.size	updateFly.part.2, .-updateFly.part.2
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
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .L42
	sub	sp, sp, #12
	ldr	r3, .L42+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L42+8
	ldr	ip, .L42+12
	add	r2, r0, #16
	ldr	r4, .L42+16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r6, .L42+20
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	ldr	r7, .L42+24
	add	r5, r4, #224
	b	.L28
.L27:
	add	r4, r4, #28
	cmp	r4, r5
	beq	.L40
.L28:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L27
	add	r2, r4, #16
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	add	r4, r4, #28
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L28
.L40:
	ldr	r4, .L42+28
	ldr	r6, .L42+32
	add	r5, r4, #240
	b	.L30
.L29:
	add	r4, r4, #40
	cmp	r4, r5
	beq	.L41
.L30:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L29
	ldrb	ip, [r4, #36]	@ zero_extendqisi2
	add	r2, r4, #24
	ldm	r4, {r0, r1}
	ldm	r2, {r2, r3}
	add	r4, r4, #40
	str	ip, [sp]
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L30
.L41:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	PondBitmap
	.word	drawFullscreenImage4
	.word	player
	.word	FrogBitmap
	.word	flies
	.word	drawImage4
	.word	flyBitmap
	.word	garbage
	.word	drawRect4
	.size	drawGame, .-drawGame
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
	str	lr, [sp, #-4]!
	mov	r2, #12
	mov	lr, #130
	mov	ip, #118
	mov	r0, #5
	mov	r1, #1
	ldr	r3, .L46
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
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
	ldr	r3, .L82
	ldr	r2, [r3]
	cmp	r2, #0
	movlt	r1, #0
	movlt	r2, r1
	strlt	r1, [r3]
	ldr	r1, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #160
	ldr	r2, .L82+4
	ldrh	r2, [r2]
	rsbgt	r1, r1, #160
	strgt	r1, [r3]
	tst	r2, #32
	beq	.L51
	ldr	r1, .L82+8
	ldrh	r1, [r1]
	tst	r1, #32
	bne	.L51
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #8]
	cmp	r1, r0
	bge	.L79
.L51:
	tst	r2, #16
	beq	.L69
	ldr	r1, .L82+8
	ldrh	r1, [r1]
	tst	r1, #16
	bne	.L69
	ldr	r0, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r1, [r3, #20]
	str	lr, [sp, #-4]!
	add	r1, r0, r1
	rsb	lr, ip, #240
	cmp	r1, lr
	addle	r0, r0, ip
	strle	r0, [r3, #4]
	ble	.L48
	tst	r2, #64
	beq	.L54
	ldr	r1, .L82+8
	ldrh	r1, [r1]
	tst	r1, #64
	bne	.L54
	ldr	r1, [r3]
	ldr	r0, [r3, #12]
	cmp	r1, r0
	bge	.L80
.L54:
	tst	r2, #128
	beq	.L48
	ldr	r2, .L82+8
	ldrh	r2, [r2]
	tst	r2, #128
	bne	.L48
	ldr	r2, [r3]
	ldr	r1, [r3, #12]
	cmp	r2, r1
	ldrge	r1, [r3, #8]
	addge	r2, r1, r2
	strge	r2, [r3]
.L48:
	ldr	lr, [sp], #4
	bx	lr
.L69:
	tst	r2, #64
	beq	.L71
	ldr	r1, .L82+8
	ldrh	r1, [r1]
	tst	r1, #64
	bne	.L71
	ldr	r1, [r3]
	ldr	r0, [r3, #12]
	cmp	r1, r0
	bge	.L81
.L71:
	tst	r2, #128
	bxeq	lr
	ldr	r2, .L82+8
	ldrh	r2, [r2]
	tst	r2, #128
	bxne	lr
	ldr	r2, [r3]
	ldr	r1, [r3, #12]
	cmp	r2, r1
	ldrge	r1, [r3, #8]
	addge	r2, r1, r2
	strge	r2, [r3]
	bx	lr
.L79:
	sub	r1, r1, r0
	str	r1, [r3, #4]
	bx	lr
.L80:
	ldr	r2, [r3, #8]
	sub	r1, r1, r2
	str	r1, [r3]
	b	.L48
.L81:
	ldr	r2, [r3, #8]
	sub	r1, r1, r2
	str	r1, [r3]
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r4, .L100
	bl	updatePlayer
	ldr	r6, .L100+4
	add	r5, r4, #224
	b	.L86
.L85:
	add	r4, r4, #28
	cmp	r4, r5
	beq	.L98
.L86:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L85
	mov	r0, r4
	mov	r1, r6
	add	r4, r4, #28
	bl	updateFly.part.2
	cmp	r4, r5
	bne	.L86
.L98:
	ldr	r4, .L100+8
	ldr	r6, .L100+4
	add	r5, r4, #240
	b	.L88
.L87:
	add	r4, r4, #40
	cmp	r5, r4
	beq	.L99
.L88:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L87
	mov	r0, r4
	mov	r1, r6
	add	r4, r4, #40
	bl	updateGarbage.part.0
	cmp	r5, r4
	bne	.L88
.L99:
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	.align	2
.L100:
	.word	flies
	.word	player
	.word	garbage
	.size	updateGame, .-updateGame
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
	ldr	ip, .L104
	sub	sp, sp, #8
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L104+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L105:
	.align	2
.L104:
	.word	FrogBitmap
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initGarbage
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGarbage, %function
initGarbage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #2
	mov	r9, r5
	ldr	r4, .L110
	ldr	r6, .L110+4
	ldr	r8, .L110+8
	ldr	r7, .L110+12
.L107:
	str	r5, [r4, #24]
	str	r5, [r4, #28]
	mov	lr, pc
	bx	r6
	smull	r10, fp, r0, r8
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #5
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #4
	str	r3, [r4]
	mov	lr, pc
	bx	r6
	mov	r2, #1
	mvn	r1, #2
	smull	r10, fp, r0, r7
	asr	r3, r0, #31
	rsb	r3, r3, fp, asr #6
	ldr	ip, [r4]
	add	r5, r5, r2
	add	r3, r3, r3, lsl #6
	sub	r3, r0, r3, lsl r2
	cmp	r5, #8
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	strb	r1, [r4, #36]
	str	r2, [r4, #32]
	str	ip, [r4, #8]
	add	r4, r4, #40
	bne	.L107
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	garbage
	.word	rand
	.word	1717986919
	.word	2114445439
	.size	initGarbage, .-initGarbage
	.align	2
	.global	updateGarbage
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGarbage, %function
updateGarbage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateGarbage.part.0
	.size	updateGarbage, .-updateGarbage
	.align	2
	.global	drawGarbage
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGarbage, %function
drawGarbage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	mov	ip, r0
	push	{r4, lr}
	ldrb	ip, [ip, #36]	@ zero_extendqisi2
	sub	sp, sp, #8
	add	r2, r0, #24
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L123
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	drawRect4
	.size	drawGarbage, .-drawGarbage
	.align	2
	.global	initFlies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFlies, %function
initFlies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #8
	ldr	r4, .L129
	ldr	r5, .L129+4
	ldr	r8, .L129+8
	ldr	r7, .L129+12
	add	r6, r4, #224
.L126:
	str	r9, [r4, #16]
	str	r9, [r4, #20]
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
	mov	ip, #1
	mov	r1, #2
	smull	r10, fp, r0, r7
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl ip
	add	r0, r0, #10
	str	r1, [r4, #12]
	str	ip, [r4, #24]
	stmib	r4, {r0, r1}
	add	r4, r4, #28
	cmp	r4, r6
	bne	.L126
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L130:
	.align	2
.L129:
	.word	flies
	.word	rand
	.word	156180629
	.word	2114445439
	.size	initFlies, .-initFlies
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
	push	{r4, r5, r6, lr}
	mov	r2, #12
	mov	lr, #130
	mov	ip, #118
	mov	r0, #5
	mov	r1, #1
	ldr	r3, .L133
	mov	r4, #3
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bl	initFlies
	bl	initGarbage
	mov	lr, #8
	ldr	r1, .L133+4
	ldr	ip, .L133+8
	mov	r0, r4
	str	r4, [r1]
	ldr	r5, .L133+12
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L133+16
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	mov	r0, r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L133+20
	mov	lr, pc
	bx	r5
	mov	r4, #0
	mov	lr, #31744
	mov	ip, #992
	mov	r0, #31
	mvn	r1, #32768
	ldr	r3, .L133+24
	ldr	r2, .L133+28
	strh	r4, [r3, #244]	@ movhi
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #248]	@ movhi
	strh	r0, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	strh	r2, [r3, #254]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L134:
	.align	2
.L133:
	.word	player
	.word	livesRemaining
	.word	fliesRemaining
	.word	DMANow
	.word	flyPal
	.word	PondPal
	.word	83886336
	.word	15855
	.size	initGame, .-initGame
	.align	2
	.global	updateFly
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFly, %function
updateFly:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateFly.part.2
	.size	updateFly, .-updateFly
	.align	2
	.global	drawFly
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFly, %function
drawFly:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	push	{r4, lr}
	ldr	ip, .L146
	sub	sp, sp, #8
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L146+4
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L147:
	.align	2
.L146:
	.word	flyBitmap
	.word	drawImage4
	.size	drawFly, .-drawFly
	.comm	livesRemaining,4,4
	.comm	fliesRemaining,4,4
	.comm	garbage,240,4
	.comm	flies,224,4
	.comm	player,28,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
