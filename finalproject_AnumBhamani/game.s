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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLive.part.0, %function
initLive.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r0, #16
	mov	r4, #15
	mov	lr, #135
	mov	r1, #2
	mov	ip, #7
	ldr	r3, .L4
	stm	r3, {r4, lr}
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	lives
	.size	initLive.part.0, .-initLive.part.0
	.align	2
	.global	initCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCar, %function
initCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #16
	mov	lr, #30
	mov	r1, #2
	mov	ip, #130
	mov	r0, #120
	ldr	r3, .L8
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #12]
	str	r1, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	car
	.size	initCar, .-initCar
	.align	2
	.global	initenemiesCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initenemiesCar, %function
initenemiesCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, #0
	ldr	r4, .L18
	ldr	r7, .L18+4
	ldr	r6, .L18+8
	ldr	r9, .L18+12
	ldr	r8, .L18+16
	add	r5, r4, #208
.L14:
	mov	lr, pc
	bx	r7
	mov	r2, #16
	mov	r3, #2
	mov	lr, #30
	mov	ip, #5
	mov	r1, #125
	str	r2, [r4, #16]
	ldr	r2, [r6]
	cmp	r2, #1
	str	r10, [r4, #24]
	str	r10, [r4, #36]
	str	lr, [r4, #20]
	str	r3, [r4, #12]
	str	r3, [r4, #40]
	str	ip, [r4]
	str	r1, [r4, #4]
	beq	.L17
	cmp	r2, #0
	bne	.L13
	smull	r2, r3, r9, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	add	r0, r0, #1
	str	r0, [r4, #28]
.L13:
	str	r10, [r4, #48]
	add	r4, r4, #52
	cmp	r4, r5
	bne	.L14
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L17:
	ldr	r3, [r8]
	cmp	r3, #4
	movle	r3, #4
	movgt	r3, #7
	str	r3, [r4, #28]
	b	.L13
.L19:
	.align	2
.L18:
	.word	enemiesCar
	.word	rand
	.word	cheatON
	.word	1431655766
	.word	scores
	.size	initenemiesCar, .-initenemiesCar
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
	mov	r4, #0
	mov	r6, #5
	mov	r0, #30
	mov	r1, #130
	mov	r2, #120
	mov	r5, #16
	mov	r7, #2
	ldr	ip, .L26
	ldr	r3, .L26+4
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L26+8
	ldr	r3, .L26+12
	str	r6, [ip]
	str	r4, [r3]
	ldr	ip, .L26+16
	ldr	r3, .L26+20
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L26+24
	ldr	r3, .L26+28
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L26+32
	ldr	r3, .L26+36
	str	r4, [ip]
	str	r4, [r3]
	ldr	ip, .L26+40
	ldr	r3, .L26+44
	str	r4, [ip]
	stm	r3, {r1, r2}
	str	r0, [r3, #20]
	str	r5, [r3, #16]
	str	r4, [r3, #44]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r7, [r3, #12]
	str	r7, [r3, #40]
	bl	initenemiesCar
	mov	r2, r5
	mov	r1, r7
	mov	r0, r6
	mov	r5, #135
	mov	lr, #4
	ldr	r3, .L26+48
	add	ip, r3, #144
.L21:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #12]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r1, [r3, #40]
	str	lr, [r3, #28]
	str	r4, [r3, #44]
	stm	r3, {r0, r5}
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L21
	mov	r2, #0
	mov	r0, #32
	mov	r10, #205
	mov	lr, #3
	mov	ip, #8
	mov	r4, r2
	mov	r5, #16
	mov	r9, #12
	mov	r6, #2
	mov	r8, #5
	mov	r7, #1
	ldr	r3, .L26+52
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3]
	str	r1, [r3, #40]
	str	r10, [r3, #4]
	str	lr, [r3, #36]
	str	ip, [r3, #28]
	ldr	r3, .L26+56
.L22:
	str	r2, [r3]
	add	r2, r2, #11
	cmp	r2, #55
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r9, [r3, #4]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r6, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #48]
	add	r3, r3, #52
	bne	.L22
	mov	fp, #64
	mov	r2, #57
	mov	r10, #6
	ldr	r3, .L26+60
	str	fp, [r3, #16]
	str	r5, [r3, #20]
	str	r6, [r3, #12]
	str	r4, [r3]
	str	r4, [r3, #44]
	str	r4, [r3, #24]
	str	r6, [r3, #40]
	str	r5, [r3, #28]
	str	r2, [r3, #4]
	str	r10, [r3, #36]
	bl	initLive.part.0
	mov	lr, #121
	mov	ip, #11
	ldr	r3, .L26+64
	str	fp, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3]
	str	r4, [r3, #24]
	str	r10, [r3, #36]
	str	r6, [r3, #40]
	str	r5, [r3, #28]
	str	lr, [r3, #4]
	str	r6, [r3, #12]
	str	r4, [r3, #44]
	ldr	r3, .L26+68
	mov	r0, #140
	str	ip, [r3, #52]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	stm	r3, {r4, r9}
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r6, [r3, #40]
	str	r8, [r3, #28]
	str	r7, [r3, #48]
	str	r5, [r3, #68]
	str	r5, [r3, #72]
	str	r9, [r3, #56]
	str	r4, [r3, #76]
	str	r4, [r3, #88]
	str	r6, [r3, #92]
	str	r8, [r3, #80]
	str	r7, [r3, #100]
	mov	r1, #210
	mov	r3, #14
	mov	r2, #3
	ldr	ip, .L26+72
	str	r5, [ip, #16]
	str	r5, [ip, #20]
	str	r0, [ip]
	str	r1, [ip, #4]
	str	r4, [ip, #24]
	str	r6, [ip, #40]
	str	r4, [ip, #48]
	str	r3, [ip, #28]
	str	r2, [ip, #36]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	enemiesTimer
	.word	coinsTimer
	.word	fuel
	.word	scores
	.word	scores1
	.word	livesTimer
	.word	liveCollide
	.word	mosaicCounter
	.word	lineTimer
	.word	lineTimer1
	.word	cheatON
	.word	car
	.word	coins
	.word	fuelBar
	.word	health
	.word	finishline
	.word	finishline1
	.word	health1
	.word	cheat
	.size	initGame, .-initGame
	.align	2
	.global	initCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCoins, %function
initCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r1, #2
	mov	r5, #5
	mov	r4, #135
	mov	r2, #0
	mov	lr, #4
	ldr	r3, .L32
	add	ip, r3, #144
.L29:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r1, [r3, #40]
	str	lr, [r3, #28]
	str	r2, [r3, #44]
	add	r3, r3, #48
	cmp	r3, ip
	bne	.L29
	pop	{r4, r5, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	coins
	.size	initCoins, .-initCoins
	.align	2
	.global	initFuelBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFuelBar, %function
initFuelBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #2
	mov	r1, #32
	mov	lr, #205
	mov	ip, #3
	mov	r0, #8
	ldr	r3, .L36
	str	lr, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #36]
	str	r0, [r3, #28]
	str	r2, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #40]
	ldr	lr, [sp], #4
	bx	lr
.L37:
	.align	2
.L36:
	.word	fuelBar
	.size	initFuelBar, .-initFuelBar
	.align	2
	.global	initHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth, %function
initHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r1, r2
	mov	r5, #12
	mov	r4, #2
	mov	lr, #5
	mov	ip, #1
	ldr	r3, .L42
.L39:
	str	r2, [r3]
	add	r2, r2, #11
	cmp	r2, #55
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r4, [r3, #40]
	str	lr, [r3, #28]
	str	ip, [r3, #48]
	add	r3, r3, #52
	bne	.L39
	pop	{r4, r5, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	health
	.size	initHealth, .-initHealth
	.align	2
	.global	initHealth1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth1, %function
initHealth1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r1, #16
	mov	r4, #12
	mov	lr, #2
	mov	r5, #11
	mov	ip, #5
	mov	r0, #1
	ldr	r3, .L46
	str	r5, [r3, #52]
	str	r4, [r3, #4]
	str	r4, [r3, #56]
	str	lr, [r3, #40]
	str	lr, [r3, #92]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #68]
	str	r1, [r3, #72]
	str	r2, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #76]
	str	r2, [r3, #88]
	str	ip, [r3, #28]
	str	ip, [r3, #80]
	str	r0, [r3, #48]
	str	r0, [r3, #100]
	pop	{r4, r5, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	health1
	.size	initHealth1, .-initHealth1
	.align	2
	.global	initFinishline
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinishline, %function
initFinishline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #64
	mov	lr, #57
	mov	r0, #16
	mov	r1, #2
	mov	ip, #6
	ldr	r3, .L50
	str	r4, [r3, #16]
	str	lr, [r3, #4]
	str	ip, [r3, #36]
	str	r0, [r3, #20]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #40]
	str	r2, [r3]
	str	r2, [r3, #44]
	str	r2, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	finishline
	.size	initFinishline, .-initFinishline
	.align	2
	.global	initFinishline1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFinishline1, %function
initFinishline1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #64
	mov	lr, #121
	mov	r0, #16
	mov	r1, #2
	mov	ip, #6
	ldr	r3, .L54
	str	r4, [r3, #16]
	str	lr, [r3, #4]
	str	ip, [r3, #36]
	str	r0, [r3, #20]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #40]
	str	r2, [r3]
	str	r2, [r3, #44]
	str	r2, [r3, #24]
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	finishline1
	.size	initFinishline1, .-initFinishline1
	.align	2
	.global	initLive
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLive, %function
initLive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initLive.part.0
	.size	initLive, .-initLive
	.align	2
	.global	initCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCheat, %function
initCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #16
	mov	r5, #140
	mov	r4, #210
	mov	lr, #3
	mov	r2, #0
	mov	ip, #2
	mov	r0, #14
	ldr	r3, .L59
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #36]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #40]
	str	r0, [r3, #28]
	str	r2, [r3, #24]
	str	r2, [r3, #48]
	pop	{r4, r5, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	cheat
	.size	initCheat, .-initCheat
	.align	2
	.global	drawCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCar, %function
drawCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L67
	ldr	r1, [r3, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	str	lr, [sp, #-4]!
	ldr	r0, [r3, #36]
	ldr	lr, [r3, #48]
	ldr	r2, [r3, #28]
	ldr	ip, [r3, #24]
	cmp	lr, #0
	add	r2, r2, r0, lsl #3
	ldrh	lr, [r3]
	ldr	r0, .L67+4
	add	ip, ip, #1
	str	ip, [r3, #24]
	lsl	r2, r2, #2
	strh	lr, [r0]	@ movhi
	orrne	lr, lr, #4096
	strhne	lr, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	car
	.word	shadowOAM
	.size	drawCar, .-drawCar
	.align	2
	.global	drawenemiesCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawenemiesCar, %function
drawenemiesCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L77
	push	{r4, lr}
	ldr	r2, .L77+4
	ldr	r4, .L77+8
	add	ip, r3, #208
.L71:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	beq	.L70
	ldr	lr, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r0, [r3, #4]
	add	r1, r1, lr, lsl #3
	ldr	lr, [r3]
	lsl	r1, r1, #2
	orr	r0, r0, r4
	strh	r1, [r2, #12]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	lr, [r2, #8]	@ movhi
.L70:
	add	r3, r3, #52
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L71
	pop	{r4, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	enemiesCar
	.word	shadowOAM
	.word	-32768
	.size	drawenemiesCar, .-drawenemiesCar
	.align	2
	.global	drawCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCoins, %function
drawCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L87
	push	{r4, lr}
	ldr	r2, .L87+4
	ldr	r4, .L87+8
	add	ip, r3, #144
.L81:
	ldr	r1, [r3, #44]
	cmp	r1, #0
	beq	.L80
	ldr	lr, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r0, [r3, #4]
	add	r1, r1, lr, lsl #5
	ldr	lr, [r3]
	lsl	r1, r1, #2
	orr	r0, r0, r4
	strh	r1, [r2, #44]	@ movhi
	strh	r0, [r2, #42]	@ movhi
	strh	lr, [r2, #40]	@ movhi
.L80:
	add	r3, r3, #48
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L81
	pop	{r4, lr}
	bx	lr
.L88:
	.align	2
.L87:
	.word	coins
	.word	shadowOAM
	.word	-32768
	.size	drawCoins, .-drawCoins
	.align	2
	.global	drawFuelBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFuelBar, %function
drawFuelBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L91
	ldr	r1, [r3, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	ip, [r3, #24]
	str	lr, [sp, #-4]!
	add	r2, r2, r0, lsl #3
	ldr	lr, [r3]
	ldr	r0, .L91+4
	add	ip, ip, #1
	lsl	r2, r2, #2
	str	ip, [r3, #24]
	strh	lr, [r0, #64]	@ movhi
	strh	r1, [r0, #66]	@ movhi
	strh	r2, [r0, #68]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L92:
	.align	2
.L91:
	.word	fuelBar
	.word	shadowOAM
	.size	drawFuelBar, .-drawFuelBar
	.align	2
	.global	drawHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth, %function
drawHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L101
	ldr	r2, [r1, #24]
	ldr	r3, .L101+4
	add	r2, r2, #1
	push	{r4, lr}
	str	r2, [r1, #24]
	ldr	r4, .L101+8
	ldr	r2, .L101+12
	add	ip, r3, #260
.L95:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	beq	.L94
	ldr	lr, [r3, #36]
	ldr	r1, [r3, #28]
	ldr	r0, [r3, #4]
	add	r1, r1, lr, lsl #3
	ldr	lr, [r3]
	lsl	r1, r1, #2
	orr	r0, r0, r4
	strh	r1, [r2, #76]	@ movhi
	strh	r0, [r2, #74]	@ movhi
	strh	lr, [r2, #72]	@ movhi
.L94:
	add	r3, r3, #52
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L95
	pop	{r4, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	fuelBar
	.word	health
	.word	-32768
	.word	shadowOAM
	.size	drawHealth, .-drawHealth
	.align	2
	.global	drawFinishline
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinishline, %function
drawFinishline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L105
	ldr	r1, [r3, #4]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	r0, [r3, #36]
	ldr	r2, [r3, #28]
	str	lr, [sp, #-4]!
	ldr	ip, [r3]
	ldr	lr, [r3, #24]
	add	r2, r2, r0, lsl #3
	ldr	r0, .L105+4
	add	lr, lr, #1
	orr	ip, ip, #16384
	lsl	r2, r2, #2
	str	lr, [r3, #24]
	strh	r1, [r0, #122]	@ movhi
	strh	ip, [r0, #120]	@ movhi
	strh	r2, [r0, #124]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L106:
	.align	2
.L105:
	.word	finishline
	.word	shadowOAM
	.size	drawFinishline, .-drawFinishline
	.align	2
	.global	drawFinishline1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFinishline1, %function
drawFinishline1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L109
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	push	{r4, lr}
	ldr	lr, .L109+4
	ldr	r4, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	ip, [r1]
	ldr	r1, [lr, #24]
	ldr	r0, .L109+8
	add	r3, r3, r4, lsl #3
	orr	ip, ip, #16384
	lsl	r3, r3, #2
	add	r1, r1, #1
	strh	r2, [r0, #146]	@ movhi
	strh	ip, [r0, #144]	@ movhi
	strh	r3, [r0, #148]	@ movhi
	str	r1, [lr, #24]
	pop	{r4, lr}
	bx	lr
.L110:
	.align	2
.L109:
	.word	finishline1
	.word	finishline
	.word	shadowOAM
	.size	drawFinishline1, .-drawFinishline1
	.align	2
	.global	drawLive
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLive, %function
drawLive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L120
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bxeq	lr
	ldr	r1, [r3, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	str	lr, [sp, #-4]!
	ldr	r2, [r3, #28]
	ldr	lr, [r3, #36]
	ldr	ip, [r3]
	ldr	r0, .L120+4
	add	r3, r2, lr, lsl #5
	lsl	r3, r3, #2
	strh	r1, [r0, #130]	@ movhi
	strh	ip, [r0, #128]	@ movhi
	strh	r3, [r0, #132]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L121:
	.align	2
.L120:
	.word	lives
	.word	shadowOAM
	.size	drawLive, .-drawLive
	.align	2
	.global	drawHealth1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth1, %function
drawHealth1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L135
	ldr	r3, .L135+4
	ldr	r2, [r1, #24]
	ldr	r0, [r3, #48]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r1, #24]
	beq	.L123
	ldr	r1, [r3, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L135+8
	add	r2, r2, ip, lsl #3
	ldr	ip, [r3]
	lsl	r2, r2, #2
	strh	r1, [r0, #154]	@ movhi
	strh	ip, [r0, #152]	@ movhi
	strh	r2, [r0, #156]	@ movhi
.L123:
	ldr	r2, [r3, #100]
	cmp	r2, #0
	bxeq	lr
	ldr	r1, [r3, #56]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	str	lr, [sp, #-4]!
	ldr	r2, [r3, #80]
	ldr	lr, [r3, #88]
	ldr	ip, [r3, #52]
	ldr	r0, .L135+8
	add	r3, r2, lr, lsl #3
	lsl	r3, r3, #2
	strh	r1, [r0, #162]	@ movhi
	strh	ip, [r0, #160]	@ movhi
	strh	r3, [r0, #164]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L136:
	.align	2
.L135:
	.word	fuelBar
	.word	health1
	.word	shadowOAM
	.size	drawHealth1, .-drawHealth1
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
	push	{r4, r5, r6, r7, r8, lr}
	bl	drawCar
	bl	drawenemiesCar
	bl	drawCoins
	ldr	r3, .L139
	add	r0, r3, #24
	ldr	ip, [r3, #36]
	ldm	r0, {r0, r2}
	ldr	r1, [r3, #4]
	ldr	r6, .L139+4
	ldr	r4, .L139+8
	ldr	r5, .L139+12
	add	r2, r2, ip, lsl #3
	ldr	ip, [r3]
	orr	r1, r1, r6
	add	r0, r0, #1
	lsl	r2, r2, #2
	str	r0, [r3, #24]
	strh	ip, [r4, #64]	@ movhi
	strh	r2, [r4, #68]	@ movhi
	strh	r1, [r4, #66]	@ movhi
	bl	drawHealth
	ldr	r2, [r5, #36]
	ldr	r3, [r5, #28]
	ldr	r1, [r5, #24]
	ldr	r0, [r5]
	ldr	r7, .L139+16
	add	r3, r3, r2, lsl #3
	ldr	r2, [r5, #4]
	orr	r0, r0, #16384
	orr	r2, r2, r7
	add	r1, r1, #1
	lsl	r3, r3, #2
	strh	r0, [r4, #120]	@ movhi
	str	r1, [r5, #24]
	strh	r2, [r4, #122]	@ movhi
	strh	r3, [r4, #124]	@ movhi
	bl	drawLive
	ldr	r2, .L139+20
	ldr	r1, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, [r2, #4]
	add	r3, r3, r1, lsl #3
	ldr	r2, [r2]
	ldr	r1, [r5, #24]
	orr	r0, r0, r7
	orr	r2, r2, #16384
	add	r1, r1, #1
	lsl	r3, r3, #2
	strh	r0, [r4, #146]	@ movhi
	str	r1, [r5, #24]
	strh	r2, [r4, #144]	@ movhi
	strh	r3, [r4, #148]	@ movhi
	bl	drawHealth1
	ldr	r2, .L139+24
	ldr	r0, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r1, [r2, #4]
	add	r3, r3, r0, lsl #3
	ldr	r2, [r2]
	orr	r6, r1, r6
	lsl	r3, r3, #2
	strh	r6, [r4, #178]	@ movhi
	strh	r2, [r4, #176]	@ movhi
	strh	r3, [r4, #180]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	fuelBar
	.word	-32768
	.word	shadowOAM
	.word	finishline
	.word	-16384
	.word	finishline1
	.word	cheat
	.size	drawGame, .-drawGame
	.align	2
	.global	drawCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCheat, %function
drawCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L142
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, .L142+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #3
	lsl	r3, r3, #2
	strh	r2, [r0, #178]	@ movhi
	strh	r1, [r0, #176]	@ movhi
	strh	r3, [r0, #180]	@ movhi
	bx	lr
.L143:
	.align	2
.L142:
	.word	cheat
	.word	shadowOAM
	.size	drawCheat, .-drawCheat
	.align	2
	.global	updateCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCheat, %function
updateCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L146
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #512
	ldreq	r3, .L146+4
	strheq	r2, [r3, #176]	@ movhi
	bx	lr
.L147:
	.align	2
.L146:
	.word	cheatON
	.word	shadowOAM
	.size	updateCheat, .-updateCheat
	.align	2
	.global	updateCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCar, %function
updateCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L167
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r3, .L167+4
	bne	.L149
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #16]
	add	r2, r1, r2
	cmp	r2, #195
	bgt	.L149
	ldr	r2, [r3, #12]
	add	r1, r2, r1
	str	r1, [r3, #4]
.L150:
	ldr	r2, .L167+8
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L151
.L166:
	ldr	r1, .L167+12
	ldrh	r1, [r1]
	tst	r1, #16
	bne	.L151
	ldr	r0, [r3, #4]
	ldr	r1, [r3, #16]
	add	r1, r0, r1
	cmp	r1, #195
	bgt	.L151
	ldr	r2, [r3, #12]
	add	r0, r2, r0
	str	r0, [r3, #4]
.L152:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	ldr	r2, .L167+16
	beq	.L153
.L165:
	ldr	r1, [r2]
	cmp	r1, #4
	bgt	.L153
	mov	r0, #67108864
	lsl	r3, r1, #12
	orr	r3, r3, r1, lsl #8
	add	r1, r1, #1
	strh	r3, [r0, #76]	@ movhi
	str	r1, [r2]
	bx	lr
.L149:
	ldr	r2, .L167
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L150
	ldr	r2, [r3, #4]
	cmp	r2, #33
	ldrgt	r1, [r3, #12]
	subgt	r2, r2, r1
	strgt	r2, [r3, #4]
	ldr	r2, .L167+8
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L166
.L151:
	tst	r2, #32
	beq	.L152
	ldr	r2, .L167+12
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L152
	ldr	r2, [r3, #4]
	cmp	r2, #33
	ldrgt	r1, [r3, #12]
	subgt	r2, r2, r1
	strgt	r2, [r3, #4]
	ldr	r2, [r3, #48]
	cmp	r2, #0
	ldr	r2, .L167+16
	bne	.L165
.L153:
	mov	r1, #0
	str	r1, [r3, #48]
	str	r1, [r2]
	bx	lr
.L168:
	.align	2
.L167:
	.word	67109120
	.word	car
	.word	oldButtons
	.word	buttons
	.word	mosaicCounter
	.size	updateCar, .-updateCar
	.align	2
	.global	updateenemiesCar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateenemiesCar, %function
updateenemiesCar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L250
	mov	r4, r10
	ldr	r5, .L250+4
	ldr	r7, .L250+8
	ldr	r8, .L250+12
	ldr	r9, .L250+16
	ldr	fp, .L250+20
	sub	sp, sp, #28
	add	r6, r10, #208
.L174:
	ldr	r0, [r4]
	cmp	r0, #159
	ldr	r3, [r4, #48]
	ble	.L170
	cmp	r3, #0
	movne	r2, #0
	movne	r3, #512
	strne	r2, [r4, #48]
	strhne	r3, [r5, #8]	@ movhi
.L173:
	add	r4, r4, #52
	cmp	r4, r6
	add	r5, r5, #8
	bne	.L174
	ldr	r3, .L250
.L176:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	ldrne	r2, [r3]
	addne	r2, r2, #1
	strne	r2, [r3]
	add	r3, r3, #52
	cmp	r3, r6
	bne	.L176
	ldr	r7, .L250+24
	ldr	r8, .L250+28
	ldr	r3, [r7]
	smull	r1, r2, r8, r3
	asr	r4, r3, #31
	rsb	r4, r4, r2, asr #3
	add	r4, r4, r4, lsl #2
	subs	r4, r3, r4, lsl #2
	bne	.L192
	ldr	r5, .L250
	ldr	r9, .L250+12
.L177:
	ldr	r6, [r5, #48]
	cmp	r6, #0
	beq	.L243
.L179:
	add	r4, r4, #1
	cmp	r4, #4
	add	r5, r5, #52
	bne	.L177
.L192:
	ldr	r3, [r7]
	add	r3, r3, #1
	str	r3, [r7]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L170:
	cmp	r3, #0
	beq	.L173
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	ldr	ip, [r7, #16]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L173
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L173
	ldr	ip, [r4, #28]
	ldr	r3, [r7, #4]
	cmp	ip, #4
	str	r3, [sp, #20]
	ldm	r4, {r0, r1}
	ldr	lr, [r7]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	beq	.L244
	cmp	ip, #7
	beq	.L245
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	lr, [sp]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L173
	ldrh	ip, [r5, #8]
	orr	ip, ip, #512
	mov	r3, #0
	ldr	r2, .L250+32
	ldr	r1, .L250+36
	strh	ip, [r5, #8]	@ movhi
	ldr	r0, .L250+40
	ldr	ip, .L250+44
	mov	lr, pc
	bx	ip
	mov	r1, #1
	mov	r2, #0
	ldr	r3, [r9]
	sub	r3, r3, #1
	str	r3, [r9]
	str	r1, [r7, #48]
	str	r2, [r4, #48]
	b	.L173
.L243:
	ldr	r3, .L250+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L250+48
	mov	fp, r0
	mov	lr, pc
	bx	r3
	mov	r1, #5
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #5
	add	r2, r3, #1
	cmp	r2, #34
	addle	r2, r3, #46
	ldr	r3, .L250+52
	ldr	r3, [r3]
	cmp	r3, #1
	stm	r5, {r1, r2}
	beq	.L246
	cmp	r3, #0
	beq	.L247
.L183:
	mov	r3, #1
	mov	fp, r10
	str	r3, [r5, #48]
.L186:
	cmp	r4, r6
	add	r6, r6, #1
	beq	.L184
	ldr	r3, [fp, #48]
	cmp	r3, #0
	bne	.L248
.L184:
	cmp	r6, #4
	add	fp, fp, #52
	bne	.L186
.L185:
	ldr	r6, .L250+56
	add	fp, r6, #144
.L189:
	ldr	r3, [r6, #44]
	cmp	r3, #0
	bne	.L249
.L187:
	add	r6, r6, #48
	cmp	fp, r6
	bne	.L189
.L188:
	ldr	r0, .L250+20
	ldr	r3, [r0, #44]
	cmp	r3, #0
	beq	.L179
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #16]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r0, #16]
	ldr	r2, [r0, #20]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r5, #48]
	b	.L179
.L248:
	add	r0, fp, #16
	ldm	r0, {r0, r1}
	ldr	r2, [fp, #4]
	ldr	r3, [fp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L184
	mov	r3, #0
	str	r3, [r5, #48]
	b	.L185
.L249:
	add	r0, r6, #16
	ldm	r0, {r0, r1}
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #20]
	ldm	r5, {r0, r1}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L187
	mov	r3, #0
	str	r3, [r5, #48]
	b	.L188
.L247:
	ldr	r3, .L250+60
	smull	r2, r3, fp, r3
	sub	r3, r3, fp, asr #31
	add	r3, r3, r3, lsl #1
	sub	fp, fp, r3
	add	fp, fp, #1
	str	fp, [r5, #28]
	b	.L183
.L245:
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	lr, [sp]
	ldr	r3, [fp, #16]
	ldr	r2, [fp, #20]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L173
	mov	ip, #0
	ldrh	r0, [r5, #8]
	orr	r0, r0, #512
	mov	r3, ip
	ldr	r2, .L250+64
	strh	r0, [r5, #8]	@ movhi
	str	ip, [r4, #48]
	ldr	r1, .L250+68
	ldr	r0, .L250+72
	ldr	ip, .L250+44
	mov	lr, pc
	bx	ip
	ldr	r2, .L250+76
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r9]
	add	r3, r3, #1
	str	r3, [r9]
	ldr	r2, .L250+80
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r9]
	cmp	r3, #5
	movgt	r3, #5
	strgt	r3, [r9]
	b	.L173
.L246:
	ldr	r3, .L250+84
	ldr	r3, [r3]
	cmp	r3, #4
	movle	r3, #4
	movgt	r3, #7
	str	r3, [r5, #28]
	b	.L183
.L244:
	str	r3, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	ip, .L250+56
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	lr, [sp]
	add	r2, ip, #16
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L173
	mov	ip, #0
	ldrh	r0, [r5, #8]
	orr	r0, r0, #512
	mov	r3, ip
	ldr	r2, .L250+64
	strh	r0, [r5, #8]	@ movhi
	str	ip, [r4, #48]
	ldr	r1, .L250+68
	ldr	r0, .L250+72
	ldr	ip, .L250+44
	mov	lr, pc
	bx	ip
	ldr	r2, .L250+84
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	.L173
.L251:
	.align	2
.L250:
	.word	enemiesCar
	.word	shadowOAM
	.word	car
	.word	collision
	.word	fuel
	.word	lives
	.word	enemiesTimer
	.word	1717986919
	.word	22050
	.word	57000
	.word	crashSound
	.word	playSoundB
	.word	rand
	.word	cheatON
	.word	coins
	.word	1431655766
	.word	11025
	.word	4884
	.word	collectingCoins
	.word	liveCollide
	.word	scores1
	.word	scores
	.size	updateenemiesCar, .-updateenemiesCar
	.align	2
	.global	updateCoins
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCoins, %function
updateCoins:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L316
	mov	r4, r5
	ldr	r7, .L316+4
	ldr	r9, .L316+8
	ldr	r8, .L316+12
	ldr	r10, .L316+16
	ldr	fp, .L316+20
	sub	sp, sp, #20
	add	r6, r5, #144
.L257:
	ldr	r3, [r9]
	cmp	r3, #4
	bgt	.L310
	ldr	r0, [r4]
	cmp	r0, #159
	ldr	r3, [r4, #44]
	ble	.L312
	cmp	r3, #0
	beq	.L273
.L310:
	mov	r2, #0
	mov	r3, #512
	str	r2, [r4, #44]
	strh	r3, [r7, #40]	@ movhi
.L273:
	add	r4, r4, #48
	cmp	r4, r6
	add	r7, r7, #8
	bne	.L257
	ldr	r3, .L316
.L259:
	ldr	r2, [r3, #44]
	cmp	r2, #0
	ldrne	r2, [r3]
	addne	r2, r2, #1
	strne	r2, [r3]
	add	r3, r3, #48
	cmp	r3, r6
	bne	.L259
	ldr	r9, .L316+24
	ldr	r4, .L316+28
	ldr	r3, [r9]
	smull	r1, r2, r4, r3
	asr	r4, r3, #31
	rsb	r4, r4, r2, asr #4
	add	r4, r4, r4, lsl #2
	add	r4, r4, r4, lsl #2
	subs	r4, r3, r4, lsl #1
	bne	.L271
	ldr	r7, .L316
	ldr	r10, .L316+16
.L260:
	ldr	r8, [r7, #44]
	cmp	r8, #0
	beq	.L313
.L263:
	add	r4, r4, #1
	cmp	r4, #3
	add	r7, r7, #48
	bne	.L260
.L271:
	ldr	r0, .L316+32
.L261:
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L272
	ldr	r2, [r9]
	smull	r3, r1, r0, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r1, r3, r3, lsl #2
	add	r3, r3, r1, lsl #1
	cmp	r2, r3
	bne	.L272
	ldr	r3, [r5, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r5, #36]
.L272:
	add	r5, r5, #48
	cmp	r5, r6
	bne	.L261
	ldr	r3, [r9]
	add	r3, r3, #1
	str	r3, [r9]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L312:
	cmp	r3, #0
	beq	.L273
	ldr	r1, [r8, #20]
	ldr	r2, [r8, #4]
	ldr	r3, [r8]
	ldr	ip, [r8, #16]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L273
	mov	r0, #0
	mov	ip, #512
	ldr	r1, [r9]
	add	r1, r1, #1
	mov	r3, r0
	str	r1, [r9]
	str	r0, [r4, #44]
	strh	ip, [r7, #40]	@ movhi
	mov	r2, fp
	ldr	r1, .L316+36
	ldr	r0, .L316+40
	ldr	ip, .L316+44
	mov	lr, pc
	bx	ip
	b	.L273
.L313:
	ldr	r3, .L316+48
	mov	lr, pc
	bx	r3
	ldr	r2, .L316+52
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #4
	add	r3, r3, r3, lsl #3
	add	r3, r3, r3, lsl #3
	sub	r3, r0, r3, lsl #1
	add	r2, r3, #1
	cmp	r2, #34
	addle	r2, r3, #51
	str	r2, [r7, #4]
	mov	r2, #5
	mov	r0, #2
	mov	r1, #4
	mov	r3, #1
	str	r2, [r7]
	mov	r2, #0
	mov	fp, r5
	str	r2, [r7, #36]
	str	r0, [r7, #40]
	str	r1, [r7, #28]
	str	r3, [r7, #44]
.L267:
	cmp	r4, r8
	add	r8, r8, #1
	beq	.L265
	ldr	r3, [fp, #44]
	cmp	r3, #0
	bne	.L314
.L265:
	cmp	r8, #3
	add	fp, fp, #48
	bne	.L267
.L266:
	ldr	r8, .L316+56
	ldr	r3, [r8, #48]
	cmp	r3, #0
	add	fp, r8, #208
	bne	.L315
.L268:
	add	r8, r8, #52
	cmp	r8, fp
	beq	.L263
	ldr	r3, [r8, #48]
	cmp	r3, #0
	beq	.L268
.L315:
	add	r0, r8, #16
	ldm	r0, {r0, r1}
	ldr	r2, [r8, #4]
	ldr	r3, [r8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldm	r7, {r0, r1}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L268
	mov	r3, #0
	str	r3, [r7, #44]
	b	.L263
.L314:
	add	r0, fp, #16
	ldm	r0, {r0, r1}
	ldr	r2, [fp, #4]
	ldr	r3, [fp]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldm	r7, {r0, r1}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L265
	mov	r3, #0
	str	r3, [r7, #44]
	b	.L266
.L317:
	.align	2
.L316:
	.word	coins
	.word	shadowOAM
	.word	scores
	.word	car
	.word	collision
	.word	11025
	.word	coinsTimer
	.word	1374389535
	.word	780903145
	.word	4884
	.word	collectingCoins
	.word	playSoundB
	.word	rand
	.word	424194301
	.word	enemiesCar
	.size	updateCoins, .-updateCoins
	.align	2
	.global	updateFuelBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFuelBar, %function
updateFuelBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L327
	ldr	r2, [r3]
	cmp	r2, #5
	beq	.L324
	ldr	r2, [r3]
	cmp	r2, #4
	beq	.L325
	ldr	r2, [r3]
	cmp	r2, #3
	beq	.L326
	ldr	r3, [r3]
	cmp	r3, #2
	moveq	r2, #11
	movne	r2, #13
	ldr	r3, .L327+4
	str	r2, [r3, #28]
	bx	lr
.L325:
	mov	r2, #9
	ldr	r3, .L327+4
	str	r2, [r3, #28]
	bx	lr
.L324:
	mov	r2, #8
	ldr	r3, .L327+4
	str	r2, [r3, #28]
	bx	lr
.L326:
	mov	r2, #10
	ldr	r3, .L327+4
	str	r2, [r3, #28]
	bx	lr
.L328:
	.align	2
.L327:
	.word	fuel
	.word	fuelBar
	.size	updateFuelBar, .-updateFuelBar
	.align	2
	.global	updateHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth, %function
updateHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	lr, .L341
	mov	r5, #0
	mov	r3, lr
	mov	r4, #512
	ldr	r2, .L341+4
	ldr	r0, .L341+8
	add	ip, lr, #260
.L331:
	ldr	r1, [r0]
	cmp	r1, #4
	strgt	r5, [r3, #48]
	add	r3, r3, #52
	strhgt	r4, [r2, #72]	@ movhi
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L331
	ldr	r3, [r0]
	cmp	r3, #1
	moveq	r3, #6
	streq	r3, [lr, #28]
	beq	.L329
	ldr	r3, [r0]
	cmp	r3, #2
	moveq	r3, #6
	streq	r3, [lr, #28]
	streq	r3, [lr, #80]
	beq	.L329
	ldr	r3, [r0]
	cmp	r3, #3
	beq	.L339
	ldr	r3, [r0]
	cmp	r3, #4
	beq	.L340
	ldr	r3, [r0]
	cmp	r3, #4
	ble	.L329
	mov	r3, #6
	str	r3, [lr, #28]
	str	r3, [lr, #80]
	str	r3, [lr, #132]
	str	r3, [lr, #184]
	str	r3, [lr, #236]
.L329:
	pop	{r4, r5, lr}
	bx	lr
.L340:
	mov	r3, #6
	str	r3, [lr, #28]
	str	r3, [lr, #80]
	str	r3, [lr, #132]
	str	r3, [lr, #184]
	b	.L329
.L339:
	mov	r3, #6
	str	r3, [lr, #28]
	str	r3, [lr, #80]
	str	r3, [lr, #132]
	pop	{r4, r5, lr}
	bx	lr
.L342:
	.align	2
.L341:
	.word	health
	.word	shadowOAM
	.word	scores
	.size	updateHealth, .-updateHealth
	.align	2
	.global	updateHealth1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHealth1, %function
updateHealth1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L351
	ldr	r3, [r2]
	cmp	r3, #4
	movle	r0, #512
	movgt	r1, #1
	movle	ip, #0
	ldr	r2, [r2]
	ldrle	r1, .L351+4
	ldrgt	r3, .L351+8
	ldrle	r3, .L351+8
	strgt	r1, [r3, #48]
	strle	ip, [r3, #48]
	strhle	r0, [r1, #152]	@ movhi
	cmp	r2, #4
	movgt	r2, #1
	movle	r1, #512
	movle	r0, #0
	ldrle	r2, .L351+4
	strgt	r2, [r3, #100]
	strle	r0, [r3, #100]
	strhle	r1, [r2, #160]	@ movhi
	ldr	r2, .L351+12
	ldr	r1, [r2]
	cmp	r1, #1
	beq	.L350
	ldr	r2, [r2]
	cmp	r2, #1
	movgt	r2, #6
	strgt	r2, [r3, #80]
	bx	lr
.L350:
	mov	r2, #6
	str	r2, [r3, #28]
	bx	lr
.L352:
	.align	2
.L351:
	.word	scores
	.word	shadowOAM
	.word	health1
	.word	scores1
	.size	updateHealth1, .-updateHealth1
	.align	2
	.global	updateLive
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLive, %function
updateLive:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L391
	ldr	r3, [r3]
	cmp	r3, #4
	movle	r1, #0
	movle	r2, #512
	push	{r4, r5, r6, r7, r8, lr}
	ldrle	r3, .L391+4
	ldrle	r4, .L391+8
	ldr	r5, .L391+12
	strle	r1, [r4, #44]
	strhle	r2, [r3, #128]	@ movhi
	ldr	r3, [r5]
	ldrgt	r4, .L391+8
	cmp	r3, #1
	sub	sp, sp, #16
	ble	.L387
	mov	r2, #0
	mov	ip, #512
	ldr	r1, .L391+16
	ldr	r3, [r1]
	ldr	lr, .L391+20
	ldr	r0, .L391+4
	sub	r3, r3, #1
	str	r3, [r1]
	str	r2, [r4, #44]
	str	r2, [lr]
	strh	ip, [r0, #128]	@ movhi
.L358:
	ldr	r5, .L391+24
	ldr	r3, .L391+28
	ldr	r2, [r5]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	beq	.L388
.L367:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L387:
	ldr	r0, [r4]
	cmp	r0, #159
	ldr	r3, [r4, #44]
	ble	.L389
	cmp	r3, #0
	beq	.L358
	mov	r1, #0
	mov	r2, #512
	ldr	r3, .L391+4
	str	r1, [r4, #44]
	strh	r2, [r3, #120]	@ movhi
	b	.L358
.L389:
	cmp	r3, #0
	beq	.L358
	ldr	r3, .L391+16
	ldr	r1, [r3, #20]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #16]
	ldr	r3, [r3]
	ldr	r6, .L391+32
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L361
.L386:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L358
	ldr	r3, [r4]
	ldr	r5, .L391+24
	add	r3, r3, #1
	str	r3, [r4]
	ldr	r3, [r5]
.L364:
	ldr	r2, [r5]
	ldr	r3, .L391+36
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	add	r1, r3, r3, lsl #2
	add	r3, r3, r1, lsl #1
	cmp	r2, r3
	bne	.L367
	ldr	r3, [r4, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #36]
	b	.L367
.L388:
	ldr	r3, .L391+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L391+44
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #5
	add	r2, r3, #1
	cmp	r2, #34
	addle	r2, r3, #51
	mov	lr, #5
	mov	ip, #0
	mov	r0, #2
	mov	r1, #7
	mov	r3, #1
	ldr	r6, .L391+48
	str	r2, [r4, #4]
	str	lr, [r4]
	str	ip, [r4, #36]
	str	r0, [r4, #40]
	str	r1, [r4, #28]
	str	r3, [r4, #44]
	ldr	r8, .L391+32
	add	r7, r6, #208
.L368:
	ldr	r3, [r6, #48]
	cmp	r3, #0
	bne	.L390
.L366:
	add	r6, r6, #52
	cmp	r7, r6
	bne	.L368
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L367
	b	.L364
.L390:
	add	r0, r6, #16
	ldm	r0, {r0, r1}
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L366
	mov	r3, #0
	str	r3, [r4, #44]
	b	.L367
.L361:
	mov	r0, #0
	mov	ip, #512
	ldr	r6, .L391+52
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	ldr	r1, .L391+56
	ldr	r2, [r1]
	ldr	lr, .L391+4
	add	r2, r2, #1
	str	r2, [r1]
	mov	r3, r0
	str	r0, [r4, #44]
	ldr	r2, .L391+60
	ldr	r1, .L391+64
	ldr	r0, .L391+68
	strh	ip, [lr, #128]	@ movhi
	ldr	r7, .L391+72
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
	cmp	r3, #5
	movgt	r3, #5
	strgt	r3, [r6]
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	b	.L386
.L392:
	.align	2
.L391:
	.word	scores
	.word	shadowOAM
	.word	lives
	.word	liveCollide
	.word	car
	.word	cheatON
	.word	livesTimer
	.word	1374389535
	.word	collision
	.word	780903145
	.word	rand
	.word	1717986919
	.word	enemiesCar
	.word	fuel
	.word	scores1
	.word	11025
	.word	4884
	.word	collectingCoins
	.word	playSoundB
	.size	updateLive, .-updateLive
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
	push	{r4, lr}
	bl	updateCar
	bl	updateenemiesCar
	bl	updateCoins
	bl	updateFuelBar
	bl	updateHealth
	bl	updateLive
	ldr	r3, .L402
	ldr	r3, [r3]
	cmp	r3, #1
	movle	r2, #512
	ldrle	r3, .L402+4
	strhle	r2, [r3, #120]	@ movhi
	strhle	r2, [r3, #144]	@ movhi
	bl	updateHealth1
	ldr	r2, .L402+8
	ldr	r3, [r2]
	cmp	r3, #0
	moveq	r0, #512
	ldreq	r1, .L402+4
	strheq	r0, [r1, #176]	@ movhi
	ldr	r1, .L402+12
	ldrh	r1, [r1]
	tst	r1, #256
	beq	.L396
	ldr	r1, .L402+16
	ldrh	r1, [r1]
	ands	r1, r1, #256
	bne	.L396
	cmp	r3, #1
	streq	r1, [r2]
	beq	.L396
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r2]
.L396:
	ldr	r3, .L402+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L402+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L402+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L403:
	.align	2
.L402:
	.word	liveCollide
	.word	shadowOAM
	.word	cheatON
	.word	oldButtons
	.word	buttons
	.word	waitForVBlank
	.word	DMANow
	.size	updateGame, .-updateGame
	.align	2
	.global	updateFinishLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFinishLine, %function
updateFinishLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L406
	ldr	r3, [r3]
	cmp	r3, #1
	movle	r2, #512
	ldrle	r3, .L406+4
	strhle	r2, [r3, #120]	@ movhi
	strhle	r2, [r3, #144]	@ movhi
	bx	lr
.L407:
	.align	2
.L406:
	.word	liveCollide
	.word	shadowOAM
	.size	updateFinishLine, .-updateFinishLine
	.comm	cheatON,4,4
	.comm	lineTimer1,4,4
	.comm	lineTimer,4,4
	.comm	mosaicCounter,4,4
	.comm	liveCollide,4,4
	.comm	livesTimer,4,4
	.comm	scores1,4,4
	.comm	scores,4,4
	.comm	fuel,4,4
	.comm	coinsTimer,4,4
	.comm	enemiesTimer,4,4
	.comm	cheat,52,4
	.comm	lives,48,4
	.comm	finishline1,52,4
	.comm	finishline,52,4
	.comm	health1,104,4
	.comm	health,260,4
	.comm	fuelBar,48,4
	.comm	coins,144,4
	.comm	enemiesCar,208,4
	.comm	car,56,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 50) 8.2.0"
