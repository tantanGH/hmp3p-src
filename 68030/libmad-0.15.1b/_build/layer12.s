* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"layer12.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_II_samples:					
	lea (-12,sp),sp				
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 44(sp),d4			
	move.l 48(sp),a4			
	move.l 52(sp),a3			
						
	clr.l d5				
	move.b 2(a4),d5				
						
	clr.l d3				
	move.b 3(a4),d3				
						
	tst.l d5				
	jbne _?L8				
	lea (28,sp),a5				
	moveq #40,d5				
	add.l sp,d5				
	lea _mad_bit_read,a6			
_?L4:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	addq.l #8,sp				
						
	move.l d0,(a5)+				
						
	cmp.l d5,a5				
	jbne _?L4				
						
	move.l d3,d1				
	subq.l #1,d1				
						
	moveq #1,d0				
	lsl.l d1,d0				
						
	moveq #29,d2				
	sub.l d3,d2				
						
	move.l 28(sp),d3			
	eor.l d0,d3				
						
	move.l d0,d1				
	and.l d3,d1				
						
	neg.l d1				
						
	or.l d3,d1				
						
	lsl.l d2,d1				
						
	add.l 8(a4),d1				
	moveq #12,d3				
	asr.l d3,d1				
	move.w 4(a4),a0				
	move.l a0,d3				
	muls.l d1,d3				
	move.l d3,(a3)				
						
	move.l 32(sp),d3			
	eor.l d0,d3				
						
	move.l d0,d1				
	and.l d3,d1				
						
	neg.l d1				
						
	or.l d3,d1				
						
	lsl.l d2,d1				
						
	add.l 8(a4),d1				
	moveq #12,d3				
	asr.l d3,d1				
	move.w 4(a4),a0				
	move.l a0,d3				
	muls.l d1,d3				
	move.l d3,4(a3)				
						
	move.l 36(sp),d1			
	eor.l d0,d1				
						
	and.l d1,d0				
						
	neg.l d0				
						
	or.l d1,d0				
						
	lsl.l d2,d0				
						
	add.l 8(a4),d0				
	moveq #12,d1				
	asr.l d1,d0				
	move.w 4(a4),d1				
	ext.l d1				
	muls.l d1,d0				
	move.l d0,8(a3)				
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	lea (12,sp),sp				
	rts					
_?L8:						
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr _mad_bit_read			
	addq.l #8,sp				
						
	clr.l d1				
	move.w (a4),d1				
	divul.l d1,d2:d0			
						
	move.l d2,28(sp)			
	divul.l d1,d2:d0			
	move.l d2,32(sp)			
						
	divul.l d1,d1:d0			
						
	move.l d1,36(sp)			
	move.l d5,d3				
						
	move.l d3,d1				
	subq.l #1,d1				
						
	moveq #1,d0				
	lsl.l d1,d0				
						
	moveq #29,d2				
	sub.l d3,d2				
						
	move.l 28(sp),d3			
	eor.l d0,d3				
						
	move.l d0,d1				
	and.l d3,d1				
						
	neg.l d1				
						
	or.l d3,d1				
						
	lsl.l d2,d1				
						
	add.l 8(a4),d1				
	moveq #12,d3				
	asr.l d3,d1				
	move.w 4(a4),a0				
	move.l a0,d3				
	muls.l d1,d3				
	move.l d3,(a3)				
						
	move.l 32(sp),d3			
	eor.l d0,d3				
						
	move.l d0,d1				
	and.l d3,d1				
						
	neg.l d1				
						
	or.l d3,d1				
						
	lsl.l d2,d1				
						
	add.l 8(a4),d1				
	moveq #12,d3				
	asr.l d3,d1				
	move.w 4(a4),a0				
	move.l a0,d3				
	muls.l d1,d3				
	move.l d3,4(a3)				
						
	move.l 36(sp),d1			
	eor.l d0,d1				
						
	and.l d1,d0				
						
	neg.l d0				
						
	or.l d1,d0				
						
	lsl.l d2,d0				
						
	add.l 8(a4),d0				
	moveq #12,d1				
	asr.l d1,d0				
	move.w 4(a4),d1				
	ext.l d1				
	muls.l d1,d0				
	move.l d0,8(a3)				
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	lea (12,sp),sp				
	rts					
						
	.align	2				
	.globl	_mad_layer_I			
						
_mad_layer_I:					
	lea (-148,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.l 192(sp),a0			
	move.l 4(a0),d3				
						
	move.l 28(a0),d0			
						
	moveq #16,d1				
	and.l d0,d1				
						
	tst.l d3				
	jbne _?L10				
						
	tst.l d1				
	jbne _?L58				
						
	moveq #1,d3				
						
	moveq #32,d4				
_?L12:						
						
	move.w #28,a3				
	add.l 188(sp),a3			
	lea (56,sp),a6				
	move.l a6,d6				
	clr.l d7				
	lea _mad_bit_read,a4			
_?L19:						
						
	move.l d6,a5				
						
	clr.l d5				
_?L28:						
						
	pea 4.w					
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	moveq #15,d1				
	cmp.l d0,d1				
	jbeq _?L30				
_?L22:						
						
	tst.l d0				
	jbeq _?L24				
						
	addq.b #1,d0				
	move.b d0,(a5)				
						
	addq.l #1,d5				
						
	lea (32,a5),a5				
	cmp.l d5,d3				
	jbne _?L28				
_?L26:						
						
	addq.l #1,d7				
						
	addq.l #1,d6				
	cmp.l d4,d7				
	jbcs _?L19				
						
	moveq #31,d0				
	cmp.l d4,d0				
	jbcs _?L29				
	move.l a6,d6				
	add.l d4,d6				
						
	move.l d4,d5				
_?L34:						
						
	pea 4.w					
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	moveq #15,d1				
	cmp.l d0,d1				
	jbeq _?L30				
						
	tst.l d0				
	jbeq _?L31				
						
	addq.b #1,d0				
	move.l d6,a0				
	move.b d0,32(a0)			
						
	move.b d0,(a0)+				
	move.l a0,d6				
						
	addq.l #1,d5				
						
	moveq #32,d0				
	cmp.l d5,d0				
	jbne _?L34				
_?L29:						
	lea (120,sp),a1				
	moveq #88,d5				
	add.l sp,d5				
						
	move.l a6,a0				
_?L35:						
						
	tst.b (a0)+				
	jbne _?L86				
_?L38:						
						
	moveq #2,d1				
	cmp.l d3,d1				
	jbne _?L40				
						
	tst.b 31(a0)				
	jbne _?L87				
_?L40:						
						
	addq.l #1,a1				
	cmp.l a0,d5				
	jbne _?L35				
_?L37:						
	move.w #48,a0				
	add.l 192(sp),a0			
	move.l a0,44(sp)			
	move.l 192(sp),a0			
	lea (1584,a0),a0			
	move.l a0,48(sp)			
	move.l d4,d1				
	lsl.l #2,d1				
	move.l d1,52(sp)			
_?L49:						
						
	tst.l d4				
	jbeq _?L46				
	move.l a6,d6				
	add.l d4,d6				
	lea (152,sp),a1				
						
	move.l 44(sp),a0			
	move.l a6,a5				
						
	move.l #268435456,d7			
_?L56:						
						
	clr.l d5				
	move.b (a5)+,d5				
						
	tst.l d5				
	jbne _?L88				
	clr.l d0				
_?L43:						
						
	move.l d0,(a0)+				
						
	moveq #2,d0				
	cmp.l d3,d0				
	jbne _?L45				
						
	clr.l d5				
	move.b 31(a5),d5			
						
	tst.l d5				
	jbne _?L89				
	clr.l d0				
						
	move.l d0,4604(a0)			
_?L45:						
						
	addq.l #1,a1				
	cmp.l a5,d6				
	jbne _?L56				
						
	moveq #31,d1				
	cmp.l d4,d1				
	jbcs _?L90				
_?L46:						
	move.l 44(sp),a0			
	move.l 52(sp),d1			
	lea -48(a0,d1.l),a5			
	lea (120,sp),a1				
	add.l d4,a1				
						
	move.l d4,d6				
_?L54:						
						
	clr.l d7				
	move.b (a6,d6.l),d7			
						
	tst.l d7				
	jbne _?L50				
						
	clr.l 48(a5)				
						
	moveq #2,d2				
	cmp.l d3,d2				
	jbne _?L52				
						
	clr.l 4656(a5)				
_?L52:						
						
	addq.l #1,d6				
						
	addq.l #4,a5				
	addq.l #1,a1				
	moveq #32,d1				
	cmp.l d6,d1				
	jbne _?L54				
						
	add.l #128,44(sp)			
	move.l 44(sp),a0			
	cmp.l 48(sp),a0				
	jbne _?L49				
_?L48:						
						
	clr.l d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (148,sp),sp				
	rts					
_?L10:						
						
	moveq #2,d2				
	cmp.l d3,d2				
	jbne _?L91				
						
	or.w #256,d0				
	move.l d0,28(a0)			
						
	move.l 8(a0),d4				
	addq.l #1,d4				
	lsl.l #2,d4				
						
	tst.l d1				
	jbne _?L92				
_?L15:						
						
	tst.l d4				
	jbne _?L12				
						
	move.w #28,a3				
	add.l 188(sp),a3			
	lea (56,sp),a6				
	lea _mad_bit_read,a4			
	move.l a6,d6				
	add.l d4,d6				
	move.l d4,d5				
	jbra _?L34				
_?L24:						
						
	clr.b (a5)				
						
	addq.l #1,d5				
						
	lea (32,a5),a5				
	cmp.l d5,d3				
	jbeq _?L26				
						
	pea 4.w					
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	moveq #15,d1				
	cmp.l d0,d1				
	jbne _?L22				
_?L30:						
						
	move.l #529,d0				
						
	move.l 188(sp),a0			
	move.l d0,60(a0)			
						
	moveq #-1,d0				
_?L93:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (148,sp),sp				
	rts					
_?L58:						
						
	moveq #127,d0				
	not.b d0				
						
	moveq #1,d3				
_?L11:						
						
	clr.l d1				
	move.w 24(a0),d1			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	move.l 196(sp),a0			
	move.l 32(a0),-(sp)			
	move.l 28(a0),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.l 192(sp),a0			
	move.w d0,24(a0)			
						
	cmp.w 26(a0),d0				
	jbeq _?L81				
						
	btst #0,47(a0)				
	jbeq _?L20				
_?L81:						
						
	moveq #32,d4				
						
	move.w #28,a3				
	add.l 188(sp),a3			
	lea (56,sp),a6				
	move.l a6,d6				
	clr.l d7				
	lea _mad_bit_read,a4			
	jbra _?L19				
_?L91:						
						
	tst.l d1				
	jbne _?L59				
						
	moveq #2,d3				
						
	moveq #32,d4				
						
	move.w #28,a3				
	add.l 188(sp),a3			
	lea (56,sp),a6				
	move.l a6,d6				
	clr.l d7				
	lea _mad_bit_read,a4			
	jbra _?L19				
_?L92:						
						
	clr.l d0				
	move.w 24(a0),d0			
	move.l d0,-(sp)				
	move.l d4,d0				
	lsl.l #2,d0				
	move.l d0,a0				
	pea 128(a0)				
	move.l 196(sp),a0			
	move.l 32(a0),-(sp)			
	move.l 28(a0),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.l 192(sp),a0			
	move.w d0,24(a0)			
						
	cmp.w 26(a0),d0				
	jbeq _?L15				
						
	btst #0,47(a0)				
	jbne _?L15				
_?L20:						
						
	move.l #513,d0				
						
	move.l 188(sp),a0			
	move.l d0,60(a0)			
						
	moveq #-1,d0				
	jbra _?L93				
_?L86:						
						
	pea 6.w					
	move.l a3,-(sp)				
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l 36(sp),a1			
	move.b d0,(a1)				
	move.l 40(sp),a0			
	jbra _?L38				
_?L87:						
						
	pea 6.w					
	move.l a3,-(sp)				
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l 36(sp),a1			
	move.b d0,32(a1)			
	move.l 40(sp),a0			
						
	addq.l #1,a1				
	cmp.l a0,d5				
	jbne _?L35				
	jbra _?L37				
_?L90:						
						
	add.l #128,44(sp)			
	move.l 44(sp),a0			
	cmp.l 48(sp),a0				
	jbeq _?L48				
	lea (152,sp),a1				
						
	move.l 44(sp),a0			
	move.l a6,a5				
						
	move.l #268435456,d7			
	jbra _?L56				
_?L50:						
						
	move.l d7,-(sp)				
	move.l a3,-(sp)				
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d1				
						
	move.l d7,d0				
	subq.l #1,d0				
						
	moveq #1,d2				
	lsl.l d0,d2				
						
	eor.l d2,d1				
						
	and.l d1,d2				
						
	neg.l d2				
						
	or.l d1,d2				
						
	moveq #29,d1				
	sub.l d7,d1				
						
	lsl.l d1,d2				
						
	move.l #268435456,d1			
	asr.l d0,d1				
						
	add.l d2,d1				
						
	moveq #12,d0				
	asr.l d0,d1				
	move.w _linear_table-8(d7.l*4),d0	
	ext.l d0				
	muls.l d0,d1				
						
	moveq #12,d2				
	asr.l d2,d1				
	move.l 36(sp),a1			
	clr.l d0				
	move.b (a1),d0				
	move.w _sf_table(d0.l*4),d0		
	ext.l d0				
	muls.l d1,d0				
	move.l d0,48(a5)			
						
	moveq #2,d0				
	cmp.l d3,d0				
	jbne _?L52				
						
	clr.l d0				
	move.b 32(a1),d0			
	move.w _sf_table(d0.l*4),d0		
	ext.l d0				
	muls.l d1,d0				
	move.l d0,4656(a5)			
	jbra _?L52				
_?L88:						
						
	move.l d5,-(sp)				
	move.l a3,-(sp)				
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d5,d2				
	subq.l #1,d2				
						
	moveq #1,d1				
	lsl.l d2,d1				
						
	eor.l d1,d0				
						
	and.l d0,d1				
						
	neg.l d1				
						
	or.l d1,d0				
						
	moveq #29,d1				
	sub.l d5,d1				
						
	lsl.l d1,d0				
						
	move.w _linear_table-8(d5.l*4),a2	
						
	move.l d7,d1				
	asr.l d2,d1				
						
	add.l d1,d0				
						
	moveq #12,d1				
	asr.l d1,d0				
	move.l a2,d2				
	muls.l d2,d0				
						
	asr.l d1,d0				
	move.l 36(sp),a1			
	clr.l d1				
	move.b -32(a1),d1			
	move.w _sf_table(d1.l*4),d1		
	ext.l d1				
						
	muls.l d1,d0				
	move.l 40(sp),a0			
	jbra _?L43				
_?L89:						
						
	move.l d5,-(sp)				
	move.l a3,-(sp)				
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d1				
						
	move.l d5,d2				
	subq.l #1,d2				
						
	moveq #1,d0				
	lsl.l d2,d0				
						
	eor.l d0,d1				
						
	and.l d1,d0				
						
	neg.l d0				
						
	or.l d0,d1				
						
	move.w #29,a2				
	sub.l d5,a2				
						
	move.l a2,d0				
	lsl.l d0,d1				
						
	move.l d7,d0				
	asr.l d2,d0				
						
	add.l d1,d0				
						
	moveq #12,d1				
	asr.l d1,d0				
	move.w _linear_table-8(d5.l*4),d1	
	ext.l d1				
	muls.l d1,d0				
						
	moveq #12,d2				
	asr.l d2,d0				
	move.l 36(sp),a1			
	clr.l d1				
	move.b (a1),d1				
	move.w _sf_table(d1.l*4),d1		
	ext.l d1				
						
	muls.l d1,d0				
	move.l 40(sp),a0			
						
	move.l d0,4604(a0)			
	jbra _?L45				
_?L31:						
						
	move.l d6,a0				
	clr.b 32(a0)				
						
	clr.b (a0)+				
	move.l a0,d6				
						
	addq.l #1,d5				
						
	moveq #32,d0				
	cmp.l d5,d0				
	jbne _?L34				
	lea (120,sp),a1				
	moveq #88,d5				
	add.l sp,d5				
						
	move.l a6,a0				
	jbra _?L35				
_?L59:						
						
	move.l #256,d0				
						
	moveq #2,d3				
	jbra _?L11				
						
	.align	2				
	.globl	_mad_layer_II			
						
_mad_layer_II:					
	link.w a6,#-396				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 12(a6),a3			
						
	move.l 4(a3),a0				
						
	move.l 28(a3),d2			
						
	move.l d2,d0				
	and.l #4096,d0				
						
	tst.l a0				
	jbne _?L95				
						
	tst.l d0				
	jbeq _?L96				
						
	move.l 8(a6),a0				
	move.l 28(a0),d0			
	move.l 32(a0),d1			
	move.l d0,-340(a6)			
	move.l d1,-336(a6)			
	moveq #30,d7				
						
	move.l #_sbquant_table+140,-364(a6)	
						
	moveq #30,d1				
	move.l d1,-368(a6)			
						
	moveq #1,d5				
_?L97:						
						
	move.w #28,a4				
	add.l 8(a6),a4				
	move.l -364(a6),-376(a6)		
	lea (-320,a6),a0			
	move.l a0,-384(a6)			
	move.l -364(a6),a2			
	add.l d7,a2				
	move.l a2,-380(a6)			
	move.l #_bitalloc_table,d6		
	lea _mad_bit_read,a5			
	move.l -376(a6),-372(a6)		
	move.l a3,-376(a6)			
	move.l a0,a3				
	move.l a2,d3				
_?L111:						
						
	move.l -372(a6),a0			
	addq.l #1,-372(a6)			
	clr.l d0				
	move.b (a0)+,d0				
						
	move.l d6,a2				
	clr.l d4				
	move.w (a2,d0.l*4),d4			
						
	move.l d4,-(sp)				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	moveq #2,d0				
	cmp.l d5,d0				
	jbne _?L110				
						
	move.l d4,-(sp)				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,31(a3)			
_?L110:						
						
	cmp.l -372(a6),d3			
	jbne _?L111				
	move.l -376(a6),a3			
						
	cmp.l -368(a6),d7			
	jbcc _?L222				
	move.l -384(a6),a0			
	add.l d7,a0				
	move.l -368(a6),d4			
	add.l -364(a6),d4			
	move.l a4,d0				
	move.l a0,a4				
	move.l d6,d1				
	move.l a3,d6				
	move.l d1,a3				
	move.l d0,d3				
_?L114:						
						
	move.l -380(a6),a2			
	addq.l #1,-380(a6)			
	clr.l d0				
	move.b (a2)+,d0				
						
	move.w (a3,d0.l*4),d0			
	and.l #65535,d0				
						
	move.l d0,-(sp)				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,32(a4)			
						
	move.b d0,(a4)+				
						
	cmp.l -380(a6),d4			
	jbne _?L114				
	move.l d6,a3				
	move.l d3,a4				
_?L115:						
	move.l -384(a6),-380(a6)		
	lea (-256,a6),a0			
	move.l -368(a6),d3			
	add.l -384(a6),d3			
	move.l a3,d4				
	move.l a0,a3				
_?L113:						
						
	move.l -380(a6),a2			
	addq.l #1,-380(a6)			
	tst.b (a2)+				
	jbne _?L223				
_?L118:						
						
	moveq #2,d0				
	cmp.l d5,d0				
	jbne _?L120				
						
	move.l -380(a6),a0			
	tst.b 31(a0)				
	jbne _?L224				
_?L120:						
						
	addq.l #1,a3				
	cmp.l -380(a6),d3			
	jbne _?L113				
_?L117:						
						
	move.l d4,a3				
	btst #4,31(a3)				
	jbne _?L123				
_?L168:						
	lea (-192,a6),a0			
	clr.l d4				
						
	move.w #32,a2				
	add.l -384(a6),a2			
	move.l a2,-380(a6)			
						
	moveq #-1,d3				
	not.b d3				
	add.l a6,d3				
	moveq #32,d0				
	add.l d0,d3				
	move.l d7,-376(a6)			
	move.l -368(a6),d6			
	move.l a0,-360(a6)			
	move.l a3,-372(a6)			
	move.l -384(a6),a3			
_?L125:						
						
	tst.b (a3,d4.l)				
	jbne _?L225				
_?L144:						
						
	moveq #2,d0				
	cmp.l d5,d0				
	jbne _?L147				
						
	move.l -380(a6),a2			
	tst.b (a2,d4.l)				
	jbne _?L226				
_?L147:						
						
	addq.l #1,d4				
						
	addq.l #3,-360(a6)			
	cmp.l d6,d4				
	jbne _?L125				
_?L213:						
	move.l -376(a6),d7			
	move.l -372(a6),a3			
	move.l d7,d0				
	lsl.l #2,d0				
	add.l a3,d0				
	move.l d0,-372(a6)			
	lea (304,a3),a3				
	move.l a3,-380(a6)			
	move.l d7,d0				
	add.l d0,d0				
	add.l d7,d0				
	move.l d0,-348(a6)			
	move.l d5,d0				
	lsl.l #3,d0				
	add.l d5,d0				
	lsl.l #2,d0				
	move.l d0,-360(a6)			
						
	moveq #32,d0				
	sub.l -368(a6),d0			
	lsl.l #2,d0				
	move.l d0,-344(a6)			
						
	clr.l -376(a6)				
	move.l -368(a6),d0			
	lsl.l #2,d0				
	add.l #-256,d0				
	move.l d0,-352(a6)			
						
	lea (-320,a6),a0			
	lea (32,a0),a4				
_?L148:						
						
	tst.l d7				
	jbeq _?L151				
	move.l -380(a6),a0			
	lea (-304,a0),a0			
	move.l a0,-356(a6)			
	move.l -380(a6),a3			
	lea (-176,a3),a3			
						
	move.l -376(a6),d6			
	lsr.l #2,d6				
	move.l -380(a6),a5			
						
	clr.l d3				
						
	moveq #28,d4				
	add.l 8(a6),d4				
	move.l d6,-384(a6)			
	move.l -364(a6),d6			
	move.l a3,d0				
	move.l a5,a3				
	move.l d0,a5				
_?L166:						
						
	clr.l d0				
	move.b -320(a6,d3.l),d0			
						
	tst.l d0				
	jbne _?L227				
						
	move.l -356(a6),a2			
	clr.l 48(a2)				
	clr.l 48(a5)				
	clr.l d0				
_?L153:						
						
	move.l d0,(a3)+				
						
	moveq #2,d0				
	cmp.l d5,d0				
	jbne _?L155				
						
	clr.l d0				
	move.b (a4,d3.l),d0			
						
	tst.l d0				
	jbne _?L149				
						
	move.l -356(a6),a2			
	clr.l 4656(a2)				
	clr.l 4656(a5)				
						
	move.l d0,4604(a3)			
_?L155:						
						
	addq.l #1,d3				
						
	addq.l #4,-356(a6)			
	addq.l #4,a5				
	cmp.l d7,d3				
	jbne _?L166				
_?L151:						
						
	cmp.l -368(a6),d7			
	jbcc _?L161				
	lea (-320,a6),a0			
	add.l d7,a0				
						
	move.l -376(a6),d0			
	lsr.l #2,d0				
	add.l -348(a6),d0			
	lea -192(a6,d0.l),a1			
	move.l -372(a6),d1			
	add.l #128,d1				
	move.l -372(a6),a5			
	lea (256,a5),a5				
	move.l -364(a6),a2			
	add.l d7,a2				
	move.l #-320,d3				
	add.l a6,d3				
	add.l -368(a6),d3			
	move.l -372(a6),d0			
						
	move.w #28,a3				
	add.l 8(a6),a3				
	move.l a3,-384(a6)			
	move.l d0,a3				
	move.l d1,-396(a6)			
	move.l a4,-356(a6)			
	move.l a0,a4				
_?L160:						
						
	clr.l d0				
	move.b (a4)+,d0				
						
	tst.l d0				
	jbne _?L228				
						
	clr.l 48(a3)				
	move.l -396(a6),a0			
	clr.l 48(a0)				
	clr.l 48(a5)				
						
	moveq #2,d0				
	cmp.l d5,d0				
	jbne _?L159				
						
	clr.l 4656(a3)				
	clr.l 4656(a0)				
	clr.l 4656(a5)				
_?L159:						
						
	addq.l #3,a1				
	addq.l #4,a3				
	addq.l #4,-396(a6)			
	addq.l #4,a5				
	addq.l #1,a2				
	cmp.l a4,d3				
	jbne _?L160				
_?L232:						
	move.l -356(a6),a4			
_?L161:						
	move.l -352(a6),d6			
	add.l -380(a6),d6			
						
	sub.l a3,a3				
	moveq #32,d1				
	cmp.l -368(a6),d1			
	jbne _?L229				
_?L212:						
						
	lea (36,a3),a3				
	cmp.l -360(a6),a3			
	jbne _?L212				
_?L164:						
						
	addq.l #1,-376(a6)			
						
	add.l #384,-372(a6)			
	add.l #384,-380(a6)			
	moveq #12,d2				
	cmp.l -376(a6),d2			
	jbne _?L148				
						
	clr.l d0				
						
	movem.l -428(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L96:						
						
	btst #10,d2				
	jbne _?L172				
						
	move.l 16(a3),d0			
						
	cmp.l #192000,d0			
	jbhi _?L173				
						
	moveq #1,d5				
						
	cmp.l #48000,d0				
	jbhi _?L102				
_?L234:						
						
	cmp.l #32000,20(a3)			
	jbeq _?L230				
	moveq #8,d1				
	move.l d1,-368(a6)			
	moveq #72,d1				
_?L98:						
						
	add.l #_sbquant_table,d1		
	move.l d1,-364(a6)			
						
	moveq #2,d0				
	cmp.l a0,d0				
	jbeq _?L103				
_?L235:						
	move.l -368(a6),d7			
	moveq #32,d1				
	cmp.l d7,d1				
	jbcs _?L231				
_?L105:						
						
	move.l 8(a6),a0				
	move.l 28(a0),d0			
	move.l 32(a0),d1			
	move.l d0,-340(a6)			
	move.l d1,-336(a6)			
						
	tst.l d7				
	jbne _?L97				
_?L236:						
						
	tst.l -368(a6)				
	jbeq _?L108				
	move.w #28,a4				
	add.l a0,a4				
	lea (-320,a6),a2			
	move.l a2,-384(a6)			
	move.l -364(a6),-380(a6)		
	move.l #_bitalloc_table,d6		
	lea _mad_bit_read,a5			
	move.l -384(a6),a0			
	add.l d7,a0				
	move.l -368(a6),d4			
	add.l -364(a6),d4			
	move.l a4,d0				
	move.l a0,a4				
	move.l d6,d1				
	move.l a3,d6				
	move.l d1,a3				
	move.l d0,d3				
	jbra _?L114				
_?L223:						
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,(a3)				
	jbra _?L118				
_?L224:						
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,32(a3)			
						
	addq.l #1,a3				
	cmp.l -380(a6),d3			
	jbne _?L113				
	jbra _?L117				
_?L225:						
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a2			
	move.b d0,(a2)				
						
	move.b -256(a6,d4.l),d7			
						
	cmp.b #2,d7				
	jbeq _?L139				
	jbhi _?L140				
	tst.b d7				
	jbeq _?L141				
_?L142:						
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a2			
	move.b d0,2(a2)				
						
	and.l #255,d7				
						
	move.l d4,d0				
	add.l d0,d0				
	move.l d0,a1				
	add.l d4,a1				
	lea (a6,a1.l),a1			
						
	move.l -360(a6),a0			
	move.b -193(a1,d7.l),1(a0)		
	jbra _?L144				
_?L226:						
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a0			
	move.b d0,96(a0)			
						
	move.l d4,a2				
	move.b (a2,d3.l),d7			
						
	cmp.b #2,d7				
	jbeq _?L130				
	jbhi _?L131				
	tst.b d7				
	jbeq _?L132				
_?L133:						
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a2			
	move.b d0,98(a2)			
						
	clr.l d2				
	move.b d7,d2				
						
	move.l d4,d0				
	add.l d0,d0				
	move.l d0,a1				
	add.l d4,a1				
	lea (a6,a1.l),a1			
						
	move.l -360(a6),a0			
	move.b -97(a1,d2.l),97(a0)		
_?L233:						
						
	addq.l #1,d4				
						
	addq.l #3,-360(a6)			
	cmp.l d6,d4				
	jbne _?L125				
	jbra _?L213				
_?L229:						
	lea _memset,a5				
						
	move.l d6,d4				
						
	clr.l d3				
_?L162:						
						
	move.l -344(a6),-(sp)			
	clr.l -(sp)				
	move.l d4,-(sp)				
	jbsr (a5)				
	lea (12,sp),sp				
						
	addq.l #1,d3				
						
	add.l #128,d4				
	moveq #3,d1				
	cmp.l d3,d1				
	jbne _?L162				
						
	add.l #4608,d6				
	lea (36,a3),a3				
	cmp.l -360(a6),a3			
	jbeq _?L164				
						
	move.l d6,d4				
						
	clr.l d3				
	jbra _?L162				
_?L141:						
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a0			
	move.b d0,1(a0)				
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a2			
	move.b d0,2(a2)				
	jbra _?L144				
_?L132:						
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a2			
	move.b d0,97(a2)			
						
	pea 6.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l -360(a6),a0			
	move.b d0,98(a0)			
						
	addq.l #1,d4				
						
	addq.l #3,-360(a6)			
	cmp.l d6,d4				
	jbne _?L125				
	jbra _?L213				
_?L123:						
						
	clr.l d3				
	move.w 24(a3),d3			
	move.l a4,-(sp)				
	pea -340(a6)				
	jbsr _mad_bit_length			
	addq.l #4,sp				
	move.l d3,(sp)				
	move.l d0,-(sp)				
	move.l -336(a6),-(sp)			
	move.l -340(a6),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.w d0,24(a3)			
						
	cmp.w 26(a3),d0				
	jbeq _?L168				
						
	btst #0,47(a3)				
	jbne _?L168				
_?L169:						
						
	move.l #513,d0				
						
	move.l 8(a6),a0				
	move.l d0,60(a0)			
						
	moveq #-1,d0				
_?L239:						
						
	movem.l -428(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L228:						
						
	pea -332(a6)				
						
	clr.l d1				
	move.b (a2),d1				
						
	clr.l d2				
	move.w _bitalloc_table+2(d1.l*4),d2	
						
	move.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
						
	move.l d0,a0				
	move.b _offset_table-1(a0,d1.l),d1	
	and.l #255,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #2,d0				
	pea _qc_table(d0.l)			
	move.l -384(a6),-(sp)			
	move.l a1,-388(a6)			
	move.l a2,-392(a6)			
	jbsr _II_samples			
	lea (12,sp),sp				
						
	move.l -332(a6),d0			
	move.l d0,d6				
	moveq #12,d1				
	asr.l d1,d6				
	move.l -328(a6),d0			
	move.l d0,d4				
	asr.l d1,d4				
	move.l -324(a6),d0			
	move.l d0,d2				
	asr.l d1,d2				
	move.l -388(a6),a1			
	clr.l d1				
	move.b (a1),d1				
	move.w _sf_table(d1.l*4),d1		
	ext.l d1				
	move.l d6,d0				
	muls.l d1,d0				
	move.l d0,48(a3)			
	move.l d4,d0				
	muls.l d1,d0				
	move.l -396(a6),a0			
	move.l d0,48(a0)			
	muls.l d2,d1				
	move.l d1,48(a5)			
						
	move.l -392(a6),a2			
	moveq #2,d0				
	cmp.l d5,d0				
	jbne _?L159				
						
	clr.l d1				
	move.b 96(a1),d1			
	move.w _sf_table(d1.l*4),d0		
	ext.l d0				
	muls.l d0,d6				
	move.l d6,4656(a3)			
	muls.l d0,d4				
	move.l d4,4656(a0)			
	muls.l d2,d0				
	move.l d0,4656(a5)			
						
	addq.l #3,a1				
	addq.l #4,a3				
	addq.l #4,-396(a6)			
	addq.l #4,a5				
	addq.l #1,a2				
	cmp.l a4,d3				
	jbne _?L160				
	jbra _?L232				
_?L227:						
						
	pea -332(a6)				
						
	move.l d6,a2				
	clr.l d1				
	move.b (a2,d3.l),d1			
						
	lea _bitalloc_table,a1			
	clr.l d2				
	move.w 2(a1,d1.l*4),d2			
						
	move.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
						
	move.l d0,a0				
	move.b _offset_table-1(a0,d1.l),d1	
	and.l #255,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #2,d0				
	pea _qc_table(d0.l)			
	move.l d4,-(sp)				
	jbsr _II_samples			
	lea (12,sp),sp				
						
	move.l d3,d0				
	add.l d0,d0				
	move.l d0,a1				
	add.l d3,a1				
	lea (a6,a1.l),a1			
	move.l -384(a6),a2			
	clr.l d0				
	move.b -192(a2,a1.l),d0			
	move.w _sf_table(d0.l*4),d1		
	ext.l d1				
	move.l -332(a6),d0			
	moveq #12,d2				
	asr.l d2,d0				
	muls.l d1,d0				
	move.l -356(a6),a0			
	move.l d0,48(a0)			
	move.l -328(a6),d0			
	asr.l d2,d0				
	muls.l d1,d0				
	move.l d0,48(a5)			
	move.l -324(a6),d0			
	asr.l d2,d0				
	muls.l d1,d0				
	jbra _?L153				
_?L149:						
						
	pea -332(a6)				
						
	move.l d6,a0				
	clr.l d1				
	move.b (a0,d3.l),d1			
						
	lea _bitalloc_table,a1			
	clr.l d2				
	move.w 2(a1,d1.l*4),d2			
						
	move.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
						
	move.l d0,a2				
	move.b _offset_table-1(a2,d1.l),d1	
	and.l #255,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #2,d0				
	pea _qc_table(d0.l)			
	move.l d4,-(sp)				
	jbsr _II_samples			
	lea (12,sp),sp				
						
	move.l d3,d0				
	add.l d0,d0				
	move.l d0,a1				
	add.l d3,a1				
	lea (a6,a1.l),a1			
	move.l -384(a6),a0			
	clr.l d0				
	move.b -96(a0,a1.l),d0			
	move.w _sf_table(d0.l*4),d1		
	ext.l d1				
	move.l -332(a6),d0			
	moveq #12,d2				
	asr.l d2,d0				
	muls.l d1,d0				
	move.l -356(a6),a0			
	move.l d0,4656(a0)			
	move.l -328(a6),d0			
	asr.l d2,d0				
	muls.l d1,d0				
	move.l d0,4656(a5)			
	move.l -324(a6),d0			
	asr.l d2,d0				
	muls.l d1,d0				
						
	move.l d0,4604(a3)			
	jbra _?L155				
_?L140:						
						
	cmp.b #3,d7				
	jbeq _?L142				
						
	btst #0,d7				
	jbeq _?L144				
						
	and.l #255,d7				
						
	move.l d4,d0				
	add.l d0,d0				
	move.l d0,a1				
	add.l d4,a1				
	lea (a6,a1.l),a1			
						
	move.l -360(a6),a0			
	move.b -193(a1,d7.l),1(a0)		
	jbra _?L144				
_?L131:						
						
	cmp.b #3,d7				
	jbeq _?L133				
						
	btst #0,d7				
	jbeq _?L147				
						
	clr.l d2				
	move.b d7,d2				
						
	move.l d4,d0				
	add.l d0,d0				
	move.l d0,a1				
	add.l d4,a1				
	lea (a6,a1.l),a1			
						
	move.l -360(a6),a0			
	move.b -97(a1,d2.l),97(a0)		
	jbra _?L233				
_?L139:						
						
	move.b d0,1(a2)				
						
	move.b d0,2(a2)				
	jbra _?L144				
_?L95:						
						
	tst.l d0				
	jbne _?L170				
						
	btst #10,d2				
	jbne _?L171				
						
	move.l 16(a3),d0			
						
	lsr.l #1,d0				
						
	moveq #2,d5				
						
	cmp.l #48000,d0				
	jbhi _?L102				
	jbra _?L234				
_?L130:						
						
	move.b d0,97(a0)			
						
	move.b d0,98(a0)			
						
	addq.l #1,d4				
						
	addq.l #3,-360(a6)			
	cmp.l d6,d4				
	jbne _?L125				
	jbra _?L213				
_?L170:						
	moveq #30,d1				
	move.l d1,-368(a6)			
	moveq #115,d1				
	not.b d1				
						
	moveq #2,d5				
						
	add.l #_sbquant_table,d1		
	move.l d1,-364(a6)			
						
	moveq #2,d0				
	cmp.l a0,d0				
	jbne _?L235				
_?L103:						
						
	or.w #256,d2				
	move.l d2,28(a3)			
						
	move.l 8(a3),d7				
	addq.l #1,d7				
	lsl.l #2,d7				
	cmp.l -368(a6),d7			
	jbls _?L105				
	move.l -368(a6),d7			
						
	move.l 8(a6),a0				
	move.l 28(a0),d0			
	move.l 32(a0),d1			
	move.l d0,-340(a6)			
	move.l d1,-336(a6)			
						
	tst.l d7				
	jbne _?L97				
	jbra _?L236				
_?L231:						
	moveq #32,d7				
						
	move.l 8(a6),a0				
	move.l 28(a0),d0			
	move.l 32(a0),d1			
	move.l d0,-340(a6)			
	move.l d1,-336(a6)			
						
	tst.l d7				
	jbne _?L97				
	jbra _?L236				
_?L102:						
						
	cmp.l #80000,d0				
	jbhi _?L99				
	moveq #27,d1				
	move.l d1,-368(a6)			
	moveq #4,d1				
	jbra _?L98				
_?L171:						
						
	moveq #2,d5				
_?L99:						
						
	cmp.l #48000,20(a3)			
	sne d1					
	extb.l d1				
	neg.l d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	move.l d0,d1				
	addq.l #4,d1				
						
	move.l _sbquant_table(d0.l),-368(a6)	
	jbra _?L98				
_?L222:						
						
	tst.l -368(a6)				
	jbne _?L115				
_?L108:						
						
	btst #4,31(a3)				
	jbne _?L237				
_?L122:						
	clr.l -368(a6)				
_?L238:						
	move.l d7,d0				
	lsl.l #2,d0				
	add.l a3,d0				
	move.l d0,-372(a6)			
	lea (304,a3),a3				
	move.l a3,-380(a6)			
	move.l d7,d0				
	add.l d0,d0				
	add.l d7,d0				
	move.l d0,-348(a6)			
	move.l d5,d0				
	lsl.l #3,d0				
	add.l d5,d0				
	lsl.l #2,d0				
	move.l d0,-360(a6)			
						
	moveq #32,d0				
	sub.l -368(a6),d0			
	lsl.l #2,d0				
	move.l d0,-344(a6)			
						
	clr.l -376(a6)				
	move.l -368(a6),d0			
	lsl.l #2,d0				
	add.l #-256,d0				
	move.l d0,-352(a6)			
						
	lea (-320,a6),a0			
	lea (32,a0),a4				
	jbra _?L148				
_?L172:						
						
	moveq #1,d5				
						
	cmp.l #48000,20(a3)			
	sne d1					
	extb.l d1				
	neg.l d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	move.l d0,d1				
	addq.l #4,d1				
						
	move.l _sbquant_table(d0.l),-368(a6)	
	jbra _?L98				
_?L230:						
						
	moveq #12,d1				
	move.l d1,-368(a6)			
	moveq #106,d1				
	jbra _?L98				
_?L237:						
						
	clr.l d3				
	move.w 24(a3),d3			
	move.l 8(a6),a2				
	pea 28(a2)				
	pea -340(a6)				
	jbsr _mad_bit_length			
	addq.l #4,sp				
	move.l d3,(sp)				
	move.l d0,-(sp)				
	move.l -336(a6),-(sp)			
	move.l -340(a6),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.w d0,24(a3)			
						
	cmp.w 26(a3),d0				
	jbeq _?L122				
						
	btst #0,47(a3)				
	jbeq _?L169				
	clr.l -368(a6)				
	jbra _?L238				
_?L173:						
	move.l #546,d0				
						
	move.l 8(a6),a0				
	move.l d0,60(a0)			
						
	moveq #-1,d0				
	jbra _?L239				
						
	.data					
	.align	2				
						
						
_qc_table:					
						
	.dc.w	3				
						
	.dc.b	2				
						
	.dc.b	5				
						
	.dc.l	357913941			
						
	.dc.l	134217728			
						
	.dc.w	5				
						
	.dc.b	3				
						
	.dc.b	7				
						
	.dc.l	429496730			
						
	.dc.l	134217728			
						
	.dc.w	7				
						
	.dc.b	0				
						
	.dc.b	3				
						
	.dc.l	306783378			
						
	.dc.l	67108864			
						
	.dc.w	9				
						
	.dc.b	4				
						
	.dc.b	10				
						
	.dc.l	477218588			
						
	.dc.l	134217728			
						
	.dc.w	15				
						
	.dc.b	0				
						
	.dc.b	4				
						
	.dc.l	286331153			
						
	.dc.l	33554432			
						
	.dc.w	31				
						
	.dc.b	0				
						
	.dc.b	5				
						
	.dc.l	277094664			
						
	.dc.l	16777216			
						
	.dc.w	63				
						
	.dc.b	0				
						
	.dc.b	6				
						
	.dc.l	272696336			
						
	.dc.l	8388608				
						
	.dc.w	127				
						
	.dc.b	0				
						
	.dc.b	7				
						
	.dc.l	270549121			
						
	.dc.l	4194304				
						
	.dc.w	255				
						
	.dc.b	0				
						
	.dc.b	8				
						
	.dc.l	269488144			
						
	.dc.l	2097152				
						
	.dc.w	511				
						
	.dc.b	0				
						
	.dc.b	9				
						
	.dc.l	268960770			
						
	.dc.l	1048576				
						
	.dc.w	1023				
						
	.dc.b	0				
						
	.dc.b	10				
						
	.dc.l	268697856			
						
	.dc.l	524288				
						
	.dc.w	2047				
						
	.dc.b	0				
						
	.dc.b	11				
						
	.dc.l	268566592			
						
	.dc.l	262144				
						
	.dc.w	4095				
						
	.dc.b	0				
						
	.dc.b	12				
						
	.dc.l	268501008			
						
	.dc.l	131072				
						
	.dc.w	8191				
						
	.dc.b	0				
						
	.dc.b	13				
						
	.dc.l	268468228			
						
	.dc.l	65536				
						
	.dc.w	16383				
						
	.dc.b	0				
						
	.dc.b	14				
						
	.dc.l	268451841			
						
	.dc.l	32768				
						
	.dc.w	32767				
						
	.dc.b	0				
						
	.dc.b	15				
						
	.dc.l	268443648			
						
	.dc.l	16384				
						
	.dc.w	-1				
						
	.dc.b	0				
						
	.dc.b	16				
						
	.dc.l	268439552			
						
	.dc.l	8192				
						
						
_offset_table:					

	.dc.b $00				
	.dc.b $01,$10
	.dc.b $00				
	.ds.b	11				

	.dc.b $00				
	.dc.b $01,$02,$03,$04,$05,$10
	.dc.b $00				
	.ds.b	7				

	.dc.b $00				
	.dc.b $01,$02,$03,$04,$05,$06,$07,$08
	.dc.b $09,$0a,$0b,$0c,$0d,$0e		

	.dc.b $00				
	.dc.b $01,$03,$04,$05,$06,$07,$08,$09
	.dc.b $0a,$0b,$0c,$0d,$0e,$0f		

	.dc.b $00				
	.dc.b $01,$02,$03,$04,$05,$06,$07,$08
	.dc.b $09,$0a,$0b,$0c,$0d,$10		

	.dc.b $00				
	.dc.b $02,$04,$05,$06,$07,$08,$09,$0a
	.dc.b $0b,$0c,$0d,$0e,$0f,$10		
	.align	2				
						
						
_bitalloc_table:				
						
	.dc.w	2				
						
	.dc.w	0				
						
	.dc.w	2				
						
	.dc.w	3				
						
	.dc.w	3				
						
	.dc.w	3				
						
	.dc.w	3				
						
	.dc.w	1				
						
	.dc.w	4				
						
	.dc.w	2				
						
	.dc.w	4				
						
	.dc.w	3				
						
	.dc.w	4				
						
	.dc.w	4				
						
	.dc.w	4				
						
	.dc.w	5				
	.align	2				
						
						
_sbquant_table:					
						
	.dc.l	27				
						
	.dc.b $07,$07,$07,$06,$06,$06,$06,$06
	.dc.b $06,$06,$06,$03,$03,$03,$03,$03
	.dc.b $03,$03,$03,$03,$03,$03,$03
	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				
	.ds.b	2				
						
	.dc.l	30				
						
	.dc.b $07,$07,$07,$06,$06,$06,$06,$06
	.dc.b $06,$06,$06,$03,$03,$03,$03,$03
	.dc.b $03,$03,$03,$03,$03,$03,$03
	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				
						
	.dc.l	8				
						
	.dc.b $05,$05,$02,$02,$02,$02,$02,$02
	.dc.b $00				
	.ds.b	21				
						
	.dc.l	12				
						
	.dc.b $05,$05,$02,$02,$02,$02,$02,$02
	.dc.b $02,$02,$02,$02
	.dc.b $00				
	.ds.b	17				
						
	.dc.l	30				
						
	.dc.b $04,$04,$04,$04,$02,$02,$02,$02
	.dc.b $02,$02,$02,$01,$01,$01,$01	
	.dc.b $01,$01,$01,$01,$01,$01,$01,$01
	.dc.b $01,$01,$01,$01,$01,$01,$01	
	.align	2				
						
						
_linear_table:					
	.dc.l	357913941			
	.dc.l	306783378			
	.dc.l	286331153			
	.dc.l	277094664			
	.dc.l	272696336			
	.dc.l	270549121			
	.dc.l	269488144			
	.dc.l	268960770			
	.dc.l	268697856			
	.dc.l	268566592			
	.dc.l	268501008			
	.dc.l	268468228			
	.dc.l	268451841			
	.dc.l	268443648			
	.align	2				
						
						
_sf_table:					
	.dc.l	536870912			
	.dc.l	426114725			
	.dc.l	338207482			
	.dc.l	268435456			
	.dc.l	213057363			
	.dc.l	169103741			
	.dc.l	134217728			
	.dc.l	106528681			
	.dc.l	84551870			
	.dc.l	67108864			
	.dc.l	53264341			
	.dc.l	42275935			
	.dc.l	33554432			
	.dc.l	26632170			
	.dc.l	21137968			
	.dc.l	16777216			
	.dc.l	13316085			
	.dc.l	10568984			
	.dc.l	8388608				
	.dc.l	6658043				
	.dc.l	5284492				
	.dc.l	4194304				
	.dc.l	3329021				
	.dc.l	2642246				
	.dc.l	2097152				
	.dc.l	1664511				
	.dc.l	1321123				
	.dc.l	1048576				
	.dc.l	832255				
	.dc.l	660561				
	.dc.l	524288				
	.dc.l	416128				
	.dc.l	330281				
	.dc.l	262144				
	.dc.l	208064				
	.dc.l	165140				
	.dc.l	131072				
	.dc.l	104032				
	.dc.l	82570				
	.dc.l	65536				
	.dc.l	52016				
	.dc.l	41285				
	.dc.l	32768				
	.dc.l	26008				
	.dc.l	20643				
	.dc.l	16384				
	.dc.l	13004				
	.dc.l	10321				
	.dc.l	8192				
	.dc.l	6502				
	.dc.l	5161				
	.dc.l	4096				
	.dc.l	3251				
	.dc.l	2580				
	.dc.l	2048				
	.dc.l	1625				
	.dc.l	1290				
	.dc.l	1024				
	.dc.l	813				
	.dc.l	645				
	.dc.l	512				
	.dc.l	406				
	.dc.l	323				
	.dc.l	0				
						
