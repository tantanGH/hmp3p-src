* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
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
						
	.align	2				
	.globl	_mad_f_div			
						
_mad_f_div:					
	movem.l d3/d4/d5/d6,-(sp)		
	move.l 20(sp),d2			
	move.l 24(sp),d3			
						
	move.l d2,d4				
	divs.l d3,d4				
	tst.l d4				
	jblt _?L28				
	move.l d4,d1				
						
	tst.l d2				
	jblt _?L29				
_?L8:						
						
	move.l d2,d0				
	divsl.l d3,d5:d0			
	move.l d5,d0				
						
	tst.l d3				
	jblt _?L30				
_?L9:						
						
	moveq #7,d6				
	cmp.l d4,d6				
	jbge _?L10				
						
	subq.l #8,d4				
	jbeq _?L31				
_?L21:						
						
	clr.l d0				
_?L6:						
						
	movem.l (sp)+,d3/d4/d5/d6		
	rts					
_?L10:						
						
	move.l d2,d4				
	eor.l d3,d4				
						
	moveq #28,d2				
	tst.l d5				
	jbeq _?L13				
_?L16:						
						
	add.l d1,d1				
						
	add.l d0,d0				
						
	cmp.l d3,d0				
	jblt _?L14				
						
	sub.l d3,d0				
						
	addq.l #1,d1				
_?L14:						
						
	subq.l #1,d2				
						
	jbeq _?L32				
						
	tst.l d0				
	jbne _?L16				
_?L13:						
						
	cmp.l d3,d0				
	jblt _?L18				
_?L34:						
						
	addq.l #1,d1				
_?L18:						
						
	tst.l d4				
	jblt _?L17				
						
	move.l d1,d0				
	lsl.l d2,d0				
_?L33:						
						
	movem.l (sp)+,d3/d4/d5/d6		
	rts					
_?L30:						
						
	neg.l d2				
						
	neg.l d3				
	jbra _?L9				
_?L29:						
						
	neg.l d2				
						
	neg.l d3				
						
	move.l d2,d0				
	divsl.l d3,d5:d0			
	move.l d5,d0				
						
	tst.l d3				
	jbge _?L9				
	jbra _?L30				
_?L28:						
						
	neg.l d4				
	move.l d4,d1				
						
	tst.l d2				
	jbge _?L8				
	jbra _?L29				
_?L31:						
						
	tst.l d5				
	jbne _?L21				
						
	eor.l d3,d2				
						
	jbpl _?L6				
						
	moveq #28,d2				
	tst.l d3				
	jbne _?L17				
						
	moveq #9,d1				
_?L17:						
						
	neg.l d1				
						
	move.l d1,d0				
	lsl.l d2,d0				
	jbra _?L33				
_?L32:						
						
	add.l d0,d0				
						
	cmp.l d3,d0				
	jblt _?L18				
	jbra _?L34				
						
						
