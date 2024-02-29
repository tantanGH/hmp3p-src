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
	jbpl _?L2				
	neg.l d0				
_?L2:						
						
	rts					
						
	.align	2				
	.globl	_mad_f_div			
						
_mad_f_div:					
	movem.l d3/d4/d5/d6,-(sp)		
	move.l 20(sp),d2			
	move.l 24(sp),d1			
						
	move.l d2,d4				
	divs.l d1,d4				
	tst.l d4				
	jbge _?L4				
	neg.l d4				
_?L4:						
	move.l d4,d3				
						
	tst.l d2				
	jbge _?L5				
						
	neg.l d2				
						
	neg.l d1				
_?L5:						
						
	move.l d2,d0				
	divsl.l d1,d5:d0			
	move.l d5,d0				
						
	tst.l d1				
	jbge _?L6				
						
	neg.l d2				
						
	neg.l d1				
_?L6:						
						
	moveq #7,d6				
	cmp.l d4,d6				
	jbge _?L7				
						
	subq.l #8,d4				
	jbne _?L15				
						
	tst.l d5				
	jbne _?L15				
						
	move.l d2,d4				
	eor.l d1,d4				
						
	jbpl _?L3				
	moveq #28,d4				
_?L9:						
						
	add.l d0,d0				
						
	cmp.l d0,d1				
	jbgt _?L12				
						
	addq.l #1,d3				
_?L12:						
						
	eor.l d1,d2				
						
	jbpl _?L13				
						
	neg.l d3				
_?L13:						
						
	move.l d3,d0				
	lsl.l d4,d0				
_?L3:						
						
	movem.l (sp)+,d3/d4/d5/d6		
	rts					
_?L7:						
						
	moveq #28,d4				
	tst.l d5				
	jbeq _?L9				
_?L11:						
						
	add.l d3,d3				
						
	add.l d0,d0				
						
	cmp.l d1,d0				
	jblt _?L10				
						
	sub.l d1,d0				
						
	addq.l #1,d3				
_?L10:						
						
	subq.l #1,d4				
						
	jbeq _?L9				
						
	tst.l d0				
	jbne _?L11				
	jbra _?L9				
_?L15:						
						
	clr.l d0				
	jbra _?L3				
						
						
