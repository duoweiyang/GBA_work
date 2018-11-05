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
	mov	r1, #67108864
	push	{r4, r5, r6, lr}
	mov	lr, #0
	ldr	r2, .L4
	ldr	ip, .L4+4
	ldrh	r0, [r2, #48]
	ldr	r3, .L4+8
	ldr	r2, .L4+12
	strh	ip, [r1]	@ movhi
	ldr	ip, .L4+16
	ldr	r1, .L4+20
	strh	r0, [r2]	@ movhi
	mov	r0, r3
	ldr	r2, .L4+24
	strh	lr, [ip]	@ movhi
	strh	r3, [r1]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, #20
	mov	r3, #1
	mov	lr, #19
	mov	r4, #15
	mov	r2, #120
	mov	ip, #17
	mov	r0, #10
	ldr	r5, .L4+28
	str	r1, [r5]
	ldr	r5, .L4+32
	str	r1, [r5]
	ldr	r5, .L4+36
	str	r1, [r5]
	ldr	r5, .L4+40
	str	r1, [r5]
	ldr	r1, .L4+44
	str	r3, [r1]
	ldr	r1, .L4+48
	str	r3, [r1]
	ldr	r1, .L4+52
	str	r3, [r1]
	ldr	r1, .L4+56
	str	r3, [r1]
	ldr	r1, .L4+60
	str	r3, [r1]
	ldr	r3, .L4+64
	str	lr, [r3]
	ldr	r3, .L4+68
	ldr	lr, .L4+72
	str	r4, [r3]
	ldr	r1, .L4+76
	ldr	r3, .L4+80
	str	r2, [lr]
	str	r2, [r1]
	ldr	lr, .L4+84
	str	r2, [r3]
	ldr	r1, .L4+88
	ldr	r3, .L4+92
	str	r2, [lr]
	str	ip, [r1]
	str	r0, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	67109120
	.word	1027
	.word	32736
	.word	buttons
	.word	oldButtons
	.word	bgColor
	.word	fillScreen
	.word	gRow
	.word	gCol
	.word	gOldRow
	.word	gOldCol
	.word	gRDel
	.word	gCDel
	.word	bRDel
	.word	bCDel
	.word	state
	.word	gHeight
	.word	gWidth
	.word	bRow
	.word	bCol
	.word	bOldRow
	.word	bOldCol
	.word	bHeight
	.word	bWidth
	.size	initialize, .-initialize
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, .L31
	ldr	r3, [r3]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L8
	cmp	r3, #1
	beq	.L9
.L7:
	ldr	r3, .L31+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L10
	ldr	r3, .L31+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L29
.L10:
	ldr	r3, .L31+12
	ldr	r2, .L31+16
	ldrh	r0, [r3, #48]
	ldr	ip, [r2]
	tst	r0, #32
	ldr	r1, .L31+20
	subeq	ip, ip, #1
	ldr	r8, [r1]
	streq	ip, [r2]
	beq	.L14
	ldrh	r0, [r3, #48]
	tst	r0, #16
	addeq	ip, ip, #1
	streq	ip, [r2]
	bne	.L30
.L14:
	ldr	r5, .L31+24
	ldr	r0, [r5]
	ldr	r3, .L31+28
	cmp	r0, #0
	ldr	r7, .L31+32
	ldr	r2, [r3]
	ble	.L17
	add	r3, r0, r2
	cmp	r3, #159
	bgt	.L17
.L18:
	ldr	r4, .L31+36
	ldr	r1, [r4]
	ldr	r3, .L31+40
	cmp	r1, #0
	ldr	r6, .L31+44
	ldr	r3, [r3]
	ble	.L19
	add	lr, r1, r3
	cmp	lr, #239
	ble	.L20
.L19:
	ldr	lr, [r6]
	rsb	lr, lr, #0
	str	lr, [r6]
.L20:
	ldr	r9, .L31+48
	ldr	lr, .L31+52
	ldr	r9, [r9]
	ldr	lr, [lr]
	stm	sp, {r8, ip}
	str	r9, [sp, #12]
	str	lr, [sp, #8]
	ldr	r8, .L31+56
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r2, [r7]
	ldrne	r3, [r6]
	rsbne	r0, r2, #0
	rsbne	r1, r3, #0
	ldr	r2, [r5]
	ldr	r3, [r4]
	ldreq	r0, [r7]
	ldreq	r1, [r6]
	add	r2, r2, r0
	add	r3, r3, r1
	strne	r0, [r7]
	strne	r1, [r6]
	str	r2, [r5]
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L17:
	ldr	r3, [r7]
	rsb	r3, r3, #0
	str	r3, [r7]
	b	.L18
.L9:
	ldr	r3, .L31+60
	mov	lr, pc
	bx	r3
	b	.L7
.L30:
	ldrh	r2, [r3, #48]
	tst	r2, #64
	subeq	r8, r8, #1
	streq	r8, [r1]
	beq	.L14
	ldrh	r3, [r3, #48]
	tst	r3, #128
	addeq	r8, r8, #1
	streq	r8, [r1]
	b	.L14
.L29:
	ldr	r2, .L31+64
	ldr	r3, .L31+68
	ldrh	r1, [r2]
	cmp	r1, r3
	mvneq	r3, #64512
	movne	r0, r3
	strh	r3, [r2]	@ movhi
	ldreq	r0, .L31+72
	ldr	r3, .L31+76
	mov	lr, pc
	bx	r3
	b	.L10
.L8:
	ldr	r3, .L31+80
	mov	lr, pc
	bx	r3
	b	.L7
.L32:
	.align	2
.L31:
	.word	state
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	bCol
	.word	bRow
	.word	gRow
	.word	gHeight
	.word	gRDel
	.word	gCol
	.word	gWidth
	.word	gCDel
	.word	bWidth
	.word	bHeight
	.word	collision
	.word	gameState
	.word	bgColor
	.word	32736
	.word	1023
	.word	fillScreen
	.word	startState
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L35
	ldr	r7, .L35+4
	ldrh	ip, [r8]
	ldr	r6, .L35+8
	ldr	r5, .L35+12
	ldr	r1, .L35+16
	sub	sp, sp, #12
	ldr	r4, .L35+20
	ldr	r3, [r7]
	ldr	r2, [r6]
	ldr	r1, [r1]
	ldr	r0, [r5]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldr	fp, .L35+24
	ldr	lr, .L35+28
	ldrh	ip, [r8]
	ldr	r10, .L35+32
	ldr	r8, .L35+36
	ldr	r1, [lr]
	ldr	r3, [fp]
	ldr	r0, [r8]
	ldr	r2, [r10]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	ip, #992
	ldr	r8, .L35+40
	ldr	r9, .L35+44
	ldr	r3, [r7]
	ldr	r2, [r6]
	ldr	r1, [r8]
	ldr	r0, [r9]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	mov	ip, #31744
	ldr	r6, .L35+48
	ldr	r7, .L35+52
	ldr	r3, [fp]
	ldr	r1, [r6]
	ldr	r0, [r7]
	ldr	r2, [r10]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldr	r0, [r9]
	ldr	r1, [r8]
	ldr	r2, [r7]
	ldr	r3, [r6]
	str	r0, [r5]
	ldr	r8, .L35+36
	ldr	r0, .L35+16
	ldr	lr, .L35+28
	str	r1, [r0]
	str	r2, [r8]
	str	r3, [lr]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	bgColor
	.word	gWidth
	.word	gHeight
	.word	gOldRow
	.word	gOldCol
	.word	drawRect
	.word	bWidth
	.word	bOldCol
	.word	bHeight
	.word	bOldRow
	.word	gCol
	.word	gRow
	.word	bCol
	.word	bRow
	.size	draw, .-draw
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
	push	{r7, lr}
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	ldr	r9, .L40+4
	ldr	r4, .L40+8
	ldr	r8, .L40+12
	ldr	r7, .L40+16
	ldr	r6, .L40+20
	ldr	r5, .L40+24
.L38:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	b	.L38
.L41:
	.align	2
.L40:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.comm	state,4,4
	.comm	bWidth,4,4
	.comm	bHeight,4,4
	.comm	bCDel,4,4
	.comm	bRDel,4,4
	.comm	bOldCol,4,4
	.comm	bOldRow,4,4
	.comm	bCol,4,4
	.comm	bRow,4,4
	.comm	gWidth,4,4
	.comm	gHeight,4,4
	.comm	gCDel,4,4
	.comm	gRDel,4,4
	.comm	gOldCol,4,4
	.comm	gOldRow,4,4
	.comm	gCol,4,4
	.comm	gRow,4,4
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 47) 7.1.0"
