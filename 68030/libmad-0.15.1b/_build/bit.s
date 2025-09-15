* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"bit.c"				
						
						
						
						
						
	.text					
	.align	2				
	.globl	_mad_bit_init			
						
_mad_bit_init:					
	move.l 4(sp),a0				
						
	move.l 8(sp),(a0)			
						
	clr.w 4(a0)				
						
	move.w #8,6(a0)				
						
	rts					
						
	.align	2				
	.globl	_mad_bit_length			
						
_mad_bit_length:				
	move.l 4(sp),a1				
	move.l 8(sp),a0				
						
	move.l (a1),d1				
	addq.l #1,d1				
						
	move.l (a0),d0				
	sub.l d1,d0				
						
	lsl.l #3,d0				
						
	clr.l d1				
	move.w 6(a1),d1				
						
	add.l d1,d0				
						
	clr.l d2				
	move.w 6(a0),d2				
						
	moveq #8,d1				
	sub.l d2,d1				
						
	add.l d1,d0				
	rts					
						
	.align	2				
	.globl	_mad_bit_nextbyte		
						
_mad_bit_nextbyte:				
	move.l 4(sp),a0				
						
	move.l (a0),d0				
	cmp.w #8,6(a0)				
	jbeq _?L5				
						
	addq.l #1,d0				
_?L5:						
						
	rts					
						
	.align	2				
	.globl	_mad_bit_skip			
						
_mad_bit_skip:					
	move.l 4(sp),a0				
	move.l 8(sp),d1				
						
	move.l d1,d0				
	lsr.l #3,d0				
						
	move.l (a0),a1				
	add.l d0,a1				
	move.l a1,(a0)				
						
	and.w #7,d1				
						
	move.w 6(a0),d0				
	sub.w d1,d0				
	move.w d0,6(a0)				
						
	cmp.w #8,d0				
	jbls _?L10				
						
	addq.l #1,a1				
	move.l a1,(a0)				
						
	addq.w #8,d0				
	move.w d0,6(a0)				
_?L10:						
						
	cmp.w #7,d0				
	jbhi _?L9				
						
	clr.w d0				
	move.b (a1),d0				
	move.w d0,4(a0)				
_?L9:						
						
	rts					
						
	.align	2				
	.globl	_mad_bit_read			
						
_mad_bit_read:					
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	move.l 12(sp),a1			
	move.l 16(sp),d1			
						
	move.w 6(a1),d4				
						
	cmp.w #8,d4				
	jbeq _?L15				
						
	move.w 4(a1),d3				
_?L16:						
						
	clr.l d2				
	move.w d4,d2				
						
	moveq #1,d0				
	lsl.l d2,d0				
						
	subq.l #1,d0				
						
	and.l #65535,d3				
						
	and.l d3,d0				
						
	cmp.l d2,d1				
	jbcs _?L28				
						
	sub.l d2,d1				
						
	move.l (a1),a2				
						
	lea (1,a2),a0				
	move.l a0,(a1)				
						
	move.w #8,6(a1)				
						
	moveq #7,d2				
	cmp.l d1,d2				
	jbcc _?L21				
	move.l d1,d2				
	subq.l #8,d2				
	lsr.l #3,d2				
	lea 2(a2,d2.l),a2			
_?L20:						
						
	lsl.l #8,d0				
						
	addq.l #1,a0				
	move.l a0,(a1)				
						
	or.b -1(a0),d0				
						
	cmp.l a0,a2				
	jbne _?L20				
						
	moveq #7,d2				
	and.l d2,d1				
						
	jbeq _?L14				
_?L29:						
						
	move.b (a2),d2				
	clr.w d3				
	move.b d2,d3				
	move.w d3,4(a1)				
						
	lsl.l d1,d0				
						
	and.l #255,d2				
						
	moveq #8,d3				
	sub.l d1,d3				
						
	asr.l d3,d2				
						
	or.l d2,d0				
						
	moveq #8,d2				
	sub.w d1,d2				
	move.w d2,6(a1)				
_?L14:						
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
	rts					
_?L28:						
						
	sub.l d1,d2				
						
	asr.l d2,d0				
						
	sub.w d1,d4				
	move.w d4,6(a1)				
						
	move.l (sp)+,d3				
	move.l (sp)+,d4				
	rts					
_?L15:						
						
	move.l (a1),a0				
	clr.w d3				
	move.b (a0),d3				
						
	move.w d3,4(a1)				
	jbra _?L16				
_?L21:						
						
	move.l a0,a2				
						
	tst.l d1				
	jbeq _?L14				
	jbra _?L29				
						
	.align	2				
	.globl	_mad_bit_crc			
						
_mad_bit_crc:					
	subq.l #4,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 52(sp),a6			
						
	clr.l d7				
	move.w 58(sp),d7			
						
	moveq #31,d0				
	cmp.l a6,d0				
	jbcc _?L31				
	move.w 50(sp),d0			
	move.w 48(sp),d3			
	move.l 44(sp),a0			
	move.l a6,a1				
	clr.b 39(sp)				
	sub.l a4,a4				
	lea _crc_table,a3			
						
	moveq #1,d5				
_?L38:						
						
	clr.l d4				
	move.w d0,d4				
						
	move.l d5,d1				
	lsl.l d4,d1				
						
	subq.l #1,d1				
						
	cmp.w #8,d0				
	jbeq _?L76				
						
	moveq #32,d2				
	cmp.l d4,d2				
	jbcc _?L34				
						
	clr.l d2				
	move.w d3,d2				
						
	and.l d2,d1				
						
	move.w #-32,a2				
	add.l d4,a2				
						
	move.l a2,d4				
	asr.l d4,d1				
						
	add.w #-32,d0				
						
	move.l d7,d2				
	lsl.l #8,d2				
						
	move.l d1,d4				
	moveq #24,d6				
	lsr.l d6,d4				
						
	bfextu d7{#16:#8},d6			
						
	eor.l d4,d6				
						
	clr.l d4				
	move.w (a3,d6.l*2),d4			
						
	eor.l d4,d2				
						
	move.l d2,d4				
	lsl.l #8,d4				
						
	lsr.l #8,d2				
						
	move.l d1,d7				
	clr.w d7				
	swap d7					
						
	eor.l d7,d2				
						
	moveq #0,d6				
	not.b d6				
	and.l d6,d2				
						
	clr.l d7				
	move.w (a3,d2.l*2),d7			
						
	eor.l d4,d7				
						
	move.l d7,d2				
	lsl.l #8,d2				
						
	eor.l d1,d7				
						
	bfextu d7{#16:#8},d4			
						
	move.w (a3,d4.l*2),d4			
	and.l #65535,d4				
						
	eor.l d4,d2				
						
	move.l d2,d4				
	lsl.l #8,d4				
						
	lsr.l #8,d2				
						
	eor.l d1,d2				
						
	and.l d6,d2				
						
	clr.l d7				
	move.w (a3,d2.l*2),d7			
						
	eor.l d4,d7				
						
	lea (-32,a1),a1				
						
	moveq #31,d1				
	cmp.l a1,d1				
	jbcs _?L38				
_?L81:						
						
	move.l a6,d2				
	and.l d1,d2				
	move.l d2,a6				
	tst.b 39(sp)				
	jbeq _?L39				
	move.w d3,48(sp)			
_?L39:						
	move.w a4,d4				
	tst.b d4				
	jbeq _?L40				
	move.l a0,44(sp)			
_?L40:						
	move.w d0,50(sp)			
_?L31:						
						
	move.l a6,d0				
	lsr.l #3,d0				
						
	moveq #2,d6				
	cmp.l d0,d6				
	jbeq _?L77				
	moveq #3,d1				
	cmp.l d0,d1				
	jbeq _?L42				
	subq.l #1,d0				
	jbeq _?L78				
_?L44:						
						
	move.l a6,d5				
	subq.l #1,d5				
						
	tst.l a6				
	jbeq _?L45				
	move.l 44(sp),a0			
	move.w 48(sp),d6			
	move.w 50(sp),d3			
						
	move.w #1,a2				
_?L51:						
						
	clr.l d1				
	move.w d3,d1				
						
	move.l a2,d2				
	lsl.l d1,d2				
						
	subq.l #1,d2				
						
	cmp.w #8,d3				
	jbeq _?L79				
						
	clr.l d4				
	move.w d6,d4				
						
	move.l d4,d0				
	and.l d2,d0				
	move.l d0,a1				
						
	moveq #1,d0				
	cmp.l d1,d0				
	jbcs _?L80				
						
	move.l a1,d0				
						
	lea (1,a0),a1				
						
	subq.l #1,d1				
	jbeq _?L54				
						
	move.b 1(a0),d1				
	clr.w d6				
	move.b d1,d6				
						
	add.l d0,d0				
						
	bfextu d1{#24:#1},d1			
						
	or.l d1,d0				
						
	move.l a1,a0				
						
	moveq #7,d3				
_?L49:						
						
	move.l d7,d1				
	moveq #15,d4				
	lsr.l d4,d1				
						
	eor.l d1,d0				
						
	add.l d7,d7				
						
	btst #0,d0				
	jbeq _?L50				
						
	eor.w #32773,d7				
_?L50:						
						
	dbra d5,_?L51				
	clr.w d5				
	subq.l #1,d5				
	jbcc _?L51				
_?L45:						
						
	move.w d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #4,sp				
	rts					
_?L76:						
						
	move.l a0,a5				
	move.b (a5)+,d0				
	clr.w d3				
	move.b d0,d3				
						
	and.l #255,d0				
						
	and.l d0,d1				
						
	lsl.l #8,d1				
						
	lea (2,a0),a2				
						
	or.b 1(a0),d1				
	move.b #1,39(sp)			
	moveq #24,d2				
						
	moveq #16,d0				
_?L33:						
						
	lsl.l #8,d1				
						
	or.b (a2),d1				
						
	move.w #-16,a2				
	add.l d2,a2				
						
	moveq #7,d4				
	cmp.l a2,d4				
	jbcc _?L37				
						
	lsl.l #8,d1				
						
	or.b 3(a0),d1				
						
	moveq #32,d6				
	cmp.l d2,d6				
	jbne _?L37				
						
	lsl.l #8,d1				
						
	or.b 4(a0),d1				
_?L37:						
						
	moveq #7,d4				
	and.l d4,d2				
						
	lsr.l #3,d0				
	lea 1(a5,d0.l),a0			
_?L36:						
						
	tst.l d2				
	jbeq _?L53				
						
	move.b (a0),d0				
	clr.w d3				
	move.b d0,d3				
						
	lsl.l d2,d1				
						
	and.l #255,d0				
						
	moveq #8,d6				
	sub.l d2,d6				
						
	asr.l d6,d0				
						
	or.l d0,d1				
						
	moveq #8,d0				
	sub.w d2,d0				
	move.b #1,39(sp)			
	move.w #1,a4				
						
	move.l d7,d2				
	lsl.l #8,d2				
						
	move.l d1,d4				
	moveq #24,d6				
	lsr.l d6,d4				
						
	bfextu d7{#16:#8},d6			
						
	eor.l d4,d6				
						
	clr.l d4				
	move.w (a3,d6.l*2),d4			
						
	eor.l d4,d2				
						
	move.l d2,d4				
	lsl.l #8,d4				
						
	lsr.l #8,d2				
						
	move.l d1,d7				
	clr.w d7				
	swap d7					
						
	eor.l d7,d2				
						
	moveq #0,d6				
	not.b d6				
	and.l d6,d2				
						
	clr.l d7				
	move.w (a3,d2.l*2),d7			
						
	eor.l d4,d7				
						
	move.l d7,d2				
	lsl.l #8,d2				
						
	eor.l d1,d7				
						
	bfextu d7{#16:#8},d4			
						
	move.w (a3,d4.l*2),d4			
	and.l #65535,d4				
						
	eor.l d4,d2				
						
	move.l d2,d4				
	lsl.l #8,d4				
						
	lsr.l #8,d2				
						
	eor.l d1,d2				
						
	and.l d6,d2				
						
	clr.l d7				
	move.w (a3,d2.l*2),d7			
						
	eor.l d4,d7				
						
	lea (-32,a1),a1				
						
	moveq #31,d1				
	cmp.l a1,d1				
	jbcs _?L38				
	jbra _?L81				
_?L53:						
	move.w #1,a4				
						
	moveq #8,d0				
						
	move.l d7,d2				
	lsl.l #8,d2				
						
	move.l d1,d4				
	moveq #24,d6				
	lsr.l d6,d4				
						
	bfextu d7{#16:#8},d6			
						
	eor.l d4,d6				
						
	clr.l d4				
	move.w (a3,d6.l*2),d4			
						
	eor.l d4,d2				
						
	move.l d2,d4				
	lsl.l #8,d4				
						
	lsr.l #8,d2				
						
	move.l d1,d7				
	clr.w d7				
	swap d7					
						
	eor.l d7,d2				
						
	moveq #0,d6				
	not.b d6				
	and.l d6,d2				
						
	clr.l d7				
	move.w (a3,d2.l*2),d7			
						
	eor.l d4,d7				
						
	move.l d7,d2				
	lsl.l #8,d2				
						
	eor.l d1,d7				
						
	bfextu d7{#16:#8},d4			
						
	move.w (a3,d4.l*2),d4			
	and.l #65535,d4				
						
	eor.l d4,d2				
						
	move.l d2,d4				
	lsl.l #8,d4				
						
	lsr.l #8,d2				
						
	eor.l d1,d2				
						
	and.l d6,d2				
						
	clr.l d7				
	move.w (a3,d2.l*2),d7			
						
	eor.l d4,d7				
						
	lea (-32,a1),a1				
						
	moveq #31,d1				
	cmp.l a1,d1				
	jbcs _?L38				
	jbra _?L81				
_?L34:						
						
	moveq #32,d2				
	sub.l d4,d2				
						
	clr.l d0				
	move.w d3,d0				
						
	and.l d0,d1				
						
	lea (1,a0),a5				
						
	moveq #7,d6				
	cmp.l d2,d6				
	jbcc _?L52				
						
	lsl.l #8,d1				
						
	or.b 1(a0),d1				
						
	moveq #24,d0				
	sub.l d4,d0				
						
	cmp.l d0,d6				
	jbcc _?L37				
						
	lea (2,a0),a2				
	jbra _?L33				
_?L79:						
						
	clr.w d6				
	move.b (a0),d6				
	moveq #7,d1				
	clr.l d4				
	move.w d6,d4				
						
	and.l d2,d4				
						
	move.l d4,d0				
	asr.l d1,d0				
						
	subq.w #1,d3				
						
	jbra _?L49				
_?L54:						
						
	move.l a1,a0				
						
	moveq #8,d3				
	jbra _?L49				
_?L52:						
						
	move.l a5,a0				
	jbra _?L36				
_?L80:						
						
	subq.l #1,d1				
						
	and.l d2,d4				
						
	move.l d4,d0				
	asr.l d1,d0				
						
	subq.w #1,d3				
	jbra _?L49				
_?L78:						
	lea _crc_table,a3			
	moveq #44,d3				
	add.l sp,d3				
	lea _mad_bit_read,a5			
						
	move.l d7,d5				
	lsl.l #8,d5				
						
	pea 8.w					
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d7,d1				
	lsr.l #8,d1				
						
	eor.l d0,d1				
						
	moveq #0,d0				
	not.b d0				
	and.l d1,d0				
						
	clr.l d7				
	move.w (a3,d0.l*2),d7			
						
	eor.l d5,d7				
						
	move.l a6,d1				
	moveq #7,d2				
	and.l d2,d1				
	move.l d1,a6				
	jbra _?L44				
_?L42:						
						
	move.l d7,d5				
	lsl.l #8,d5				
						
	pea 8.w					
	moveq #48,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	lea _mad_bit_read,a5			
	jbsr (a5)				
	addq.l #8,sp				
						
	lea _crc_table,a3			
						
	move.l d7,d1				
	lsr.l #8,d1				
						
	eor.l d0,d1				
						
	moveq #0,d4				
	not.b d4				
	and.l d4,d1				
						
	clr.l d7				
	move.w (a3,d1.l*2),d7			
						
	eor.l d5,d7				
						
	move.l d7,d5				
	lsl.l #8,d5				
						
	pea 8.w					
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d7,d1				
	lsr.l #8,d1				
						
	eor.l d0,d1				
						
	moveq #0,d6				
	not.b d6				
	and.l d1,d6				
						
	clr.l d7				
	move.w (a3,d6.l*2),d7			
						
	eor.l d5,d7				
_?L82:						
						
	move.l d7,d5				
	lsl.l #8,d5				
						
	pea 8.w					
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d7,d1				
	lsr.l #8,d1				
						
	eor.l d0,d1				
						
	moveq #0,d0				
	not.b d0				
	and.l d1,d0				
						
	clr.l d7				
	move.w (a3,d0.l*2),d7			
						
	eor.l d5,d7				
						
	move.l a6,d1				
	moveq #7,d2				
	and.l d2,d1				
	move.l d1,a6				
	jbra _?L44				
_?L77:						
	lea _crc_table,a3			
	moveq #44,d3				
	add.l sp,d3				
	lea _mad_bit_read,a5			
						
	move.l d7,d5				
	lsl.l #8,d5				
						
	pea 8.w					
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d7,d1				
	lsr.l #8,d1				
						
	eor.l d0,d1				
						
	moveq #0,d6				
	not.b d6				
	and.l d1,d6				
						
	clr.l d7				
	move.w (a3,d6.l*2),d7			
						
	eor.l d5,d7				
	jbra _?L82				
						
	.data					
	.align	2				
						
						
_crc_table:					
	.dc.w	0				
	.dc.w	-32763				
	.dc.w	-32753				
	.dc.w	10				
	.dc.w	-32741				
	.dc.w	30				
	.dc.w	20				
	.dc.w	-32751				
	.dc.w	-32717				
	.dc.w	54				
	.dc.w	60				
	.dc.w	-32711				
	.dc.w	40				
	.dc.w	-32723				
	.dc.w	-32729				
	.dc.w	34				
	.dc.w	-32669				
	.dc.w	102				
	.dc.w	108				
	.dc.w	-32663				
	.dc.w	120				
	.dc.w	-32643				
	.dc.w	-32649				
	.dc.w	114				
	.dc.w	80				
	.dc.w	-32683				
	.dc.w	-32673				
	.dc.w	90				
	.dc.w	-32693				
	.dc.w	78				
	.dc.w	68				
	.dc.w	-32703				
	.dc.w	-32573				
	.dc.w	198				
	.dc.w	204				
	.dc.w	-32567				
	.dc.w	216				
	.dc.w	-32547				
	.dc.w	-32553				
	.dc.w	210				
	.dc.w	240				
	.dc.w	-32523				
	.dc.w	-32513				
	.dc.w	250				
	.dc.w	-32533				
	.dc.w	238				
	.dc.w	228				
	.dc.w	-32543				
	.dc.w	160				
	.dc.w	-32603				
	.dc.w	-32593				
	.dc.w	170				
	.dc.w	-32581				
	.dc.w	190				
	.dc.w	180				
	.dc.w	-32591				
	.dc.w	-32621				
	.dc.w	150				
	.dc.w	156				
	.dc.w	-32615				
	.dc.w	136				
	.dc.w	-32627				
	.dc.w	-32633				
	.dc.w	130				
	.dc.w	-32381				
	.dc.w	390				
	.dc.w	396				
	.dc.w	-32375				
	.dc.w	408				
	.dc.w	-32355				
	.dc.w	-32361				
	.dc.w	402				
	.dc.w	432				
	.dc.w	-32331				
	.dc.w	-32321				
	.dc.w	442				
	.dc.w	-32341				
	.dc.w	430				
	.dc.w	420				
	.dc.w	-32351				
	.dc.w	480				
	.dc.w	-32283				
	.dc.w	-32273				
	.dc.w	490				
	.dc.w	-32261				
	.dc.w	510				
	.dc.w	500				
	.dc.w	-32271				
	.dc.w	-32301				
	.dc.w	470				
	.dc.w	476				
	.dc.w	-32295				
	.dc.w	456				
	.dc.w	-32307				
	.dc.w	-32313				
	.dc.w	450				
	.dc.w	320				
	.dc.w	-32443				
	.dc.w	-32433				
	.dc.w	330				
	.dc.w	-32421				
	.dc.w	350				
	.dc.w	340				
	.dc.w	-32431				
	.dc.w	-32397				
	.dc.w	374				
	.dc.w	380				
	.dc.w	-32391				
	.dc.w	360				
	.dc.w	-32403				
	.dc.w	-32409				
	.dc.w	354				
	.dc.w	-32477				
	.dc.w	294				
	.dc.w	300				
	.dc.w	-32471				
	.dc.w	312				
	.dc.w	-32451				
	.dc.w	-32457				
	.dc.w	306				
	.dc.w	272				
	.dc.w	-32491				
	.dc.w	-32481				
	.dc.w	282				
	.dc.w	-32501				
	.dc.w	270				
	.dc.w	260				
	.dc.w	-32511				
	.dc.w	-31997				
	.dc.w	774				
	.dc.w	780				
	.dc.w	-31991				
	.dc.w	792				
	.dc.w	-31971				
	.dc.w	-31977				
	.dc.w	786				
	.dc.w	816				
	.dc.w	-31947				
	.dc.w	-31937				
	.dc.w	826				
	.dc.w	-31957				
	.dc.w	814				
	.dc.w	804				
	.dc.w	-31967				
	.dc.w	864				
	.dc.w	-31899				
	.dc.w	-31889				
	.dc.w	874				
	.dc.w	-31877				
	.dc.w	894				
	.dc.w	884				
	.dc.w	-31887				
	.dc.w	-31917				
	.dc.w	854				
	.dc.w	860				
	.dc.w	-31911				
	.dc.w	840				
	.dc.w	-31923				
	.dc.w	-31929				
	.dc.w	834				
	.dc.w	960				
	.dc.w	-31803				
	.dc.w	-31793				
	.dc.w	970				
	.dc.w	-31781				
	.dc.w	990				
	.dc.w	980				
	.dc.w	-31791				
	.dc.w	-31757				
	.dc.w	1014				
	.dc.w	1020				
	.dc.w	-31751				
	.dc.w	1000				
	.dc.w	-31763				
	.dc.w	-31769				
	.dc.w	994				
	.dc.w	-31837				
	.dc.w	934				
	.dc.w	940				
	.dc.w	-31831				
	.dc.w	952				
	.dc.w	-31811				
	.dc.w	-31817				
	.dc.w	946				
	.dc.w	912				
	.dc.w	-31851				
	.dc.w	-31841				
	.dc.w	922				
	.dc.w	-31861				
	.dc.w	910				
	.dc.w	900				
	.dc.w	-31871				
	.dc.w	640				
	.dc.w	-32123				
	.dc.w	-32113				
	.dc.w	650				
	.dc.w	-32101				
	.dc.w	670				
	.dc.w	660				
	.dc.w	-32111				
	.dc.w	-32077				
	.dc.w	694				
	.dc.w	700				
	.dc.w	-32071				
	.dc.w	680				
	.dc.w	-32083				
	.dc.w	-32089				
	.dc.w	674				
	.dc.w	-32029				
	.dc.w	742				
	.dc.w	748				
	.dc.w	-32023				
	.dc.w	760				
	.dc.w	-32003				
	.dc.w	-32009				
	.dc.w	754				
	.dc.w	720				
	.dc.w	-32043				
	.dc.w	-32033				
	.dc.w	730				
	.dc.w	-32053				
	.dc.w	718				
	.dc.w	708				
	.dc.w	-32063				
	.dc.w	-32189				
	.dc.w	582				
	.dc.w	588				
	.dc.w	-32183				
	.dc.w	600				
	.dc.w	-32163				
	.dc.w	-32169				
	.dc.w	594				
	.dc.w	624				
	.dc.w	-32139				
	.dc.w	-32129				
	.dc.w	634				
	.dc.w	-32149				
	.dc.w	622				
	.dc.w	612				
	.dc.w	-32159				
	.dc.w	544				
	.dc.w	-32219				
	.dc.w	-32209				
	.dc.w	554				
	.dc.w	-32197				
	.dc.w	574				
	.dc.w	564				
	.dc.w	-32207				
	.dc.w	-32237				
	.dc.w	534				
	.dc.w	540				
	.dc.w	-32231				
	.dc.w	520				
	.dc.w	-32243				
	.dc.w	-32249				
	.dc.w	514				
						
