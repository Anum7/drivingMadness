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
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r5, #67108864
	ldr	r6, .L4
	mov	r3, #256
	strh	r4, [r5, #18]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, .L4+8
	mov	r2, #100663296
	ldr	r1, .L4+12
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r1, .L4+16
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L4+20
	mov	lr, pc
	bx	r6
	mov	r2, #256
	mov	r3, #7168
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r0, .L4+28
	ldr	r1, .L4+32
	ldr	r2, .L4+36
	ldr	r3, .L4+40
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	strh	r4, [r5, #16]	@ movhi
	strh	r4, [r5, #18]	@ movhi
	strh	r4, [r5, #20]	@ movhi
	strh	r4, [r5, #22]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	menuScreenPal
	.word	6128
	.word	menuScreenTiles
	.word	menuScreenMap
	.word	100720640
	.word	waitForVBlank
	.word	state
	.word	seed
	.word	hOff
	.word	vOff
	.size	goToStart, .-goToStart
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
	push	{r4, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	ip, #0
	ldr	lr, .L8+4
	ldr	r3, .L8+8
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	ldr	r0, .L8+20
	str	ip, [lr]
	ldr	lr, .L8+24
	str	ip, [r3]
	str	ip, [r2]
	str	ip, [r1]
	str	ip, [r0]
	ldr	r4, .L8+28
	mov	r3, #256
	ldr	r2, .L8+32
	ldr	r1, .L8+36
	mov	r0, #3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L8+40
	ldr	r1, .L8+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+48
	ldr	r3, .L8+52
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	initGame
	.word	timer
	.word	hOff
	.word	vOff
	.word	pauseVOff
	.word	counter
	.word	flag
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r5, #67108864
	ldr	r2, .L12
	ldr	r3, .L12+4
	ldrh	r2, [r2]
	ldr	r4, .L12+8
	str	r1, [r3]
	mov	r0, #3
	strh	r2, [r5, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r2, #100663296
	ldr	r1, .L12+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+20
	ldr	r1, .L12+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1888
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #6912
	mov	r1, #4864
	ldr	r3, .L12+44
	strh	r1, [r5]	@ movhi
	strh	r3, [r5, #8]	@ movhi
	ldr	r1, .L12+48
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	ldr	r2, .L12+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+56
	ldr	r1, .L12+60
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+64
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	ldr	r1, .L12+68
	mov	r0, #3
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+72
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+76
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+80
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	vOff
	.word	timer
	.word	DMANow
	.word	mainRoadPal
	.word	mainRoadTiles
	.word	100718592
	.word	mainRoadMap
	.word	100679680
	.word	sideWalkTiles
	.word	100712448
	.word	sideWalkMap
	.word	6148
	.word	spritesheetPal
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	initGame
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r4, #67108864
	ldr	r3, .L16
	ldr	r2, .L16+4
	ldr	r0, [r3]
	ldr	r5, .L16+8
	str	r0, [r2]
	mov	r3, #256
	strh	r1, [r4, #18]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L16+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #3712
	mov	r2, #100663296
	ldr	r1, .L16+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #256
	mov	r3, #7168
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, .L16+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L16+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	vOff
	.word	pauseVOff
	.word	DMANow
	.word	pausePagePal
	.word	pausePageTiles
	.word	100720640
	.word	pausePageMap
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	ldr	r5, .L20
	strh	r2, [r4, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L20+4
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L20+8
	mov	r2, #100663296
	ldr	r1, .L20+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #256
	mov	r3, #7168
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, .L20+24
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L20+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	DMANow
	.word	winPagePal
	.word	4960
	.word	winPageTiles
	.word	100720640
	.word	winPageMap
	.word	waitForVBlank
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L34
	ldr	r4, .L34+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L23
	ldr	r2, .L34+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L32
.L23:
	tst	r3, #8
	beq	.L22
	ldr	r3, .L34+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L33
.L22:
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	ldr	r3, .L34+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L34+20
	mov	r3, #1
	ldr	r2, .L34+24
	ldr	r1, .L34+28
	ldr	r0, .L34+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	b	goToGame
.L32:
	ldr	r3, .L34+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L34+20
	mov	r3, #1
	ldr	r2, .L34+24
	ldr	r1, .L34+36
	ldr	r0, .L34+40
	mov	lr, pc
	bx	r5
	bl	goToStart
	ldrh	r3, [r4]
	b	.L23
.L35:
	.align	2
.L34:
	.word	hideSprites
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	1776009
	.word	GameSong
	.word	2071552
	.word	mainSong
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	ldr	r5, .L38
	strh	r2, [r4, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L38+4
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #4992
	mov	r2, #100663296
	ldr	r1, .L38+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #256
	mov	r3, #7168
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L38+24
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	losePagePal
	.word	losePageTiles
	.word	100720640
	.word	losePageMap
	.word	waitForVBlank
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+4
	mov	lr, pc
	bx	r3
	ldr	r0, .L58+8
	ldr	r3, [r0]
	cmp	r3, #4
	bgt	.L41
	ldr	r4, .L58+12
	ldr	r1, .L58+16
	ldr	r3, [r4]
	ldr	r2, [r1]
.L42:
	tst	r2, #3
	ldr	r0, [r0]
	beq	.L44
	sub	r3, r3, #1
	cmp	r0, #4
	str	r3, [r4]
	bgt	.L45
.L46:
	mov	r5, #67108864
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r2, r2, #1
	str	r2, [r1]
	ldr	r2, .L58+20
	strh	r3, [r5, #18]	@ movhi
	mov	lr, pc
	bx	r2
	ldrh	r2, [r4]
	ldr	r3, .L58+24
	strh	r2, [r5, #22]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L47
	ldr	r3, .L58+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L55
.L47:
	ldr	r3, .L58+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L56
	ldr	r3, .L58+36
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L57
.L40:
	pop	{r4, r5, r6, lr}
	bx	lr
.L44:
	cmp	r0, #4
	ble	.L46
.L50:
	sub	r3, r3, #2
	str	r3, [r4]
	b	.L46
.L41:
	ldr	r3, .L58+40
	ldr	r3, [r3]
	ldr	r4, .L58+12
	ldr	r1, .L58+16
	cmp	r3, #1
	ldr	r2, [r1]
	ldr	r3, [r4]
	bgt	.L42
	ldr	r0, [r0]
	cmp	r0, #4
	ble	.L46
	tst	r2, #3
	beq	.L50
.L45:
	sub	r3, r3, #1
	str	r3, [r4]
	b	.L46
.L56:
	ldr	r3, .L58+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+48
	mov	r3, #1
	ldr	r2, .L58+52
	ldr	r1, .L58+56
	ldr	r0, .L58+60
	mov	lr, pc
	bx	r4
	bl	goToLose
	ldr	r3, .L58+36
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L40
.L57:
	ldr	r3, .L58+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+48
	mov	r3, #1
	ldr	r2, .L58+52
	ldr	r1, .L58+64
	ldr	r0, .L58+68
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	b	goToWin
.L55:
	ldr	r3, .L58+72
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L47
.L59:
	.align	2
.L58:
	.word	updateGame
	.word	drawGame
	.word	scores
	.word	vOff
	.word	timer
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	fuel
	.word	car
	.word	liveCollide
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	153595
	.word	loseSound
	.word	224968
	.word	winSong
	.word	pauseSound
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	goToInstruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstruct, %function
goToInstruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r4, #67108864
	ldr	r5, .L63
	strh	r2, [r4, #18]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L63+4
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L63+8
	mov	r2, #100663296
	ldr	r1, .L63+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L63+16
	ldr	r1, .L63+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #256
	mov	r3, #7168
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	ldr	r3, .L63+24
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L63+28
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	DMANow
	.word	instructionPagePal
	.word	5456
	.word	instructionPageTiles
	.word	100720640
	.word	instructionPageMap
	.word	waitForVBlank
	.word	state
	.size	goToInstruct, .-goToInstruct
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L77
	ldr	r3, [r4]
	ldr	r6, .L77+4
	add	r3, r3, #1
	ldr	r5, .L77+8
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r6]
	tst	r3, #8
	beq	.L66
	ldr	r2, .L77+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L75
.L66:
	tst	r3, #512
	beq	.L67
	ldr	r3, .L77+12
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L76
.L67:
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	ldr	r3, .L77+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L77+20
	mov	r3, #1
	ldr	r2, .L77+24
	ldr	r1, .L77+28
	ldr	r0, .L77+32
	mov	lr, pc
	bx	r4
	bl	goToInstruct
	b	.L67
.L75:
	mov	r2, #67108864
	ldrh	r3, [r2]
	orr	r3, r3, #4096
	strh	r3, [r2]	@ movhi
	ldr	r0, [r4]
	ldr	r3, .L77+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L77+20
	mov	r3, #1
	ldr	r2, .L77+24
	ldr	r1, .L77+40
	ldr	r0, .L77+44
	mov	lr, pc
	bx	r4
	bl	goToGame
	ldrh	r3, [r6]
	b	.L66
.L78:
	.align	2
.L77:
	.word	seed
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	594835
	.word	instructSong
	.word	srand
	.word	1776009
	.word	GameSong
	.size	start, .-start
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L96
	ldr	r6, .L96+4
	ldr	r5, .L96+8
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L80
	ldr	r2, .L96+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L93
.L80:
	tst	r3, #4
	beq	.L81
	ldr	r2, .L96+12
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L94
.L81:
	tst	r3, #512
	beq	.L79
	ldr	r3, .L96+12
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L95
.L79:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L95:
	ldr	r3, .L96+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L96+20
	mov	r3, #1
	ldr	r2, .L96+24
	ldr	r1, .L96+28
	ldr	r0, .L96+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToInstruct
.L93:
	mov	r8, #67108864
	ldrh	r3, [r8]
	orr	r3, r3, #4096
	strh	r3, [r8]	@ movhi
	ldr	r3, .L96+36
	ldr	r7, .L96+40
	ldr	r2, [r3]
	ldr	r3, .L96+44
	str	r2, [r7]
	mov	lr, pc
	bx	r3
	ldrh	r2, [r7]
	mov	r3, #256
	ldr	r7, .L96+48
	strh	r2, [r8, #18]	@ movhi
	ldr	r1, .L96+52
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	mov	r2, #100663296
	ldr	r1, .L96+56
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	ldr	r2, .L96+60
	ldr	r1, .L96+64
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #1888
	ldr	r2, .L96+68
	ldr	r1, .L96+72
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	ldr	r2, .L96+76
	ldr	r1, .L96+80
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r2, #6912
	mov	r1, #4864
	ldr	r3, .L96+84
	strh	r1, [r8]	@ movhi
	strh	r3, [r8, #8]	@ movhi
	ldr	r1, .L96+88
	mov	r3, #256
	strh	r2, [r8, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L96+92
	mov	lr, pc
	bx	r7
	mov	r3, #16384
	ldr	r2, .L96+96
	ldr	r1, .L96+100
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L96+104
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r5
	mov	r1, #1
	ldr	r2, .L96+108
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L80
.L94:
	ldr	r3, .L96+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L96+20
	mov	r3, #1
	ldr	r2, .L96+24
	ldr	r1, .L96+112
	ldr	r0, .L96+116
	mov	lr, pc
	bx	r5
	bl	goToStart
	ldrh	r3, [r4]
	b	.L81
.L97:
	.align	2
.L96:
	.word	oldButtons
	.word	hideSprites
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	594835
	.word	instructSong
	.word	pauseVOff
	.word	vOff
	.word	unpauseSound
	.word	DMANow
	.word	mainRoadPal
	.word	mainRoadTiles
	.word	100718592
	.word	mainRoadMap
	.word	100679680
	.word	sideWalkTiles
	.word	100712448
	.word	sideWalkMap
	.word	6148
	.word	spritesheetPal
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	shadowOAM
	.word	state
	.word	2071552
	.word	mainSong
	.size	pause, .-pause
	.align	2
	.global	instruct
	.syntax unified
	.arm
	.fpu softvfp
	.type	instruct, %function
instruct:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L110
	ldr	r4, .L110+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L110+8
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L99
	ldr	r2, .L110+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L108
.L99:
	tst	r3, #4
	beq	.L98
	ldr	r3, .L110+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L109
.L98:
	pop	{r4, r5, r6, lr}
	bx	lr
.L109:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L110+20
	mov	r3, #1
	ldr	r2, .L110+24
	ldr	r1, .L110+28
	ldr	r0, .L110+32
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	b	goToStart
.L108:
	ldr	r3, .L110+16
	mov	lr, pc
	bx	r3
	ldr	r5, .L110+20
	mov	r3, #1
	ldr	r2, .L110+24
	ldr	r1, .L110+36
	ldr	r0, .L110+40
	mov	lr, pc
	bx	r5
	bl	goToGame
	ldrh	r3, [r4]
	b	.L99
.L111:
	.align	2
.L110:
	.word	hideSprites
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	2071552
	.word	mainSong
	.word	1776009
	.word	GameSong
	.size	instruct, .-instruct
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L124
	mov	lr, pc
	bx	r3
	ldr	r3, .L124+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L124+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L124+12
	mov	r3, #1
	ldr	r2, .L124+16
	ldr	r1, .L124+20
	ldr	r0, .L124+24
	mov	lr, pc
	bx	r4
	ldr	r6, .L124+28
	ldr	r8, .L124+32
	ldr	r5, .L124+36
	ldr	fp, .L124+40
	ldr	r10, .L124+44
	ldr	r9, .L124+48
	ldr	r7, .L124+52
	ldr	r4, .L124+56
.L113:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L114:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L114
.L116:
	.word	.L120
	.word	.L119
	.word	.L118
	.word	.L117
	.word	.L117
	.word	.L115
.L117:
	mov	lr, pc
	bx	r7
	b	.L113
.L118:
	mov	lr, pc
	bx	r9
	b	.L113
.L119:
	mov	lr, pc
	bx	r10
	b	.L113
.L120:
	mov	lr, pc
	bx	fp
	b	.L113
.L115:
	ldr	r3, .L124+60
	mov	lr, pc
	bx	r3
	b	.L113
.L125:
	.align	2
.L124:
	.word	initialize
	.word	setupSounds
	.word	setupInterrupts
	.word	playSoundA
	.word	11025
	.word	2071552
	.word	mainSong
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	instruct
	.size	main, .-main
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	flag,4,4
	.comm	counter,4,4
	.comm	timer,4,4
	.comm	pauseVOff,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 50) 8.2.0"
