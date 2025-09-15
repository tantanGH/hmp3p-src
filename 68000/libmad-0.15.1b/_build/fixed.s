* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"fixed.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_mad_f_abs			
						
_mad_f_abs:					
						
	move.l 4(sp),d0				
	jbmi _?L5				
						
	rts					
_?L5:						
						
	neg.l d0				
						
	rts					
						
	.globl	___divsi3			
	.globl	___modsi3			
	.align	2				
	.globl	_mad_f_div			
						
_mad_f_div:					
	movem.l d3/d4/d5/d6,-(sp)		
	move.l 20(sp),d5			
	move.l 24(sp),d4			
						
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	jbsr ___divsi3				
	addq.l #8,sp				
	move.l d0,d6				
						
	jbmi _?L29				
	move.l d6,d3				
						
	tst.l d5				
	jblt _?L30				
_?L8:						
						
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	jbsr ___modsi3				
	addq.l #8,sp				
						
	tst.l d4				
	jblt _?L31				
_?L9:						
						
	moveq #7,d1				
	cmp.l d6,d1				
	jbge _?L10				
						
	subq.l #8,d6				
	jbeq _?L32				
_?L21:						
						
	moveq #0,d0				
_?L6:						
						
	movem.l (sp)+,d3/d4/d5/d6		
	rts					
_?L10:						
						
	eor.l d4,d5				
						
	moveq #28,d1				
_?L26:						
	tst.l d0				
	jbeq _?L13				
						
	add.l d3,d3				
						
	add.l d0,d0				
						
	cmp.l d4,d0				
	jblt _?L14				
						
	sub.l d4,d0				
						
	addq.l #1,d3				
_?L14:						
						
	subq.l #1,d1				
						
	jbne _?L26				
						
	add.l d0,d0				
_?L13:						
						
	cmp.l d4,d0				
	jblt _?L18				
						
	addq.l #1,d3				
_?L18:						
						
	tst.l d5				
	jblt _?L17				
						
	move.l d3,d0				
	lsl.l d1,d0				
_?L33:						
						
	movem.l (sp)+,d3/d4/d5/d6		
	rts					
_?L31:						
						
	neg.l d5				
						
	neg.l d4				
	jbra _?L9				
_?L30:						
						
	neg.l d5				
						
	neg.l d4				
						
	move.l d4,-(sp)				
	move.l d5,-(sp)				
	jbsr ___modsi3				
	addq.l #8,sp				
						
	tst.l d4				
	jbge _?L9				
	jbra _?L31				
_?L29:						
						
	neg.l d6				
	move.l d6,d3				
						
	tst.l d5				
	jbge _?L8				
	jbra _?L30				
_?L32:						
						
	tst.l d0				
	jbne _?L21				
						
	eor.l d4,d5				
						
	jbpl _?L6				
						
	moveq #28,d1				
	tst.l d4				
	jbne _?L17				
						
	moveq #9,d3				
_?L17:						
						
	neg.l d3				
						
	move.l d3,d0				
	lsl.l d1,d0				
	jbra _?L33				
						
						
