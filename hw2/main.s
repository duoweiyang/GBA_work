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
	mov	r5, #0
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
	strh	r5, [ip]	@ movhi
	strh	r3, [r1]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r1, #20
	mov	r3, #1
	mov	r0, #5
	mov	r2, #70
	ldr	r6, .L4+28
	mov	r4, #10
	str	r5, [r6]
	ldr	r5, .L4+32
	mov	lr, #30
	str	r1, [r5]
	mov	ip, #225
	ldr	r5, .L4+36
	str	r1, [r5]
	ldr	r5, .L4+40
	str	r1, [r5]
	ldr	r5, .L4+44
	str	r1, [r5]
	ldr	r1, .L4+48
	str	r3, [r1]
	ldr	r1, .L4+52
	str	r3, [r1]
	ldr	r1, .L4+56
	str	r3, [r1]
	ldr	r1, .L4+60
	str	r3, [r1]
	ldr	r1, .L4+64
	str	r3, [r1]
	ldr	r1, .L4+68
	str	r3, [r1]
	ldr	r3, .L4+72
	str	r0, [r3]
	ldr	r3, .L4+76
	str	r0, [r3]
	ldr	r3, .L4+80
	ldr	r1, .L4+84
	str	r0, [r3]
	ldr	r3, .L4+88
	str	r2, [r1]
	str	r2, [r3]
	ldr	r1, .L4+92
	ldr	r3, .L4+96
	str	r2, [r1]
	str	r2, [r3]
	ldr	r1, .L4+100
	ldr	r3, .L4+104
	str	r4, [r1]
	str	r4, [r3]
	ldr	r0, .L4+108
	ldr	r1, .L4+112
	ldr	r2, .L4+116
	ldr	r3, .L4+120
	str	lr, [r0]
	str	lr, [r1]
	str	ip, [r2]
	str	ip, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	67109120
	.word	1027
	.word	15855
	.word	buttons
	.word	oldButtons
	.word	bgColor
	.word	fillScreen
	.word	lose
	.word	gRow
	.word	gCol
	.word	gOldRow
	.word	gOldCol
	.word	gRDel
	.word	gCDel
	.word	bRDel
	.word	bCDel
	.word	cRDel
	.word	cCDel
	.word	gRadius
	.word	bWidth
	.word	cWidth
	.word	bRow
	.word	bOldRow
	.word	cRow
	.word	cOldRow
	.word	bCol
	.word	bOldCol
	.word	bHeight
	.word	cHeight
	.word	cCol
	.word	cOldCol
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
	ldr	r2, .L27
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrh	r3, [r2, #48]
	ldr	lr, .L27+4
	tst	r3, #1
	ldr	r3, [lr]
	subeq	r3, r3, #1
	sub	sp, sp, #20
	streq	r3, [lr]
	beq	.L8
	ldrh	r2, [r2, #48]
	tst	r2, #2
	addeq	r3, r3, #1
	streq	r3, [lr]
.L8:
	ldr	r1, .L27
	ldr	r6, .L27+8
	ldrh	r2, [r1, #48]
	tst	r2, #64
	ldr	r2, [r6]
	subeq	r2, r2, #1
	streq	r2, [r6]
	beq	.L10
	ldrh	r1, [r1, #48]
	tst	r1, #128
	addeq	r2, r2, #1
	streq	r2, [r6]
.L10:
	ldr	r5, .L27+12
	ldr	ip, [r5]
	ldr	r9, .L27+16
	cmp	ip, #0
	ldr	r7, .L27+20
	ldr	r0, [r9]
	ble	.L11
	add	r1, ip, r0
	cmp	r1, #159
	bgt	.L11
.L12:
	ldr	r4, .L27+24
	ldr	r1, [r4]
	cmp	r1, #0
	ble	.L13
	add	r8, r1, r0
	cmp	r8, #239
	ble	.L14
.L13:
	mov	r10, #1
	ldr	r8, .L27+28
	str	r10, [r8]
.L14:
	cmp	r3, #0
	movlt	r8, #0
	movlt	r3, r8
	strlt	r8, [lr]
	ldr	r8, .L27+32
	ldr	r10, [r8]
	add	r8, r10, r3
	cmp	r8, #160
	rsbgt	r3, r10, #160
	strgt	r3, [lr]
	cmp	r2, #0
	movlt	lr, #0
	movlt	r2, lr
	ldr	r8, .L27+36
	strlt	lr, [r6]
	ldr	lr, [r8]
	add	r2, lr, r2
	cmp	r2, #160
	rsbgt	lr, lr, #160
	strgt	lr, [r6]
	ldr	r2, .L27+40
	ldr	lr, .L27+44
	ldr	r2, [r2]
	ldr	lr, [lr]
	str	r3, [sp]
	lsl	r3, r0, #1
	str	r10, [sp, #8]
	sub	r1, r1, r0
	str	lr, [sp, #12]
	str	r2, [sp, #4]
	ldr	fp, .L27+48
	mov	r2, r3
	sub	r0, ip, r0
	mov	lr, pc
	bx	fp
	ldr	r10, .L27+52
	cmp	r0, #0
	ldrne	r3, [r10]
	ldr	ip, .L27+56
	rsbne	r3, r3, #0
	ldr	r1, .L27+60
	strne	r3, [r10]
	ldr	r0, [r9]
	ldr	r3, [r8]
	ldr	r2, [r6]
	ldr	lr, [r1]
	ldr	r6, [ip]
	ldr	r1, [r4]
	ldr	ip, [r5]
	str	r3, [sp, #8]
	lsl	r3, r0, #1
	sub	r1, r1, r0
	str	r2, [sp]
	str	r6, [sp, #12]
	mov	r2, r3
	str	lr, [sp, #4]
	sub	r0, ip, r0
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	ldrne	r3, [r10]
	ldr	r2, [r5]
	rsbne	r1, r3, #0
	ldreq	r1, [r10]
	ldr	r3, [r4]
	ldr	r0, [r7]
	add	r3, r3, r1
	add	r2, r2, r0
	strne	r1, [r10]
	str	r2, [r5]
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	ldr	r1, [r7]
	rsb	r1, r1, #0
	str	r1, [r7]
	b	.L12
.L28:
	.align	2
.L27:
	.word	67109120
	.word	bRow
	.word	cRow
	.word	gRow
	.word	gRadius
	.word	gRDel
	.word	gCol
	.word	lose
	.word	bHeight
	.word	cHeight
	.word	bCol
	.word	bWidth
	.word	collision
	.word	gCDel
	.word	cWidth
	.word	cCol
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
	ldr	r1, .L31
	ldr	r9, .L31+4
	ldr	r8, .L31+8
	ldr	r0, .L31+12
	sub	sp, sp, #12
	ldrh	r3, [r9]
	ldr	r2, [r8]
	ldr	r7, .L31+16
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r7
	ldr	r6, .L31+20
	ldrh	ip, [r9]
	ldr	r5, .L31+24
	ldr	r10, .L31+28
	ldr	fp, .L31+32
	ldr	r4, .L31+36
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r10]
	ldr	r0, [fp]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldrh	ip, [r9]
	ldr	r9, .L31+40
	ldr	fp, .L31+44
	ldr	r2, .L31+48
	ldr	r0, .L31+52
	ldr	r1, [r9]
	ldr	r10, .L31+56
	ldr	r9, .L31+60
	ldr	r3, [fp]
	ldr	r2, [r2]
	ldr	r0, [r0]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldr	r2, [r8]
	ldr	r1, [r9]
	ldr	r0, [r10]
	mov	r3, #992
	mov	lr, pc
	bx	r7
	mov	ip, #31744
	ldr	r7, .L31+64
	ldr	r8, .L31+68
	ldr	r3, [r6]
	ldr	r2, [r5]
	ldr	r1, [r7]
	ldr	r0, [r8]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldr	r5, .L31+72
	ldr	r6, .L31+76
	ldr	ip, .L31+80
	ldr	r2, .L31+48
	ldr	r3, [fp]
	ldr	r1, [r5]
	ldr	r0, [r6]
	ldr	r2, [r2]
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	ldr	fp, .L31+32
	ldr	lr, [r10]
	ldr	r0, [r8]
	ldr	r4, .L31+12
	ldr	ip, [r9]
	ldr	r1, [r7]
	ldr	r2, [r6]
	ldr	r3, [r5]
	str	lr, [r4]
	str	r0, [fp]
	ldr	lr, .L31
	ldr	r10, .L31+28
	ldr	r0, .L31+52
	ldr	r9, .L31+40
	str	ip, [lr]
	str	r1, [r10]
	str	r2, [r0]
	str	r3, [r9]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	gOldCol
	.word	bgColor
	.word	gRadius
	.word	gOldRow
	.word	drawCircle
	.word	bWidth
	.word	bHeight
	.word	bOldCol
	.word	bOldRow
	.word	drawRect
	.word	cOldCol
	.word	cWidth
	.word	cHeight
	.word	cOldRow
	.word	gRow
	.word	gCol
	.word	bCol
	.word	bRow
	.word	cCol
	.word	cRow
	.word	32736
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
	ldr	r3, .L38
	mov	lr, pc
	bx	r3
	ldr	r8, .L38+4
	ldr	r4, .L38+8
	ldr	r10, .L38+12
	ldr	r7, .L38+16
	ldr	r6, .L38+20
	ldr	r5, .L38+24
	ldr	r9, .L38+28
.L35:
	ldr	r2, [r8]
	ldrh	r3, [r4]
.L34:
	strh	r3, [r10]	@ movhi
	ldrh	r3, [r9, #48]
	cmp	r2, #0
	strh	r3, [r4]	@ movhi
	bne	.L34
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	b	.L35
.L39:
	.align	2
.L38:
	.word	initialize
	.word	lose
	.word	buttons
	.word	oldButtons
	.word	update
	.word	waitForVBlank
	.word	draw
	.word	67109120
	.size	main, .-main
	.comm	cWidth,4,4
	.comm	cHeight,4,4
	.comm	cCDel,4,4
	.comm	cRDel,4,4
	.comm	cOldCol,4,4
	.comm	cOldRow,4,4
	.comm	cCol,4,4
	.comm	cRow,4,4
	.comm	bWidth,4,4
	.comm	bHeight,4,4
	.comm	bCDel,4,4
	.comm	bRDel,4,4
	.comm	bOldCol,4,4
	.comm	bOldRow,4,4
	.comm	bCol,4,4
	.comm	bRow,4,4
	.comm	gRadius,4,4
	.comm	gHeight,4,4
	.comm	gCDel,4,4
	.comm	gRDel,4,4
	.comm	gOldCol,4,4
	.comm	gOldRow,4,4
	.comm	gCol,4,4
	.comm	gRow,4,4
	.comm	lose,4,4
	.comm	bgColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 47) 7.1.0"
