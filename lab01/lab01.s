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
	.file	"lab01.c"
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
	mov	ip, #0
	ldr	r1, .L19
	ldr	r3, .L19+4
	str	lr, [sp, #-4]!
	strh	r1, [r2]	@ movhi
	ldr	r2, [r3]
	add	ip, ip, #1
	add	r1, r2, #1936
	cmp	ip, #50
	add	lr, r1, #2
	ldr	r0, .L19+8
	add	r1, r1, #4
	beq	.L17
.L9:
	mov	r3, lr
.L3:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r1
	bne	.L3
	add	ip, ip, #1
	add	r1, r1, #480
	cmp	ip, #50
	add	r1, r1, #2
	add	lr, lr, #480
	bne	.L9
.L17:
	mov	ip, #0
	add	ip, ip, #1
	add	r1, r2, #24576
	cmp	ip, #50
	add	lr, r1, #22
	ldr	r0, .L19+8
	add	r1, r1, #24
	beq	.L18
.L10:
	mov	r3, lr
.L5:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r1
	bne	.L5
	add	ip, ip, #1
	add	r1, r1, #480
	cmp	ip, #50
	add	r1, r1, #2
	add	lr, lr, #480
	bne	.L10
.L18:
	mov	r0, #0
	add	r0, r0, #1
	add	r2, r2, #39168
	cmp	r0, #50
	add	ip, r2, #10
	ldr	r1, .L19+8
	add	r2, r2, #12
	beq	.L8
.L11:
	mov	r3, ip
.L7:
	strh	r1, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L7
	add	r0, r0, #1
	add	r2, r2, #480
	cmp	r0, #50
	add	r2, r2, #2
	add	ip, ip, #480
	bne	.L11
.L8:
	b	.L8
.L20:
	.align	2
.L19:
	.word	1027
	.word	.LANCHOR0
	.word	32736
	.size	main, .-main
	.text
	.align	2
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #1
	ldr	r3, .L30
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	ip, [r3]
	lsl	r3, r0, #1
	mov	r0, #0
	add	r2, ip, #2
	ldr	r1, .L30+4
	add	ip, ip, r3
	add	r2, r2, r3
.L25:
	add	r0, r0, #1
	cmp	r0, #50
	bxeq	lr
	mov	r3, ip
.L26:
	strh	r1, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L26
	add	r2, r2, #480
	add	r2, r2, #2
	add	ip, ip, #480
	b	.L25
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.word	32736
	.size	drawTriangle, .-drawTriangle
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 47) 7.1.0"
