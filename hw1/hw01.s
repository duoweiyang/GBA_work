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
	.file	"hw01.c"
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
	ldr	r3, .L3
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	frame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame1, %function
frame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #0
	mvn	lr, #29
	ldr	r3, .L17
	ldr	r5, [r3]
	add	r4, r5, #16896
	add	r4, r4, #74
.L6:
	mov	r2, r4
	mvn	r3, #29
	mul	r0, lr, lr
.L8:
	mla	r1, r3, r3, r0
	add	r3, r3, #1
	cmp	r1, #900
	strhle	ip, [r2]	@ movhi
	cmp	r3, #31
	add	r2, r2, #480
	bne	.L8
	add	lr, lr, #1
	cmp	lr, #31
	add	r4, r4, #2
	bne	.L6
	mvn	ip, #7
	add	r4, r5, #27392
	add	r4, r4, #182
.L9:
	mov	r2, r4
	mvn	r3, #7
	mul	r0, ip, ip
.L11:
	mla	r1, r3, r3, r0
	add	r3, r3, #1
	cmp	r1, #64
	strhle	lr, [r2]	@ movhi
	cmp	r3, #9
	add	r2, r2, #480
	bne	.L11
	add	ip, ip, #1
	cmp	ip, #9
	add	r4, r4, #2
	bne	.L9
	pop	{r4, r5, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0
	.size	frame1, .-frame1
	.align	2
	.global	frame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame2, %function
frame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	ip, #0
	mvn	lr, #7
	ldr	r3, .L81
	ldr	r4, [r3]
	add	r5, r4, #27392
	add	r5, r5, #182
.L20:
	mov	r2, r5
	mvn	r3, #7
	mul	r0, lr, lr
.L22:
	mla	r1, r3, r3, r0
	add	r3, r3, #1
	cmp	r1, #64
	strhle	ip, [r2]	@ movhi
	cmp	r3, #9
	add	r2, r2, #480
	bne	.L22
	add	lr, lr, #1
	cmp	lr, #9
	add	r5, r5, #2
	bne	.L20
	sub	lr, r4, #6
	mov	r0, lr
	mvn	ip, #2
	mov	r5, #31
.L23:
	mvn	r3, #2
	mul	r1, ip, ip
.L25:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #26624
	addle	r2, r2, #36
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #4
	bne	.L25
	add	ip, ip, #1
	cmp	ip, #4
	add	r0, r0, #2
	bne	.L23
	mov	r0, lr
	mvn	ip, #2
	mov	r5, #31
.L26:
	mvn	r3, #2
	mul	r1, ip, ip
.L28:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #28928
	addle	r2, r2, #70
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #4
	bne	.L28
	add	ip, ip, #1
	cmp	ip, #4
	add	r0, r0, #2
	bne	.L26
	sub	r0, r4, #4
	mov	r5, r0
	mvn	ip, #1
	mov	r6, #31
.L29:
	mvn	r3, #1
	mul	r1, ip, ip
.L31:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #24064
	addle	r2, r2, #176
	add	r3, r3, #1
	strhle	r6, [r5, r2]	@ movhi
	cmp	r3, #3
	bne	.L31
	add	ip, ip, #1
	cmp	ip, #3
	add	r5, r5, #2
	bne	.L29
	mvn	r5, #3
	mov	r6, #31
	add	r7, r4, #26880
	add	r7, r7, #252
.L35:
	mov	r2, r7
	mvn	r3, #3
	mul	ip, r5, r5
.L34:
	mla	r1, r3, r3, ip
	add	r3, r3, #1
	cmp	r1, #16
	strhle	r6, [r2]	@ movhi
	cmp	r3, #5
	add	r2, r2, #480
	bne	.L34
	add	r5, r5, #1
	cmp	r5, #5
	add	r7, r7, #2
	bne	.L35
	mov	ip, lr
	mvn	r5, #2
	mov	r6, #31
.L36:
	mvn	r3, #2
	mul	r1, r5, r5
.L38:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #33536
	addle	r2, r2, #250
	add	r3, r3, #1
	strhle	r6, [ip, r2]	@ movhi
	cmp	r3, #4
	bne	.L38
	add	r5, r5, #1
	cmp	r5, #4
	add	ip, ip, #2
	bne	.L36
	mvn	r5, #3
	mov	r6, #31
	add	r7, r4, #32768
	add	r7, r7, #62
.L42:
	mov	r2, r7
	mvn	r3, #3
	mul	ip, r5, r5
.L41:
	mla	r1, r3, r3, ip
	add	r3, r3, #1
	cmp	r1, #16
	strhle	r6, [r2]	@ movhi
	cmp	r3, #5
	add	r2, r2, #480
	bne	.L41
	add	r5, r5, #1
	cmp	r5, #5
	add	r7, r7, #2
	bne	.L42
	mvn	ip, #1
	mov	r5, #31
.L43:
	mvn	r3, #1
	mul	r1, ip, ip
.L45:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #37120
	addle	r2, r2, #60
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #3
	bne	.L45
	add	ip, ip, #1
	cmp	ip, #3
	add	r0, r0, #2
	bne	.L43
	mvn	r5, #12
	mov	ip, #31
	add	r4, r4, #25088
	add	r4, r4, #76
.L49:
	mov	r2, r4
	mvn	r3, #12
	mul	r0, r5, r5
.L48:
	mla	r1, r3, r3, r0
	add	r3, r3, #1
	cmp	r1, #169
	strhle	ip, [r2]	@ movhi
	cmp	r3, #14
	add	r2, r2, #480
	bne	.L48
	add	r5, r5, #1
	cmp	r5, #14
	add	r4, r4, #2
	bne	.L49
	mov	r0, lr
	mvn	ip, #2
	mov	r4, #31
.L50:
	mvn	r3, #2
	mul	r1, ip, ip
.L52:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #33792
	addle	r2, r2, #78
	add	r3, r3, #1
	strhle	r4, [r0, r2]	@ movhi
	cmp	r3, #4
	bne	.L52
	add	ip, ip, #1
	cmp	ip, #4
	add	r0, r0, #2
	bne	.L50
	mov	r0, lr
	mvn	ip, #2
	mov	r4, #31
.L53:
	mvn	r3, #2
	mul	r1, ip, ip
.L55:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #36096
	addle	r2, r2, #164
	add	r3, r3, #1
	strhle	r4, [r0, r2]	@ movhi
	cmp	r3, #4
	bne	.L55
	add	ip, ip, #1
	cmp	ip, #4
	add	r0, r0, #2
	bne	.L53
	mvn	r0, #2
	mov	ip, #31
.L56:
	mvn	r3, #2
	mul	r1, r0, r0
.L58:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #39424
	addle	r2, r2, #162
	add	r3, r3, #1
	strhle	ip, [lr, r2]	@ movhi
	cmp	r3, #4
	bne	.L58
	add	r0, r0, #1
	cmp	r0, #4
	add	lr, lr, #2
	bne	.L56
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	.LANCHOR0
	.size	frame2, .-frame2
	.align	2
	.global	frame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	frame3, %function
frame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #0
	mvn	lr, #19
	ldr	r3, .L160
	ldr	r4, [r3]
	add	r5, r4, #21760
	add	r5, r5, #30
.L84:
	mov	r2, r5
	mvn	r3, #19
	mul	r0, lr, lr
.L86:
	mla	r1, r3, r3, r0
	add	r3, r3, #1
	cmp	r1, #400
	strhle	ip, [r2]	@ movhi
	cmp	r3, #21
	add	r2, r2, #480
	bne	.L86
	add	lr, lr, #1
	cmp	lr, #21
	add	r5, r5, #2
	bne	.L84
	sub	ip, r4, #4
	mov	r0, ip
	mvn	lr, #1
	mov	r5, #31
.L90:
	mvn	r3, #1
	mul	r1, lr, lr
.L89:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #26624
	addle	r2, r2, #46
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #3
	bne	.L89
	add	lr, lr, #1
	cmp	lr, #3
	add	r0, r0, #2
	bne	.L90
	mov	r0, ip
	mvn	lr, #1
	mov	r5, #31
.L91:
	mvn	r3, #1
	mul	r1, lr, lr
.L93:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #22528
	addle	r2, r2, #232
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #3
	bne	.L93
	add	lr, lr, #1
	cmp	lr, #3
	add	r0, r0, #2
	bne	.L91
	mov	r0, ip
	mvn	lr, #1
	mvn	r5, #64512
.L94:
	mvn	r3, #1
	mul	r1, lr, lr
.L96:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #24064
	addle	r2, r2, #156
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #3
	bne	.L96
	add	lr, lr, #1
	cmp	lr, #3
	add	r0, r0, #2
	bne	.L94
	mov	r0, ip
	mvn	lr, #1
	mov	r5, #31
.L97:
	mvn	r3, #1
	mul	r1, lr, lr
.L99:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #19200
	addle	r2, r2, #246
	add	r3, r3, #1
	strhle	r5, [r0, r2]	@ movhi
	cmp	r3, #3
	bne	.L99
	add	lr, lr, #1
	cmp	lr, #3
	add	r0, r0, #2
	bne	.L97
	sub	r0, r4, #6
	mov	lr, r0
	mvn	r5, #2
	mvn	r6, #64512
.L103:
	mvn	r3, #2
	mul	r1, r5, r5
.L102:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #26624
	addle	r2, r2, #40
	add	r3, r3, #1
	strhle	r6, [lr, r2]	@ movhi
	cmp	r3, #4
	bne	.L102
	add	r5, r5, #1
	cmp	r5, #4
	add	lr, lr, #2
	bne	.L103
	mov	lr, ip
	mvn	r5, #1
	mov	r6, #31
.L104:
	mvn	r3, #1
	mul	r1, r5, r5
.L106:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #34560
	addle	r2, r2, #186
	add	r3, r3, #1
	strhle	r6, [lr, r2]	@ movhi
	cmp	r3, #3
	bne	.L106
	add	r5, r5, #1
	cmp	r5, #3
	add	lr, lr, #2
	bne	.L104
	mov	lr, r0
	mvn	r5, #2
	mvn	r6, #64512
.L107:
	mvn	r3, #2
	mul	r1, r5, r5
.L109:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #33792
	addle	r2, r2, #8
	add	r3, r3, #1
	strhle	r6, [lr, r2]	@ movhi
	cmp	r3, #4
	bne	.L109
	add	r5, r5, #1
	cmp	r5, #4
	add	lr, lr, #2
	bne	.L107
	mov	lr, ip
	mvn	r5, #1
	mov	r6, #31
.L110:
	mvn	r3, #1
	mul	r1, r5, r5
.L112:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #37632
	addle	r2, r2, #32
	add	r3, r3, #1
	strhle	r6, [lr, r2]	@ movhi
	cmp	r3, #3
	bne	.L112
	add	r5, r5, #1
	cmp	r5, #3
	add	lr, lr, #2
	bne	.L110
	mov	lr, ip
	mvn	r5, #1
	mvn	r6, #64512
.L113:
	mvn	r3, #1
	mul	r1, r5, r5
.L115:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #35072
	addle	r2, r2, #194
	add	r3, r3, #1
	strhle	r6, [lr, r2]	@ movhi
	cmp	r3, #3
	bne	.L115
	add	r5, r5, #1
	cmp	r5, #3
	add	lr, lr, #2
	bne	.L113
	mov	lr, ip
	mvn	r5, #1
	mvn	r6, #64512
.L116:
	mvn	r3, #1
	mul	r1, r5, r5
.L118:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #30720
	addle	r2, r2, #246
	add	r3, r3, #1
	strhle	r6, [lr, r2]	@ movhi
	cmp	r3, #3
	bne	.L118
	add	r5, r5, #1
	cmp	r5, #3
	add	lr, lr, #2
	bne	.L116
	mvn	r6, #4
	mvn	r5, #64512
	add	r4, r4, #28928
	add	r4, r4, #92
.L122:
	mov	r2, r4
	mvn	r3, #4
	mul	lr, r6, r6
.L121:
	mla	r1, r3, r3, lr
	add	r3, r3, #1
	cmp	r1, #25
	strhle	r5, [r2]	@ movhi
	cmp	r3, #6
	add	r2, r2, #480
	bne	.L121
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #2
	bne	.L122
	mvn	lr, #2
	mov	r4, #31
.L123:
	mvn	r3, #2
	mul	r1, lr, lr
.L125:
	mla	r2, r3, r3, r1
	cmp	r2, #9
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #35072
	addle	r2, r2, #240
	add	r3, r3, #1
	strhle	r4, [r0, r2]	@ movhi
	cmp	r3, #4
	bne	.L125
	add	lr, lr, #1
	cmp	lr, #4
	add	r0, r0, #2
	bne	.L123
	mov	r0, ip
	mvn	lr, #1
	mvn	r4, #64512
.L126:
	mvn	r3, #1
	mul	r1, lr, lr
.L128:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #36608
	addle	r2, r2, #136
	add	r3, r3, #1
	strhle	r4, [r0, r2]	@ movhi
	cmp	r3, #3
	bne	.L128
	add	lr, lr, #1
	cmp	lr, #3
	add	r0, r0, #2
	bne	.L126
	mvn	r0, #1
	mov	lr, #31
.L129:
	mvn	r3, #1
	mul	r1, r0, r0
.L131:
	mla	r2, r3, r3, r1
	cmp	r2, #4
	rsble	r2, r3, r3, lsl #4
	lslle	r2, r2, #5
	addle	r2, r2, #40960
	addle	r2, r2, #68
	add	r3, r3, #1
	strhle	lr, [ip, r2]	@ movhi
	cmp	r3, #3
	bne	.L131
	add	r0, r0, #1
	cmp	r0, #3
	add	ip, ip, #2
	bne	.L129
	pop	{r4, r5, r6, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	.LANCHOR0
	.size	frame3, .-frame3
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r7, lr}
	ldr	r2, .L174
	ldr	r7, .L174+4
	strh	r2, [r3]	@ movhi
	ldr	r6, .L174+8
	ldr	r5, .L174+12
	ldr	r4, .L174+16
	sub	sp, sp, #16
.L172:
	mov	lr, pc
	bx	r7
	str	r4, [sp, #12]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ble	.L163
	mov	r3, #0
.L164:
	ldr	r2, [sp, #12]
	add	r3, r3, #1
	cmp	r3, r2
	blt	.L164
.L163:
	mov	lr, pc
	bx	r6
	str	r4, [sp, #8]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ble	.L165
	mov	r3, #0
.L166:
	ldr	r2, [sp, #8]
	add	r3, r3, #1
	cmp	r3, r2
	blt	.L166
.L165:
	mov	lr, pc
	bx	r5
	str	r4, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ble	.L172
	mov	r3, #0
.L168:
	ldr	r2, [sp, #4]
	add	r3, r3, #1
	cmp	r3, r2
	blt	.L168
	b	.L172
.L175:
	.align	2
.L174:
	.word	1027
	.word	frame1
	.word	frame2
	.word	frame3
	.word	90000
	.size	main, .-main
	.text
	.align	2
	.global	drawCircle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCircle, %function
drawCircle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	rsb	r7, r2, #0
	cmp	r2, r7
	blt	.L176
	mov	r5, r7
	mul	r4, r2, r2
	ldr	ip, .L183
	sub	r0, r0, r2
	ldr	r6, [ip]
	rsb	r0, r0, r0, lsl #4
	sub	r1, r1, r2
	add	r0, r1, r0, lsl #4
	add	r6, r6, r0, lsl #1
	add	ip, r2, #1
.L178:
	mov	r1, r6
	mov	r2, r7
	mul	lr, r5, r5
.L180:
	mla	r0, r2, r2, lr
	add	r2, r2, #1
	cmp	r0, r4
	strhle	r3, [r1]	@ movhi
	cmp	r2, ip
	add	r1, r1, #480
	bne	.L180
	add	r5, r5, #1
	cmp	r5, ip
	add	r6, r6, #2
	bne	.L178
.L176:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	.LANCHOR0
	.size	drawCircle, .-drawCircle
	.align	2
	.global	delay
	.syntax unified
	.arm
	.fpu softvfp
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ble	.L185
	mov	r3, #0
.L187:
	ldr	r2, [sp, #4]
	add	r3, r3, #1
	cmp	r2, r3
	bgt	.L187
.L185:
	add	sp, sp, #8
	@ sp needed
	bx	lr
	.size	delay, .-delay
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 47) 7.1.0"
