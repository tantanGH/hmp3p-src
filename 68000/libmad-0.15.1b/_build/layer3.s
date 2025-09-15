* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"layer3.c"			
						
						
						
						
						
	.text					
	.globl	___mulsi3			
	.align	2				
						
_III_aliasreduce:				
	movem.l d3/d4/d5/d6/a3/a4,-(sp)		
	move.l 28(sp),a3			
						
	move.l 32(sp),d0			
	add.l d0,d0				
	add.l d0,d0				
						
	move.l a3,d3				
	add.l d0,d3				
						
	lea (72,a3),a3				
						
	cmp.l d3,a3				
	jbcc _?L1				
	lea ___mulsi3,a4			
_?L3:						
						
	move.l (a3),d1				
						
	move.l -4(a3),d2			
	moveq #12,d0				
	asr.l d0,d2				
	move.l d2,d4				
	lsl.l #3,d4				
	sub.l d2,d4				
	lsl.l #3,d4				
	sub.l d2,d4				
	lsl.l #3,d4				
	sub.l d2,d4				
	lsl.l #3,d4				
						
	move.l d1,d5				
	neg.l d5				
	asr.l d0,d5				
	move.l d5,d0				
	lsl.l #5,d0				
	add.l d5,d0				
	lsl.l #4,d0				
	sub.l d5,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,d4				
	move.l d4,-4(a3)			
						
	move.l d1,d0				
	moveq #12,d4				
	asr.l d4,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	lsl.l #3,d1				
						
	move.l d2,d0				
	lsl.l #5,d0				
	add.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,d1				
	move.l d1,(a3)				
						
	move.l 4(a3),d6				
						
	move.l -8(a3),d5			
	asr.l d4,d5				
	move.l d5,d0				
	lsl.l #3,d0				
	sub.l d5,d0				
	move.l d0,d1				
	lsl.l #7,d1				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,d4				
	sub.l d5,d4				
						
	move.l d6,d0				
	neg.l d0				
	moveq #12,d1				
	asr.l d1,d0				
	pea -1933.w				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	add.l d4,d0				
	move.l d0,-8(a3)			
						
	moveq #12,d2				
	asr.l d2,d6				
	move.l d6,d0				
	lsl.l #3,d0				
	sub.l d6,d0				
	move.l d0,d2				
	lsl.l #7,d2				
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,d4				
	sub.l d6,d4				
						
	pea -1933.w				
	move.l d5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	add.l d4,d0				
	move.l d0,4(a3)				
						
	move.l 8(a3),d1				
						
	move.l -12(a3),d2			
	moveq #12,d4				
	asr.l d4,d2				
	move.l d2,a0				
	add.l d2,a0				
	move.l a0,d0				
	add.l d2,d0				
	move.l d0,d4				
	lsl.l #3,d4				
	add.l d4,d0				
	move.l d0,d4				
	lsl.l #3,d4				
	add.l d4,d0				
	lsl.l #4,d0				
	move.l d0,a1				
	add.l d2,a1				
						
	move.l d1,d4				
	neg.l d4				
	moveq #12,d5				
	asr.l d5,d4				
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
	add.l d4,d0				
	lsl.l #6,d0				
	add.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,a1				
	move.l a1,-12(a3)			
						
	move.l d1,d4				
	asr.l d5,d4				
	move.l d4,d0				
	add.l d4,d0				
	add.l d4,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	add.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	add.l d0,d1				
	lsl.l #4,d1				
	add.l d4,d1				
						
	add.l a0,a0				
	move.l a0,d0				
	add.l d2,d0				
	lsl.l #6,d0				
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,d1				
	move.l d1,8(a3)				
						
	move.l 12(a3),d2			
						
	move.l -16(a3),d0			
	asr.l d5,d0				
	move.l d0,d1				
	lsl.l #6,d1				
	sub.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l d0,d1				
						
	move.l d2,d4				
	neg.l d4				
	asr.l d5,d4				
	move.l d4,a0				
	add.l d4,a0				
	move.l a0,d5				
	add.l d4,d5				
	move.l d5,d6				
	lsl.l #5,d6				
	move.l d6,a0				
	sub.l d5,a0				
	add.l a0,a0				
	add.l a0,a0				
	add.l a0,d4				
	add.l d4,d4				
	sub.l d4,d1				
	move.l d1,-16(a3)			
						
	moveq #12,d1				
	asr.l d1,d2				
	move.l d2,d1				
	lsl.l #6,d1				
	sub.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l d2,d1				
						
	move.l d0,a0				
	add.l d0,a0				
	move.l a0,d2				
	add.l d0,d2				
	move.l d2,d4				
	lsl.l #5,d4				
	move.l d4,a0				
	sub.l d2,a0				
	add.l a0,a0				
	add.l a0,a0				
	add.l a0,d0				
	add.l d0,d0				
	sub.l d0,d1				
	move.l d1,12(a3)			
						
	move.l 16(a3),d2			
						
	move.l -20(a3),d1			
	moveq #12,d4				
	asr.l d4,d1				
	move.l d1,d0				
	lsl.l #8,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,a0				
	add.l d1,a0				
						
	move.l d2,d4				
	neg.l d4				
	moveq #12,d5				
	asr.l d5,d4				
	move.l d4,d0				
	add.l d4,d0				
	add.l d4,d0				
	lsl.l #5,d0				
	add.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,a0				
	move.l a0,-20(a3)			
						
	asr.l d5,d2				
	move.l d2,d0				
	lsl.l #8,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d2				
						
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	lsl.l #5,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,d2				
	move.l d2,16(a3)			
						
	move.l 20(a3),d2			
						
	move.l -24(a3),d0			
	asr.l d5,d0				
	move.l d0,d1				
	moveq #10,d4				
	lsl.l d4,d1				
	sub.l d0,d1				
	add.l d1,d1				
	move.l d1,a0				
	add.l d1,a0				
						
	move.l d2,d1				
	neg.l d1				
	asr.l d5,d1				
	move.l d1,a1				
	add.l d1,a1				
	add.l a1,d1				
	move.l d1,d4				
	lsl.l #3,d4				
	sub.l d4,d1				
	lsl.l #3,d1				
	add.l a0,d1				
	move.l d1,-24(a3)			
						
	asr.l d5,d2				
	move.l d2,d1				
	moveq #10,d5				
	lsl.l d5,d1				
	sub.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
						
	move.l d0,a0				
	add.l d0,a0				
	add.l a0,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	move.l d0,20(a3)			
						
	move.l 24(a3),d1			
						
	move.l -28(a3),d0			
	move.l d0,d2				
	moveq #12,d4				
	asr.l d4,d2				
	and.w #61440,d0				
	move.l d0,a0				
	sub.l d2,a0				
						
	move.l d1,d4				
	neg.l d4				
	moveq #12,d5				
	asr.l d5,d4				
	move.l d4,d0				
	lsl.l #4,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,d4				
	add.l a0,d4				
	move.l d4,-28(a3)			
						
	move.l d1,d0				
	asr.l d5,d0				
	and.w #61440,d1				
	sub.l d0,d1				
						
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d0,d2				
	add.l d1,d2				
	move.l d2,24(a3)			
						
	move.l 28(a3),d0			
						
	move.l -32(a3),d1			
	move.l d1,d4				
	asr.l d5,d4				
	and.w #61440,d1				
	sub.l d4,d1				
						
	move.l d0,d2				
	neg.l d2				
	asr.l d5,d2				
	lsl.l #4,d2				
	sub.l d2,d1				
	move.l d1,-32(a3)			
						
	move.l d0,d1				
	asr.l d5,d1				
	and.w #61440,d0				
	sub.l d1,d0				
						
	lsl.l #4,d4				
	sub.l d4,d0				
	move.l d0,28(a3)			
						
	lea (72,a3),a3				
						
	cmp.l d3,a3				
	jbcs _?L3				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/d6/a3/a4		
	rts					
						
	.align	2				
						
_fastsdct:					
	lea (-28,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 68(sp),a4			
	move.l 72(sp),a3			
						
	move.l 20(a4),d0			
						
	move.l 12(a4),d5			
	add.l d0,d5				
						
	move.l 12(a4),d1			
	sub.l d0,d1				
	move.l d1,60(sp)			
						
	move.l 8(a4),d0				
						
	move.l 24(a4),a6			
	add.l d0,a6				
						
	move.l 24(a4),d7			
	sub.l d0,d7				
						
	move.l 4(a4),d4				
						
	move.l 28(a4),d2			
						
	move.l d4,a1				
	add.l d2,a1				
						
	move.l (a4),d0				
						
	move.l 32(a4),d1			
	add.l d0,d1				
						
	move.l 32(a4),d3			
	sub.l d0,d3				
	move.l d3,36(sp)			
						
	move.l d5,d0				
	add.l a6,d0				
						
	add.l d1,d0				
	move.l d0,56(sp)			
						
	move.l 60(sp),d0			
	add.l d7,d0				
						
	moveq #12,d6				
	asr.l d6,d0				
						
	lea ___mulsi3,a0			
	pea -5266.w				
	move.l d0,-(sp)				
	move.l d1,48(sp)			
	move.l d2,56(sp)			
	move.l a0,60(sp)			
	move.l a1,52(sp)			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a5				
						
	move.l 60(sp),d0			
	sub.l d3,d0				
						
	asr.l d6,d0				
						
	move.l d0,d3				
	lsl.l #6,d3				
	sub.l d0,d3				
	lsl.l #5,d3				
	add.l d0,d3				
	add.l d3,d3				
	add.l d3,d3				
	neg.l d3				
						
	move.l 36(sp),d6			
	add.l d7,d6				
						
	moveq #12,d0				
	asr.l d0,d6				
						
	pea -2802.w				
	move.l d6,-(sp)				
	move.l 60(sp),a0			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a2				
						
	move.l 48(sp),d2			
	move.l d4,d0				
	sub.l d2,d0				
						
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,d4				
	lsl.l #3,d4				
	sub.l d0,d4				
	lsl.l #3,d4				
	sub.l d0,d4				
	move.l d4,d0				
	lsl.l #7,d0				
	add.l d0,d4				
	move.l d4,d0				
	neg.l d0				
						
	move.l 40(sp),d1			
	move.l a6,d2				
	sub.l d1,d2				
						
	moveq #12,d6				
	asr.l d6,d2				
						
	move.l d2,d6				
	lsl.l #4,d6				
	move.l d6,a0				
	sub.l d2,a0				
	move.l a0,d6				
	lsl.l #5,d6				
	move.l d6,a0				
	add.l d2,a0				
	move.l a0,d6				
	lsl.l #4,d6				
	move.l d6,a0				
	add.l d2,a0				
						
	move.l d5,d2				
	sub.l d1,d2				
						
	moveq #12,d1				
	asr.l d1,d2				
						
	move.l d2,d1				
	add.l d2,d1				
	add.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l d2,d1				
	lsl.l #3,d1				
	add.l d2,d1				
	lsl.l #4,d1				
	sub.l d1,d2				
						
	sub.l a6,d5				
						
	moveq #12,d6				
	asr.l d6,d5				
						
	move.l d5,d1				
	add.l d5,d1				
	add.l d5,d1				
	lsl.l #4,d1				
	add.l d5,d1				
	lsl.l #5,d1				
	add.l d5,d1				
	add.l d1,d1				
	add.l d1,d1				
	neg.l d1				
						
	move.l 16(a4),d5			
						
	move.l 44(sp),a1			
	lea (a1,d5.l),a4			
						
	add.l d5,d5				
						
	sub.l a1,d5				
						
	move.l 56(sp),d6			
	add.l a4,d6				
	move.l d6,(a3)				
						
	move.l d3,a1				
	sub.l d4,a1				
						
	move.l a5,d4				
	sub.l a1,d4				
	move.l d4,8(a3)				
						
	lea (a0,d5.l),a1			
						
	move.l d1,d6				
	sub.l a1,d6				
	move.l d6,16(a3)			
						
	move.l 60(sp),d4			
	sub.l d7,d4				
						
	add.l 36(sp),d4				
						
	moveq #12,d6				
	asr.l d6,d4				
						
	move.l d4,d6				
	lsl.l #3,d6				
	sub.l d4,d6				
	lsl.l #3,d6				
	sub.l d4,d6				
	move.l d6,d4				
	lsl.l #7,d4				
	add.l d4,d6				
	neg.l d6				
	move.l d6,24(a3)			
						
	move.l d5,a1				
	sub.l a0,a1				
						
	sub.l d2,a1				
	move.l a1,32(a3)			
						
	move.l d0,a0				
	sub.l a2,a0				
						
	sub.l d3,a0				
	move.l a0,40(a3)			
						
	add.l a4,a4				
						
	move.l 56(sp),d3			
	sub.l a4,d3				
	move.l d3,48(a3)			
						
	add.l a2,d0				
						
	add.l a5,d0				
	move.l d0,56(a3)			
						
	add.l d5,d2				
						
	add.l d1,d2				
	move.l d2,64(a3)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (28,sp),sp				
	rts					
						
	.align	2				
						
_III_imdct_l:					
	link.w a6,#-244				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 8(a6),a4				
	move.l 12(a6),a3			
						
	move.l (a4),d0				
	moveq #12,d1				
	asr.l d1,d0				
	move.l d0,d6				
	moveq #10,d2				
	lsl.l d2,d6				
	sub.l d0,d6				
	lsl.l #3,d6				
						
	move.l 4(a4),d0				
	asr.l d1,d0				
	move.l d0,d4				
	lsl.l #7,d4				
	sub.l d0,d4				
	lsl.l #3,d4				
	sub.l d0,d4				
	lsl.l #3,d4				
	add.l d0,d4				
	move.l d4,-184(a6)			
						
	move.l 8(a4),d0				
	asr.l d1,d0				
	pea 7997.w				
	move.l d0,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l 12(a4),d0			
	moveq #12,d3				
	asr.l d3,d0				
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,-212(a6)			
						
	move.l 16(a4),d1			
	asr.l d3,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	move.l d0,d3				
	add.l d0,d3				
	sub.l d1,d3				
	lsl.l #3,d3				
	add.l d1,d3				
	lsl.l #4,d3				
						
	move.l 20(a4),d1			
	moveq #12,d4				
	asr.l d4,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	add.l d1,d1				
	move.l d1,-208(a6)			
						
	move.l 24(a4),d1			
	asr.l d4,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	add.l d2,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	move.l d0,-204(a6)			
						
	move.l 28(a4),d1			
	asr.l d4,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	move.l d0,d2				
	lsl.l #6,d2				
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	move.l d0,-200(a6)			
						
	move.l 32(a4),d1			
	asr.l d4,d1				
	move.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	add.l d1,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	move.l d0,-216(a6)			
						
	move.l 36(a4),d0			
	asr.l d4,d0				
	pea 5534.w				
	move.l d0,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d7				
						
	move.l 40(a4),d0			
	asr.l d4,d0				
	pea 4986.w				
	move.l d0,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,-188(a6)			
						
	move.l 44(a4),d1			
	asr.l d4,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	move.l d0,a5				
	add.l d1,a5				
						
	move.l 48(a4),d1			
	asr.l d4,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #5,d0				
	sub.l d1,d0				
	move.l d0,a2				
	add.l d0,a2				
						
	move.l 52(a4),d1			
	asr.l d4,d1				
	move.l d1,a0				
	add.l d1,a0				
	move.l a0,d2				
	add.l d1,d2				
	lsl.l #4,d2				
	add.l d1,d2				
	lsl.l #5,d2				
	move.l d2,a0				
	sub.l d1,a0				
	add.l a0,a0				
	move.l a0,-196(a6)			
						
	move.l 56(a4),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,a0				
	add.l d1,a0				
	move.l a0,d2				
	add.l d1,d2				
	add.l d2,d2				
	add.l d2,d2				
	sub.l d1,d2				
	move.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	move.l d0,d2				
	lsl.l #5,d2				
	sub.l d1,d2				
	move.l d2,-192(a6)			
						
	move.l 60(a4),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,a0				
	add.l d1,a0				
	move.l a0,d0				
	add.l d1,d0				
	lsl.l #4,d0				
	move.l d0,a0				
	add.l d1,a0				
	add.l a0,a0				
	add.l a0,a0				
	add.l a0,d1				
	move.l d1,d2				
	lsl.l #3,d2				
	add.l d2,d1				
						
	move.l 64(a4),d2			
	asr.l d4,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	move.l d0,a0				
	add.l d2,a0				
	add.l a0,a0				
	add.l a0,a0				
	sub.l d2,a0				
	add.l a0,a0				
	add.l a0,a0				
	sub.l d2,a0				
	add.l a0,a0				
	add.l a0,a0				
	add.l a0,d2				
						
	move.l 68(a4),d4			
	moveq #12,d0				
	asr.l d0,d4				
	move.l d4,a1				
	add.l d4,a1				
	move.l d4,d0				
	add.l a1,d0				
	move.l d0,d4				
	lsl.l #3,d4				
	move.l d4,a4				
	sub.l d0,a4				
	move.l a4,d0				
	lsl.l #4,d0				
	add.l d0,a4				
						
	lea (a4,d6.l),a0			
	move.l a0,-108(a6)			
						
	move.l -184(a6),d4			
	add.l d2,d4				
	move.l d4,-104(a6)			
						
	move.l d1,d0				
	add.l d5,d0				
	move.l d0,-100(a6)			
						
	move.l -212(a6),d4			
	add.l -192(a6),d4			
	move.l d4,-96(a6)			
						
	move.l -196(a6),d0			
	add.l d3,d0				
	move.l d0,-92(a6)			
						
	move.l -208(a6),d4			
	add.l a2,d4				
	move.l d4,-88(a6)			
						
	move.l -204(a6),d4			
	add.l a5,d4				
	move.l d4,-84(a6)			
						
	move.l -200(a6),d4			
	add.l -188(a6),d4			
	move.l d4,-80(a6)			
						
	move.l -216(a6),d4			
	add.l d7,d4				
	move.l d4,-76(a6)			
						
	pea -72(a6)				
	lea (-108,a6),a1			
	move.l a1,-(sp)				
	lea _fastsdct,a0			
	move.l d1,-236(a6)			
	move.l d2,-224(a6)			
	move.l a0,-228(a6)			
	move.l a1,-232(a6)			
	move.l a2,-220(a6)			
	jbsr (a0)				
	addq.l #8,sp				
						
	sub.l a4,d6				
	moveq #12,d0				
	asr.l d0,d6				
	move.l d6,d0				
	lsl.l #8,d0				
	sub.l d6,d0				
	move.l d0,d6				
	lsl.l #5,d6				
						
	move.l d6,-108(a6)			
						
	move.l -224(a6),d2			
	move.l -184(a6),d4			
	sub.l d2,d4				
	moveq #12,d2				
	asr.l d2,d4				
	move.l d4,d2				
	lsl.l #5,d2				
	sub.l d4,d2				
	lsl.l #3,d2				
	sub.l d4,d2				
	add.l d2,d2				
	add.l d2,d2				
	add.l d2,d4				
	lsl.l #3,d4				
						
	move.l d4,-104(a6)			
						
	move.l -236(a6),d1			
	sub.l d1,d5				
	moveq #12,d4				
	asr.l d4,d5				
	move.l d5,d1				
	lsl.l #3,d1				
	sub.l d5,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d1,d5				
	lsl.l #8,d5				
						
	move.l d5,-100(a6)			
						
	move.l -212(a6),d2			
	sub.l -192(a6),d2			
	asr.l d4,d2				
	move.l d2,d1				
	add.l d2,d1				
	move.l d1,d4				
	add.l d2,d4				
	move.l d4,d1				
	lsl.l #3,d1				
	sub.l d4,d1				
	lsl.l #5,d1				
	sub.l d2,d1				
	move.l d1,d2				
	add.l d1,d2				
	add.l d2,d2				
	add.l d2,d1				
	add.l d1,d1				
						
	move.l d1,-96(a6)			
						
	sub.l -196(a6),d3			
	moveq #12,d6				
	asr.l d6,d3				
	move.l d3,d1				
	add.l d3,d1				
	move.l d1,d2				
	add.l d3,d2				
	move.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d1,d3				
	lsl.l #5,d3				
						
	move.l d3,-92(a6)			
						
	move.l -220(a6),a2			
	move.l -208(a6),d0			
	sub.l a2,d0				
	asr.l d6,d0				
	move.l d0,d1				
	lsl.l #6,d1				
	add.l d0,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	add.l d1,d0				
	add.l d0,d0				
						
	move.l d0,-88(a6)			
						
	move.l -204(a6),d0			
	sub.l a5,d0				
	asr.l d6,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	add.l d0,d1				
	lsl.l #6,d1				
	add.l d0,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,-84(a6)			
						
	move.l -200(a6),d1			
	sub.l -188(a6),d1			
	asr.l d6,d1				
	move.l d1,d0				
	lsl.l #5,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	lsl.l #3,d0				
						
	move.l d0,-80(a6)			
						
	move.l -216(a6),d0			
	sub.l d7,d0				
	asr.l d6,d0				
	move.l d0,d1				
	add.l d0,d1				
	add.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #5,d0				
						
	sub.l d1,d0				
	move.l d0,-76(a6)			
						
	pea -68(a6)				
	move.l -232(a6),a1			
	move.l a1,-(sp)				
	move.l -228(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l -68(a6),a1			
						
	move.l -60(a6),a0			
	sub.l a1,a0				
						
	move.l -52(a6),d0			
	sub.l a0,d0				
						
	move.l -44(a6),d1			
	sub.l d0,d1				
						
	move.l -36(a6),d2			
	sub.l d1,d2				
						
	move.l -28(a6),d3			
	sub.l d2,d3				
						
	move.l -20(a6),d4			
	sub.l d3,d4				
						
	move.l -12(a6),d5			
	sub.l d4,d5				
						
	move.l -4(a6),d6			
	sub.l d5,d6				
	move.l d6,-216(a6)			
						
	move.l -72(a6),d7			
	jbpl _?L19				
	addq.l #1,d7				
_?L19:						
	asr.l #1,d7				
						
	move.l a1,d6				
	jbpl _?L20				
	addq.l #1,d6				
_?L20:						
	asr.l #1,d6				
	move.l d6,-168(a6)			
						
	move.l d6,a4				
	sub.l d7,a4				
						
	move.l -64(a6),d6			
	jbpl _?L21				
	addq.l #1,d6				
_?L21:						
	asr.l #1,d6				
	move.l d6,-164(a6)			
						
	sub.l a4,d6				
	move.l d6,-196(a6)			
						
	move.l a0,d6				
	jbpl _?L22				
	addq.l #1,d6				
_?L22:						
	asr.l #1,d6				
	move.l d6,-160(a6)			
						
	sub.l -196(a6),d6			
	move.l d6,-192(a6)			
						
	move.l -56(a6),d6			
	jbpl _?L23				
	addq.l #1,d6				
_?L23:						
	asr.l #1,d6				
	move.l d6,-156(a6)			
						
	sub.l -192(a6),d6			
	move.l d6,-176(a6)			
						
	move.l d0,d0				
	jbpl _?L24				
	addq.l #1,d0				
_?L24:						
	asr.l #1,d0				
	move.l d0,-244(a6)			
						
	sub.l d6,d0				
	move.l d0,-172(a6)			
						
	move.l -48(a6),d6			
	jbpl _?L25				
	addq.l #1,d6				
_?L25:						
	asr.l #1,d6				
	move.l d6,-152(a6)			
						
	move.l d6,a1				
	sub.l d0,a1				
						
	move.l d1,d1				
	jbpl _?L26				
	addq.l #1,d1				
_?L26:						
	asr.l #1,d1				
	move.l d1,-148(a6)			
						
	sub.l a1,d1				
	move.l d1,-240(a6)			
						
	move.l -40(a6),d6			
	jbpl _?L27				
	addq.l #1,d6				
_?L27:						
	asr.l #1,d6				
	move.l d6,-144(a6)			
						
	sub.l d1,d6				
	move.l d6,-184(a6)			
						
	move.l d2,d2				
	jbpl _?L28				
	addq.l #1,d2				
_?L28:						
	asr.l #1,d2				
	move.l d2,-140(a6)			
						
	move.l d2,d1				
	sub.l d6,d1				
						
	move.l -32(a6),d6			
	jbpl _?L29				
	addq.l #1,d6				
_?L29:						
	asr.l #1,d6				
	move.l d6,-136(a6)			
						
	sub.l d1,d6				
	move.l d6,-204(a6)			
						
	move.l d3,d3				
	jbpl _?L30				
	addq.l #1,d3				
_?L30:						
	asr.l #1,d3				
						
	move.l d3,d0				
	sub.l d6,d0				
	move.l d0,-200(a6)			
						
	move.l -24(a6),d6			
	jbpl _?L31				
	addq.l #1,d6				
_?L31:						
	asr.l #1,d6				
	move.l d6,-180(a6)			
						
	move.l d6,d2				
	sub.l d0,d2				
						
	move.l d4,d4				
	jbpl _?L32				
	addq.l #1,d4				
_?L32:						
	asr.l #1,d4				
						
	move.l d4,d6				
	sub.l d2,d6				
	move.l d6,-208(a6)			
						
	move.l -16(a6),d6			
	jbpl _?L33				
	addq.l #1,d6				
_?L33:						
	asr.l #1,d6				
	move.l d6,a5				
						
	move.l d6,a0				
	sub.l -208(a6),a0			
						
	move.l d5,d5				
	jbpl _?L34				
	addq.l #1,d5				
_?L34:						
	asr.l #1,d5				
						
	move.l d5,d0				
	sub.l a0,d0				
	move.l d0,-212(a6)			
						
	move.l -8(a6),d6			
	jbpl _?L35				
	addq.l #1,d6				
_?L35:						
	asr.l #1,d6				
	move.l d6,-188(a6)			
						
	move.l d6,a2				
	sub.l d0,a2				
						
	move.l -216(a6),d6			
	jbpl _?L36				
	addq.l #1,d6				
_?L36:						
	asr.l #1,d6				
						
	move.l d6,d0				
	sub.l a2,d0				
	move.l d0,-216(a6)			
						
	move.l d1,(a3)				
						
	move.l -204(a6),4(a3)			
						
	move.l -200(a6),8(a3)			
						
	move.l d2,12(a3)			
						
	move.l -208(a6),16(a3)			
						
	move.l a0,20(a3)			
						
	move.l -212(a6),24(a3)			
						
	move.l a2,28(a3)			
						
	move.l d0,32(a3)			
						
	move.l a2,d0				
	sub.l d6,d0				
	move.l d0,-132(a6)			
						
	move.l d0,36(a3)			
						
	move.l -212(a6),d6			
	sub.l -188(a6),d6			
	move.l d6,-128(a6)			
						
	move.l d6,40(a3)			
						
	move.l a0,d6				
	sub.l d5,d6				
	move.l d6,-188(a6)			
						
	move.l d6,44(a3)			
						
	move.l -208(a6),d6			
	sub.l a5,d6				
	move.l d6,-124(a6)			
						
	move.l d6,48(a3)			
						
	move.l d2,d6				
	sub.l d4,d6				
	move.l d6,-120(a6)			
						
	move.l d6,52(a3)			
						
	move.l -200(a6),d4			
	sub.l -180(a6),d4			
	move.l d4,-116(a6)			
						
	move.l d4,56(a3)			
						
	move.l -204(a6),d6			
	sub.l d3,d6				
	move.l d6,-180(a6)			
						
	move.l d6,60(a3)			
						
	move.l d1,d3				
	sub.l -136(a6),d3			
	move.l d3,-112(a6)			
						
	move.l d3,64(a3)			
						
	move.l -184(a6),d4			
	sub.l -140(a6),d4			
	move.l d4,-184(a6)			
						
	move.l d4,68(a3)			
						
	move.l -240(a6),d6			
	sub.l -144(a6),d6			
	move.l d6,-140(a6)			
						
	move.l d6,72(a3)			
						
	sub.l -148(a6),a1			
						
	move.l a1,76(a3)			
						
	move.l -172(a6),d3			
	sub.l -152(a6),d3			
						
	move.l d3,80(a3)			
						
	move.l -176(a6),d4			
	sub.l -244(a6),d4			
						
	move.l d4,84(a3)			
						
	move.l -192(a6),d5			
	sub.l -156(a6),d5			
						
	move.l d5,88(a3)			
						
	move.l -196(a6),d6			
	sub.l -160(a6),d6			
						
	move.l d6,92(a3)			
						
	sub.l -164(a6),a4			
						
	move.l a4,96(a3)			
						
	move.l d7,a5				
	sub.l -168(a6),a5			
						
	move.l a5,100(a3)			
						
	neg.l d7				
						
	move.l d7,104(a3)			
						
	move.l d7,108(a3)			
						
	move.l a5,112(a3)			
						
	move.l a4,116(a3)			
						
	move.l d6,120(a3)			
						
	move.l d5,124(a3)			
						
	move.l d4,128(a3)			
						
	move.l d3,132(a3)			
						
	move.l a1,136(a3)			
						
	move.l -140(a6),140(a3)			
						
	moveq #1,d0				
	cmp.l 16(a6),d0				
	jbeq _?L10				
	moveq #3,d0				
	cmp.l 16(a6),d0				
	jbeq _?L11				
	tst.l 16(a6)				
	jbeq _?L17				
						
	movem.l -276(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L17:						
						
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	move.l d0,(a3)				
						
	move.l -204(a6),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,4(a3)				
						
	move.l -200(a6),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,8(a3)				
						
	moveq #12,d1				
	asr.l d1,d2				
	move.l d2,d0				
	add.l d2,d0				
	add.l d0,d0				
	move.l d0,d1				
	add.l d2,d1				
	lsl.l #3,d1				
	add.l d2,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,12(a3)			
						
	move.l -208(a6),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	lsl.l #5,d0				
						
	sub.l d1,d0				
	move.l d0,16(a3)			
						
	move.l a0,d2				
	moveq #12,d0				
	asr.l d0,d2				
	move.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,20(a3)			
						
	move.l -212(a6),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
						
	move.l d0,24(a3)			
						
	move.l a2,d1				
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #3,d0				
						
	add.l d0,d1				
	move.l d1,28(a3)			
						
	move.l -216(a6),d0			
	asr.l d2,d0				
	pea 2767.w				
	move.l d0,-(sp)				
	move.l a1,-232(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
						
	move.l d0,32(a3)			
						
	move.l -132(a6),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	add.l d1,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	sub.l d1,d0				
	move.l d0,36(a3)			
						
	move.l -128(a6),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	add.l d1,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
						
	add.l d1,d0				
	move.l d0,40(a3)			
						
	move.l -188(a6),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	add.l d2,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,44(a3)			
						
	move.l -124(a6),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
						
	sub.l d0,d1				
	move.l d1,48(a3)			
						
	move.l -120(a6),d1			
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	lsl.l #3,d0				
						
	move.l d0,52(a3)			
						
	move.l -116(a6),d0			
	asr.l d2,d0				
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,56(a3)			
						
	move.l -180(a6),d1			
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #5,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,60(a3)			
						
	move.l -112(a6),d1			
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #7,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,64(a3)			
						
	move.l -184(a6),d1			
	asr.l d2,d1				
	move.l d1,d0				
	moveq #10,d2				
	lsl.l d2,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,68(a3)			
						
	move.l -140(a6),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,-216(a6)			
	move.l d1,d0				
	moveq #10,d1				
	lsl.l d1,d0				
	sub.l -216(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,72(a3)			
						
	move.l -232(a6),a1			
	move.l a1,d1				
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #7,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,76(a3)			
						
	asr.l d2,d3				
	move.l d3,d0				
	lsl.l #5,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	add.l d0,d0				
						
	move.l d0,80(a3)			
						
	asr.l d2,d4				
	move.l d4,d2				
	lsl.l #5,d2				
	sub.l d4,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
						
	move.l d0,84(a3)			
						
	moveq #12,d2				
	asr.l d2,d5				
	move.l d5,d0				
	lsl.l #4,d0				
	sub.l d5,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d5,d0				
	lsl.l #3,d0				
	add.l d5,d0				
	lsl.l #3,d0				
						
	move.l d0,88(a3)			
						
	asr.l d2,d6				
	move.l d6,d0				
	lsl.l #6,d0				
	add.l d6,d0				
	lsl.l #3,d0				
	sub.l d6,d0				
	move.l d0,d2				
	lsl.l #3,d2				
						
	sub.l d0,d2				
	move.l d2,92(a3)			
						
	move.l a4,d0				
	moveq #12,d2				
	asr.l d2,d0				
	move.l d0,a4				
	add.l d0,d0				
	add.l a4,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	add.l d2,d0				
	lsl.l #6,d0				
	sub.l a4,d0				
	add.l d0,d0				
						
	move.l d0,96(a3)			
						
	move.l a5,d0				
	moveq #12,d2				
	asr.l d2,d0				
	move.l d0,a5				
	add.l d0,d0				
	move.l d0,d2				
	add.l a5,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l a5,d0				
	move.l d0,d2				
	lsl.l #3,d2				
						
	add.l d2,d0				
	move.l d0,100(a3)			
						
	move.l d7,d2				
	moveq #12,d0				
	asr.l d0,d2				
	move.l d2,d0				
	add.l d2,d0				
	move.l d0,d7				
	add.l d2,d7				
	move.l d7,d0				
	lsl.l #6,d0				
	sub.l d7,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	sub.l d2,d0				
	move.l d0,104(a3)			
						
	pea 2767.w				
	move.l d2,-(sp)				
	move.l d1,-236(a6)			
	jbsr ___mulsi3				
						
	addq.l #8,sp				
						
	move.l d0,108(a3)			
						
	move.l a5,d0				
	lsl.l #4,d0				
	add.l a5,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a5,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a5,d0				
	move.l d0,d2				
	lsl.l #3,d2				
						
	add.l d2,d0				
	move.l d0,112(a3)			
						
	move.l a4,d0				
	lsl.l #4,d0				
	add.l a4,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l a4,d0				
	lsl.l #3,d0				
						
	move.l d0,116(a3)			
						
	move.l d6,d2				
	lsl.l #4,d2				
	sub.l d6,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d6,d0				
	move.l d0,120(a3)			
						
	move.l d5,d0				
	add.l d5,d0				
	add.l d5,d0				
	lsl.l #4,d0				
	add.l d5,d0				
	lsl.l #5,d0				
						
	sub.l d5,d0				
	move.l d0,124(a3)			
						
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
	move.l d0,d2				
	add.l d4,d2				
	lsl.l #3,d2				
	add.l d4,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d4,d0				
	move.l d0,128(a3)			
						
	move.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
						
	move.l d0,132(a3)			
						
	move.l -236(a6),d1			
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,136(a3)			
						
	move.l -216(a6),d0			
	add.l d0,d0				
	add.l -216(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
	sub.l -216(a6),d0			
	lsl.l #3,d0				
	add.l -216(a6),d0			
	add.l d0,d0				
						
	move.l d0,140(a3)			
_?L18:						
						
	movem.l -276(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L11:						
						
	move.l a3,a0				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)				
						
	move.l -212(a6),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,24(a3)			
						
	move.l a2,d1				
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	lsl.l #5,d0				
						
	sub.l d1,d0				
	move.l d0,28(a3)			
						
	move.l -216(a6),d1			
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #3,d0				
						
	add.l d0,d1				
	move.l d1,32(a3)			
						
	move.l -132(a6),d1			
	asr.l d2,d1				
	move.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	add.l d1,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
						
	add.l d1,d0				
	move.l d0,36(a3)			
						
	move.l -128(a6),d1			
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	lsl.l #3,d0				
						
	move.l d0,40(a3)			
						
	move.l -188(a6),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,d0				
	lsl.l #7,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,44(a3)			
						
	move.l -140(a6),d1			
	asr.l d2,d1				
	move.l d1,-216(a6)			
	move.l d1,d0				
	moveq #10,d2				
	lsl.l d2,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,72(a3)			
						
	move.l a1,d1				
	moveq #12,d0				
	asr.l d0,d1				
	move.l d1,d0				
	lsl.l #7,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,76(a3)			
						
	moveq #12,d2				
	asr.l d2,d3				
	move.l d3,d0				
	lsl.l #5,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	add.l d0,d0				
						
	move.l d0,80(a3)			
						
	asr.l d2,d4				
	move.l d4,d2				
	lsl.l #5,d2				
	sub.l d4,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
						
	move.l d0,84(a3)			
						
	moveq #12,d0				
	asr.l d0,d5				
	move.l d5,d0				
	lsl.l #4,d0				
	sub.l d5,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d5,d0				
	lsl.l #3,d0				
	add.l d5,d0				
	lsl.l #3,d0				
						
	move.l d0,88(a3)			
						
	moveq #12,d2				
	asr.l d2,d6				
	move.l d6,d0				
	lsl.l #6,d0				
	add.l d6,d0				
	lsl.l #3,d0				
	sub.l d6,d0				
	move.l d0,d2				
	lsl.l #3,d2				
						
	sub.l d0,d2				
	move.l d2,92(a3)			
						
	move.l a4,d0				
	moveq #12,d2				
	asr.l d2,d0				
	move.l d0,a4				
	add.l d0,d0				
	add.l a4,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	add.l d2,d0				
	lsl.l #6,d0				
	sub.l a4,d0				
	add.l d0,d0				
						
	move.l d0,96(a3)			
						
	move.l a5,d0				
	moveq #12,d2				
	asr.l d2,d0				
	move.l d0,a5				
	add.l d0,d0				
	move.l d0,d2				
	add.l a5,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l a5,d0				
	move.l d0,d2				
	lsl.l #3,d2				
						
	add.l d2,d0				
	move.l d0,100(a3)			
						
	move.l d7,d2				
	moveq #12,d0				
	asr.l d0,d2				
	move.l d2,d0				
	add.l d2,d0				
	move.l d0,d7				
	add.l d2,d7				
	move.l d7,d0				
	lsl.l #6,d0				
	sub.l d7,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	sub.l d2,d0				
	move.l d0,104(a3)			
						
	pea 2767.w				
	move.l d2,-(sp)				
	move.l d1,-236(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
						
	move.l d0,108(a3)			
						
	move.l a5,d0				
	lsl.l #4,d0				
	add.l a5,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a5,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a5,d0				
	move.l d0,d2				
	lsl.l #3,d2				
						
	add.l d2,d0				
	move.l d0,112(a3)			
						
	move.l a4,d0				
	lsl.l #4,d0				
	add.l a4,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l a4,d0				
	lsl.l #3,d0				
						
	move.l d0,116(a3)			
						
	move.l d6,d2				
	lsl.l #4,d2				
	sub.l d6,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d6,d0				
	move.l d0,120(a3)			
						
	move.l d5,d0				
	add.l d5,d0				
	add.l d5,d0				
	lsl.l #4,d0				
	add.l d5,d0				
	lsl.l #5,d0				
						
	sub.l d5,d0				
	move.l d0,124(a3)			
						
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
	move.l d0,d2				
	add.l d4,d2				
	lsl.l #3,d2				
	add.l d4,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d4,d0				
	move.l d0,128(a3)			
						
	move.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
						
	move.l d0,132(a3)			
						
	move.l -236(a6),d1			
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,136(a3)			
						
	move.l -216(a6),d0			
	add.l d0,d0				
	add.l -216(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
	sub.l -216(a6),d0			
	lsl.l #3,d0				
	add.l -216(a6),d0			
	add.l d0,d0				
						
	move.l d0,140(a3)			
	jbra _?L18				
_?L10:						
						
	moveq #12,d3				
	asr.l d3,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	move.l d0,(a3)				
						
	move.l -204(a6),d1			
	asr.l d3,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,4(a3)				
						
	move.l -200(a6),d1			
	asr.l d3,d1				
	move.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,8(a3)				
						
	asr.l d3,d2				
	move.l d2,d0				
	add.l d2,d0				
	add.l d0,d0				
	move.l d0,d1				
	add.l d2,d1				
	lsl.l #3,d1				
	add.l d2,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,12(a3)			
						
	move.l -208(a6),d1			
	asr.l d3,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	lsl.l #5,d0				
						
	sub.l d1,d0				
	move.l d0,16(a3)			
						
	move.l a0,d2				
	asr.l d3,d2				
	move.l d2,d1				
	lsl.l #4,d1				
	sub.l d2,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,20(a3)			
						
	move.l -212(a6),d1			
	asr.l d3,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
						
	move.l d0,24(a3)			
						
	move.l a2,d1				
	asr.l d3,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #3,d0				
						
	add.l d0,d1				
	move.l d1,28(a3)			
						
	move.l -216(a6),d0			
	moveq #12,d4				
	asr.l d4,d0				
	pea 2767.w				
	move.l d0,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
						
	move.l d0,32(a3)			
						
	move.l -132(a6),d1			
	asr.l d4,d1				
	move.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	add.l d1,d2				
	move.l d2,d0				
	lsl.l #6,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	sub.l d1,d0				
	move.l d0,36(a3)			
						
	move.l -128(a6),d1			
	asr.l d4,d1				
	move.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	add.l d1,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	move.l d0,d1				
	lsl.l #3,d1				
						
	add.l d1,d0				
	move.l d0,40(a3)			
						
	move.l -188(a6),d1			
	asr.l d4,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d1,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	add.l d2,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,44(a3)			
						
	move.l -124(a6),d0			
	asr.l d4,d0				
	move.l d0,d1				
	lsl.l #6,d1				
	add.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #3,d0				
						
	sub.l d1,d0				
	move.l d0,48(a3)			
						
	move.l -120(a6),d1			
	asr.l d4,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	add.l d1,d0				
	lsl.l #3,d0				
						
	move.l d0,52(a3)			
						
	move.l -116(a6),d0			
	asr.l d4,d0				
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,56(a3)			
						
	move.l -180(a6),d0			
	asr.l d4,d0				
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	add.l d1,d1				
						
	move.l d1,60(a3)			
						
	move.l -112(a6),d0			
	moveq #12,d6				
	asr.l d6,d0				
	move.l d0,d1				
	lsl.l #7,d1				
	sub.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	move.l d0,64(a3)			
						
	move.l -184(a6),d0			
	asr.l d6,d0				
	move.l d0,d1				
	moveq #10,d2				
	lsl.l d2,d1				
	sub.l d0,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	move.l d0,68(a3)			
						
	move.l a4,d1				
	asr.l d6,d1				
	move.l d1,d0				
	lsl.l #7,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,96(a3)			
						
	move.l a5,d2				
	asr.l d6,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l d2,d0				
	lsl.l #3,d0				
						
	move.l d0,100(a3)			
						
	move.l d7,d0				
	asr.l d6,d0				
	move.l d0,a0				
	add.l d0,a0				
	move.l a0,d4				
	add.l d0,d4				
	move.l d4,d3				
	lsl.l #4,d3				
	sub.l d4,d3				
	lsl.l #3,d3				
	add.l d0,d3				
	move.l d3,d4				
	lsl.l #3,d4				
						
	add.l d4,d3				
	move.l d3,104(a3)			
						
	move.l d0,d3				
	lsl.l #4,d3				
	move.l d3,a0				
	add.l d0,a0				
	add.l a0,a0				
	add.l a0,a0				
	add.l d0,a0				
	add.l a0,a0				
	add.l a0,a0				
	add.l a0,d0				
	move.l d0,d3				
	lsl.l #3,d3				
						
	add.l d3,d0				
	move.l d0,108(a3)			
						
	move.l d2,d0				
	add.l d2,d0				
	add.l d2,d0				
	lsl.l #4,d0				
	add.l d2,d0				
	lsl.l #5,d0				
						
	sub.l d2,d0				
	move.l d0,112(a3)			
						
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,116(a3)			
						
	clr.l 120(a3)				
	lea (124,a3),a3				
	clr.l (a3)+				
	clr.l (a3)+				
	clr.l (a3)+				
	clr.l (a3)+				
	clr.l (a3)				
						
	movem.l -276(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
						
	.align	2				
						
_III_imdct_s:					
	lea (-112,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 152(sp),a2			
	move.l 156(sp),a0			
						
	move.l (a2),d3				
	moveq #12,d0				
	asr.l d0,d3				
	move.l d3,d1				
	lsl.l #4,d1				
	add.l d3,d1				
	add.l d1,d1				
	add.l d1,d1				
	move.l d1,48(sp)			
	move.l d1,d0				
	add.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d3,d0				
	move.l d0,d2				
	lsl.l #3,d2				
	move.l d0,a1				
	add.l d2,a1				
						
	move.l 4(a2),d6				
	moveq #12,d1				
	asr.l d1,d6				
	move.l d6,d0				
	add.l d6,d0				
	move.l d0,d4				
	add.l d6,d4				
	move.l d4,d0				
	lsl.l #6,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d6,d0				
	move.l d0,d2				
	add.l d0,d2				
	add.l d2,d2				
	add.l d2,d0				
	move.l d0,d2				
	neg.l d2				
	move.l d2,64(sp)			
	sub.l d0,a1				
						
	move.l 8(a2),d0				
	asr.l d1,d0				
	move.l d0,a4				
	lsl.l #4,d0				
	move.l d0,44(sp)			
	add.l a4,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,52(sp)			
	sub.l a4,d0				
	lsl.l #3,d0				
	move.l a4,d5				
	sub.l d0,d5				
	add.l a1,d5				
						
	move.l 12(a2),d0			
	asr.l d1,d0				
	move.l d0,d1				
	lsl.l #7,d1				
	move.l d1,a1				
	sub.l d0,a1				
	move.l a1,d7				
	lsl.l #3,d7				
	move.l d7,a1				
	sub.l d0,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l d5,a1				
						
	move.l 16(a2),d5			
	moveq #12,d1				
	asr.l d1,d5				
	move.l d5,a3				
	add.l d5,a3				
	move.l a3,d7				
	add.l d5,d7				
	move.l d7,d1				
	lsl.l #4,d1				
	move.l d1,a3				
	add.l d5,a3				
	move.l a3,d2				
	lsl.l #5,d2				
	move.l d2,a3				
	sub.l d2,a1				
						
	move.l 20(a2),d1			
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,40(sp)			
	add.l d1,d1				
	move.l d1,68(sp)			
	add.l 40(sp),d1				
	move.l d1,100(sp)			
	lsl.l #3,d1				
	move.l d1,a5				
	add.l 40(sp),a5				
	move.l a5,d1				
	lsl.l #6,d1				
	add.l d1,a5				
	add.l a5,a5				
	sub.l a5,a1				
	move.l a1,72(sp)			
						
	move.l d3,a1				
	add.l d3,a1				
	move.l a1,d1				
	add.l d3,d1				
	move.l d1,d2				
	lsl.l #3,d2				
	move.l d2,a1				
	add.l d3,a1				
	move.l a1,d2				
	lsl.l #6,d2				
	add.l d2,a1				
	add.l a1,a1				
						
	lsl.l #4,d4				
	add.l d6,d4				
	lsl.l #5,d4				
	move.l d4,a6				
	sub.l d6,d4				
	sub.l a1,d4				
						
	move.l a4,d6				
	lsl.l #7,d6				
	sub.l a4,d6				
	lsl.l #3,d6				
	sub.l a4,d6				
	add.l d6,d6				
	add.l d6,d6				
	add.l d4,d6				
						
	move.l d0,d4				
	lsl.l #4,d4				
	move.l d4,a1				
	add.l d0,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l d0,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l d0,a1				
	add.l a1,a1				
	add.l d6,a1				
						
	move.l d7,d6				
	lsl.l #6,d6				
	sub.l d7,d6				
	add.l d6,d6				
	add.l d6,d6				
	add.l d5,d6				
	move.l d6,d7				
	add.l d6,d7				
	add.l d7,d7				
	add.l d7,d6				
	sub.l d6,a1				
	move.l a1,124(sp)			
	move.l 64(sp),d6			
	sub.l a3,d6				
	move.l d6,64(sp)			
						
	move.l d1,d6				
	lsl.l #4,d6				
	add.l d3,d6				
	lsl.l #5,d6				
	sub.l d3,d6				
						
	move.l 44(sp),d2			
	sub.l a4,d2				
	add.l d2,d2				
	move.l d2,a1				
	add.l d2,a1				
	move.l a1,d2				
	sub.l a4,d2				
	lsl.l #3,d2				
	move.l d2,a1				
	add.l a4,a1				
	move.l a1,d7				
	lsl.l #3,d7				
	move.l d7,a1				
	add.l d6,a1				
						
	move.l d0,a3				
	add.l d0,a3				
	move.l a3,d7				
	add.l d0,d7				
	move.l d7,d2				
	lsl.l #4,d2				
	add.l d0,d2				
	lsl.l #5,d2				
	sub.l d2,a1				
						
	move.l 40(sp),d6			
	lsl.l #4,d6				
	move.l d6,d2				
	sub.l 40(sp),d2				
	add.l d2,d2				
	add.l d2,d2				
	sub.l 40(sp),d2				
	lsl.l #3,d2				
	add.l 40(sp),d2				
	lsl.l #3,d2				
	add.l a1,d2				
	add.l 64(sp),d2				
	move.l d2,76(sp)			
						
	move.l d1,d2				
	lsl.l #6,d2				
	move.l d2,a1				
	sub.l d1,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l d3,a1				
	move.l a1,d2				
	add.l a1,d2				
	add.l d2,d2				
	add.l d2,a1				
						
	move.l a6,d1				
	neg.l d1				
	move.l d1,a6				
	move.l d1,a5				
	sub.l a1,a5				
						
	lea (a4,a4.l),a1			
	move.l a1,d2				
	add.l a4,d2				
	move.l d2,d1				
	lsl.l #4,d1				
	move.l d1,a1				
	add.l a4,a1				
	move.l a1,d1				
	lsl.l #5,d1				
	move.l d1,a1				
	sub.l a4,a1				
	move.l a5,d1				
	add.l a1,d1				
						
	sub.l d0,d4				
	add.l d4,d4				
	move.l d4,a1				
	add.l d4,a1				
	move.l a1,d4				
	sub.l d0,d4				
	lsl.l #3,d4				
	move.l d4,a1				
	add.l d0,a1				
	move.l a1,d4				
	lsl.l #3,d4				
	move.l d4,a1				
	add.l d1,a1				
						
	move.l d5,d4				
	lsl.l #4,d4				
	sub.l d5,d4				
	add.l d4,d4				
	add.l d4,d4				
	sub.l d5,d4				
	lsl.l #3,d4				
	add.l d5,d4				
	lsl.l #3,d4				
	add.l d4,a1				
	move.l a1,128(sp)			
						
	move.l 48(sp),d1			
	sub.l d3,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l d3,d1				
	add.l d1,d1				
	add.l d4,a6				
	add.l d1,a6				
						
	move.l 52(sp),d1			
	add.l a4,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l a4,d1				
	move.l d1,d4				
	lsl.l #3,d4				
	add.l d4,d1				
	add.l a6,d1				
						
	lsl.l #3,d7				
	add.l d0,d7				
	move.l d7,d4				
	lsl.l #6,d4				
	add.l d4,d7				
	add.l d7,d7				
						
	sub.l d7,d1				
						
	move.l 40(sp),d4			
	lsl.l #7,d4				
	move.l d4,a1				
	sub.l 40(sp),a1				
	move.l a1,d5				
	lsl.l #3,d5				
	move.l d5,a1				
	sub.l 40(sp),a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l 40(sp),a1				
	sub.l a1,d1				
	move.l d1,80(sp)			
						
	move.l d3,d1				
	lsl.l #7,d1				
	sub.l d3,d1				
	lsl.l #3,d1				
	sub.l d3,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d1,d3				
						
	lsl.l #3,d2				
	add.l a4,d2				
	move.l d2,d1				
	lsl.l #6,d1				
	add.l d1,d2				
	add.l d2,d2				
	neg.l d2				
	sub.l d3,d2				
						
	add.l a3,a3				
	move.l a3,d1				
	add.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	lsl.l #5,d1				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d2,d0				
						
	add.l 40(sp),d6				
	add.l d6,d6				
	add.l d6,d6				
	sub.l 40(sp),d6				
	lsl.l #3,d6				
	move.l 40(sp),d1			
	sub.l d6,d1				
	add.l d1,d0				
	move.l d0,140(sp)			
						
	move.l 24(a2),d2			
	moveq #12,d6				
	asr.l d6,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,48(sp)			
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,d4				
	add.l d2,d4				
	move.l d4,d0				
	lsl.l #3,d0				
	add.l d0,d4				
						
	move.l 28(a2),d6			
	moveq #12,d7				
	asr.l d7,d6				
	move.l d6,d0				
	add.l d6,d0				
	move.l d0,d1				
	add.l d6,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d6,d0				
	move.l d0,a1				
	add.l d0,a1				
	add.l a1,a1				
	add.l a1,d0				
	move.l d0,d3				
	neg.l d3				
	move.l d3,60(sp)			
	sub.l d0,d4				
						
	move.l 32(a2),d3			
	asr.l d7,d3				
	move.l d3,d0				
	lsl.l #4,d0				
	move.l d0,a1				
	add.l d3,a1				
	add.l a1,a1				
	add.l a1,a1				
	move.l a1,56(sp)			
	move.l a1,d5				
	sub.l d3,d5				
	lsl.l #3,d5				
	move.l d3,a1				
	sub.l d5,a1				
	add.l d4,a1				
						
	move.l 36(a2),d4			
	asr.l d7,d4				
	move.l d4,a6				
	lsl.l #7,d4				
	move.l d4,a4				
	sub.l a6,a4				
	move.l a4,d4				
	lsl.l #3,d4				
	move.l d4,a4				
	sub.l a6,a4				
	add.l a4,a4				
	add.l a4,a4				
	add.l a1,a4				
						
	move.l 40(a2),d5			
	asr.l d7,d5				
	move.l d5,a1				
	add.l d5,a1				
	lea (a1,d5.l),a3			
	move.l a3,d4				
	lsl.l #4,d4				
	add.l d5,d4				
	lsl.l #5,d4				
	move.l d4,a1				
	sub.l d4,a4				
	move.l a4,44(sp)			
						
	move.l 44(a2),d4			
	asr.l d7,d4				
	move.l d4,a4				
	lea (a4,d4.l),a5			
	move.l a5,52(sp)			
	move.l a5,d4				
	add.l a4,d4				
	move.l d4,104(sp)			
	lsl.l #3,d4				
	add.l a4,d4				
	move.l d4,d7				
	lsl.l #6,d7				
	add.l d7,d4				
	add.l d4,d4				
	move.l 44(sp),d7			
	sub.l d4,d7				
	move.l d7,84(sp)			
						
	move.l d2,d4				
	add.l d2,d4				
	move.l d4,a5				
	add.l d2,a5				
	move.l a5,d4				
	lsl.l #3,d4				
	add.l d2,d4				
	move.l d4,d7				
	lsl.l #6,d7				
	add.l d7,d4				
	add.l d4,d4				
						
	lsl.l #4,d1				
	add.l d6,d1				
	lsl.l #5,d1				
	move.l d1,44(sp)			
	sub.l d6,d1				
	sub.l d4,d1				
						
	move.l d3,d6				
	lsl.l #7,d6				
	sub.l d3,d6				
	lsl.l #3,d6				
	sub.l d3,d6				
	add.l d6,d6				
	add.l d6,d6				
	add.l d1,d6				
						
	move.l a6,d4				
	lsl.l #4,d4				
	move.l d4,d1				
	add.l a6,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l a6,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l a6,d1				
	add.l d1,d1				
	add.l d6,d1				
						
	move.l a3,d6				
	lsl.l #6,d6				
	sub.l a3,d6				
	add.l d6,d6				
	add.l d6,d6				
	add.l d5,d6				
	move.l d6,a3				
	add.l d6,a3				
	add.l a3,a3				
	add.l a3,d6				
	sub.l d6,d1				
	move.l d1,132(sp)			
	move.l 60(sp),d1			
	sub.l a1,d1				
	move.l d1,88(sp)			
						
	move.l a5,d1				
	lsl.l #4,d1				
	add.l d2,d1				
	lsl.l #5,d1				
	sub.l d2,d1				
						
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	lsl.l #3,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	add.l d1,d0				
						
	lea (a6,a6.l),a1			
	move.l a1,d7				
	add.l a6,d7				
	move.l d7,d1				
	lsl.l #4,d1				
	add.l a6,d1				
	lsl.l #5,d1				
	sub.l d1,d0				
						
	move.l a4,d6				
	lsl.l #4,d6				
	move.l d6,d1				
	sub.l a4,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l a4,d1				
	lsl.l #3,d1				
	add.l a4,d1				
	lsl.l #3,d1				
	add.l d0,d1				
	add.l 88(sp),d1				
	move.l d1,92(sp)			
						
	move.l a5,d0				
	lsl.l #6,d0				
	sub.l a5,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,d1				
	add.l d0,d1				
	add.l d1,d1				
	add.l d1,d0				
						
	move.l 44(sp),d1			
	neg.l d1				
	move.l d1,44(sp)			
	move.l d1,a5				
	sub.l d0,a5				
						
	move.l d3,d0				
	add.l d3,d0				
	add.l d3,d0				
	move.l d0,d1				
	lsl.l #4,d1				
	move.l d1,a3				
	add.l d3,a3				
	move.l a3,d1				
	lsl.l #5,d1				
	move.l d1,a3				
	sub.l d3,a3				
	add.l a5,a3				
						
	sub.l a6,d4				
	add.l d4,d4				
	add.l d4,d4				
	sub.l a6,d4				
	lsl.l #3,d4				
	add.l a6,d4				
	lsl.l #3,d4				
	add.l a3,d4				
						
	move.l d5,d1				
	lsl.l #4,d1				
	move.l d1,a3				
	sub.l d5,a3				
	add.l a3,a3				
	add.l a3,a3				
	sub.l d5,a3				
	move.l a3,d1				
	lsl.l #3,d1				
	add.l d1,d5				
	lsl.l #3,d5				
	add.l d5,d4				
	move.l d4,136(sp)			
						
	move.l 48(sp),d4			
	sub.l d2,d4				
	add.l d4,d4				
	add.l d4,d4				
	sub.l d2,d4				
	add.l d4,d4				
	move.l 44(sp),a5			
	add.l d5,a5				
	add.l d4,a5				
						
	move.l 56(sp),d1			
	add.l d3,d1				
	add.l d1,d1				
	add.l d1,d1				
	move.l d1,d4				
	add.l d3,d4				
	move.l d4,d1				
	lsl.l #3,d1				
	add.l d1,d4				
	add.l a5,d4				
						
	lsl.l #3,d7				
	add.l a6,d7				
	move.l d7,d1				
	lsl.l #6,d1				
	add.l d1,d7				
	add.l d7,d7				
						
	sub.l d7,d4				
						
	move.l a4,d1				
	lsl.l #7,d1				
	sub.l a4,d1				
	lsl.l #3,d1				
	sub.l a4,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l a4,d1				
	sub.l d1,d4				
	move.l d4,96(sp)			
						
	move.l d2,d1				
	lsl.l #7,d1				
	sub.l d2,d1				
	lsl.l #3,d1				
	sub.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d1,d2				
						
	lsl.l #3,d0				
	add.l d3,d0				
	move.l d0,d1				
	lsl.l #6,d1				
	add.l d1,d0				
	add.l d0,d0				
	neg.l d0				
	sub.l d2,d0				
						
	add.l a1,a1				
	move.l a1,d1				
	add.l a6,d1				
	lsl.l #3,d1				
	sub.l a6,d1				
	lsl.l #5,d1				
	move.l a6,d2				
	sub.l d1,d2				
	add.l d2,d2				
	move.l d0,a6				
	add.l d2,a6				
						
	add.l a4,d6				
	add.l d6,d6				
	add.l d6,d6				
	move.l d6,d0				
	sub.l a4,d0				
	lsl.l #3,d0				
	move.l a4,d1				
	sub.l d0,d1				
	add.l a6,d1				
	move.l d1,144(sp)			
						
	move.l 48(a2),d2			
	moveq #12,d3				
	asr.l d3,d2				
	move.l d2,d0				
	lsl.l #4,d0				
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,60(sp)			
	add.l d2,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	add.l d1,d0				
						
	move.l 52(a2),d7			
	asr.l d3,d7				
	move.l d7,d1				
	add.l d7,d1				
	move.l d1,d5				
	add.l d7,d5				
	move.l d5,d1				
	lsl.l #6,d1				
	sub.l d5,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d7,d1				
	move.l d1,a1				
	add.l d1,a1				
	add.l a1,a1				
	add.l a1,d1				
	move.l d1,d4				
	neg.l d4				
	move.l d4,48(sp)			
	sub.l d1,d0				
						
	move.l 56(a2),d3			
	moveq #12,d6				
	asr.l d6,d3				
	move.l d3,d1				
	lsl.l #4,d1				
	move.l d1,116(sp)			
	move.l d1,a1				
	add.l d3,a1				
	add.l a1,a1				
	add.l a1,a1				
	move.l a1,108(sp)			
	move.l a1,d6				
	sub.l d3,d6				
	lsl.l #3,d6				
	move.l d3,d4				
	sub.l d6,d4				
	add.l d0,d4				
						
	move.l 60(a2),d0			
	moveq #12,d6				
	asr.l d6,d0				
	move.l d0,d6				
	lsl.l #7,d6				
	move.l d6,a1				
	sub.l d0,a1				
	move.l a1,d1				
	lsl.l #3,d1				
	move.l d1,a1				
	sub.l d0,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l d4,a1				
						
	move.l 64(a2),d6			
	moveq #12,d4				
	asr.l d4,d6				
	move.l d6,d4				
	add.l d6,d4				
	move.l d4,a5				
	add.l d6,a5				
	move.l a5,d4				
	lsl.l #4,d4				
	add.l d6,d4				
	lsl.l #5,d4				
	move.l d4,44(sp)			
	sub.l d4,a1				
						
	move.l 68(a2),d4			
	moveq #12,d1				
	asr.l d1,d4				
	move.l d4,a6				
	lea (a6,d4.l),a3			
	lea (a3,d4.l),a2			
	move.l a2,112(sp)			
	move.l a2,d4				
	lsl.l #3,d4				
	add.l a6,d4				
	move.l d4,d1				
	lsl.l #6,d1				
	add.l d1,d4				
	add.l d4,d4				
	sub.l d4,a1				
	move.l a1,56(sp)			
						
	move.l d2,a1				
	add.l d2,a1				
	lea (a1,d2.l),a2			
	move.l a2,d4				
	lsl.l #3,d4				
	add.l d2,d4				
	move.l d4,d1				
	lsl.l #6,d1				
	add.l d1,d4				
	add.l d4,d4				
						
	lsl.l #4,d5				
	add.l d7,d5				
	lsl.l #5,d5				
	move.l d5,a1				
	sub.l d7,a1				
	sub.l d4,a1				
						
	move.l d3,d7				
	lsl.l #7,d7				
	sub.l d3,d7				
	lsl.l #3,d7				
	sub.l d3,d7				
	add.l d7,d7				
	add.l d7,d7				
	add.l a1,d7				
						
	move.l d0,d4				
	lsl.l #4,d4				
	move.l d4,a1				
	add.l d0,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l d0,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l d0,a1				
	add.l a1,a1				
	add.l d7,a1				
						
	move.l a5,d7				
	lsl.l #6,d7				
	sub.l a5,d7				
	add.l d7,d7				
	add.l d7,d7				
	add.l d6,d7				
	move.l d7,a5				
	add.l d7,a5				
	add.l a5,a5				
	add.l a5,d7				
	sub.l d7,a1				
	move.l a1,120(sp)			
	move.l 48(sp),d7			
	sub.l 44(sp),d7				
	move.l d7,48(sp)			
						
	move.l a2,d7				
	lsl.l #4,d7				
	add.l d2,d7				
	lsl.l #5,d7				
	move.l d7,a1				
	sub.l d2,a1				
						
	move.l 116(sp),d1			
	sub.l d3,d1				
	add.l d1,d1				
	add.l d1,d1				
	sub.l d3,d1				
	lsl.l #3,d1				
	add.l d3,d1				
	lsl.l #3,d1				
	add.l a1,d1				
						
	move.l d0,a5				
	add.l d0,a5				
	lea (a5,d0.l),a1			
	move.l a1,116(sp)			
	move.l a1,d7				
	lsl.l #4,d7				
	add.l d0,d7				
	lsl.l #5,d7				
	sub.l d7,d1				
	move.l d1,44(sp)			
						
	move.l a6,d7				
	lsl.l #4,d7				
	move.l d7,a1				
	sub.l a6,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l a6,a1				
	move.l a1,d1				
	lsl.l #3,d1				
	move.l d1,a1				
	add.l a6,a1				
	move.l a1,d1				
	lsl.l #3,d1				
	move.l d1,a1				
	add.l 44(sp),a1				
	add.l 48(sp),a1				
	move.l a1,44(sp)			
						
	move.l a2,d1				
	lsl.l #6,d1				
	sub.l a2,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d2,d1				
	move.l d1,a1				
	add.l d1,a1				
	add.l a1,a1				
	add.l a1,d1				
						
	neg.l d5				
	move.l d5,36(sp)			
	move.l d5,a2				
	sub.l d1,a2				
						
	move.l d3,d1				
	add.l d3,d1				
	add.l d3,d1				
	move.l d1,d5				
	lsl.l #4,d5				
	move.l d5,a1				
	add.l d3,a1				
	move.l a1,d5				
	lsl.l #5,d5				
	move.l d5,a1				
	sub.l d3,a1				
	add.l a2,a1				
						
	sub.l d0,d4				
	add.l d4,d4				
	add.l d4,d4				
	sub.l d0,d4				
	lsl.l #3,d4				
	add.l d0,d4				
	lsl.l #3,d4				
	add.l a1,d4				
						
	move.l d6,d5				
	lsl.l #4,d5				
	move.l d5,a1				
	sub.l d6,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l d6,a1				
	move.l a1,d5				
	lsl.l #3,d5				
	add.l d5,d6				
	lsl.l #3,d6				
	move.l d4,a2				
	add.l d6,a2				
	add.l 36(sp),d6				
						
	move.l 60(sp),a1			
	sub.l d2,a1				
	add.l a1,a1				
	add.l a1,a1				
	sub.l d2,a1				
	add.l a1,a1				
	add.l d6,a1				
						
	move.l 108(sp),d4			
	add.l d3,d4				
	add.l d4,d4				
	add.l d4,d4				
	add.l d3,d4				
	move.l d4,d5				
	lsl.l #3,d5				
	add.l d5,d4				
	add.l a1,d4				
						
	move.l 116(sp),d5			
	lsl.l #3,d5				
	add.l d0,d5				
	move.l d5,d6				
	lsl.l #6,d6				
	add.l d6,d5				
	add.l d5,d5				
						
	sub.l d5,d4				
						
	move.l a6,d5				
	lsl.l #7,d5				
	move.l d5,a1				
	sub.l a6,a1				
	move.l a1,d6				
	lsl.l #3,d6				
	move.l d6,a1				
	sub.l a6,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l a6,a1				
	sub.l a1,d4				
	move.l d4,60(sp)			
						
	move.l d2,d4				
	lsl.l #7,d4				
	move.l d4,a1				
	sub.l d2,a1				
	move.l a1,d4				
	lsl.l #3,d4				
	move.l d4,a1				
	sub.l d2,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l a1,d2				
						
	lsl.l #3,d1				
	add.l d3,d1				
	move.l d1,d3				
	lsl.l #6,d3				
	add.l d3,d1				
	add.l d1,d1				
	neg.l d1				
	sub.l d2,d1				
						
	lea (a5,a5.l),a1			
	move.l a1,d2				
	add.l d0,d2				
	lsl.l #3,d2				
	sub.l d0,d2				
	lsl.l #5,d2				
	sub.l d2,d0				
	add.l d0,d0				
	add.l d1,d0				
						
	add.l a6,d7				
	add.l d7,d7				
	add.l d7,d7				
	move.l d7,d1				
	sub.l a6,d1				
	lsl.l #3,d1				
	move.l a6,a1				
	sub.l d1,a1				
	lea (a1,d0.l),a5			
						
	move.l a0,a1				
	clr.l (a1)+				
	clr.l (a1)+				
	clr.l (a1)+				
	clr.l (a1)+				
	clr.l (a1)+				
	clr.l (a1)				
						
	move.l 72(sp),d1			
	moveq #12,d5				
	asr.l d5,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	add.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
						
	move.l d0,24(a0)			
						
	move.l 68(sp),d0			
	add.l d0,d0				
	add.l 40(sp),d0				
	lsl.l #3,d0				
	sub.l 40(sp),d0				
	lsl.l #5,d0				
	move.l 40(sp),d2			
	sub.l d0,d2				
	add.l d2,d2				
	add.l 124(sp),d2			
						
	asr.l d5,d2				
	move.l d2,68(sp)			
	move.l d2,d1				
	lsl.l #7,d1				
	sub.l d2,d1				
	lsl.l #3,d1				
	sub.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
						
	move.l 84(sp),d3			
	asr.l d5,d3				
	move.l d3,d0				
	lsl.l #4,d0				
	add.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d1,d0				
	move.l d0,48(a0)			
						
	move.l 52(sp),d0			
	add.l d0,d0				
	add.l a4,d0				
	lsl.l #3,d0				
	sub.l a4,d0				
	lsl.l #5,d0				
	move.l a4,d1				
	sub.l d0,d1				
	add.l d1,d1				
	add.l 132(sp),d1			
						
	asr.l d5,d1				
	move.l d1,52(sp)			
	move.l d1,d0				
	lsl.l #7,d0				
	move.l d0,a1				
	sub.l d1,a1				
	move.l a1,d6				
	lsl.l #3,d6				
	move.l d6,a1				
	sub.l d1,a1				
	add.l a1,a1				
	add.l a1,a1				
						
	move.l 56(sp),d3			
	asr.l d5,d3				
	move.l d3,d0				
	lsl.l #4,d0				
	add.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l a1,d0				
	move.l d0,72(a0)			
						
	move.l a3,d0				
	add.l a3,d0				
	add.l a6,d0				
	lsl.l #3,d0				
	sub.l a6,d0				
	lsl.l #5,d0				
	move.l a6,d4				
	sub.l d0,d4				
	add.l d4,d4				
	add.l 120(sp),d4			
						
	asr.l d5,d4				
	move.l d4,d0				
	lsl.l #7,d0				
	sub.l d4,d0				
	lsl.l #3,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,96(a0)			
						
	move.l 76(sp),d3			
	moveq #12,d7				
	asr.l d7,d3				
	move.l d3,d0				
	add.l d3,d0				
	add.l d3,d0				
	lsl.l #4,d0				
	add.l d3,d0				
	lsl.l #5,d0				
						
	sub.l d3,d0				
	move.l d0,28(a0)			
						
	move.l 100(sp),d5			
	lsl.l #4,d5				
	add.l 40(sp),d5				
	lsl.l #5,d5				
	sub.l 40(sp),d5				
	add.l 128(sp),d5			
						
	asr.l d7,d5				
	move.l d5,d0				
	lsl.l #4,d0				
	sub.l d5,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d5,d0				
	lsl.l #3,d0				
	add.l d5,d0				
	lsl.l #3,d0				
						
	move.l 92(sp),d3			
	asr.l d7,d3				
	move.l d3,a1				
	add.l d3,a1				
	move.l a1,d6				
	add.l d3,d6				
	lsl.l #4,d6				
	add.l d3,d6				
	lsl.l #5,d6				
	move.l d6,a1				
	sub.l d3,a1				
	add.l a1,d0				
	move.l d0,52(a0)			
						
	move.l 104(sp),d3			
	lsl.l #4,d3				
	add.l a4,d3				
	lsl.l #5,d3				
	sub.l a4,d3				
	add.l 136(sp),d3			
						
	asr.l d7,d3				
	move.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d3,d0				
	lsl.l #3,d0				
	add.l d3,d0				
	lsl.l #3,d0				
						
	move.l 44(sp),d6			
	asr.l d7,d6				
	move.l d6,a1				
	add.l d6,a1				
	move.l a1,d7				
	add.l d6,d7				
	lsl.l #4,d7				
	add.l d6,d7				
	lsl.l #5,d7				
	move.l d7,a1				
	sub.l d6,a1				
	add.l a1,d0				
	move.l d0,76(a0)			
						
	move.l 112(sp),d0			
	lsl.l #4,d0				
	add.l a6,d0				
	lsl.l #5,d0				
	sub.l a6,d0				
	add.l a2,d0				
						
	moveq #12,d1				
	asr.l d1,d0				
	move.l d0,d6				
	lsl.l #4,d6				
	move.l d6,a1				
	sub.l d0,a1				
	add.l a1,a1				
	move.l a1,d6				
	add.l a1,d6				
	sub.l d0,d6				
	lsl.l #3,d6				
	add.l d0,d6				
	lsl.l #3,d6				
						
	move.l d6,100(a0)			
						
	move.l 80(sp),d6			
	asr.l d1,d6				
	move.l d6,d7				
	lsl.l #4,d7				
	move.l d7,a1				
	add.l d6,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l d6,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l a1,d6				
	move.l d6,d7				
	lsl.l #3,d7				
						
	add.l d7,d6				
	move.l d6,32(a0)			
						
	move.l 64(sp),d7			
	add.l 140(sp),d7			
						
	asr.l d1,d7				
	move.l d7,a1				
	add.l d7,a1				
	lea (a1,d7.l),a2			
	move.l a2,d6				
	lsl.l #4,d6				
	sub.l a2,d6				
	lsl.l #3,d6				
	move.l d6,d1				
	add.l d7,d1				
	move.l d1,d2				
	lsl.l #3,d2				
	move.l d2,a1				
	add.l d1,a1				
						
	move.l 96(sp),d6			
	moveq #12,d1				
	asr.l d1,d6				
	move.l d6,d2				
	lsl.l #4,d2				
	move.l d2,a2				
	add.l d6,a2				
	add.l a2,a2				
	add.l a2,a2				
	add.l d6,a2				
	add.l a2,a2				
	add.l a2,a2				
	add.l a2,d6				
	move.l d6,d1				
	lsl.l #3,d1				
	add.l d1,d6				
	add.l a1,d6				
	move.l d6,56(a0)			
						
	move.l 88(sp),d6			
	add.l 144(sp),d6			
						
	moveq #12,d2				
	asr.l d2,d6				
	move.l d6,a1				
	add.l d6,a1				
	lea (a1,d6.l),a2			
	move.l a2,d1				
	lsl.l #4,d1				
	move.l d1,a1				
	sub.l a2,a1				
	move.l a1,d2				
	lsl.l #3,d2				
	move.l d2,a1				
	add.l d6,a1				
	move.l a1,d1				
	lsl.l #3,d1				
	add.l d1,a1				
						
	move.l 60(sp),d2			
	moveq #12,d1				
	asr.l d1,d2				
	move.l d2,a2				
	lsl.l #4,d2				
	move.l d2,a3				
	add.l a2,a3				
	add.l a3,a3				
	add.l a3,a3				
	add.l a2,a3				
	add.l a3,a3				
	add.l a3,a3				
	lea (a3,a2.l),a2			
	move.l a2,d2				
	lsl.l #3,d2				
	add.l d2,a2				
	add.l a1,a2				
	move.l a2,80(a0)			
						
	move.l 48(sp),a1			
	add.l a5,a1				
						
	move.l a1,d2				
	asr.l d1,d2				
	move.l d2,a1				
	lea (a1,d2.l),a2			
	lea (a2,d2.l),a3			
	move.l a3,d1				
	lsl.l #4,d1				
	move.l d1,a2				
	sub.l a3,a2				
	move.l a2,d2				
	lsl.l #3,d2				
	move.l d2,a2				
	add.l a1,a2				
	move.l a2,d1				
	lsl.l #3,d1				
						
	add.l d1,a2				
	move.l a2,104(a0)			
						
	move.l 80(sp),d2			
	neg.l d2				
						
	moveq #12,d1				
	asr.l d1,d2				
	move.l d2,a2				
	lea (a2,d2.l),a3			
	lea (a3,d2.l),a4			
	move.l a4,d2				
	lsl.l #4,d2				
	move.l d2,a3				
	sub.l a4,a3				
	move.l a3,d1				
	lsl.l #3,d1				
	move.l d1,a3				
	add.l a2,a3				
	move.l a3,d2				
	lsl.l #3,d2				
						
	add.l d2,a3				
	move.l a3,36(a0)			
						
	move.l d7,d1				
	lsl.l #4,d1				
	move.l d1,a2				
	add.l d7,a2				
	add.l a2,a2				
	add.l a2,a2				
	add.l d7,a2				
	add.l a2,a2				
	add.l a2,a2				
	add.l a2,d7				
	move.l d7,d2				
	lsl.l #3,d2				
	add.l d2,d7				
						
	move.l 96(sp),d1			
	neg.l d1				
						
	moveq #12,d2				
	asr.l d2,d1				
	move.l d1,a3				
	lea (a3,d1.l),a2			
	lea (a2,d1.l),a4			
	move.l a4,d1				
	lsl.l #4,d1				
	move.l d1,a2				
	sub.l a4,a2				
	move.l a2,d2				
	lsl.l #3,d2				
	move.l d2,a2				
	add.l a3,a2				
	move.l a2,d1				
	lsl.l #3,d1				
	add.l d1,a2				
	add.l a2,d7				
	move.l d7,60(a0)			
						
	move.l d6,d7				
	lsl.l #4,d7				
	add.l d6,d7				
	add.l d7,d7				
	add.l d7,d7				
	add.l d6,d7				
	add.l d7,d7				
	add.l d7,d7				
	add.l d7,d6				
	move.l d6,d7				
	lsl.l #3,d7				
	add.l d7,d6				
						
	move.l 60(sp),d7			
	neg.l d7				
						
	moveq #12,d2				
	asr.l d2,d7				
	move.l d7,a2				
	add.l d7,d7				
	lea (a2,d7.l),a3			
	move.l a3,d7				
	lsl.l #4,d7				
	sub.l a3,d7				
	lsl.l #3,d7				
	add.l a2,d7				
	move.l d7,d1				
	lsl.l #3,d1				
	add.l d1,d7				
	add.l d6,d7				
	move.l d7,84(a0)			
						
	move.l a1,d6				
	lsl.l #4,d6				
	add.l a1,d6				
	add.l d6,d6				
	add.l d6,d6				
	add.l a1,d6				
	add.l d6,d6				
	add.l d6,d6				
	add.l a1,d6				
	move.l d6,d7				
	lsl.l #3,d7				
						
	add.l d7,d6				
	move.l d6,108(a0)			
						
	move.l 76(sp),d7			
	neg.l d7				
						
	asr.l d2,d7				
	move.l d7,d6				
	lsl.l #4,d6				
	move.l d6,a1				
	sub.l d7,a1				
	add.l a1,a1				
	move.l a1,d6				
	add.l a1,d6				
	sub.l d7,d6				
	lsl.l #3,d6				
	add.l d7,d6				
	lsl.l #3,d6				
						
	move.l d6,40(a0)			
						
	move.l d5,a1				
	add.l d5,a1				
	move.l a1,d6				
	add.l d5,d6				
	lsl.l #4,d6				
	add.l d5,d6				
	lsl.l #5,d6				
	sub.l d5,d6				
						
	move.l 92(sp),d7			
	neg.l d7				
						
	asr.l d2,d7				
	move.l d7,d5				
	lsl.l #4,d5				
	move.l d5,a1				
	sub.l d7,a1				
	add.l a1,a1				
	move.l a1,d5				
	add.l a1,d5				
	sub.l d7,d5				
	lsl.l #3,d5				
	add.l d7,d5				
	lsl.l #3,d5				
	add.l d6,d5				
	move.l d5,64(a0)			
						
	move.l d3,a1				
	add.l d3,a1				
	move.l a1,d5				
	add.l d3,d5				
	lsl.l #4,d5				
	add.l d3,d5				
	lsl.l #5,d5				
	sub.l d3,d5				
						
	move.l 44(sp),d6			
	neg.l d6				
						
	asr.l d2,d6				
	move.l d6,d3				
	lsl.l #4,d3				
	move.l d3,a1				
	sub.l d6,a1				
	add.l a1,a1				
	move.l a1,d3				
	add.l a1,d3				
	sub.l d6,d3				
	lsl.l #3,d3				
	add.l d6,d3				
	lsl.l #3,d3				
	add.l d5,d3				
	move.l d3,88(a0)			
						
	move.l d0,a1				
	add.l d0,a1				
	move.l a1,d3				
	add.l d0,d3				
	lsl.l #4,d3				
	add.l d0,d3				
	lsl.l #5,d3				
						
	sub.l d0,d3				
	move.l d3,112(a0)			
						
	move.l 72(sp),d3			
	neg.l d3				
						
	asr.l d2,d3				
	move.l d3,d0				
	lsl.l #7,d0				
	sub.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
	add.l d0,d0				
	add.l d0,d0				
						
	move.l d0,44(a0)			
						
	move.l 68(sp),d0			
	lsl.l #4,d0				
	add.l 68(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l 68(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l 68(sp),d0				
	add.l d0,d0				
						
	move.l 84(sp),d2			
	neg.l d2				
						
	moveq #12,d3				
	asr.l d3,d2				
	move.l d2,d3				
	lsl.l #7,d3				
	move.l d3,a1				
	sub.l d2,a1				
	move.l a1,d5				
	lsl.l #3,d5				
	move.l d5,a1				
	sub.l d2,a1				
	add.l a1,a1				
	add.l a1,a1				
	add.l a1,d0				
	move.l d0,68(a0)			
						
	move.l 52(sp),d0			
	lsl.l #4,d0				
	add.l 52(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l 52(sp),d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l 52(sp),d0				
	add.l d0,d0				
						
	move.l 56(sp),d2			
	neg.l d2				
						
	moveq #12,d6				
	asr.l d6,d2				
	move.l d2,d1				
	lsl.l #7,d1				
	sub.l d2,d1				
	lsl.l #3,d1				
	sub.l d2,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d0,d1				
	move.l d1,92(a0)			
						
	move.l d4,d0				
	lsl.l #4,d0				
	add.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	sub.l d4,d0				
	add.l d0,d0				
						
	move.l d0,116(a0)			
						
	clr.l 120(a0)				
	lea (124,a0),a0				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)+				
	clr.l (a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (112,sp),sp				
	rts					
						
	.align	2				
						
_III_freqinver:					
	move.l d3,-(sp)				
	move.l 8(sp),d1				
	move.l 12(sp),d0			
	add.l d0,d0				
	add.l d0,d0				
	move.l d1,a0				
	add.l d0,a0				
						
	neg.l 128(a0)				
	move.l d0,a2				
	lea (640,a2),a2				
	add.l d1,a2				
						
	move.l (a2),d2				
						
	neg.l 384(a0)				
	move.l d0,a1				
	lea (896,a1),a1				
	add.l d1,a1				
						
	move.l (a1),d3				
						
	neg.l d2				
	move.l d2,(a2)				
	move.l d0,a2				
	lea (1152,a2),a2			
	add.l d1,a2				
						
	move.l (a2),d2				
						
	neg.l d3				
	move.l d3,(a1)				
	add.l #1408,d0				
	move.l d1,a1				
	add.l d0,a1				
						
	move.l (a1),d1				
						
	neg.l d2				
	move.l d2,(a2)				
						
	move.l 1664(a0),d0			
						
	neg.l d1				
	move.l d1,(a1)				
						
	neg.l d0				
	move.l d0,1664(a0)			
						
	neg.l 1920(a0)				
						
	neg.l 2176(a0)				
						
	move.l (sp)+,d3				
	rts					
						
	.globl	___udivsi3			
	.globl	___divsi3			
	.globl	___umodsi3			
	.globl	___modsi3			
	.align	2				
						
_III_decode:					
	link.w a6,#-7120			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 8(a6),a5				
						
	move.l 12(a6),a0			
	move.l 20(a0),d0			
						
	move.l 28(a0),d1			
						
	btst #14,d1				
	jbne _?L42				
						
	move.l d0,d2				
	moveq #15,d3				
	lsr.l d3,d2				
						
	moveq #1,d4				
	and.l d4,d2				
						
	lsr.l #7,d0				
						
	and.l d3,d0				
						
	move.l d2,a1				
	lea -8(a1,d0.l),a0			
_?L43:						
						
	move.l d1,d0				
	and.l #4096,d0				
						
	btst #12,d1				
	jbeq _?L304				
	moveq #1,d1				
	move.l d1,-7008(a6)			
						
	lea _sfbwidth_table,a1			
	move.l a0,d1				
	add.l a0,d1				
	add.l a0,d1				
	add.l d1,d1				
	add.l d1,d1				
	move.l (a1,d1.l),-7036(a6)		
	move.l 16(a6),-7024(a6)			
	clr.l -7012(a6)				
						
	clr.l -7028(a6)				
	move.w #28,a0				
	add.l 16(a6),a0				
	move.l a0,-7004(a6)			
	lea (-6912,a6),a2			
	move.l a2,-7104(a6)			
						
	add.l d1,a1				
	move.l a1,-7016(a6)			
	move.l a5,-7000(a6)			
_?L302:						
	lea (-6996,a6),a3			
	move.l a3,-7020(a6)			
	move.l -7004(a6),-7060(a6)		
	move.l -7024(a6),a5			
	sub.l 16(a6),a5				
	move.l a5,-7048(a6)			
						
	move.l -7024(a6),-7044(a6)		
	lea (-4608,a6),a0			
	move.l a0,-7056(a6)			
	move.l -7024(a6),-7092(a6)		
	move.l a3,-7052(a6)			
						
	clr.l -7072(a6)				
						
	move.l -7028(a6),d1			
	lsl.l #3,d1				
	sub.l -7028(a6),d1			
	add.l d1,d1				
	add.l d1,d1				
	add.l -7028(a6),d1			
	add.l d1,d1				
	add.l d1,d1				
	move.l d1,-7040(a6)			
	move.l -7000(a6),a5			
_?L192:						
						
	move.l -7052(a6),a2			
	addq.l #4,-7052(a6)			
	move.l -7036(a6),(a2)+			
						
	move.l -7092(a6),a3			
	move.b 19(a3),d1			
						
	cmp.b #2,d1				
	jbeq _?L529				
_?L45:						
						
	tst.l d0				
	jbeq _?L48				
_?L552:						
						
	move.l 12(a6),a0			
	move.l 8(a0),d0				
	tst.l -7072(a6)				
	jbeq _?L305				
						
	move.l 16(a6),a1			
	lea (184,a1),a1				
	move.l a1,-7088(a6)			
						
	move.l (a5),a2				
	move.l 4(a5),a3				
	move.l a2,-6976(a6)			
	move.l a3,-6972(a6)			
						
	move.l -7092(a6),a3			
	move.w 16(a3),d4			
						
	moveq #0,d3				
	move.w d4,d3				
						
	cmp.b #2,d1				
	jbeq _?L530				
_?L306:						
	moveq #60,d2				
	move.l d2,-7100(a6)			
	moveq #48,d1				
	move.w #36,a4				
	moveq #24,d5				
	move.w #12,a3				
	moveq #0,d7				
_?L50:						
						
	btst #0,d0				
	jbeq _?L51				
						
	tst.l -7088(a6)				
	jbeq _?L51				
						
	lsr.l #1,d3				
						
	cmp.l #179,d3				
	jbhi _?L64				
						
	lea ___udivsi3,a3			
	pea 36.w				
	move.l d3,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l #___umodsi3,-7100(a6)		
	pea 36.w				
	move.l d3,-(sp)				
	lea ___umodsi3,a2			
	jbsr (a2)				
	addq.l #8,sp				
	move.l d0,d3				
						
	pea 6.w					
	move.l d0,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d5				
						
	pea 6.w					
	move.l d3,-(sp)				
	lea ___umodsi3,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l a4,a3				
	add.l #_nsfb_table,a3			
						
	move.l d4,-6912(a6)			
						
	move.l d5,-6908(a6)			
						
	move.l d0,-6904(a6)			
						
	clr.l -6900(a6)				
	move.l a6,d5				
	add.l #-6912,d5				
	move.l d5,a1				
	lea (16,a1),a0				
						
	clr.l -7100(a6)				
						
	moveq #1,d7				
	move.w #28,a2				
	add.l -7048(a6),a2			
	move.l a2,-7084(a6)			
	move.l d5,-7096(a6)			
	move.l a0,d5				
_?L69:						
						
	move.l -7096(a6),a0			
	addq.l #4,-7096(a6)			
	move.l (a0)+,d4				
						
	move.l d7,d3				
	lsl.l d4,d3				
						
	subq.l #1,d3				
						
	tst.b (a3)+				
	jbeq _?L67				
	move.l -7084(a6),d0			
	add.l -7100(a6),d0			
	add.l 16(a6),d0				
	move.l d0,-7080(a6)			
	move.l -7088(a6),a1			
	move.l -7100(a6),a2			
	lea 18(a1,a2.l),a4			
						
	moveq #0,d6				
_?L68:						
						
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	jbsr _mad_bit_read			
	addq.l #8,sp				
						
	move.l -7080(a6),a0			
	addq.l #1,-7080(a6)			
	move.b d0,(a0)+				
						
	cmp.l d3,d0				
	seq d0					
						
	neg.b d0				
	move.b d0,(a4)+				
	move.l d6,a2				
						
	addq.l #1,d6				
						
	moveq #0,d0				
	move.b -1(a3),d0			
						
	cmp.l d6,d0				
	jbhi _?L68				
						
	move.l -7100(a6),a1			
	lea 1(a2,a1.l),a1			
	move.l a1,-7100(a6)			
_?L67:						
						
	cmp.l -7096(a6),d5			
	jbne _?L69				
						
	moveq #38,d0				
	cmp.l -7100(a6),d0			
	jbcs _?L63				
						
	moveq #39,d3				
	sub.l -7100(a6),d3			
	move.l -7100(a6),a1			
	move.l -7048(a6),a2			
	lea 28(a1,a2.l),a0			
	move.l d3,-(sp)				
	clr.l -(sp)				
	move.l 16(a6),a3			
	pea (a3,a0.l)				
	lea _memset,a3				
	jbsr (a3)				
						
	addq.l #8,sp				
	move.l d3,(sp)				
	clr.l -(sp)				
	move.l -7088(a6),a0			
	move.l -7100(a6),a1			
	pea 18(a0,a1.l)				
	jbsr (a3)				
	lea (12,sp),sp				
_?L63:						
						
	move.l a5,-(sp)				
	pea -6976(a6)				
	jbsr _mad_bit_length			
	addq.l #8,sp				
_?L62:						
						
	move.l -7052(a6),a1			
	move.l -4(a1),d7			
						
	move.l -7092(a6),a2			
	moveq #0,d3				
	move.w 10(a2),d3			
						
	sub.l d0,d3				
						
	jbmi _?L531				
_?L88:						
						
	moveq #0,d1				
	move.w 14(a2),d1			
						
	add.l #-210,d1				
						
	move.b 18(a2),d2			
						
	btst #1,d2				
	jbne _?L309				
	moveq #1,d0				
	move.l a2,a0				
						
	cmp.b #2,19(a0)				
	jbeq _?L532				
_?L91:						
						
	btst #2,d2				
	jbeq _?L97				
	move.w #28,a2				
	add.l -7092(a6),a2			
	lea _pretab,a0				
	lea (-6912,a6),a1			
	move.l #_pretab+22,d5			
_?L98:						
						
	moveq #0,d2				
	move.b (a2)+,d2				
						
	moveq #0,d4				
	move.b (a0)+,d4				
						
	add.l d4,d2				
						
	lsl.l d0,d2				
						
	move.l d1,d4				
	sub.l d2,d4				
	move.l d4,(a1)+				
						
	cmp.l d5,a0				
	jbne _?L98				
_?L99:						
						
	move.l -7056(a6),a4			
						
	move.l (a5),d4				
	move.l 4(a5),d5				
	move.l d4,-6988(a6)			
	move.l d5,-6984(a6)			
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr _mad_bit_skip			
	addq.l #8,sp				
						
	moveq #0,d4				
	move.w -6982(a6),d4			
						
	moveq #31,d0				
	sub.l d4,d0				
						
	moveq #-8,d5				
	and.l d5,d0				
						
	add.l d0,d4				
						
	move.l d4,-(sp)				
	pea -6988(a6)				
	move.l #_mad_bit_read,-7076(a6)		
	lea _mad_bit_read,a0			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,d6				
						
	move.l d3,a0				
	sub.l d4,a0				
						
	move.l d7,a1				
	addq.l #1,a1				
	move.l a1,-7068(a6)			
	subq.l #1,a1				
	moveq #0,d0				
	move.b (a1)+,d0				
	move.l d0,a2				
	add.l a2,a2				
	add.l a2,a2				
						
	add.l -7056(a6),a2			
	move.l a2,-7088(a6)			
						
	move.l -7092(a6),a2			
	move.b 26(a2),d0			
						
	addq.l #1,d0				
	move.l d0,-7084(a6)			
						
	moveq #0,d0				
	move.b 20(a2),d0			
						
	lsl.l #3,d0				
	lea _mad_huff_pair_table,a3		
	move.l (a3,d0.l),d7			
						
	lea (a3,d0.l),a1			
						
	moveq #0,d1				
	move.w 4(a1),d1				
						
	moveq #0,d0				
	move.w 6(a1),d0				
	move.l d0,-7100(a6)			
						
	tst.l d7				
	jbeq _?L95				
						
	move.l -6912(a6),a1			
						
	moveq #0,d0				
	move.w 12(a2),d0			
						
	tst.l d0				
	jbeq _?L101				
	tst.l d3				
	jbeq _?L101				
	move.l d0,a2				
	subq.l #2,a2				
						
	clr.l -7096(a6)				
						
	lea (-6912,a6),a3			
	addq.l #4,a3				
	move.l a3,-7080(a6)			
						
	clr.l -7064(a6)				
	move.l a0,-7120(a6)			
	move.l a5,-7032(a6)			
	move.l d1,a5				
_?L158:						
						
	cmp.l -7088(a6),a4			
	jbeq _?L533				
						
	moveq #20,d0				
	cmp.l d4,d0				
	jbge _?L534				
_?L106:						
						
	move.l d4,d3				
	sub.l -7100(a6),d3			
	move.l d6,d0				
	lsr.l d3,d0				
	moveq #1,d1				
	move.l -7100(a6),d2			
	lsl.l d2,d1				
	subq.l #1,d1				
	and.l d1,d0				
						
	add.l d0,d0				
						
	move.l d7,a3				
	add.l d0,a3				
						
	tst.b (a3)				
	jblt _?L107				
						
	moveq #1,d0				
	move.l -7120(a6),a0			
_?L108:						
						
	move.l d3,d4				
						
	move.b (a3),d2				
	lsr.b #4,d2				
						
	moveq #7,d5				
	and.l d5,d2				
						
	sub.l d2,d3				
	move.l d6,d1				
	lsr.l d3,d1				
	move.l d0,d5				
	lsl.l d2,d5				
	subq.l #1,d5				
	and.l d5,d1				
						
	move.w (a3),d2				
	and.w #4095,d2				
	and.l #65535,d2				
						
	add.l d2,d1				
						
	add.l d1,d1				
						
	move.l d7,a3				
	add.l d1,a3				
						
	tst.b (a3)				
	jbge _?L108				
	move.l a0,-7120(a6)			
_?L107:						
						
	move.b (a3),d0				
	lsr.b #4,d0				
	moveq #7,d1				
	and.l d1,d0				
						
	sub.l d0,d4				
						
	move.b (a3),d0				
	and.b #15,d0				
						
	moveq #0,d3				
	move.b d0,d3				
						
	cmp.w #0,a5				
	jbeq _?L109				
						
	tst.b d0				
	jbeq _?L311				
	cmp.b #15,d0				
	jbne _?L111				
						
	move.l a5,d0				
	addq.l #2,d0				
						
	cmp.l d0,d4				
	jbcs _?L535				
						
	sub.l a5,d4				
	moveq #1,d0				
	move.l a5,d2				
	lsl.l d2,d0				
	subq.l #1,d0				
	move.l d6,d1				
	lsr.l d4,d1				
	and.l d1,d0				
						
	moveq #15,d3				
	add.l d3,d0				
						
	move.l a1,d3				
	jbmi _?L536				
_?L113:						
	asr.l #2,d3				
						
	add.l d0,d0				
	add.l d0,d0				
	move.l #_rq_table,d1			
	move.l d0,a0				
	move.l (a0,d1.l),d2			
	lsr.l #5,d2				
						
	move.l #_rq_table+2,d1			
	move.b 1(a0,d1.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d3,d1				
						
	jbmi _?L537				
_?L114:						
						
	move.l #2147483647,d0			
						
	moveq #4,d3				
	cmp.l d1,d3				
	jblt _?L115				
						
	move.l d2,d0				
	lsl.l d1,d0				
_?L115:						
						
	move.l a1,d1				
	moveq #3,d5				
	and.l d5,d1				
	jbeq _?L116				
						
	move.l a1,d1				
	and.l #-2147483645,d1			
	cmp.w #0,a1				
	jblt _?L538				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d3				
	asr.l d3,d0				
						
	move.l d0,-(sp)				
	move.l #_root_table,d0			
	move.l d0,a0				
	move.w (a0,d1.l),a0			
	move.l a0,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7116(a6),a1			
	move.l -7108(a6),a2			
_?L116:						
						
	subq.l #1,d4				
						
	btst d4,d6				
	jbeq _?L110				
	neg.l d0				
_?L110:						
						
	move.l d0,(a4)				
						
	move.b 1(a3),d3				
	lsr.b #4,d3				
						
	jbeq _?L324				
	cmp.b #15,d3				
	jbne _?L126				
						
	move.l a5,d0				
	addq.l #1,d0				
						
	cmp.l d0,d4				
	jbcs _?L539				
						
	sub.l a5,d4				
	moveq #1,d0				
	move.l a5,d2				
	lsl.l d2,d0				
	subq.l #1,d0				
	move.l d6,d1				
	lsr.l d4,d1				
	and.l d1,d0				
						
	moveq #15,d3				
	add.l d3,d0				
						
	move.l a1,d3				
	jbmi _?L540				
_?L128:						
	asr.l #2,d3				
						
	add.l d0,d0				
	add.l d0,d0				
	lea _rq_table,a3			
	move.l (a3,d0.l),d2			
	lsr.l #5,d2				
						
	lea _rq_table+2,a3			
	move.b 1(a3,d0.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d3,d1				
						
	jbmi _?L541				
_?L129:						
						
	move.l #2147483647,d0			
						
	moveq #4,d3				
	cmp.l d1,d3				
	jblt _?L130				
						
	move.l d2,d0				
	lsl.l d1,d0				
_?L130:						
						
	move.l a1,d1				
	moveq #3,d5				
	and.l d5,d1				
	jbeq _?L150				
						
	move.l a1,d1				
	and.l #-2147483645,d1			
	cmp.w #0,a1				
	jblt _?L542				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d3				
	asr.l d3,d0				
						
	move.l d0,-(sp)				
	lea _root_table,a3			
	move.w (a3,d1.l),a3			
	move.l a3,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7116(a6),a1			
	move.l -7108(a6),a2			
_?L150:						
						
	subq.l #1,d4				
						
	btst d4,d6				
	jbeq _?L125				
	neg.l d0				
_?L125:						
						
	move.l d0,4(a4)				
						
	addq.l #8,a4				
						
	move.l -7120(a6),d3			
	add.l d4,d3				
						
	moveq #-1,d5				
	cmp.l a2,d5				
	jbeq _?L157				
	subq.l #1,a2				
	tst.l d3				
	jbgt _?L158				
_?L157:						
						
	move.l -7120(a6),a0			
	move.l -7032(a6),a5			
	tst.l d3				
	jblt _?L543				
						
	move.l -7092(a6),a2			
	move.b 18(a2),d0			
	and.b #1,d0				
	and.l #255,d0				
						
	add.l d0,d0				
	add.l d0,d0				
	lea _mad_huff_quad_table,a3		
	move.l (a3,d0.l),-7096(a6)		
						
	move.l a1,d1				
	jbmi _?L544				
_?L160:						
	asr.l #2,d1				
						
	move.l d1,d0				
	addq.l #2,d0				
						
	jbmi _?L545				
_?L161:						
						
	move.l #2147483647,d5			
						
	moveq #4,d2				
	cmp.l d0,d2				
	jblt _?L162				
						
	move.l #67108864,d5			
	lsl.l d0,d5				
_?L162:						
						
	move.l a1,d0				
	moveq #3,d7				
	and.l d7,d0				
	jbeq _?L163				
						
	move.l a1,d0				
	and.l #-2147483645,d0			
	cmp.w #0,a1				
	jblt _?L546				
						
	addq.l #3,d0				
	add.l d0,d0				
	add.l d0,d0				
	moveq #12,d2				
	asr.l d2,d5				
						
	move.l d5,-(sp)				
	lea _root_table,a3			
	move.w (a3,d0.l),a3			
	move.l a3,-(sp)				
	move.l a0,-7112(a6)			
	move.l a1,-7116(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
	move.l -7112(a6),a0			
	move.l -7116(a6),a1			
_?L163:						
						
	tst.l d3				
	jbeq _?L344				
	move.l -7056(a6),d1			
	add.l #2288,d1				
	move.l d1,-7100(a6)			
	cmp.l d1,a4				
	jbhi _?L344				
						
	moveq #1,d7				
	move.l -7080(a6),a3			
	move.l a0,d0				
	move.l -7096(a6),a0			
	move.l d6,d2				
	move.l -7088(a6),d6			
	move.l a5,-7096(a6)			
	move.l -7068(a6),a5			
	move.l d0,-7088(a6)			
						
	moveq #9,d3				
	cmp.l d4,d3				
	jbge _?L547				
_?L165:						
						
	move.l d4,d0				
	subq.l #4,d0				
	move.l d2,d1				
	lsr.l d0,d1				
	moveq #15,d3				
	and.l d3,d1				
						
	add.l d1,d1				
						
	lea (a0,d1.l),a2			
						
	move.b (a2),d3				
						
	jbmi _?L166				
						
	lsr.b #4,d3				
	moveq #7,d4				
	and.l d4,d3				
	move.l d0,d1				
	sub.l d3,d1				
	move.l d2,d4				
	lsr.l d1,d4				
	move.l d7,d1				
	lsl.l d3,d1				
	subq.l #1,d1				
	and.l d4,d1				
						
	move.w (a2),d3				
	and.w #4095,d3				
	and.l #65535,d3				
						
	add.l d3,d1				
						
	add.l d1,d1				
						
	lea (a0,d1.l),a2			
						
	move.b (a2),d3				
						
	move.l d0,d4				
_?L166:						
						
	move.b (a2),d0				
	lsr.b #4,d0				
	moveq #7,d1				
	and.l d1,d0				
						
	sub.l d0,d4				
						
	cmp.l d6,a4				
	jbeq _?L548				
						
	btst #3,d3				
	jbeq _?L331				
_?L556:						
						
	subq.l #1,d4				
	move.l d7,d0				
	lsl.l d4,d0				
	and.l d2,d0				
						
	jbeq _?L332				
	move.l d5,d0				
	neg.l d0				
_?L173:						
						
	move.l d0,(a4)				
						
	btst #2,d3				
	jbeq _?L333				
_?L557:						
						
	subq.l #1,d4				
	move.l d7,d0				
	lsl.l d4,d0				
	and.l d2,d0				
						
	jbeq _?L334				
	move.l d5,d0				
	neg.l d0				
						
	move.l d0,4(a4)				
	move.l a4,d0				
	addq.l #8,d0				
						
	cmp.l d6,d0				
	jbeq _?L549				
_?L175:						
						
	btst #1,d3				
	jbeq _?L338				
_?L561:						
						
	subq.l #1,d4				
	move.l d7,d0				
	lsl.l d4,d0				
	and.l d2,d0				
						
	jbeq _?L339				
	move.l d5,d0				
	neg.l d0				
_?L181:						
						
	move.l d0,8(a4)				
						
	btst #0,d3				
	jbeq _?L340				
_?L562:						
						
	subq.l #1,d4				
	move.l d7,d0				
	lsl.l d4,d0				
	and.l d2,d0				
						
	jbeq _?L341				
	move.l d5,d0				
	neg.l d0				
_?L182:						
						
	move.l d0,12(a4)			
						
	lea (16,a4),a2				
						
	move.l -7088(a6),d0			
	add.l d4,d0				
						
	tst.l d0				
	jble _?L550				
_?L183:						
	cmp.l -7100(a6),a2			
	jbhi _?L551				
						
	move.l a2,a4				
						
	moveq #9,d3				
	cmp.l d4,d3				
	jblt _?L165				
	jbra _?L547				
_?L529:						
						
	btst #3,18(a3)				
	jbeq _?L46				
						
	move.l -7016(a6),a1			
	move.l 8(a1),a0				
						
	move.l -7052(a6),a3			
	move.l a0,-4(a3)			
_?L580:						
						
	tst.l d0				
	jbne _?L552				
_?L48:						
						
	tst.l -7028(a6)				
	jbeq _?L70				
						
	move.l 16(a6),a2			
	move.l -7072(a6),a3			
	move.b 8(a2,a3.l),d2			
						
	move.l (a5),d3				
	move.l 4(a5),d4				
	move.l d3,-6912(a6)			
	move.l d4,-6908(a6)			
						
	move.l -7092(a6),a0			
	moveq #0,d0				
	move.w 16(a0),d0			
						
	lea _sflen_table,a0			
	add.l d0,d0				
						
	moveq #0,d4				
	move.b (a0,d0.l),d4			
						
	moveq #0,d3				
	move.b 1(a0,d0.l),d3			
						
	cmp.b #2,d1				
	jbeq _?L303				
						
	moveq #0,d6				
	move.b d2,d6				
						
	btst #3,d2				
	jbeq _?L76				
						
	move.l -7092(a6),a1			
	move.l -7060(a6),a2			
	move.b (a2),28(a1)			
	move.b 1(a2),29(a1)			
	move.b 2(a2),30(a1)			
	move.b 3(a2),31(a1)			
	clr.w d0				
	move.b 4(a2),d0				
	lsl.w #8,d0				
	move.b 5(a2),d0				
	move.w d0,32(a1)			
_?L77:						
						
	btst #2,d6				
	jbeq _?L79				
						
	move.l -7092(a6),a0			
	move.l -7060(a6),a1			
	move.b 6(a1),34(a0)			
	move.b 7(a1),35(a0)			
	move.b 8(a1),36(a0)			
	move.b 9(a1),37(a0)			
	move.b 10(a1),38(a0)			
_?L80:						
						
	btst #1,d6				
	jbeq _?L82				
						
	move.l -7092(a6),a0			
	move.l -7060(a6),a1			
	move.b 11(a1),39(a0)			
	move.b 12(a1),40(a0)			
	move.b 13(a1),41(a0)			
	move.b 14(a1),42(a0)			
	move.b 15(a1),43(a0)			
_?L83:						
						
	btst #0,d6				
	jbeq _?L85				
						
	move.l -7092(a6),a0			
	move.l -7060(a6),a1			
	move.b 16(a1),44(a0)			
	move.b 17(a1),45(a0)			
	move.b 18(a1),46(a0)			
	move.b 19(a1),47(a0)			
	move.b 20(a1),48(a0)			
_?L86:						
						
	move.l -7092(a6),a0			
	clr.b 49(a0)				
						
	move.l a5,-(sp)				
	pea -6912(a6)				
	jbsr _mad_bit_length			
	addq.l #8,sp				
_?L579:						
						
	move.l -7052(a6),a1			
	move.l -4(a1),d7			
						
	move.l -7092(a6),a2			
	moveq #0,d3				
	move.w 10(a2),d3			
						
	sub.l d0,d3				
						
	jbpl _?L88				
_?L531:						
						
	move.l #566,d0				
						
	movem.l -7152(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L534:						
						
	moveq #31,d3				
	sub.l d4,d3				
						
	moveq #-8,d1				
	and.l d1,d3				
						
	lsl.l d3,d6				
						
	move.l d3,-(sp)				
	pea -6988(a6)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	move.l -7076(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	or.l d0,d6				
						
	add.l d3,d4				
						
	sub.l d3,-7120(a6)			
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
	jbra _?L106				
_?L533:						
						
	move.l -7068(a6),a0			
						
	moveq #0,d0				
	move.b (a0)+,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l a4,d0				
	move.l d0,-7088(a6)			
						
	subq.l #1,-7084(a6)			
	jbne _?L103				
						
	tst.l -7064(a6)				
	jbne _?L104				
						
	move.l -7092(a6),a5			
	moveq #0,d0				
	move.b 27(a5),d0			
						
	addq.l #1,d0				
	move.l d0,-7084(a6)			
_?L104:						
						
	addq.l #1,-7064(a6)			
						
	move.l -7072(a6),d0			
	lsl.l #3,d0				
	sub.l -7072(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
	add.l -7072(a6),d0			
	add.l d0,d0				
	add.l -7040(a6),d0			
	move.l 16(a6),a3			
	add.l d0,a3				
	move.l -7064(a6),a5			
	moveq #0,d0				
	move.b 20(a5,a3.l),d0			
						
	move.l d0,d1				
	lsl.l #3,d1				
	lea _mad_huff_pair_table,a3		
	move.l (a3,d1.l),d7			
						
	add.l a3,d1				
						
	move.l d1,a3				
	move.w 4(a3),d0				
	move.l d0,a5				
						
	moveq #0,d1				
	move.w 6(a3),d1				
	move.l d1,-7100(a6)			
						
	tst.l d7				
	jbeq _?L95				
_?L103:						
						
	move.l -7080(a6),a3			
	move.l (a3),d0				
						
	cmp.l d0,a1				
	jbeq _?L105				
						
	clr.l -7096(a6)				
_?L105:						
						
	addq.l #4,-7080(a6)			
	move.l d0,a1				
						
	move.l a0,-7068(a6)			
						
	moveq #20,d0				
	cmp.l d4,d0				
	jblt _?L106				
	jbra _?L534				
_?L536:						
						
	addq.l #3,d3				
	asr.l #2,d3				
						
	add.l d0,d0				
	add.l d0,d0				
	move.l #_rq_table,d1			
	move.l d0,a0				
	move.l (a0,d1.l),d2			
	lsr.l #5,d2				
						
	move.l #_rq_table+2,d1			
	move.b 1(a0,d1.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d3,d1				
						
	jbpl _?L114				
_?L537:						
						
	moveq #-31,d0				
	cmp.l d1,d0				
	jbgt _?L312				
						
	move.l d1,d3				
	not.l d3				
						
	moveq #1,d0				
	lsl.l d3,d0				
						
	add.l d2,d0				
						
	neg.l d1				
						
	asr.l d1,d0				
	jbra _?L115				
_?L535:						
						
	swap d6					
	clr.w d6				
						
	pea 16.w				
	pea -6988(a6)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	move.l -7076(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	or.l d0,d6				
						
	moveq #-16,d0				
	add.l d0,-7120(a6)			
						
	moveq #16,d1				
	add.l d1,d4				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
						
	sub.l a5,d4				
	moveq #1,d0				
	move.l a5,d2				
	lsl.l d2,d0				
	subq.l #1,d0				
	move.l d6,d1				
	lsr.l d4,d1				
	and.l d1,d0				
						
	moveq #15,d3				
	add.l d3,d0				
						
	move.l a1,d3				
	jbpl _?L113				
	jbra _?L536				
_?L540:						
	addq.l #3,d3				
	asr.l #2,d3				
						
	add.l d0,d0				
	add.l d0,d0				
	lea _rq_table,a3			
	move.l (a3,d0.l),d2			
	lsr.l #5,d2				
						
	lea _rq_table+2,a3			
	move.b 1(a3,d0.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d3,d1				
						
	jbpl _?L129				
_?L541:						
						
	moveq #-31,d5				
	cmp.l d1,d5				
	jbgt _?L317				
						
	move.l d1,d3				
	not.l d3				
						
	moveq #1,d0				
	lsl.l d3,d0				
						
	add.l d2,d0				
						
	neg.l d1				
						
	asr.l d1,d0				
	jbra _?L130				
_?L539:						
						
	swap d6					
	clr.w d6				
						
	pea 16.w				
	pea -6988(a6)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	move.l -7076(a6),a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	or.l d0,d6				
						
	moveq #-16,d0				
	add.l d0,-7120(a6)			
						
	moveq #16,d1				
	add.l d1,d4				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
						
	sub.l a5,d4				
	moveq #1,d0				
	move.l a5,d2				
	lsl.l d2,d0				
	subq.l #1,d0				
	move.l d6,d1				
	lsr.l d4,d1				
	and.l d1,d0				
						
	moveq #15,d3				
	add.l d3,d0				
						
	move.l a1,d3				
	jbpl _?L128				
	jbra _?L540				
_?L538:						
						
	subq.l #1,d1				
	moveq #-4,d2				
	or.l d2,d1				
	addq.l #1,d1				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d3				
	asr.l d3,d0				
						
	move.l d0,-(sp)				
	move.l #_root_table,d0			
	move.l d0,a0				
	move.w (a0,d1.l),a0			
	move.l a0,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7116(a6),a1			
	move.l -7108(a6),a2			
	jbra _?L116				
_?L542:						
						
	subq.l #1,d1				
	moveq #-4,d2				
	or.l d2,d1				
	addq.l #1,d1				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d3				
	asr.l d3,d0				
						
	move.l d0,-(sp)				
	lea _root_table,a3			
	move.w (a3,d1.l),a3			
	move.l a3,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7116(a6),a1			
	move.l -7108(a6),a2			
	jbra _?L150				
_?L544:						
						
	addq.l #3,d1				
	asr.l #2,d1				
						
	move.l d1,d0				
	addq.l #2,d0				
						
	jbpl _?L161				
_?L545:						
						
	moveq #-2,d2				
	sub.l d1,d2				
						
	moveq #31,d1				
	cmp.l d2,d1				
	jblt _?L327				
						
	not.l d0				
						
	moveq #1,d1				
	lsl.l d0,d1				
						
	add.l #67108864,d1			
						
	move.l d1,d5				
	asr.l d2,d5				
	jbra _?L162				
_?L547:						
						
	move.l d2,d3				
	swap d3					
	clr.w d3				
						
	pea 16.w				
	pea -6988(a6)				
	move.l a0,-7112(a6)			
	move.l a1,-7116(a6)			
	move.l -7076(a6),a2			
	jbsr (a2)				
	addq.l #8,sp				
						
	move.l d3,d2				
	or.l d0,d2				
						
	moveq #16,d0				
	add.l d0,d4				
						
	moveq #-16,d1				
	add.l d1,-7088(a6)			
	move.l -7116(a6),a1			
	move.l -7112(a6),a0			
	jbra _?L165				
_?L548:						
						
	moveq #0,d0				
	move.b (a5)+,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d6				
						
	move.l (a3),-7084(a6)			
						
	cmp.l -7084(a6),a1			
	jbeq _?L168				
						
	move.l -7084(a6),d5			
	jbmi _?L553				
	asr.l #2,d5				
						
	move.l d5,a2				
	addq.l #2,a2				
						
	cmp.w #0,a2				
	jblt _?L554				
_?L170:						
						
	move.l #2147483647,d5			
						
	moveq #4,d1				
	cmp.l a2,d1				
	jblt _?L171				
						
	move.l #67108864,d5			
	move.l a2,d0				
	lsl.l d0,d5				
_?L171:						
						
	moveq #3,d0				
	and.l -7084(a6),d0			
	jbeq _?L168				
						
	move.l -7084(a6),d1			
	and.l #-2147483645,d1			
	move.l d1,a1				
	tst.l -7084(a6)				
	jblt _?L555				
						
	move.l a1,d0				
	addq.l #3,d0				
	add.l d0,d0				
	move.l d0,a2				
	add.l d0,a2				
	moveq #12,d0				
	asr.l d0,d5				
						
	move.l d5,-(sp)				
	lea _root_table,a1			
	move.w (a1,a2.l),a2			
	move.l a2,-(sp)				
	move.l d2,-7108(a6)			
	move.l a0,-7112(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
	move.l -7112(a6),a0			
	move.l -7108(a6),d2			
_?L168:						
						
	addq.l #4,a3				
	move.l -7084(a6),a1			
						
	btst #3,d3				
	jbne _?L556				
_?L331:						
	moveq #0,d0				
						
	move.l d0,(a4)				
						
	btst #2,d3				
	jbne _?L557				
_?L333:						
	moveq #0,d0				
						
	move.l d0,4(a4)				
	move.l a4,d0				
	addq.l #8,d0				
						
	cmp.l d6,d0				
	jbne _?L175				
_?L549:						
						
	moveq #0,d0				
	move.b (a5)+,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d6				
						
	move.l (a3),-7084(a6)			
						
	cmp.l -7084(a6),a1			
	jbeq _?L176				
						
	move.l -7084(a6),d5			
	jbmi _?L558				
	asr.l #2,d5				
						
	move.l d5,a2				
	addq.l #2,a2				
						
	cmp.w #0,a2				
	jblt _?L559				
_?L178:						
						
	move.l #2147483647,d5			
						
	moveq #4,d1				
	cmp.l a2,d1				
	jblt _?L179				
						
	move.l #67108864,d5			
	move.l a2,d0				
	lsl.l d0,d5				
_?L179:						
						
	moveq #3,d0				
	and.l -7084(a6),d0			
	jbeq _?L337				
_?L564:						
						
	move.l -7084(a6),d1			
	and.l #-2147483645,d1			
	move.l d1,a1				
	tst.l -7084(a6)				
	jblt _?L560				
						
	move.l a1,d0				
	addq.l #3,d0				
	add.l d0,d0				
	move.l d0,a2				
	add.l d0,a2				
	moveq #12,d0				
	asr.l d0,d5				
						
	move.l d5,-(sp)				
	lea _root_table,a1			
	move.w (a1,a2.l),a2			
	move.l a2,-(sp)				
	move.l d2,-7108(a6)			
	move.l a0,-7112(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
	move.l -7084(a6),a1			
	move.l -7108(a6),d2			
	move.l -7112(a6),a0			
_?L176:						
						
	addq.l #4,a3				
_?L565:						
						
	btst #1,d3				
	jbne _?L561				
_?L338:						
	moveq #0,d0				
						
	move.l d0,8(a4)				
						
	btst #0,d3				
	jbne _?L562				
_?L340:						
	moveq #0,d0				
						
	move.l d0,12(a4)			
						
	lea (16,a4),a2				
						
	move.l -7088(a6),d0			
	add.l d4,d0				
						
	tst.l d0				
	jbgt _?L183				
_?L550:						
	move.l a2,a3				
	move.l -7088(a6),a0			
	move.l -7096(a6),a5			
						
	tst.l d0				
	jbeq _?L185				
_?L344:						
	move.l a4,a3				
_?L185:						
						
	moveq #-64,d2				
	cmp.l a0,d2				
	jbgt _?L187				
	add.l #2304,-7056(a6)			
						
	cmp.l -7056(a6),a3			
	jbcc _?L191				
	move.l -7056(a6),d0			
_?L188:						
						
	clr.l (a3)				
						
	clr.l 4(a3)				
						
	addq.l #8,a3				
						
	cmp.l a3,d0				
	jbhi _?L188				
_?L191:						
						
	addq.l #1,-7072(a6)			
						
	moveq #58,d3				
	add.l d3,-7092(a6)			
	add.l d3,-7060(a6)			
	add.l d3,-7048(a6)			
	add.l d3,-7044(a6)			
	move.l 20(a6),d4			
	cmp.l -7072(a6),d4			
	jbeq _?L563				
	move.l 12(a6),a0			
	move.l 28(a0),d0			
	and.l #4096,d0				
						
	move.l -7052(a6),a2			
	addq.l #4,-7052(a6)			
	move.l -7036(a6),(a2)+			
						
	move.l -7092(a6),a3			
	move.b 19(a3),d1			
						
	cmp.b #2,d1				
	jbne _?L45				
	jbra _?L529				
_?L558:						
						
	addq.l #3,d5				
	asr.l #2,d5				
						
	move.l d5,a2				
	addq.l #2,a2				
						
	cmp.w #0,a2				
	jbge _?L178				
_?L559:						
						
	move.w #-2,a1				
	sub.l d5,a1				
						
	moveq #31,d1				
	cmp.l a1,d1				
	jblt _?L335				
						
	move.l a2,d0				
	not.l d0				
						
	moveq #1,d5				
	lsl.l d0,d5				
						
	add.l #67108864,d5			
						
	move.l a1,d0				
	asr.l d0,d5				
						
	moveq #3,d0				
	and.l -7084(a6),d0			
	jbne _?L564				
_?L337:						
	move.l -7084(a6),a1			
						
	addq.l #4,a3				
	jbra _?L565				
_?L553:						
						
	addq.l #3,d5				
	asr.l #2,d5				
						
	move.l d5,a2				
	addq.l #2,a2				
						
	cmp.w #0,a2				
	jbge _?L170				
_?L554:						
						
	move.w #-2,a1				
	sub.l d5,a1				
						
	moveq #31,d5				
	cmp.l a1,d5				
	jblt _?L329				
						
	move.l a2,d0				
	not.l d0				
						
	moveq #1,d5				
	lsl.l d0,d5				
						
	add.l #67108864,d5			
						
	move.l a1,d0				
	asr.l d0,d5				
	jbra _?L171				
_?L555:						
						
	subq.l #1,a1				
	move.l a1,d0				
	moveq #-4,d1				
	or.l d1,d0				
	move.l d0,a1				
	addq.l #1,a1				
						
	move.l a1,d0				
	addq.l #3,d0				
	add.l d0,d0				
	move.l d0,a2				
	add.l d0,a2				
	moveq #12,d0				
	asr.l d0,d5				
						
	move.l d5,-(sp)				
	lea _root_table,a1			
	move.w (a1,a2.l),a2			
	move.l a2,-(sp)				
	move.l d2,-7108(a6)			
	move.l a0,-7112(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
	move.l -7112(a6),a0			
	move.l -7108(a6),d2			
	jbra _?L168				
_?L560:						
						
	subq.l #1,a1				
	move.l a1,d0				
	moveq #-4,d1				
	or.l d1,d0				
	move.l d0,a1				
	addq.l #1,a1				
						
	move.l a1,d0				
	addq.l #3,d0				
	add.l d0,d0				
	move.l d0,a2				
	add.l d0,a2				
	moveq #12,d0				
	asr.l d0,d5				
						
	move.l d5,-(sp)				
	lea _root_table,a1			
	move.w (a1,a2.l),a2			
	move.l a2,-(sp)				
	move.l d2,-7108(a6)			
	move.l a0,-7112(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
	move.l -7084(a6),a1			
	move.l -7108(a6),d2			
	move.l -7112(a6),a0			
	jbra _?L176				
_?L546:						
						
	subq.l #1,d0				
	moveq #-4,d1				
	or.l d1,d0				
	addq.l #1,d0				
						
	addq.l #3,d0				
	add.l d0,d0				
	add.l d0,d0				
	moveq #12,d2				
	asr.l d2,d5				
						
	move.l d5,-(sp)				
	lea _root_table,a3			
	move.w (a3,d0.l),a3			
	move.l a3,-(sp)				
	move.l a0,-7112(a6)			
	move.l a1,-7116(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d5				
	move.l -7112(a6),a0			
	move.l -7116(a6),a1			
	jbra _?L163				
_?L543:						
						
	move.l #568,d0				
						
	movem.l -7152(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L95:						
	move.l #567,d0				
	movem.l -7152(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L131:						
_?L109:						
						
	tst.b d0				
	jbeq _?L321				
						
	moveq #1,d0				
	lsl.l d3,d0				
						
	move.l -7096(a6),d1			
	and.l d0,d1				
						
	jbeq _?L141				
						
	add.l d3,d3				
	add.l d3,d3				
	add.l a6,d3				
	move.l d3,a0				
	move.l -6976(a0),d0			
_?L142:						
						
	subq.l #1,d4				
						
	btst d4,d6				
	jbeq _?L140				
	neg.l d0				
_?L140:						
						
	move.l d0,(a4)				
						
	move.b 1(a3),d3				
	lsr.b #4,d3				
						
	and.l #255,d3				
						
	tst.l d3				
	jbeq _?L324				
						
	moveq #1,d0				
	lsl.l d3,d0				
						
	move.l -7096(a6),d1			
	and.l d0,d1				
						
	jbne _?L514				
						
	or.l d0,-7096(a6)			
						
	move.l a1,d0				
	jbmi _?L566				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d1				
	add.l d3,d1				
	lea _rq_table,a3			
	move.l (a3,d1.l),d2			
	lsr.l #5,d2				
						
	lea _rq_table+2,a3			
	move.b 1(a3,d1.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d0,d1				
						
	jbmi _?L567				
_?L152:						
						
	move.l #2147483647,d0			
						
	moveq #4,d5				
	cmp.l d1,d5				
	jblt _?L153				
						
	move.l d2,d0				
	lsl.l d1,d0				
_?L153:						
						
	move.l a1,d1				
	moveq #3,d2				
	and.l d2,d1				
	jbeq _?L154				
						
	move.l a1,d1				
	and.l #-2147483645,d1			
	cmp.w #0,a1				
	jblt _?L568				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	lea _root_table,a3			
	move.w (a3,d1.l),a3			
	move.l a3,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
_?L154:						
						
	add.l d3,d3				
	lea (a6,d3.l),a3			
	move.l d0,-6976(a3)			
	jbra _?L150				
_?L566:						
						
	addq.l #3,d0				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d1				
	add.l d3,d1				
	lea _rq_table,a3			
	move.l (a3,d1.l),d2			
	lsr.l #5,d2				
						
	lea _rq_table+2,a3			
	move.b 1(a3,d1.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d0,d1				
						
	jbpl _?L152				
_?L567:						
						
	moveq #-31,d0				
	cmp.l d1,d0				
	jbgt _?L325				
						
	move.l d1,d5				
	not.l d5				
						
	moveq #1,d0				
	lsl.l d5,d0				
						
	add.l d2,d0				
						
	neg.l d1				
						
	asr.l d1,d0				
	jbra _?L153				
_?L568:						
						
	subq.l #1,d1				
	moveq #-4,d5				
	or.l d5,d1				
	addq.l #1,d1				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	lea _root_table,a3			
	move.w (a3,d1.l),a3			
	move.l a3,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
	jbra _?L154				
_?L324:						
	moveq #0,d0				
	jbra _?L125				
_?L321:						
	moveq #0,d0				
	jbra _?L140				
_?L514:						
						
	add.l d3,d3				
	add.l d3,d3				
	lea (a6,d3.l),a3			
	move.l -6976(a3),d0			
	jbra _?L150				
_?L126:						
						
	and.l #255,d3				
						
	moveq #1,d0				
	lsl.l d3,d0				
						
	move.l -7096(a6),d1			
	and.l d0,d1				
						
	jbne _?L514				
						
	or.l d0,-7096(a6)			
						
	move.l a1,d0				
	jbmi _?L569				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d2				
	add.l d3,d2				
	lea _rq_table,a3			
	move.l (a3,d2.l),d1			
	lsr.l #5,d1				
						
	lea _rq_table+2,a3			
	move.b 1(a3,d2.l),d2			
	and.b #31,d2				
	and.l #255,d2				
						
	add.l d0,d2				
						
	jbmi _?L570				
_?L135:						
						
	move.l #2147483647,d0			
						
	moveq #4,d5				
	cmp.l d2,d5				
	jblt _?L136				
						
	move.l d1,d0				
	lsl.l d2,d0				
_?L136:						
						
	move.l a1,d1				
	moveq #3,d2				
	and.l d2,d1				
	jbeq _?L154				
						
	move.l a1,d1				
	and.l #-2147483645,d1			
	cmp.w #0,a1				
	jblt _?L571				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	lea _root_table,a3			
	move.w (a3,d1.l),a3			
	move.l a3,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
_?L572:						
						
	add.l d3,d3				
	lea (a6,d3.l),a3			
	move.l d0,-6976(a3)			
	jbra _?L150				
_?L569:						
						
	addq.l #3,d0				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d2				
	add.l d3,d2				
	lea _rq_table,a3			
	move.l (a3,d2.l),d1			
	lsr.l #5,d1				
						
	lea _rq_table+2,a3			
	move.b 1(a3,d2.l),d2			
	and.b #31,d2				
	and.l #255,d2				
						
	add.l d0,d2				
						
	jbpl _?L135				
_?L570:						
						
	moveq #-31,d5				
	cmp.l d2,d5				
	jbgt _?L319				
						
	move.l d2,d5				
	not.l d5				
						
	moveq #1,d0				
	lsl.l d5,d0				
						
	add.l d1,d0				
						
	neg.l d2				
						
	asr.l d2,d0				
	jbra _?L136				
_?L571:						
						
	subq.l #1,d1				
	moveq #-4,d5				
	or.l d5,d1				
	addq.l #1,d1				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	lea _root_table,a3			
	move.w (a3,d1.l),a3			
	move.l a3,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
	jbra _?L572				
_?L311:						
						
	moveq #0,d0				
	jbra _?L110				
_?L111:						
						
	moveq #1,d0				
	lsl.l d3,d0				
						
	move.l -7096(a6),d1			
	and.l d0,d1				
						
	jbeq _?L118				
						
	add.l d3,d3				
	add.l d3,d3				
	add.l a6,d3				
	move.l d3,a0				
	move.l -6976(a0),d0			
	jbra _?L116				
_?L332:						
						
	move.l d5,d0				
	jbra _?L173				
_?L341:						
						
	move.l d5,d0				
	jbra _?L182				
_?L339:						
						
	move.l d5,d0				
	jbra _?L181				
_?L334:						
						
	move.l d5,d0				
						
	move.l d0,4(a4)				
	move.l a4,d0				
	addq.l #8,d0				
						
	cmp.l d6,d0				
	jbne _?L175				
	jbra _?L549				
_?L141:						
						
	or.l d0,-7096(a6)			
						
	move.l a1,d0				
	jbmi _?L573				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d1				
	add.l d3,d1				
	move.l #_rq_table,d2			
	move.l d1,a0				
	move.l (a0,d2.l),d2			
	lsr.l #5,d2				
						
	move.l #_rq_table+2,d5			
	move.b 1(a0,d5.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d0,d1				
						
	jbmi _?L574				
_?L144:						
						
	move.l #2147483647,d0			
						
	moveq #4,d5				
	cmp.l d1,d5				
	jblt _?L145				
						
	move.l d2,d0				
	lsl.l d1,d0				
_?L145:						
						
	move.l a1,d1				
	moveq #3,d2				
	and.l d2,d1				
	jbeq _?L146				
						
	move.l a1,d1				
	and.l #-2147483645,d1			
	cmp.w #0,a1				
	jblt _?L575				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	move.l #_root_table,d0			
	move.l d0,a0				
	move.w (a0,d1.l),a0			
	move.l a0,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
_?L146:						
						
	add.l d3,d3				
	add.l a6,d3				
	move.l d3,a0				
	move.l d0,-6976(a0)			
	jbra _?L142				
_?L573:						
						
	addq.l #3,d0				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d1				
	add.l d3,d1				
	move.l #_rq_table,d2			
	move.l d1,a0				
	move.l (a0,d2.l),d2			
	lsr.l #5,d2				
						
	move.l #_rq_table+2,d5			
	move.b 1(a0,d5.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d0,d1				
						
	jbpl _?L144				
_?L574:						
						
	moveq #-31,d0				
	cmp.l d1,d0				
	jbgt _?L322				
						
	move.l d1,d5				
	not.l d5				
						
	moveq #1,d0				
	lsl.l d5,d0				
						
	add.l d2,d0				
						
	neg.l d1				
						
	asr.l d1,d0				
	jbra _?L145				
_?L575:						
						
	subq.l #1,d1				
	moveq #-4,d5				
	or.l d5,d1				
	addq.l #1,d1				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	move.l #_root_table,d0			
	move.l d0,a0				
	move.w (a0,d1.l),a0			
	move.l a0,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
	jbra _?L146				
_?L118:						
						
	or.l d0,-7096(a6)			
						
	move.l a1,d0				
	jbmi _?L576				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d1				
	add.l d3,d1				
	move.l #_rq_table,d2			
	move.l d1,a0				
	move.l (a0,d2.l),d2			
	lsr.l #5,d2				
						
	move.l #_rq_table+2,d5			
	move.b 1(a0,d5.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d0,d1				
						
	jbmi _?L577				
_?L120:						
						
	move.l #2147483647,d0			
						
	moveq #4,d5				
	cmp.l d1,d5				
	jblt _?L121				
						
	move.l d2,d0				
	lsl.l d1,d0				
_?L121:						
						
	move.l a1,d1				
	moveq #3,d2				
	and.l d2,d1				
	jbeq _?L122				
						
	move.l a1,d1				
	and.l #-2147483645,d1			
	cmp.w #0,a1				
	jblt _?L578				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	move.l #_root_table,d0			
	move.l d0,a0				
	move.w (a0,d1.l),a0			
	move.l a0,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
_?L122:						
						
	add.l d3,d3				
	add.l a6,d3				
	move.l d3,a0				
	move.l d0,-6976(a0)			
	jbra _?L116				
_?L576:						
						
	addq.l #3,d0				
	asr.l #2,d0				
						
	add.l d3,d3				
	move.l d3,d1				
	add.l d3,d1				
	move.l #_rq_table,d2			
	move.l d1,a0				
	move.l (a0,d2.l),d2			
	lsr.l #5,d2				
						
	move.l #_rq_table+2,d5			
	move.b 1(a0,d5.l),d1			
	and.b #31,d1				
	and.l #255,d1				
						
	add.l d0,d1				
						
	jbpl _?L120				
_?L577:						
						
	moveq #-31,d0				
	cmp.l d1,d0				
	jbgt _?L314				
						
	move.l d1,d5				
	not.l d5				
						
	moveq #1,d0				
	lsl.l d5,d0				
						
	add.l d2,d0				
						
	neg.l d1				
						
	asr.l d1,d0				
	jbra _?L121				
_?L578:						
						
	subq.l #1,d1				
	moveq #-4,d5				
	or.l d5,d1				
	addq.l #1,d1				
						
	addq.l #3,d1				
	add.l d1,d1				
	add.l d1,d1				
	moveq #12,d2				
	asr.l d2,d0				
						
	move.l d0,-(sp)				
	move.l #_root_table,d0			
	move.l d0,a0				
	move.w (a0,d1.l),a0			
	move.l a0,-(sp)				
	move.l a1,-7116(a6)			
	move.l a2,-7108(a6)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l -7108(a6),a2			
	move.l -7116(a6),a1			
	jbra _?L122				
_?L309:						
						
	moveq #2,d0				
	move.l a2,a0				
						
	cmp.b #2,19(a0)				
	jbne _?L91				
_?L532:						
						
	btst #3,d2				
	jbeq _?L310				
						
	lsr.b #2,d2				
	moveq #1,d4				
	and.l d4,d2				
	move.l d2,d4				
	neg.l d4				
	move.w #28,a4				
	add.l a0,a4				
	lea _pretab,a3				
	lea (-6912,a6),a2			
	move.l d7,a1				
						
	sub.l a0,a0				
_?L93:						
						
	moveq #0,d2				
	move.b (a3)+,d2				
						
	and.l d4,d2				
						
	moveq #0,d5				
	move.b (a4)+,d5				
						
	add.l d5,d2				
						
	lsl.l d0,d2				
						
	move.l d1,d5				
	sub.l d2,d5				
	move.l d5,(a2)+				
						
	move.b (a1),d2				
	move.l a1,d5				
	addq.l #1,a1				
	and.l #255,d2				
						
	add.l d2,a0				
						
	moveq #35,d2				
	cmp.l a0,d2				
	jbcc _?L93				
						
	move.w #1,a3				
	sub.l d7,a3				
	add.l d5,a3				
						
	move.l -7092(a6),a1			
	moveq #0,d2				
	move.b 23(a1),d2			
	lsl.l #3,d2				
						
	move.l d1,d4				
	sub.l d2,d4				
						
	moveq #0,d2				
	move.b 24(a1),d2			
	lsl.l #3,d2				
						
	move.l d1,d5				
	sub.l d2,d5				
						
	moveq #0,d2				
	move.b 25(a1),d2			
	lsl.l #3,d2				
						
	move.l d1,d6				
	sub.l d2,d6				
	move.l -7048(a6),a2			
	lea 28(a3,a2.l),a1			
	add.l 16(a6),a1				
	move.l a3,d1				
	add.l a3,d1				
	add.l d1,d1				
	lea (-6912,a6),a2			
	add.l d1,a2				
	add.l d7,a3				
_?L94:						
						
	moveq #0,d1				
	move.b (a1),d1				
						
	lsl.l d0,d1				
						
	move.l d4,d2				
	sub.l d1,d2				
	move.l d2,(a2)				
						
	moveq #0,d1				
	move.b 1(a1),d1				
						
	lsl.l d0,d1				
						
	move.l d5,d2				
	sub.l d1,d2				
	move.l d2,4(a2)				
						
	moveq #0,d1				
	move.b 2(a1),d1				
						
	lsl.l d0,d1				
						
	move.l d6,d2				
	sub.l d1,d2				
	move.l d2,8(a2)				
						
	moveq #0,d1				
	move.b (a3),d1				
	move.l d1,d2				
	add.l d1,d2				
	add.l d2,d1				
						
	add.l d1,a0				
						
	addq.l #3,a1				
	lea (12,a2),a2				
	addq.l #3,a3				
	cmp.w #575,a0				
	jbhi _?L99				
						
	moveq #0,d1				
	move.b (a1),d1				
						
	lsl.l d0,d1				
						
	move.l d4,d2				
	sub.l d1,d2				
	move.l d2,(a2)				
						
	moveq #0,d1				
	move.b 1(a1),d1				
						
	lsl.l d0,d1				
						
	move.l d5,d2				
	sub.l d1,d2				
	move.l d2,4(a2)				
						
	moveq #0,d1				
	move.b 2(a1),d1				
						
	lsl.l d0,d1				
						
	move.l d6,d2				
	sub.l d1,d2				
	move.l d2,8(a2)				
						
	moveq #0,d1				
	move.b (a3),d1				
	move.l d1,d2				
	add.l d1,d2				
	add.l d2,d1				
						
	add.l d1,a0				
						
	addq.l #3,a1				
	lea (12,a2),a2				
	addq.l #3,a3				
	cmp.w #575,a0				
	jbls _?L94				
	jbra _?L99				
_?L51:						
						
	cmp.l #399,d3				
	jbhi _?L53				
						
	move.l d3,d5				
	lsr.l #4,d5				
						
	pea 5.w					
	move.l d5,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	move.l d0,-6912(a6)			
						
	pea 5.w					
	move.l d5,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
						
	move.l d0,-6908(a6)			
						
	lsr.l #2,d3				
	moveq #3,d0				
	and.l d3,d0				
	move.l d0,-6904(a6)			
						
	moveq #3,d1				
	and.l d4,d1				
	move.l d1,-6900(a6)			
						
	move.l d7,a3				
	add.l #_nsfb_table,a3			
	lea (-6912,a6),a1			
	move.l a1,-7100(a6)			
	move.l a1,d5				
	moveq #16,d0				
	add.l d0,d5				
						
	moveq #0,d4				
	moveq #28,d6				
	add.l -7048(a6),d6			
	lea _mad_bit_read,a4			
_?L56:						
						
	tst.b (a3)+				
	jbeq _?L60				
						
	move.l -7100(a6),a0			
	move.l (a0),d3				
	move.l d6,d0				
	add.l d4,d0				
	add.l 16(a6),d0				
	move.l d0,-7096(a6)			
						
	moveq #0,d7				
_?L57:						
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -7096(a6),a1			
	addq.l #1,-7096(a6)			
	move.b d0,(a1)+				
	move.l d7,a1				
						
	addq.l #1,d7				
						
	moveq #0,d0				
	move.b -1(a3),d0			
						
	cmp.l d7,d0				
	jbhi _?L57				
						
	lea 1(a1,d4.l),a1			
	move.l a1,d4				
_?L60:						
						
	addq.l #4,-7100(a6)			
	cmp.l -7100(a6),d5			
	jbne _?L56				
						
	moveq #38,d0				
	cmp.l d4,d0				
	jbcs _?L63				
						
	move.l -7048(a6),a1			
	lea 28(a1,d4.l),a0			
	moveq #39,d0				
	sub.l d4,d0				
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.l 16(a6),a1			
	pea (a1,a0.l)				
	jbsr _memset				
	lea (12,sp),sp				
						
	move.l a5,-(sp)				
	pea -6976(a6)				
	jbsr _mad_bit_length			
	addq.l #8,sp				
	jbra _?L62				
_?L317:						
						
	moveq #0,d0				
	jbra _?L130				
_?L312:						
	moveq #0,d0				
	jbra _?L115				
_?L97:						
	move.w #28,a1				
	add.l -7092(a6),a1			
	lea (-6912,a6),a0			
	lea (88,a0),a2				
_?L100:						
						
	moveq #0,d2				
	move.b (a1)+,d2				
						
	lsl.l d0,d2				
						
	move.l d1,d5				
	sub.l d2,d5				
	move.l d5,(a0)+				
						
	cmp.l a2,a0				
	jbeq _?L99				
						
	moveq #0,d2				
	move.b (a1)+,d2				
						
	lsl.l d0,d2				
						
	move.l d1,d5				
	sub.l d2,d5				
	move.l d5,(a0)+				
						
	cmp.l a2,a0				
	jbne _?L100				
	jbra _?L99				
_?L551:						
	move.l a2,a3				
	move.l -7088(a6),a0			
	move.l -7096(a6),a5			
	jbra _?L185				
_?L325:						
						
	moveq #0,d0				
	jbra _?L153				
_?L322:						
	moveq #0,d0				
	jbra _?L145				
_?L70:						
						
	move.l (a5),d2				
	move.l 4(a5),d3				
	move.l d2,-6912(a6)			
	move.l d3,-6908(a6)			
						
	move.l -7092(a6),a0			
	moveq #0,d0				
	move.w 16(a0),d0			
						
	lea _sflen_table,a0			
	add.l d0,d0				
						
	moveq #0,d4				
	move.b (a0,d0.l),d4			
						
	moveq #0,d3				
	move.b 1(a0,d0.l),d3			
						
	cmp.b #2,d1				
	jbeq _?L303				
						
	moveq #0,d6				
_?L76:						
	move.w #28,a3				
	add.l -7092(a6),a3			
						
	moveq #0,d5				
	move.l #_mad_bit_read,-7076(a6)		
	lea _mad_bit_read,a4			
_?L78:						
						
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d5				
						
	moveq #6,d0				
	cmp.l d5,d0				
	jbeq _?L77				
						
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d5				
						
	moveq #6,d0				
	cmp.l d5,d0				
	jbne _?L78				
	jbra _?L77				
_?L305:						
						
	clr.l -7088(a6)				
						
	move.l (a5),a2				
	move.l 4(a5),a3				
	move.l a2,-6976(a6)			
	move.l a3,-6972(a6)			
						
	move.l -7092(a6),a3			
	move.w 16(a3),d4			
						
	moveq #0,d3				
	move.w d4,d3				
						
	cmp.b #2,d1				
	jbne _?L306				
_?L530:						
	btst #3,18(a3)				
	jbeq _?L307				
	moveq #68,d1				
	move.l d1,-7100(a6)			
	moveq #56,d1				
	move.w #44,a4				
	moveq #32,d5				
	move.w #20,a3				
	moveq #8,d7				
	jbra _?L50				
_?L329:						
						
	moveq #0,d5				
	jbra _?L171				
_?L303:						
						
	move.l -7092(a6),a1			
	btst #3,18(a1)				
	jbne _?L308				
						
	move.w #17,a4				
	move.w #28,a3				
	add.l -7092(a6),a3			
	move.l a4,d5				
	move.l #_mad_bit_read,-7076(a6)		
_?L73:						
						
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	move.l -7076(a6),a2			
	jbsr (a2)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	dbra d5,_?L73				
	clr.w d5				
	subq.l #1,d5				
	jbcc _?L73				
	move.l -7048(a6),a3			
	lea 29(a4,a3.l),a3			
	add.l 16(a6),a3				
	move.l a3,-7100(a6)			
	move.l -7044(a6),d1			
	lea 47(a4,d1.l),a3			
	move.l a4,d4				
	move.l -7076(a6),a4			
_?L74:						
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -7100(a6),a0			
	addq.l #1,-7100(a6)			
	move.b d0,(a0)+				
						
	cmp.l a3,a0				
	jbne _?L74				
						
	move.l d4,a4				
	move.l -7072(a6),d0			
	lsl.l #3,d0				
	sub.l -7072(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
	add.l -7072(a6),d0			
	add.l d0,d0				
	add.l -7040(a6),d0			
	add.l 16(a6),d0				
	add.l d0,a4				
	clr.b 47(a4)				
	clr.b 48(a4)				
	clr.b 49(a4)				
						
	move.l a5,-(sp)				
	pea -6912(a6)				
	jbsr _mad_bit_length			
	addq.l #8,sp				
	jbra _?L579				
_?L46:						
						
	move.l -7016(a6),a2			
	move.l 4(a2),a0				
						
	move.l -7052(a6),a3			
	move.l a0,-4(a3)			
	jbra _?L580				
_?L82:						
	move.w #39,a3				
	add.l -7092(a6),a3			
						
	moveq #11,d4				
	move.l #_mad_bit_read,-7076(a6)		
	lea _mad_bit_read,a4			
_?L84:						
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d4				
						
	moveq #16,d0				
	cmp.l d4,d0				
	jbeq _?L83				
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d4				
						
	moveq #16,d0				
	cmp.l d4,d0				
	jbne _?L84				
	jbra _?L83				
_?L79:						
	move.w #34,a3				
	add.l -7092(a6),a3			
						
	moveq #6,d5				
	move.l #_mad_bit_read,-7076(a6)		
	lea _mad_bit_read,a4			
_?L81:						
						
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d5				
						
	moveq #11,d0				
	cmp.l d5,d0				
	jbeq _?L80				
						
	move.l d4,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d5				
						
	moveq #11,d0				
	cmp.l d5,d0				
	jbne _?L81				
	jbra _?L80				
_?L85:						
	move.w #44,a3				
	add.l -7092(a6),a3			
						
	moveq #16,d4				
	move.l #_mad_bit_read,-7076(a6)		
	lea _mad_bit_read,a4			
_?L87:						
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d4				
						
	moveq #21,d0				
	cmp.l d4,d0				
	jbeq _?L86				
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d4				
						
	moveq #21,d0				
	cmp.l d4,d0				
	jbne _?L87				
	jbra _?L86				
_?L335:						
						
	moveq #0,d5				
	jbra _?L179				
_?L53:						
						
	cmp.l #499,d3				
	jbhi _?L55				
						
	add.l #-400,d3				
						
	move.l d3,d4				
	lsr.l #2,d4				
						
	pea 5.w					
	move.l d4,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	move.l d0,-6912(a6)			
						
	pea 5.w					
	move.l d4,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
						
	move.l d0,-6908(a6)			
						
	moveq #3,d2				
	and.l d3,d2				
	move.l d2,-6904(a6)			
						
	clr.l -6900(a6)				
						
	add.l #_nsfb_table,a3			
	lea (-6912,a6),a1			
	move.l a1,-7100(a6)			
	move.l a1,d5				
	moveq #16,d0				
	add.l d0,d5				
						
	moveq #0,d4				
	moveq #28,d6				
	add.l -7048(a6),d6			
	lea _mad_bit_read,a4			
	jbra _?L56				
_?L314:						
						
	moveq #0,d0				
	jbra _?L121				
_?L319:						
	moveq #0,d0				
	jbra _?L136				
_?L310:						
						
	sub.l a0,a0				
						
	sub.l a3,a3				
						
	move.l -7092(a6),a1			
	moveq #0,d2				
	move.b 23(a1),d2			
	lsl.l #3,d2				
						
	move.l d1,d4				
	sub.l d2,d4				
						
	moveq #0,d2				
	move.b 24(a1),d2			
	lsl.l #3,d2				
						
	move.l d1,d5				
	sub.l d2,d5				
						
	moveq #0,d2				
	move.b 25(a1),d2			
	lsl.l #3,d2				
						
	move.l d1,d6				
	sub.l d2,d6				
	move.l -7048(a6),a2			
	lea 28(a3,a2.l),a1			
	add.l 16(a6),a1				
	move.l a3,d1				
	add.l a3,d1				
	add.l d1,d1				
	lea (-6912,a6),a2			
	add.l d1,a2				
	add.l d7,a3				
	jbra _?L94				
_?L327:						
						
	moveq #0,d5				
	jbra _?L162				
_?L308:						
						
	move.w #16,a4				
	move.w #28,a3				
	add.l -7092(a6),a3			
	move.l a4,d5				
	move.l #_mad_bit_read,-7076(a6)		
	jbra _?L73				
_?L307:						
	moveq #64,d5				
	move.l d5,-7100(a6)			
	moveq #52,d1				
	move.w #40,a4				
	moveq #28,d5				
	move.w #16,a3				
	moveq #4,d7				
	jbra _?L50				
_?L64:						
						
	cmp.l #243,d3				
	jbhi _?L66				
						
	add.l #-180,d3				
						
	move.l d3,d4				
	lsr.l #4,d4				
						
	move.l d3,d5				
	lsr.l #2,d5				
	moveq #3,d0				
	and.l d0,d5				
						
	and.l d3,d0				
						
	move.l d1,a3				
	add.l #_nsfb_table,a3			
						
	move.l d4,-6912(a6)			
						
	move.l d5,-6908(a6)			
						
	move.l d0,-6904(a6)			
						
	clr.l -6900(a6)				
	move.l a6,d5				
	add.l #-6912,d5				
	move.l d5,a1				
	lea (16,a1),a0				
						
	clr.l -7100(a6)				
						
	moveq #1,d7				
	move.w #28,a2				
	add.l -7048(a6),a2			
	move.l a2,-7084(a6)			
	move.l d5,-7096(a6)			
	move.l a0,d5				
	jbra _?L69				
_?L55:						
						
	add.l #-500,d3				
						
	pea 3.w					
	move.l d3,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	move.l d0,-6912(a6)			
						
	pea 3.w					
	move.l d3,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
						
	move.l d0,-6908(a6)			
						
	clr.l -6904(a6)				
						
	clr.l -6900(a6)				
						
	move.l -7092(a6),a0			
	or.b #4,18(a0)				
						
	move.l d5,a3				
	add.l #_nsfb_table,a3			
	lea (-6912,a6),a1			
	move.l a1,-7100(a6)			
	move.l a1,d5				
	moveq #16,d0				
	add.l d0,d5				
						
	moveq #0,d4				
	moveq #28,d6				
	add.l -7048(a6),d6			
	lea _mad_bit_read,a4			
	jbra _?L56				
_?L563:						
						
	move.l -7024(a6),a1			
	move.b 19(a1),-7088(a6)			
						
	moveq #2,d0				
	move.l 12(a6),a0			
	cmp.l 4(a0),d0				
	jbeq _?L581				
_?L193:						
	move.w #18,a0				
	add.l -7024(a6),a0			
	move.l a0,-7096(a6)			
	move.l -7012(a6),d3			
	lsl.l #7,d3				
	add.l 12(a6),d3				
	move.l -7072(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
	move.l #-6996,d1			
	add.l a6,d1				
	add.l d0,d1				
	move.l d1,-7064(a6)			
						
	move.l a0,-7076(a6)			
	lea (-4608,a6),a0			
	move.l a0,-7100(a6)			
	clr.l -7092(a6)				
						
	move.l d3,a3				
	move.l 12(a6),a5			
_?L300:						
	lea (48,a3),a1				
	move.l a1,-7060(a6)			
						
	move.l a1,-7084(a6)			
						
	cmp.b #2,-7088(a6)			
	jbeq _?L582				
_?L267:						
						
	pea 576.w				
	move.l -7100(a6),-(sp)			
	jbsr _III_aliasreduce			
	addq.l #8,sp				
						
	moveq #0,d5				
	move.b -7088(a6),d5			
						
	move.l -7096(a6),a1			
	btst #3,(a1)				
	jbne _?L275				
						
	move.l -7092(a6),d6			
	move.l -7100(a6),d3			
	move.l #_III_imdct_l,-7080(a6)		
	moveq #56,d4				
	add.l a3,d4				
	lea (-6912,a6),a2			
	lea (72,a2),a4				
	move.l a5,d0				
	move.l d6,a5				
	move.l d0,d6				
_?L278:						
						
	move.l d5,-(sp)				
	pea -6912(a6)				
	move.l d3,-(sp)				
	move.l -7080(a6),a0			
	jbsr (a0)				
	lea (12,sp),sp				
	lea (-6912,a6),a0			
						
	move.l d6,a1				
	move.l 9264(a1),a2			
	add.l a5,a2				
	move.l -7060(a6),a1			
_?L277:						
						
	move.l (a0)+,d0				
	add.l (a2),d0				
	move.l d0,(a1)				
						
	move.l 68(a0),(a2)+			
						
	lea (128,a1),a1				
	cmp.l a0,a4				
	jbne _?L277				
						
	moveq #72,d1				
	add.l d1,d3				
	lea (72,a5),a5				
	addq.l #4,-7060(a6)			
	cmp.l -7060(a6),d4			
	jbne _?L278				
	move.l d6,a5				
_?L282:						
						
	neg.l 180(a3)				
						
	neg.l 436(a3)				
						
	neg.l 692(a3)				
						
	neg.l 948(a3)				
						
	neg.l 1204(a3)				
						
	neg.l 1460(a3)				
						
	neg.l 1716(a3)				
						
	neg.l 1972(a3)				
						
	neg.l 2228(a3)				
						
	move.l -7100(a6),a0			
	lea (2296,a0),a0			
						
	move.l #575,d0				
						
	move.l #576,d1				
						
	tst.l 4(a0)				
	jbne _?L280				
_?L279:						
	move.l d0,d1				
						
	subq.l #1,d0				
						
	subq.l #4,a0				
	tst.l 4(a0)				
	jbne _?L280				
	moveq #36,d2				
	cmp.l d0,d2				
	jbne _?L279				
						
	move.l 9264(a5),-7088(a6)		
	moveq #2,d6				
	move.l d6,d4				
	add.l d6,d4				
	add.l d4,d4				
	add.l -7084(a6),d4			
	move.l d6,d0				
	lsl.l #3,d0				
	add.l d6,d0				
	lsl.l #3,d0				
	add.l -7092(a6),d0			
	move.l -7088(a6),a0			
	lea 72(a0,d0.l),a4			
	move.l -7084(a6),d3			
_?L296:						
	lea (-72,a4),a0				
	move.l d4,a1				
_?L294:						
						
	move.l (a0),(a1)			
						
	clr.l (a0)+				
						
	lea (128,a1),a1				
	cmp.l a0,a4				
	jbne _?L294				
						
	btst #0,d6				
	jbne _?L583				
						
	addq.l #1,d6				
						
	addq.l #4,d4				
	lea (72,a4),a4				
	moveq #32,d0				
	cmp.l d6,d0				
	jbne _?L296				
_?L299:						
						
	addq.l #4,-7020(a6)			
	move.l -7020(a6),a0			
	cmp.l -7064(a6),a0			
	jbeq _?L584				
	moveq #58,d1				
	add.l d1,-7096(a6)			
	lea (4608,a3),a3			
	add.l #2304,-7092(a6)			
	add.l #2304,-7100(a6)			
	add.l d1,-7076(a6)			
						
	move.l -7096(a6),a0			
	move.b 1(a0),-7088(a6)			
	lea (48,a3),a1				
	move.l a1,-7060(a6)			
						
	move.l a1,-7084(a6)			
						
	cmp.b #2,-7088(a6)			
	jbne _?L267				
_?L582:						
						
	move.l -7020(a6),a0			
	move.l (a0),a2				
						
	move.l -7076(a6),a1			
	btst #3,(a1)				
	jbeq _?L350				
						
	moveq #0,d0				
_?L269:						
						
	moveq #0,d1				
	move.b (a2)+,d1				
						
	add.l d1,d0				
						
	moveq #35,d1				
	cmp.l d0,d1				
	jbcc _?L269				
						
	move.l -7100(a6),d2			
	add.l #144,d2				
	move.l d2,-7068(a6)			
	move.l #-6768,d3			
	add.l a6,d3				
	move.l d3,-7072(a6)			
	move.l #2160,-7080(a6)			
	moveq #36,d0				
						
	moveq #2,d1				
						
	move.l d1,-6988(a6)			
						
	clr.l -6976(a6)				
						
	move.l d1,-6984(a6)			
						
	clr.l -6972(a6)				
						
	move.l d1,-6980(a6)			
						
	clr.l -6968(a6)				
						
	moveq #0,d4				
	move.b (a2)+,d4				
	add.l d0,d0				
	add.l d0,d0				
	move.l -7100(a6),a4			
	add.l d0,a4				
						
	sub.l a1,a1				
	move.l -7100(a6),d3			
	add.l #2304,d3				
	move.l a1,d0				
	move.l a3,d6				
_?L273:						
						
	tst.l d4				
	jbeq _?L270				
						
	subq.l #1,d4				
						
	move.l d0,d1				
	add.l d0,d1				
	move.l d1,a1				
	add.l d1,a1				
	lea (a6,a1.l),a1			
	lea (-6988,a1),a3			
	move.l (a3),d2				
						
	lea (-6976,a1),a1			
	move.l (a1),a0				
						
	move.l a0,d5				
	addq.l #1,d5				
	move.l d5,(a1)				
						
	move.l d1,d7				
	add.l d0,d7				
	move.l d2,d1				
	lsl.l #3,d1				
	add.l d2,d1				
	add.l d7,d1				
	add.l d1,d1				
	add.l a0,d1				
	add.l d1,d1				
	add.l d1,d1				
	lea (a6,d1.l),a0			
	move.l (a4)+,-6912(a0)			
						
	subq.l #6,d5				
	jbeq _?L585				
_?L272:						
						
	cmp.l a4,d3				
	jbne _?L273				
_?L592:						
						
	move.l d6,a3				
	move.l -7080(a6),-(sp)			
	move.l -7072(a6),-(sp)			
	move.l -7068(a6),-(sp)			
	jbsr _memcpy				
	lea (12,sp),sp				
						
	move.l -7096(a6),a0			
	btst #3,(a0)				
	jbne _?L586				
	move.l -7092(a6),d7			
	moveq #56,d4				
	add.l d6,d4				
	move.l -7100(a6),d5			
	sub.l d7,d5				
	lea _III_imdct_s,a4			
	move.l #-6912,d6			
	add.l a6,d6				
	moveq #72,d2				
	add.l d2,d6				
						
	pea -6912(a6)				
	move.l d5,a0				
	pea (a0,d7.l)				
	jbsr (a4)				
	addq.l #8,sp				
	lea (-6912,a6),a0			
						
	move.l 9264(a5),a2			
	add.l d7,a2				
	move.l -7060(a6),a1			
_?L281:						
						
	move.l (a0)+,d0				
	add.l (a2),d0				
	move.l d0,(a1)				
						
	move.l 68(a0),(a2)+			
						
	lea (128,a1),a1				
	cmp.l a0,d6				
	jbne _?L281				
						
	moveq #72,d1				
	add.l d1,d7				
	addq.l #4,-7060(a6)			
	cmp.l -7060(a6),d4			
	jbeq _?L282				
						
	pea -6912(a6)				
	move.l d5,a0				
	pea (a0,d7.l)				
	jbsr (a4)				
	addq.l #8,sp				
	lea (-6912,a6),a0			
						
	move.l 9264(a5),a2			
	add.l d7,a2				
	move.l -7060(a6),a1			
	jbra _?L281				
_?L280:						
						
	pea 18.w				
	move.l #576,d3				
	sub.l d1,d3				
	move.l d3,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	moveq #32,d6				
	sub.l d0,d6				
						
	cmp.b #2,-7088(a6)			
	jbeq _?L587				
						
	moveq #0,d5				
	move.b -7088(a6),d5			
	move.l -7092(a6),a4			
	lea (144,a4),a4				
						
	moveq #2,d7				
	move.l #_III_imdct_l,-7080(a6)		
	move.l #-6912,d3			
	add.l a6,d3				
	moveq #72,d1				
	add.l d1,d3				
	move.l d3,d0				
	move.l d7,d3				
	move.l a4,-7072(a6)			
	move.l a3,-7088(a6)			
	lea _III_imdct_l,a3			
	move.l d0,d7				
_?L290:						
						
	move.l d5,-(sp)				
	pea -6912(a6)				
	lea (-4608,a6),a0			
	move.l -7072(a6),a1			
	pea (a0,a1.l)				
	jbsr (a3)				
	lea (12,sp),sp				
						
	move.l 9264(a5),a4			
	lea (-6912,a6),a0			
						
	move.l -7072(a6),a2			
	add.l a4,a2				
	move.l d4,a1				
_?L288:						
						
	move.l (a0)+,d0				
	add.l (a2),d0				
	move.l d0,(a1)				
						
	move.l 68(a0),(a2)+			
						
	lea (128,a1),a1				
	cmp.l a0,d7				
	jbne _?L288				
						
	btst #0,d3				
	jbne _?L588				
						
	addq.l #1,d3				
						
	moveq #72,d1				
	add.l d1,-7072(a6)			
	addq.l #4,d4				
	cmp.l d3,d6				
	jbne _?L290				
_?L589:						
	move.l -7088(a6),a3			
	move.l a4,-7088(a6)			
						
	moveq #32,d0				
	cmp.l d6,d0				
	jbeq _?L299				
_?L524:						
	move.l d6,d4				
	add.l d6,d4				
	add.l d4,d4				
	add.l -7084(a6),d4			
	move.l d6,d0				
	lsl.l #3,d0				
	add.l d6,d0				
	lsl.l #3,d0				
	add.l -7092(a6),d0			
	move.l -7088(a6),a0			
	lea 72(a0,d0.l),a4			
	move.l -7084(a6),d3			
	jbra _?L296				
_?L588:						
						
	move.l d3,-(sp)				
	move.l -7084(a6),-(sp)			
	jbsr _III_freqinver			
	addq.l #8,sp				
						
	addq.l #1,d3				
						
	moveq #72,d1				
	add.l d1,-7072(a6)			
	addq.l #4,d4				
	cmp.l d3,d6				
	jbne _?L290				
	jbra _?L589				
_?L583:						
						
	move.l d6,-(sp)				
	move.l d3,-(sp)				
	jbsr _III_freqinver			
	addq.l #8,sp				
						
	addq.l #1,d6				
						
	addq.l #4,d4				
	lea (72,a4),a4				
	moveq #32,d0				
	cmp.l d6,d0				
	jbne _?L296				
	jbra _?L299				
_?L584:						
						
	addq.l #1,-7028(a6)			
						
	moveq #116,d0				
	add.l d0,-7024(a6)			
	moveq #18,d1				
	add.l d1,-7012(a6)			
	move.l -7028(a6),d2			
	cmp.l -7008(a6),d2			
	jbeq _?L353				
	move.l 12(a6),a0			
	move.l 28(a0),d0			
	and.l #4096,d0				
	lea (-6996,a6),a3			
	move.l a3,-7020(a6)			
	move.l -7004(a6),-7060(a6)		
	move.l -7024(a6),a5			
	sub.l 16(a6),a5				
	move.l a5,-7048(a6)			
						
	move.l -7024(a6),-7044(a6)		
	lea (-4608,a6),a0			
	move.l a0,-7056(a6)			
	move.l -7024(a6),-7092(a6)		
	move.l a3,-7052(a6)			
						
	clr.l -7072(a6)				
						
	move.l -7028(a6),d1			
	lsl.l #3,d1				
	sub.l -7028(a6),d1			
	add.l d1,d1				
	add.l d1,d1				
	add.l -7028(a6),d1			
	add.l d1,d1				
	add.l d1,d1				
	move.l d1,-7040(a6)			
	move.l -7000(a6),a5			
	jbra _?L192				
_?L101:						
	lea (-6912,a6),a2			
	addq.l #4,a2				
	move.l a2,-7080(a6)			
						
	move.l -7092(a6),a2			
	move.b 18(a2),d0			
	and.b #1,d0				
	and.l #255,d0				
						
	add.l d0,d0				
	add.l d0,d0				
	lea _mad_huff_quad_table,a3		
	move.l (a3,d0.l),-7096(a6)		
						
	move.l a1,d1				
	jbpl _?L160				
	jbra _?L544				
_?L66:						
						
	add.l #-244,d3				
						
	pea 3.w					
	move.l d3,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	pea 3.w					
	move.l d3,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l -7100(a6),a3			
	add.l #_nsfb_table,a3			
	moveq #0,d0				
						
	move.l d4,-6912(a6)			
						
	move.l d5,-6908(a6)			
						
	move.l d0,-6904(a6)			
						
	clr.l -6900(a6)				
	move.l a6,d5				
	add.l #-6912,d5				
	move.l d5,a1				
	lea (16,a1),a0				
						
	clr.l -7100(a6)				
						
	moveq #1,d7				
	move.w #28,a2				
	add.l -7048(a6),a2			
	move.l a2,-7084(a6)			
	move.l d5,-7096(a6)			
	move.l a0,d5				
	jbra _?L69				
_?L587:						
	move.l -7092(a6),d5			
	add.l #144,d5				
						
	moveq #2,d7				
	lea _III_imdct_s,a4			
	move.l #-6912,d3			
	add.l a6,d3				
	moveq #72,d0				
	add.l d0,d3				
	move.l d5,-7088(a6)			
_?L286:						
						
	pea -6912(a6)				
	lea (-4608,a6),a0			
	move.l -7088(a6),a1			
	pea (a0,a1.l)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l 9264(a5),d5			
	lea (-6912,a6),a0			
						
	move.l -7088(a6),a2			
	add.l d5,a2				
	move.l d4,a1				
_?L292:						
						
	move.l (a0)+,d0				
	add.l (a2),d0				
	move.l d0,(a1)				
						
	move.l 68(a0),(a2)+			
						
	lea (128,a1),a1				
	cmp.l a0,d3				
	jbne _?L292				
						
	btst #0,d7				
	jbne _?L590				
						
	addq.l #1,d7				
						
	moveq #72,d1				
	add.l d1,-7088(a6)			
	addq.l #4,d4				
	cmp.l d7,d6				
	jbne _?L286				
_?L591:						
	move.l d5,-7088(a6)			
						
	moveq #32,d0				
	cmp.l d6,d0				
	jbne _?L524				
	jbra _?L299				
_?L590:						
						
	move.l d7,-(sp)				
	move.l -7084(a6),-(sp)			
	jbsr _III_freqinver			
	addq.l #8,sp				
						
	addq.l #1,d7				
						
	moveq #72,d1				
	add.l d1,-7088(a6)			
	addq.l #4,d4				
	cmp.l d7,d6				
	jbne _?L286				
	jbra _?L591				
_?L304:						
						
	moveq #2,d2				
	move.l d2,-7008(a6)			
						
	lea _sfbwidth_table,a1			
	move.l a0,d1				
	add.l a0,d1				
	add.l a0,d1				
	add.l d1,d1				
	add.l d1,d1				
	move.l (a1,d1.l),-7036(a6)		
	move.l 16(a6),-7024(a6)			
	clr.l -7012(a6)				
						
	clr.l -7028(a6)				
	move.w #28,a0				
	add.l 16(a6),a0				
	move.l a0,-7004(a6)			
	lea (-6912,a6),a2			
	move.l a2,-7104(a6)			
						
	add.l d1,a1				
	move.l a1,-7016(a6)			
	move.l a5,-7000(a6)			
	jbra _?L302				
_?L42:						
						
	add.l d0,d0				
						
	move.l d0,d2				
	moveq #15,d3				
	lsr.l d3,d2				
						
	moveq #1,d4				
	and.l d4,d2				
						
	lsr.l #7,d0				
						
	and.l d3,d0				
						
	move.l d2,a1				
	lea -5(a1,d0.l),a0			
	jbra _?L43				
_?L350:						
	move.l -7100(a6),-7068(a6)		
	lea (-6912,a6),a0			
	move.l a0,-7072(a6)			
	move.l #2304,-7080(a6)			
	moveq #0,d0				
						
	moveq #0,d1				
						
	move.l d1,-6988(a6)			
						
	clr.l -6976(a6)				
						
	move.l d1,-6984(a6)			
						
	clr.l -6972(a6)				
						
	move.l d1,-6980(a6)			
						
	clr.l -6968(a6)				
						
	moveq #0,d4				
	move.b (a2)+,d4				
	add.l d0,d0				
	add.l d0,d0				
	move.l -7100(a6),a4			
	add.l d0,a4				
						
	sub.l a1,a1				
	move.l -7100(a6),d3			
	add.l #2304,d3				
	move.l a1,d0				
	move.l a3,d6				
	jbra _?L273				
_?L585:						
						
	clr.l (a1)				
						
	addq.l #1,d2				
	move.l d2,(a3)				
						
	cmp.l a4,d3				
	jbne _?L273				
	jbra _?L592				
_?L581:						
						
	move.l 8(a0),d3				
						
	jbeq _?L193				
						
	move.l -6996(a6),d5			
						
	move.b 77(a1),d2			
						
	cmp.b -7088(a6),d2			
	jbne _?L195				
						
	move.b 76(a1),d0			
						
	move.b 18(a1),d1			
	eor.b d0,d1				
						
	btst #3,d1				
	jbne _?L195				
						
	move.w d3,-7080(a6)			
	lea (-6912,a6),a2			
	move.l a2,-7076(a6)			
	move.l -7104(a6),d1			
	lsr.l #1,d1				
	moveq #1,d7				
	and.l d1,d7				
	btst #0,d1				
	jbeq _?L345				
	move.w d3,-6912(a6)			
						
	move.l d7,-7092(a6)			
	moveq #39,d4				
	sub.l d7,d4				
	move.l d3,d1				
	swap d1					
	clr.w d1				
	move.w -7080(a6),d1			
	move.l d7,a0				
	add.l d7,a0				
	lea (-6912,a6),a4			
	add.l a0,a4				
	lea (76,a4),a1				
	move.l a4,a0				
_?L197:						
						
	move.l d1,(a0)+				
	cmp.l a1,a0				
	jbne _?L197				
	move.w #38,a0				
	add.l -7092(a6),a0			
	moveq #38,d1				
	cmp.l d4,d1				
	jbeq _?L198				
	add.l a0,a0				
	lea (a6,a0.l),a0			
	move.w d3,-6912(a0)			
_?L198:						
						
	btst #0,d3				
	jbeq _?L252				
						
	move.l 12(a6),a0			
	move.l 28(a0),-7084(a6)			
						
	move.l -7084(a6),d1			
	or.w #256,d1				
	move.l d1,28(a0)			
						
	cmp.b #2,d2				
	jbeq _?L593				
	move.l d5,d4				
						
	moveq #0,d1				
						
	moveq #0,d6				
						
	lea (-2304,a6),a3			
						
	move.w #1,a5				
	sub.l d5,a5				
_?L233:						
						
	move.l d4,a0				
	move.b (a0)+,d0				
						
	moveq #0,d2				
	move.b d0,d2				
						
	jbeq _?L228				
	move.l a3,a2				
						
	sub.l a1,a1				
_?L230:						
						
	tst.l (a2)+				
	jbne _?L229				
						
	addq.l #1,a1				
						
	cmp.l d2,a1				
	jbne _?L230				
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,a3				
						
	add.l d2,d6				
						
	cmp.l #575,d6				
	jbhi _?L232				
_?L228:						
						
	move.l a0,d4				
	jbra _?L233				
_?L270:						
						
	move.l a2,a3				
						
	moveq #0,d4				
	move.b (a3)+,d4				
						
	subq.l #1,d4				
						
	pea 3.w					
	move.l d0,a1				
	pea 1(a1)				
	jbsr ___umodsi3				
	addq.l #8,sp				
						
	move.l a3,a2				
						
	move.l d0,d1				
	add.l d0,d1				
	move.l d1,a1				
	add.l d1,a1				
	lea (a6,a1.l),a1			
	lea (-6988,a1),a3			
	move.l (a3),d2				
						
	lea (-6976,a1),a1			
	move.l (a1),a0				
						
	move.l a0,d5				
	addq.l #1,d5				
	move.l d5,(a1)				
						
	move.l d1,d7				
	add.l d0,d7				
	move.l d2,d1				
	lsl.l #3,d1				
	add.l d2,d1				
	add.l d7,d1				
	add.l d1,d1				
	add.l a0,d1				
	add.l d1,d1				
	add.l d1,d1				
	lea (a6,d1.l),a0			
	move.l (a4)+,-6912(a0)			
						
	subq.l #6,d5				
	jbne _?L272				
	jbra _?L585				
_?L586:						
						
	pea 36.w				
	move.l -7100(a6),-(sp)			
	jbsr _III_aliasreduce			
	addq.l #8,sp				
_?L275:						
						
	moveq #0,d5				
	move.l -7092(a6),d6			
	move.l -7100(a6),d3			
	move.l #_III_imdct_l,-7080(a6)		
	moveq #56,d4				
	add.l a3,d4				
	lea (-6912,a6),a2			
	lea (72,a2),a4				
	move.l a5,d0				
	move.l d6,a5				
	move.l d0,d6				
	jbra _?L278				
_?L195:						
						
	move.l #569,d0				
						
	movem.l -7152(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L353:						
						
	moveq #0,d0				
						
	movem.l -7152(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L345:						
						
	clr.l -7092(a6)				
	moveq #39,d4				
	sub.l d7,d4				
	move.l d3,d1				
	swap d1					
	clr.w d1				
	move.w -7080(a6),d1			
	move.l d7,a0				
	add.l d7,a0				
	lea (-6912,a6),a4			
	add.l a0,a4				
	lea (76,a4),a1				
	move.l a4,a0				
	jbra _?L197				
_?L229:						
						
	move.l a5,d1				
	add.l d4,d1				
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,a3				
						
	add.l d2,d6				
						
	cmp.l #575,d6				
	jbls _?L228				
	jbra _?L232				
_?L247:						
	move.l d4,a0				
	lea (576,a0),a0				
	add.l a0,a0				
	add.l a0,a0				
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	move.l d0,-(sp)				
	move.l a0,d0				
	add.l #-2304,d0				
	lea (-4608,a6),a1			
	pea (a1,d0.l)				
	pea (a1,a0.l)				
	jbsr _memmove				
	lea (12,sp),sp				
_?L511:						
	add.l d4,a3				
_?L243:						
						
	move.l a3,d4				
						
	addq.l #1,-7096(a6)			
	cmp.w #575,a3				
	jbls _?L253				
_?L252:						
						
	btst #1,d3				
	jbeq _?L193				
						
	move.l 12(a6),a0			
	or.w #512,30(a0)			
	move.l d5,a2				
						
	moveq #0,d1				
	move.l -7076(a6),a0			
_?L263:						
						
	moveq #0,d2				
	move.b (a2)+,d2				
						
	cmp.w #2,(a0)+				
	jbeq _?L262				
	add.l d2,d1				
_?L266:						
						
	cmp.l #575,d1				
	jbls _?L263				
	move.w #18,a0				
	add.l -7024(a6),a0			
	move.l a0,-7096(a6)			
	move.l -7012(a6),d3			
	lsl.l #7,d3				
	add.l 12(a6),d3				
	move.l -7072(a6),d0			
	add.l d0,d0				
	add.l d0,d0				
	move.l #-6996,d1			
	add.l a6,d1				
	add.l d0,d1				
	move.l d1,-7064(a6)			
						
	move.l a0,-7076(a6)			
	lea (-4608,a6),a0			
	move.l a0,-7100(a6)			
	clr.l -7092(a6)				
						
	move.l d3,a3				
	move.l 12(a6),a5			
	jbra _?L300				
_?L262:						
						
	tst.l d2				
	jbeq _?L263				
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	lea (-4608,a6),a1			
	add.l d0,a1				
	add.l d2,d1				
	move.l d1,d0				
	add.l d1,d0				
	add.l d0,d0				
	move.l #-4608,d4			
	add.l a6,d4				
	add.l d0,d4				
_?L265:						
						
	move.l (a1)+,d0				
						
	move.l 2300(a1),d6			
						
	move.l d0,d2				
	add.l d6,d2				
	moveq #12,d3				
	asr.l d3,d2				
	move.l d2,d3				
	add.l d2,d3				
	add.l d2,d3				
	lsl.l #6,d3				
	add.l d2,d3				
	move.l d3,d5				
	lsl.l #4,d5				
	sub.l d3,d5				
	add.l d2,d5				
	move.l d5,-4(a1)			
						
	sub.l d6,d0				
	moveq #12,d5				
	asr.l d5,d0				
	move.l d0,d2				
	add.l d0,d2				
	add.l d0,d2				
	lsl.l #6,d2				
	add.l d0,d2				
	move.l d2,d3				
	lsl.l #4,d3				
	sub.l d2,d3				
	add.l d0,d3				
	move.l d3,2300(a1)			
						
	cmp.l a1,d4				
	jbeq _?L266				
						
	move.l (a1)+,d0				
						
	move.l 2300(a1),d6			
						
	move.l d0,d2				
	add.l d6,d2				
	moveq #12,d3				
	asr.l d3,d2				
	move.l d2,d3				
	add.l d2,d3				
	add.l d2,d3				
	lsl.l #6,d3				
	add.l d2,d3				
	move.l d3,d5				
	lsl.l #4,d5				
	sub.l d3,d5				
	add.l d2,d5				
	move.l d5,-4(a1)			
						
	sub.l d6,d0				
	moveq #12,d5				
	asr.l d5,d0				
	move.l d0,d2				
	add.l d0,d2				
	add.l d0,d2				
	lsl.l #6,d2				
	add.l d0,d2				
	move.l d2,d3				
	lsl.l #4,d3				
	sub.l d2,d3				
	add.l d0,d3				
	move.l d3,2300(a1)			
						
	cmp.l a1,d4				
	jbne _?L265				
	jbra _?L266				
_?L593:						
						
	clr.l -6968(a6)				
						
	clr.l -6972(a6)				
						
	clr.l -6976(a6)				
						
	btst #3,d0				
	jbeq _?L346				
	move.l d5,a1				
						
	moveq #0,d6				
						
	sub.l a5,a5				
						
	lea (-2304,a6),a0			
	move.l a0,-7064(a6)			
	move.w #1,a2				
	sub.l d5,a2				
_?L207:						
						
	move.l a2,d4				
	add.l a1,d4				
						
	move.b (a1)+,d0				
						
	moveq #0,d1				
	move.b d0,d1				
						
	jbeq _?L207				
	move.l -7064(a6),a3			
						
	sub.l a0,a0				
_?L206:						
						
	tst.l (a3)+				
	jbne _?L347				
						
	addq.l #1,a0				
						
	cmp.l d1,a0				
	jbne _?L206				
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,-7064(a6)			
						
	add.l d1,a5				
						
	moveq #35,d0				
	cmp.l a5,d0				
	jbcc _?L207				
_?L203:						
	move.l d5,a2				
	add.l d4,a2				
						
	clr.l -7100(a6)				
						
	sub.l a1,a1				
	move.l #___umodsi3,-7096(a6)		
						
	moveq #1,d1				
	sub.l d5,d1				
	move.l d1,-7068(a6)			
_?L214:						
						
	move.l a2,a3				
	move.b (a3)+,d0				
						
	moveq #0,d2				
	move.b d0,d2				
						
	jbeq _?L208				
	move.l -7064(a6),a0			
						
	moveq #0,d1				
_?L211:						
						
	tst.l (a0)+				
	jbne _?L594				
						
	addq.l #1,d1				
						
	cmp.l d2,d1				
	jbne _?L211				
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,-7064(a6)			
						
	add.l d2,a5				
						
	pea 3.w					
	pea 1(a1)				
	move.l -7096(a6),a1			
	jbsr (a1)				
	addq.l #8,sp				
	move.l d0,a1				
						
	cmp.w #575,a5				
	jbhi _?L213				
_?L212:						
						
	move.l a3,a2				
	jbra _?L214				
_?L232:						
						
	tst.l d1				
	jbeq _?L217				
						
	move.w d3,d0				
	and.w #-2,d0				
	move.l d1,a0				
	subq.l #1,a0				
	moveq #5,d2				
	cmp.l a0,d2				
	jbcc _?L349				
	tst.l d7				
	jbeq _?L236				
						
	move.w d0,-6912(a6)			
_?L236:						
	move.l d1,d6				
	sub.l d7,d6				
	move.l d0,d4				
	swap d4					
	clr.w d4				
	move.w d0,d4				
	moveq #-2,d2				
	and.l d6,d2				
	add.l d2,d2				
	lea (a4,d2.l),a0			
_?L237:						
	move.l d4,(a4)+				
	cmp.l a0,a4				
	jbne _?L237				
	btst #0,d6				
	jbeq _?L217				
	moveq #-2,d4				
	and.l d4,d6				
	move.l -7092(a6),a0			
	add.l d6,a0				
_?L235:						
	lea (a0,a0.l),a1			
	lea (a6,a1.l),a1			
	move.w d0,-6912(a1)			
						
	lea (1,a0),a1				
						
	cmp.l d1,a1				
	jbcc _?L217				
						
	add.l a1,a1				
	lea (a6,a1.l),a1			
	move.w d0,-6912(a1)			
						
	lea (2,a0),a1				
						
	cmp.l d1,a1				
	jbcc _?L217				
						
	add.l a1,a1				
	lea (a6,a1.l),a1			
	move.w d0,-6912(a1)			
						
	lea (3,a0),a1				
						
	cmp.l d1,a1				
	jbcc _?L217				
						
	add.l a1,a1				
	lea (a6,a1.l),a1			
	move.w d0,-6912(a1)			
						
	lea (4,a0),a1				
						
	cmp.l d1,a1				
	jbcc _?L217				
						
	add.l a1,a1				
	lea (a6,a1.l),a1			
	move.w d0,-6912(a1)			
						
	addq.l #5,a0				
						
	cmp.l d1,a0				
	jbcc _?L217				
						
	add.l a0,a0				
	lea (a6,a0.l),a0			
	move.w d0,-6912(a0)			
_?L217:						
						
	btst #4,-7082(a6)			
	jbeq _?L241				
	move.l -7024(a6),a0			
	move.w 74(a0),d6			
	and.w #1,d6				
	move.l d5,-7100(a6)			
	move.w #86,a1				
	add.l a0,a1				
	move.l a1,-7096(a6)			
						
	lea (-6912,a6),a5			
						
	moveq #0,d4				
_?L253:						
						
	move.l -7100(a6),a2			
	addq.l #1,-7100(a6)			
	move.b (a2)+,d0				
						
	moveq #0,d1				
	move.b d0,d1				
	move.l d1,a3				
						
	move.w (a5)+,d2				
						
	btst #0,d2				
	jbeq _?L511				
						
	move.l -7096(a6),a0			
	tst.b 116(a0)				
	jbeq _?L244				
						
	and.w #-2,d2				
	move.w d2,-2(a5)			
	add.l d4,a3				
						
	move.l a3,d4				
						
	addq.l #1,-7096(a6)			
	cmp.w #575,a3				
	jbls _?L253				
	jbra _?L252				
_?L346:						
						
	moveq #0,d6				
						
	lea (-2304,a6),a0			
	move.l a0,-7064(a6)			
						
	sub.l a5,a5				
						
	moveq #0,d4				
	move.l d5,a2				
	add.l d4,a2				
						
	clr.l -7100(a6)				
						
	sub.l a1,a1				
	move.l #___umodsi3,-7096(a6)		
						
	moveq #1,d1				
	sub.l d5,d1				
	move.l d1,-7068(a6)			
	jbra _?L214				
_?L213:						
						
	tst.l -7100(a6)				
	jbeq _?L595				
						
	tst.l d4				
	jbeq _?L218				
	move.l d4,d6				
						
	move.w d3,d0				
	and.w #-2,d0				
	tst.l d6				
	jbeq _?L348				
_?L596:						
	moveq #6,d1				
	cmp.l d6,d1				
	jbcc _?L348				
	tst.l d7				
	jbeq _?L222				
						
	move.w d0,-6912(a6)			
_?L222:						
	move.l d6,a0				
	sub.l d7,a0				
	move.l d0,d2				
	swap d2					
	clr.w d2				
	move.w d0,d2				
	move.l a0,d1				
	moveq #-2,d7				
	and.l d7,d1				
	add.l d1,d1				
	add.l a4,d1				
_?L223:						
	move.l d2,(a4)+				
	cmp.l d1,a4				
	jbne _?L223				
	move.l a0,d1				
	btst #0,d1				
	jbeq _?L224				
	moveq #-2,d2				
	and.l d2,d1				
	add.l -7092(a6),d1			
_?L221:						
	move.l d1,a0				
	add.l d1,a0				
	lea (a6,a0.l),a0			
	move.w d0,-6912(a0)			
						
	move.l d1,a0				
	addq.l #1,a0				
						
	cmp.l d6,a0				
	jbcc _?L224				
						
	add.l a0,a0				
	lea (a6,a0.l),a0			
	move.w d0,-6912(a0)			
						
	move.l d1,a0				
	addq.l #2,a0				
						
	cmp.l d6,a0				
	jbcc _?L224				
						
	add.l a0,a0				
	lea (a6,a0.l),a0			
	move.w d0,-6912(a0)			
						
	move.l d1,a0				
	addq.l #3,a0				
						
	cmp.l d6,a0				
	jbcc _?L224				
						
	add.l a0,a0				
	lea (a6,a0.l),a0			
	move.w d0,-6912(a0)			
						
	move.l d1,a0				
	addq.l #4,a0				
						
	cmp.l d6,a0				
	jbcc _?L224				
						
	add.l a0,a0				
	lea (a6,a0.l),a0			
	move.w d0,-6912(a0)			
						
	addq.l #5,d1				
						
	cmp.l d6,d1				
	jbcc _?L224				
						
	add.l d1,d1				
	lea (a6,d1.l),a0			
	move.w d0,-6912(a0)			
_?L224:						
						
	cmp.l -7100(a6),d4			
	jbcc _?L217				
_?L218:						
	move.l d4,d0				
	add.l d4,d0				
	lea (-6912,a6),a3			
	add.l d0,a3				
						
	sub.l a0,a0				
_?L227:						
						
	move.l a0,d0				
	add.l a0,d0				
	add.l d0,d0				
	lea (a6,d0.l),a1			
						
	cmp.l -6976(a1),d4			
	jbcc _?L226				
						
	move.w -7080(a6),d7			
	and.w #-2,d7				
	move.w d7,(a3)				
_?L226:						
						
	pea 3.w					
	pea 1(a0)				
	move.l -7096(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a0				
						
	addq.l #1,d4				
						
	addq.l #2,a3				
	cmp.l -7100(a6),d4			
	jbne _?L227				
	jbra _?L217				
_?L594:						
						
	add.l -7068(a6),a2			
	move.l a2,-7100(a6)			
						
	move.l a1,d1				
	add.l a1,d1				
	add.l d1,d1				
	lea (a6,d1.l),a0			
	move.l a2,-6976(a0)			
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,-7064(a6)			
						
	add.l d2,a5				
						
	pea 3.w					
	pea 1(a1)				
	move.l -7096(a6),a1			
	jbsr (a1)				
	addq.l #8,sp				
	move.l d0,a1				
						
	cmp.w #575,a5				
	jbls _?L212				
	jbra _?L213				
_?L349:						
						
	sub.l a0,a0				
	jbra _?L235				
_?L208:						
						
	pea 3.w					
	pea 1(a1)				
	move.l -7096(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a1				
						
	move.l a3,a2				
	jbra _?L214				
_?L595:						
						
	tst.l d6				
	jbeq _?L217				
						
	move.w d3,d0				
	and.w #-2,d0				
	tst.l d6				
	jbne _?L596				
_?L348:						
						
	moveq #0,d1				
	jbra _?L221				
_?L347:						
						
	move.l d4,d6				
						
	and.l #255,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,-7064(a6)			
						
	add.l d1,a5				
						
	moveq #35,d0				
	cmp.l a5,d0				
	jbcc _?L207				
	jbra _?L203				
_?L244:						
						
	move.b (a0),d7				
						
	moveq #0,d2				
	move.b d7,d2				
						
	cmp.w #0,a3				
	jbeq _?L597				
	tst.l d2				
	jbeq _?L247				
						
	move.l d2,d0				
	subq.l #1,d0				
	lsr.l #1,d0				
	move.l d4,a0				
	add.l d4,a0				
	add.l a0,a0				
	btst #0,d7				
	jbne _?L248				
	lea (-4608,a6),a2			
	add.l a2,a0				
	add.l d4,a3				
	lea (a3,a3.l),a1			
	add.l a1,a1				
	move.l a2,d4				
	add.l a1,d4				
	moveq #0,d7				
	move.w d6,d7				
	move.l d7,d2				
	lsl.l #4,d2				
	move.l d2,a1				
	sub.l d7,a1				
	add.l a1,d0				
	add.l d0,d0				
	add.l d0,d0				
	lea _is_lsf_table,a1			
	move.w (a1,d0.l),d7			
	ext.l d7				
	lea ___mulsi3,a4			
_?L249:						
						
	move.l (a0)+,d0				
						
	moveq #12,d1				
	asr.l d1,d0				
						
	move.l d7,-(sp)				
	move.l d0,-(sp)				
	move.l a0,-7112(a6)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -7112(a6),a0			
	move.l d0,2300(a0)			
						
	cmp.l a0,d4				
	jbeq _?L243				
						
	move.l (a0)+,d0				
						
	moveq #12,d1				
	asr.l d1,d0				
						
	move.l d7,-(sp)				
	move.l d0,-(sp)				
	move.l a0,-7112(a6)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -7112(a6),a0			
	move.l d0,2300(a0)			
						
	cmp.l a0,d4				
	jbne _?L249				
	jbra _?L243				
_?L248:						
	move.l #-4608,d2			
	add.l a6,d2				
	add.l d2,a0				
	add.l d4,a3				
	lea (a3,a3.l),a1			
	add.l a1,a1				
	move.l d2,d4				
	add.l a1,d4				
	move.l d4,-7092(a6)			
						
	moveq #0,d7				
	move.w d6,d7				
	move.l d7,d2				
	lsl.l #4,d2				
	move.l d2,a1				
	sub.l d7,a1				
	add.l a1,d0				
	add.l d0,d0				
	add.l d0,d0				
	lea _is_lsf_table,a1			
	move.w (a1,d0.l),d7			
	ext.l d7				
	lea ___mulsi3,a4			
_?L251:						
						
	move.l (a0),d4				
						
	move.l d4,d0				
	moveq #12,d1				
	asr.l d1,d0				
						
	move.l d7,-(sp)				
	move.l d0,-(sp)				
	move.l a0,-7112(a6)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -7112(a6),a0			
	move.l d0,(a0)+				
						
	move.l d4,2300(a0)			
						
	cmp.l -7092(a6),a0			
	jbeq _?L243				
						
	move.l (a0),d4				
						
	move.l d4,d0				
	moveq #12,d1				
	asr.l d1,d0				
						
	move.l d7,-(sp)				
	move.l d0,-(sp)				
	move.l a0,-7112(a6)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -7112(a6),a0			
	move.l d0,(a0)+				
						
	move.l d4,2300(a0)			
						
	cmp.l -7092(a6),a0			
	jbne _?L251				
	jbra _?L243				
_?L597:						
						
	addq.l #1,-7096(a6)			
	jbra _?L253				
_?L241:						
	move.l d5,a0				
	move.w #86,a2				
	add.l -7024(a6),a2			
						
	move.l a6,d7				
	add.l #-6912,d7				
						
	moveq #0,d0				
						
	lea _is_table,a4			
	lea ___mulsi3,a3			
	move.l a2,-7096(a6)			
	move.l d7,a5				
_?L261:						
						
	moveq #0,d4				
	move.b (a0)+,d4				
						
	move.w (a5)+,d1				
						
	btst #0,d1				
	jbeq _?L512				
						
	move.l -7096(a6),a1			
	moveq #0,d6				
	move.b (a1),d6				
						
	moveq #6,d2				
	cmp.l d6,d2				
	jbcc _?L598				
						
	and.w #-2,d1				
	move.w d1,-2(a5)			
_?L512:						
	add.l d0,d4				
						
	move.l d4,d0				
						
	addq.l #1,-7096(a6)			
	cmp.l #575,d4				
	jbls _?L261				
	jbra _?L252				
_?L598:						
						
	tst.l d4				
	jbeq _?L599				
						
	move.l d6,d1				
	add.l d6,d1				
	add.l d1,d1				
	move.w (a4,d1.l),a1			
	move.l a1,-7100(a6)			
						
	moveq #6,d1				
	sub.l d6,d1				
	add.l d1,d1				
	add.l d1,d1				
	move.w (a4,d1.l),d7			
	ext.l d7				
	move.l d0,d1				
	add.l d0,d1				
	add.l d1,d1				
	lea (-4608,a6),a1			
	add.l d1,a1				
	add.l d0,d4				
	move.l d4,d0				
	add.l d4,d0				
	add.l d0,d0				
	move.l #-4608,d1			
	add.l a6,d1				
	add.l d0,d1				
	move.l d1,-7092(a6)			
	move.l d4,d1				
	move.l a5,d4				
	move.l a1,a5				
_?L259:						
						
	move.l (a5),d6				
						
	moveq #12,d2				
	asr.l d2,d6				
	move.l -7100(a6),-(sp)			
	move.l d6,-(sp)				
	move.l d1,-7108(a6)			
	move.l a0,-7112(a6)			
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l d0,(a5)+				
						
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l d0,2300(a5)			
						
	move.l -7108(a6),d1			
	move.l -7112(a6),a0			
	cmp.l -7092(a6),a5			
	jbne _?L259				
	move.l d4,a5				
	move.l d1,d4				
						
	move.l d4,d0				
						
	addq.l #1,-7096(a6)			
	cmp.l #575,d4				
	jbls _?L261				
	jbra _?L252				
_?L599:						
	addq.l #1,-7096(a6)			
	jbra _?L261				
_?L187:						
						
	jbsr _abort				
						
	.align	2				
	.globl	_mad_layer_III			
						
_mad_layer_III:					
	lea (-312,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 352(sp),a6			
						
	tst.l 48(a6)				
	jbeq _?L684				
						
	move.l 356(sp),a0			
	tst.l 9264(a0)				
	jbeq _?L685				
_?L603:						
						
	move.l 356(sp),a2			
	move.l 28(a2),d0			
	and.l #4096,d0				
						
	tst.l 4(a2)				
	jbeq _?L605				
						
	tst.l d0				
	jbne _?L655				
	move.l #256,d5				
	moveq #32,d6				
						
	moveq #2,d1				
	move.l d1,70(sp)			
_?L606:						
						
	move.l 24(a6),d3			
						
	lea (28,a6),a4				
						
	move.l a4,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
						
	sub.l d0,d3				
						
	cmp.l d3,d6				
	jbgt _?L686				
						
	move.l 356(sp),a0			
	move.l 28(a0),d0			
						
	moveq #16,d1				
	and.l d0,d1				
	move.l d1,62(sp)			
						
	btst #4,d0				
	jbne _?L687				
_?L609:						
						
	move.l d0,d1				
	and.l #4096,d1				
	move.l d1,90(sp)			
						
	btst #12,d0				
	jbne _?L611				
_?L693:						
	moveq #1,d0				
	cmp.l 70(sp),d0				
	jbeq _?L688				
						
	pea 9.w					
	move.l a4,-(sp)				
	lea _mad_bit_read,a5			
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,50(sp)			
						
	move.l d0,106(sp)			
						
	pea 3.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,78(sp)			
						
	move.l d0,110(sp)			
						
	pea 4.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,114(sp)			
						
	pea 4.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,115(sp)			
	moveq #3,d1				
	move.l d1,86(sp)			
						
	moveq #2,d1				
	move.l d1,74(sp)			
	moveq #4,d1				
	move.l d1,54(sp)			
	moveq #3,d1				
	move.l d1,58(sp)			
_?L617:						
						
	clr.l 46(sp)				
						
	moveq #0,d5				
						
	moveq #0,d7				
						
	moveq #0,d6				
	lea (126,sp),a0				
	move.l a0,82(sp)			
	moveq #106,d1				
	add.l sp,d1				
	add.l 70(sp),d1				
	move.l d1,66(sp)			
	move.l a6,94(sp)			
_?L618:						
	lea (106,sp),a6				
	move.l 82(sp),a3			
	add.l 46(sp),a3				
_?L631:						
						
	pea 12.w				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,d3				
						
	move.w d0,-10(a3)			
						
	pea 9.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.w d0,d4				
	move.w d0,-8(a3)			
						
	pea 8.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.w d0,-6(a3)			
						
	move.l 54(sp),-(sp)			
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.w d0,-4(a3)			
						
	and.l #65535,d3				
	add.l d3,d5				
						
	cmp.w #288,d4				
	jbls _?L619				
						
	tst.l d7				
	jbne _?L619				
						
	move.l #562,d7				
_?L619:						
						
	clr.b -2(a3)				
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,d3				
						
	jbne _?L689				
						
	clr.b -1(a3)				
	move.l a3,d4				
_?L630:						
						
	pea 5.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d3				
						
	moveq #3,d1				
	cmp.l d3,d1				
	jbne _?L630				
						
	move.l d4,a3				
	pea 4.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,6(a3)				
						
	pea 3.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,7(a3)				
_?L629:						
						
	move.l 58(sp),-(sp)			
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	or.b d0,-2(a3)				
						
	lea (58,a3),a3				
	addq.l #1,a6				
	cmp.l 66(sp),a6				
	jbne _?L631				
						
	addq.l #1,d6				
						
	moveq #116,d0				
	add.l d0,46(sp)				
	cmp.l 74(sp),d6				
	jbne _?L618				
						
	move.l 94(sp),a6			
	tst.l d7				
	jbeq _?L633				
						
	tst.l 62(sp)				
	jbne _?L634				
						
	move.l d7,60(a6)			
_?L634:						
						
	moveq #-1,d1				
	move.l d1,62(sp)			
_?L633:						
						
	move.l 86(sp),d1			
	move.l 356(sp),a0			
	or.l d1,28(a0)				
						
	move.l 78(sp),d1			
	or.l d1,32(a0)				
						
	move.l 24(a6),-(sp)			
	moveq #102,d3				
	add.l sp,d3				
	move.l d3,-(sp)				
	lea _mad_bit_init,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 32.w				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d0,d1				
	and.l #-1703936,d1			
						
	cmp.l #-1966080,d1			
	jbeq _?L635				
						
	move.l 24(a6),a5			
						
	move.l a4,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
						
	sub.l d0,a5				
						
	move.l 50(sp),a0			
	add.l a5,a0				
	move.l a0,d1				
						
	moveq #0,d7				
_?L636:						
						
	tst.l 50(sp)				
	jbne _?L639				
						
	move.l 28(a6),a1			
	move.l 32(a6),a2			
	move.l a1,98(sp)			
	move.l a2,102(sp)			
						
	clr.l 52(a6)				
						
	move.l a5,a3				
	sub.l d1,a3				
						
	move.l d1,d6				
	lea _memcpy,a4				
_?L640:						
						
	tst.l 62(sp)				
	jbne _?L661				
						
	move.l 70(sp),-(sp)			
	pea 110(sp)				
	move.l 364(sp),-(sp)			
	move.l d3,-(sp)				
	move.l d1,54(sp)			
	move.l a0,58(sp)			
	jbsr _III_decode			
	lea (16,sp),sp				
						
	move.l 38(sp),d1			
	move.l 42(sp),a0			
	tst.l d0				
	jbeq _?L646				
						
	move.l d0,60(a6)			
						
	moveq #-1,d0				
	move.l d0,62(sp)			
_?L646:						
						
	move.l 98(sp),a1			
	move.l 102(sp),a2			
	move.l a1,36(a6)			
	move.l a2,40(a6)			
						
	move.l d1,d0				
	lsl.l #3,d0				
						
	sub.l d5,d0				
	move.l d0,44(a6)			
	move.l 48(a6),a1			
_?L643:						
						
	cmp.l d7,a3				
	jbcc _?L690				
_?L647:						
						
	move.l 106(sp),d0			
						
	cmp.l d0,d1				
	jbcc _?L648				
						
	add.l d7,d0				
	move.l d0,d3				
	sub.l a0,d3				
						
	move.l d3,d0				
	add.l a3,d0				
						
	cmp.l d0,d7				
	jbcc _?L649				
						
	sub.l a5,d7				
	move.l d7,d3				
	add.l d6,d3				
_?L649:						
						
	move.l 52(a6),d0			
						
	cmp.l d0,d3				
	jbcs _?L691				
						
	sub.l a5,d6				
						
	move.l a3,-(sp)				
	add.l 24(a6),d6				
	move.l d6,-(sp)				
	add.l 48(a6),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l a3,d7				
	add.l 52(a6),d7				
_?L651:						
						
	move.l d7,52(a6)			
_?L600:						
						
	move.l 62(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (312,sp),sp				
	rts					
_?L605:						
						
	tst.l d0				
	jbeq _?L656				
	moveq #72,d5				
	moveq #9,d6				
						
	moveq #1,d1				
	move.l d1,70(sp)			
	jbra _?L606				
_?L687:						
						
	moveq #0,d0				
	move.w 24(a0),d0			
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l 32(a6),-(sp)			
	move.l 28(a6),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.l 356(sp),a0			
	move.w d0,24(a0)			
						
	cmp.w 26(a0),d0				
	jbeq _?L692				
						
	move.l 28(a0),d0			
						
	btst #0,47(a0)				
	jbne _?L657				
						
	move.l #513,60(a6)			
						
	moveq #-1,d1				
	move.l d1,62(sp)			
						
	move.l d0,d1				
	and.l #4096,d1				
	move.l d1,90(sp)			
						
	btst #12,d0				
	jbeq _?L693				
_?L611:						
						
	pea 8.w					
	move.l a4,-(sp)				
	lea _mad_bit_read,a5			
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,50(sp)			
						
	move.l d0,106(sp)			
						
	move.l 70(sp),-(sp)			
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,78(sp)			
						
	move.l d0,110(sp)			
	move.l 70(sp),86(sp)			
						
	moveq #1,d1				
	move.l d1,74(sp)			
	moveq #9,d1				
	move.l d1,54(sp)			
	moveq #2,d1				
	move.l d1,58(sp)			
						
	clr.l 46(sp)				
						
	moveq #0,d5				
						
	moveq #0,d7				
						
	moveq #0,d6				
	lea (126,sp),a0				
	move.l a0,82(sp)			
	moveq #106,d1				
	add.l sp,d1				
	add.l 70(sp),d1				
	move.l d1,66(sp)			
	move.l a6,94(sp)			
	jbra _?L618				
_?L689:						
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,d3				
	move.b d0,-1(a3)			
						
	jbne _?L621				
						
	tst.l d7				
	jbne _?L623				
						
	move.l #563,d7				
_?L623:						
						
	move.w #1828,6(a3)			
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L627				
_?L652:						
						
	move.b #8,-2(a3)			
_?L627:						
						
	pea 5.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,(a3)				
						
	pea 5.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,1(a3)				
	move.l a3,d4				
	addq.l #3,d4				
						
	moveq #0,d3				
	move.l d4,d0				
	move.l a3,d4				
	move.l d0,a3				
_?L628:						
						
	pea 3.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,(a3)+				
						
	addq.l #1,d3				
						
	moveq #3,d0				
	cmp.l d3,d0				
	jbne _?L628				
	move.l d4,a3				
	jbra _?L629				
_?L621:						
						
	tst.l 90(sp)				
	jbne _?L624				
						
	cmp.b #2,d0				
	jbne _?L623				
						
	tst.b 8(a6)				
	jbeq _?L625				
						
	tst.l d7				
	jbne _?L625				
						
	move.l #564,d7				
_?L625:						
						
	move.w #1828,6(a3)			
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L652				
						
	move.b #8,6(a3)				
_?L696:						
						
	pea 5.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,(a3)				
						
	pea 5.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,1(a3)				
	move.l a3,d4				
	addq.l #3,d4				
						
	moveq #0,d3				
	move.l d4,d0				
	move.l a3,d4				
	move.l d0,a3				
	jbra _?L628				
_?L639:						
						
	move.l 52(a6),d0			
						
	move.l 48(a6),a1			
						
	cmp.l 50(sp),d0				
	jbcc _?L641				
						
	tst.l 62(sp)				
	jbne _?L644				
						
	move.l #565,60(a6)			
_?L644:						
						
	move.l a5,a3				
						
	moveq #0,d6				
	moveq #-1,d0				
	move.l d0,62(sp)			
	lea _memcpy,a4				
						
	cmp.l d7,a3				
	jbcs _?L647				
_?L690:						
						
	move.l d7,-(sp)				
	move.l 24(a6),d1			
	sub.l d7,d1				
	move.l d1,-(sp)				
	move.l a1,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l d7,52(a6)			
	jbra _?L600				
_?L635:						
						
	btst #16,d0				
	jbeq _?L694				
						
	btst #19,d0				
	jbeq _?L658				
_?L697:						
	moveq #9,d0				
_?L638:						
						
	move.l d0,-(sp)				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,d7				
						
	move.l 24(a6),a5			
						
	move.l a4,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
						
	sub.l d0,a5				
						
	move.l 50(sp),a0			
	add.l a5,a0				
	move.l a0,d1				
						
	cmp.l a0,d7				
	jbls _?L695				
						
	moveq #0,d7				
	jbra _?L636				
_?L648:						
						
	clr.l 52(a6)				
	moveq #0,d0				
						
	sub.l a5,d6				
						
	move.l a3,-(sp)				
	add.l 24(a6),d6				
	move.l d6,-(sp)				
	add.l 48(a6),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l a3,d7				
	add.l 52(a6),d7				
	jbra _?L651				
_?L624:						
						
	move.w #1828,6(a3)			
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L652				
						
	cmp.b #2,d3				
	jbne _?L627				
						
	move.b #8,6(a3)				
	jbra _?L696				
_?L661:						
	moveq #-1,d0				
	move.l d0,62(sp)			
	move.l 48(a6),a1			
	jbra _?L643				
_?L656:						
						
	moveq #119,d5				
	not.b d5				
	moveq #17,d6				
						
	moveq #1,d1				
	move.l d1,70(sp)			
	jbra _?L606				
_?L655:						
						
	moveq #119,d5				
	not.b d5				
	moveq #17,d6				
						
	moveq #2,d1				
	move.l d1,70(sp)			
	jbra _?L606				
_?L685:						
						
	pea 4.w					
	pea 1152.w				
	jbsr _calloc				
	addq.l #8,sp				
						
	move.l 356(sp),a1			
	move.l d0,9264(a1)			
						
	jbne _?L603				
_?L604:						
						
	moveq #49,d0				
	move.l d0,60(a6)			
						
	moveq #-1,d1				
	move.l d1,62(sp)			
_?L699:						
						
	move.l 62(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (312,sp),sp				
	rts					
_?L684:						
						
	pea 1.w					
	pea 2567.w				
	jbsr _himem_malloc			
	addq.l #8,sp				
						
	move.l d0,48(a6)			
						
	jbeq _?L604				
						
	move.l 356(sp),a0			
	tst.l 9264(a0)				
	jbne _?L603				
	jbra _?L685				
_?L658:						
						
	moveq #8,d0				
	jbra _?L638				
_?L694:						
						
	pea 16.w				
	move.l d3,-(sp)				
	move.l d0,50(sp)			
	jbsr _mad_bit_skip			
	addq.l #8,sp				
	move.l 42(sp),d0			
						
	btst #19,d0				
	jbeq _?L658				
	jbra _?L697				
_?L691:						
						
	move.l d3,-(sp)				
						
	sub.l d3,d0				
						
	pea (a1,d0.l)				
	move.l a1,-(sp)				
	jbsr _memmove				
	lea (12,sp),sp				
						
	move.l d3,52(a6)			
	move.l d3,d0				
						
	sub.l a5,d6				
						
	move.l a3,-(sp)				
	add.l 24(a6),d6				
	move.l d6,-(sp)				
	add.l 48(a6),d0				
	move.l d0,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l a3,d7				
	add.l 52(a6),d7				
	jbra _?L651				
_?L657:						
						
	clr.l 62(sp)				
	jbra _?L609				
_?L688:						
						
	pea 9.w					
	move.l a4,-(sp)				
	lea _mad_bit_read,a5			
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,50(sp)			
						
	move.l d0,106(sp)			
						
	pea 5.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,78(sp)			
						
	move.l d0,110(sp)			
						
	pea 4.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.b d0,114(sp)			
	moveq #5,d1				
	move.l d1,86(sp)			
						
	moveq #2,d1				
	move.l d1,74(sp)			
	moveq #4,d1				
	move.l d1,54(sp)			
	moveq #3,d1				
	move.l d1,58(sp)			
	jbra _?L617				
_?L641:						
						
	sub.l 50(sp),d0				
						
	pea (a1,d0.l)				
	move.l d3,-(sp)				
	move.l d1,46(sp)			
	move.l a0,50(sp)			
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l 38(sp),d1			
	move.l 42(sp),a0			
	cmp.l 50(sp),d1				
	jbls _?L660				
						
	move.l 52(a6),d0			
	sub.l 50(sp),d0				
	add.l d1,d0				
	cmp.l #2567,d0				
	jbhi _?L698				
						
	move.l d1,d6				
	sub.l 50(sp),d6				
						
	move.l a4,-(sp)				
	move.l d1,42(sp)			
	move.l a0,46(sp)			
	jbsr _mad_bit_nextbyte			
						
	move.l d6,(sp)				
	move.l d0,-(sp)				
	move.l 48(a6),d0			
	add.l 52(a6),d0				
	move.l d0,-(sp)				
	lea _memcpy,a4				
	jbsr (a4)				
	lea (12,sp),sp				
						
	add.l d6,52(a6)				
						
	move.l 38(sp),d1			
	move.l 50(sp),a3			
	sub.l d1,a3				
	add.l a5,a3				
	move.l 42(sp),a0			
	jbra _?L640				
_?L692:						
						
	move.l 28(a0),d0			
						
	clr.l 62(sp)				
	jbra _?L609				
_?L660:						
	move.l a5,a3				
						
	moveq #0,d6				
	lea _memcpy,a4				
	jbra _?L640				
_?L695:						
						
	sub.l d7,d1				
	jbra _?L636				
_?L686:						
						
	move.l #561,60(a6)			
						
	clr.l 52(a6)				
						
	moveq #-1,d1				
	move.l d1,62(sp)			
	jbra _?L699				
_?L698:						
						
	jbsr _abort				
						
	.data					
	.align	2				
						
						
_is_lsf_table:					
	.dc.l	225726413			
	.dc.l	189812531			
	.dc.l	159612677			
	.dc.l	134217728			
	.dc.l	112863206			
	.dc.l	94906266			
	.dc.l	79806339			
	.dc.l	67108864			
	.dc.l	56431603			
	.dc.l	47453133			
	.dc.l	39903169			
	.dc.l	33554432			
	.dc.l	28215802			
	.dc.l	23726566			
	.dc.l	19951585			
	.dc.l	189812531			
	.dc.l	134217728			
	.dc.l	94906266			
	.dc.l	67108864			
	.dc.l	47453133			
	.dc.l	33554432			
	.dc.l	23726566			
	.dc.l	16777216			
	.dc.l	11863283			
	.dc.l	8388608				
	.dc.l	5931642				
	.dc.l	4194304				
	.dc.l	2965821				
	.dc.l	2097152				
	.dc.l	1482910				
	.align	2				
						
						
_is_table:					
	.dc.l	0				
	.dc.l	56727087			
	.dc.l	98254196			
	.dc.l	134217728			
	.dc.l	170181260			
	.dc.l	211708369			
	.dc.l	268435456			
	.align	2				
						
						
_root_table:					
	.dc.l	159612677			
	.dc.l	189812531			
	.dc.l	225726413			
	.dc.l	268435456			
	.dc.l	319225354			
	.dc.l	379625062			
	.dc.l	451452825			
	.align	2				
						
						
_rq_table:					
						
	.dc.b	0				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	0				
						
	.dc.b	128				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	2				
						
	.dc.b	161				
	.dc.b	69				
	.dc.b	23				
						
	.dc.b	195				
						
	.dc.b	138				
	.dc.b	116				
	.dc.b	185				
						
	.dc.b	164				
						
	.dc.b	203				
	.dc.b	47				
	.dc.b	245				
						
	.dc.b	36				
						
	.dc.b	136				
	.dc.b	204				
	.dc.b	78				
						
	.dc.b	165				
						
	.dc.b	174				
	.dc.b	113				
	.dc.b	142				
						
	.dc.b	69				
						
	.dc.b	214				
	.dc.b	63				
	.dc.b	144				
						
	.dc.b	37				
						
	.dc.b	128				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	6				
						
	.dc.b	149				
	.dc.b	196				
	.dc.b	26				
						
	.dc.b	230				
						
	.dc.b	172				
	.dc.b	90				
	.dc.b	210				
						
	.dc.b	134				
						
	.dc.b	195				
	.dc.b	181				
	.dc.b	210				
						
	.dc.b	198				
						
	.dc.b	219				
	.dc.b	200				
	.dc.b	254				
						
	.dc.b	134				
						
	.dc.b	244				
	.dc.b	137				
	.dc.b	239				
						
	.dc.b	70				
						
	.dc.b	134				
	.dc.b	247				
	.dc.b	204				
						
	.dc.b	167				
						
	.dc.b	147				
	.dc.b	249				
	.dc.b	4				
						
	.dc.b	135				
						
	.dc.b	161				
	.dc.b	69				
	.dc.b	23				
						
	.dc.b	199				
						
	.dc.b	174				
	.dc.b	216				
	.dc.b	222				
						
	.dc.b	167				
						
	.dc.b	188				
	.dc.b	177				
	.dc.b	129				
						
	.dc.b	103				
						
	.dc.b	202				
	.dc.b	204				
	.dc.b	108				
						
	.dc.b	39				
						
	.dc.b	217				
	.dc.b	39				
	.dc.b	69				
						
	.dc.b	199				
						
	.dc.b	231				
	.dc.b	191				
	.dc.b	231				
						
	.dc.b	199				
						
	.dc.b	246				
	.dc.b	148				
	.dc.b	87				
						
	.dc.b	135				
						
	.dc.b	130				
	.dc.b	209				
	.dc.b	96				
						
	.dc.b	168				
						
	.dc.b	138				
	.dc.b	116				
	.dc.b	185				
						
	.dc.b	168				
						
	.dc.b	146				
	.dc.b	51				
	.dc.b	109				
						
	.dc.b	72				
						
	.dc.b	154				
	.dc.b	12				
	.dc.b	191				
						
	.dc.b	104				
						
	.dc.b	162				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	8				
						
	.dc.b	170				
	.dc.b	12				
	.dc.b	138				
						
	.dc.b	40				
						
	.dc.b	178				
	.dc.b	49				
	.dc.b	194				
						
	.dc.b	168				
						
	.dc.b	186				
	.dc.b	111				
	.dc.b	23				
						
	.dc.b	104				
						
	.dc.b	194				
	.dc.b	195				
	.dc.b	254				
						
	.dc.b	104				
						
	.dc.b	203				
	.dc.b	47				
	.dc.b	245				
						
	.dc.b	40				
						
	.dc.b	211				
	.dc.b	178				
	.dc.b	128				
						
	.dc.b	8				
						
	.dc.b	220				
	.dc.b	75				
	.dc.b	41				
						
	.dc.b	136				
						
	.dc.b	228				
	.dc.b	249				
	.dc.b	130				
						
	.dc.b	40				
						
	.dc.b	237				
	.dc.b	189				
	.dc.b	31				
						
	.dc.b	136				
						
	.dc.b	246				
	.dc.b	149				
	.dc.b	156				
						
	.dc.b	104				
						
	.dc.b	255				
	.dc.b	130				
	.dc.b	151				
						
	.dc.b	232				
						
	.dc.b	132				
	.dc.b	65				
	.dc.b	218				
						
	.dc.b	233				
						
	.dc.b	136				
	.dc.b	204				
	.dc.b	78				
						
	.dc.b	169				
						
	.dc.b	141				
	.dc.b	96				
	.dc.b	124				
						
	.dc.b	233				
						
	.dc.b	145				
	.dc.b	254				
	.dc.b	61				
						
	.dc.b	9				
						
	.dc.b	150				
	.dc.b	165				
	.dc.b	103				
						
	.dc.b	233				
						
	.dc.b	155				
	.dc.b	85				
	.dc.b	216				
						
	.dc.b	9				
						
	.dc.b	160				
	.dc.b	15				
	.dc.b	105				
						
	.dc.b	41				
						
	.dc.b	164				
	.dc.b	209				
	.dc.b	248				
						
	.dc.b	201				
						
	.dc.b	169				
	.dc.b	157				
	.dc.b	101				
						
	.dc.b	73				
						
	.dc.b	174				
	.dc.b	113				
	.dc.b	142				
						
	.dc.b	73				
						
	.dc.b	179				
	.dc.b	78				
	.dc.b	84				
						
	.dc.b	169				
						
	.dc.b	184				
	.dc.b	51				
	.dc.b	154				
						
	.dc.b	105				
						
	.dc.b	189				
	.dc.b	33				
	.dc.b	66				
						
	.dc.b	73				
						
	.dc.b	194				
	.dc.b	23				
	.dc.b	48				
						
	.dc.b	73				
						
	.dc.b	199				
	.dc.b	21				
	.dc.b	73				
						
	.dc.b	9				
						
	.dc.b	204				
	.dc.b	27				
	.dc.b	114				
						
	.dc.b	41				
						
	.dc.b	209				
	.dc.b	41				
	.dc.b	146				
						
	.dc.b	9				
						
	.dc.b	214				
	.dc.b	63				
	.dc.b	144				
						
	.dc.b	41				
						
	.dc.b	219				
	.dc.b	93				
	.dc.b	84				
						
	.dc.b	41				
						
	.dc.b	224				
	.dc.b	130				
	.dc.b	198				
						
	.dc.b	201				
						
	.dc.b	229				
	.dc.b	175				
	.dc.b	209				
						
	.dc.b	105				
						
	.dc.b	234				
	.dc.b	228				
	.dc.b	93				
						
	.dc.b	233				
						
	.dc.b	240				
	.dc.b	32				
	.dc.b	87				
						
	.dc.b	9				
						
	.dc.b	245				
	.dc.b	99				
	.dc.b	167				
						
	.dc.b	201				
						
	.dc.b	250				
	.dc.b	174				
	.dc.b	60				
						
	.dc.b	9				
						
	.dc.b	128				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	10				
						
	.dc.b	130				
	.dc.b	172				
	.dc.b	112				
						
	.dc.b	42				
						
	.dc.b	133				
	.dc.b	92				
	.dc.b	101				
						
	.dc.b	74				
						
	.dc.b	136				
	.dc.b	15				
	.dc.b	214				
						
	.dc.b	42				
						
	.dc.b	138				
	.dc.b	198				
	.dc.b	185				
						
	.dc.b	234				
						
	.dc.b	141				
	.dc.b	129				
	.dc.b	7				
						
	.dc.b	202				
						
	.dc.b	144				
	.dc.b	62				
	.dc.b	183				
						
	.dc.b	106				
						
	.dc.b	146				
	.dc.b	255				
	.dc.b	192				
						
	.dc.b	106				
						
	.dc.b	149				
	.dc.b	196				
	.dc.b	26				
						
	.dc.b	234				
						
	.dc.b	152				
	.dc.b	139				
	.dc.b	190				
						
	.dc.b	202				
						
	.dc.b	155				
	.dc.b	86				
	.dc.b	164				
						
	.dc.b	138				
						
	.dc.b	158				
	.dc.b	36				
	.dc.b	196				
						
	.dc.b	138				
						
	.dc.b	160				
	.dc.b	246				
	.dc.b	23				
						
	.dc.b	138				
						
	.dc.b	163				
	.dc.b	202				
	.dc.b	150				
						
	.dc.b	42				
						
	.dc.b	166				
	.dc.b	162				
	.dc.b	57				
						
	.dc.b	106				
						
	.dc.b	169				
	.dc.b	124				
	.dc.b	250				
						
	.dc.b	138				
						
	.dc.b	172				
	.dc.b	90				
	.dc.b	210				
						
	.dc.b	138				
						
	.dc.b	175				
	.dc.b	59				
	.dc.b	187				
						
	.dc.b	10				
						
	.dc.b	178				
	.dc.b	31				
	.dc.b	173				
						
	.dc.b	138				
						
	.dc.b	181				
	.dc.b	6				
	.dc.b	163				
						
	.dc.b	138				
						
	.dc.b	183				
	.dc.b	240				
	.dc.b	151				
						
	.dc.b	10				
						
	.dc.b	186				
	.dc.b	221				
	.dc.b	129				
						
	.dc.b	202				
						
	.dc.b	189				
	.dc.b	205				
	.dc.b	93				
						
	.dc.b	234				
						
	.dc.b	192				
	.dc.b	192				
	.dc.b	37				
						
	.dc.b	106				
						
	.dc.b	195				
	.dc.b	181				
	.dc.b	210				
						
	.dc.b	202				
						
	.dc.b	198				
	.dc.b	174				
	.dc.b	96				
						
	.dc.b	74				
						
	.dc.b	201				
	.dc.b	169				
	.dc.b	200				
						
	.dc.b	106				
						
	.dc.b	204				
	.dc.b	168				
	.dc.b	5				
						
	.dc.b	170				
						
	.dc.b	207				
	.dc.b	169				
	.dc.b	18				
						
	.dc.b	202				
						
	.dc.b	210				
	.dc.b	172				
	.dc.b	234				
						
	.dc.b	106				
						
	.dc.b	213				
	.dc.b	179				
	.dc.b	135				
						
	.dc.b	170				
						
	.dc.b	216				
	.dc.b	188				
	.dc.b	229				
						
	.dc.b	106				
						
	.dc.b	219				
	.dc.b	200				
	.dc.b	254				
						
	.dc.b	138				
						
	.dc.b	222				
	.dc.b	215				
	.dc.b	206				
						
	.dc.b	106				
						
	.dc.b	225				
	.dc.b	233				
	.dc.b	80				
						
	.dc.b	10				
						
	.dc.b	228				
	.dc.b	253				
	.dc.b	126				
						
	.dc.b	234				
						
	.dc.b	232				
	.dc.b	20				
	.dc.b	86				
						
	.dc.b	74				
						
	.dc.b	235				
	.dc.b	45				
	.dc.b	209				
						
	.dc.b	170				
						
	.dc.b	238				
	.dc.b	73				
	.dc.b	236				
						
	.dc.b	138				
						
	.dc.b	241				
	.dc.b	104				
	.dc.b	162				
						
	.dc.b	138				
						
	.dc.b	244				
	.dc.b	137				
	.dc.b	239				
						
	.dc.b	74				
						
	.dc.b	247				
	.dc.b	173				
	.dc.b	206				
						
	.dc.b	170				
						
	.dc.b	250				
	.dc.b	212				
	.dc.b	60				
						
	.dc.b	74				
						
	.dc.b	253				
	.dc.b	253				
	.dc.b	52				
						
	.dc.b	42				
						
	.dc.b	128				
	.dc.b	148				
	.dc.b	89				
						
	.dc.b	43				
						
	.dc.b	130				
	.dc.b	43				
	.dc.b	89				
						
	.dc.b	75				
						
	.dc.b	131				
	.dc.b	195				
	.dc.b	152				
						
	.dc.b	139				
						
	.dc.b	133				
	.dc.b	93				
	.dc.b	20				
						
	.dc.b	235				
						
	.dc.b	134				
	.dc.b	247				
	.dc.b	204				
						
	.dc.b	171				
						
	.dc.b	136				
	.dc.b	147				
	.dc.b	189				
						
	.dc.b	203				
						
	.dc.b	138				
	.dc.b	48				
	.dc.b	230				
						
	.dc.b	107				
						
	.dc.b	139				
	.dc.b	207				
	.dc.b	68				
						
	.dc.b	203				
						
	.dc.b	141				
	.dc.b	110				
	.dc.b	215				
						
	.dc.b	43				
						
	.dc.b	143				
	.dc.b	15				
	.dc.b	155				
						
	.dc.b	139				
						
	.dc.b	144				
	.dc.b	177				
	.dc.b	144				
						
	.dc.b	107				
						
	.dc.b	146				
	.dc.b	84				
	.dc.b	179				
						
	.dc.b	235				
						
	.dc.b	147				
	.dc.b	249				
	.dc.b	4				
						
	.dc.b	139				
						
	.dc.b	149				
	.dc.b	158				
	.dc.b	128				
						
	.dc.b	75				
						
	.dc.b	151				
	.dc.b	69				
	.dc.b	37				
						
	.dc.b	203				
						
	.dc.b	152				
	.dc.b	236				
	.dc.b	243				
						
	.dc.b	75				
						
	.dc.b	154				
	.dc.b	149				
	.dc.b	231				
						
	.dc.b	75				
						
	.dc.b	156				
	.dc.b	64				
	.dc.b	0				
						
	.dc.b	11				
						
	.dc.b	157				
	.dc.b	235				
	.dc.b	60				
						
	.dc.b	11				
						
	.dc.b	159				
	.dc.b	151				
	.dc.b	153				
						
	.dc.b	203				
						
	.dc.b	161				
	.dc.b	69				
	.dc.b	23				
						
	.dc.b	203				
						
	.dc.b	162				
	.dc.b	243				
	.dc.b	180				
						
	.dc.b	139				
						
	.dc.b	164				
	.dc.b	163				
	.dc.b	110				
						
	.dc.b	107				
						
	.dc.b	166				
	.dc.b	84				
	.dc.b	68				
						
	.dc.b	11				
						
	.dc.b	168				
	.dc.b	6				
	.dc.b	52				
						
	.dc.b	11				
						
	.dc.b	169				
	.dc.b	185				
	.dc.b	60				
						
	.dc.b	235				
						
	.dc.b	171				
	.dc.b	109				
	.dc.b	93				
						
	.dc.b	43				
						
	.dc.b	173				
	.dc.b	34				
	.dc.b	147				
						
	.dc.b	139				
						
	.dc.b	174				
	.dc.b	216				
	.dc.b	222				
						
	.dc.b	171				
						
	.dc.b	176				
	.dc.b	144				
	.dc.b	61				
						
	.dc.b	43				
						
	.dc.b	178				
	.dc.b	72				
	.dc.b	173				
						
	.dc.b	171				
						
	.dc.b	180				
	.dc.b	2				
	.dc.b	46				
						
	.dc.b	203				
						
	.dc.b	181				
	.dc.b	188				
	.dc.b	191				
						
	.dc.b	75				
						
	.dc.b	183				
	.dc.b	120				
	.dc.b	93				
						
	.dc.b	235				
						
	.dc.b	185				
	.dc.b	53				
	.dc.b	9				
						
	.dc.b	75				
						
	.dc.b	186				
	.dc.b	242				
	.dc.b	192				
						
	.dc.b	43				
						
	.dc.b	188				
	.dc.b	177				
	.dc.b	129				
						
	.dc.b	107				
						
	.dc.b	190				
	.dc.b	113				
	.dc.b	75				
						
	.dc.b	171				
						
	.dc.b	192				
	.dc.b	50				
	.dc.b	29				
						
	.dc.b	203				
						
	.dc.b	193				
	.dc.b	243				
	.dc.b	246				
						
	.dc.b	107				
						
	.dc.b	195				
	.dc.b	182				
	.dc.b	212				
						
	.dc.b	171				
						
	.dc.b	197				
	.dc.b	122				
	.dc.b	183				
						
	.dc.b	11				
						
	.dc.b	199				
	.dc.b	63				
	.dc.b	156				
						
	.dc.b	139				
						
	.dc.b	201				
	.dc.b	5				
	.dc.b	131				
						
	.dc.b	235				
						
	.dc.b	202				
	.dc.b	204				
	.dc.b	108				
						
	.dc.b	43				
						
	.dc.b	204				
	.dc.b	148				
	.dc.b	84				
						
	.dc.b	11				
						
	.dc.b	206				
	.dc.b	93				
	.dc.b	58				
						
	.dc.b	139				
						
	.dc.b	208				
	.dc.b	39				
	.dc.b	30				
						
	.dc.b	107				
						
	.dc.b	209				
	.dc.b	241				
	.dc.b	254				
						
	.dc.b	171				
						
	.dc.b	211				
	.dc.b	189				
	.dc.b	218				
						
	.dc.b	43				
						
	.dc.b	213				
	.dc.b	138				
	.dc.b	175				
						
	.dc.b	235				
						
	.dc.b	215				
	.dc.b	88				
	.dc.b	126				
						
	.dc.b	203				
						
	.dc.b	217				
	.dc.b	39				
	.dc.b	69				
						
	.dc.b	203				
						
	.dc.b	218				
	.dc.b	247				
	.dc.b	3				
						
	.dc.b	235				
						
	.dc.b	220				
	.dc.b	199				
	.dc.b	184				
						
	.dc.b	11				
						
	.dc.b	222				
	.dc.b	153				
	.dc.b	97				
						
	.dc.b	43				
						
	.dc.b	224				
	.dc.b	107				
	.dc.b	254				
						
	.dc.b	107				
						
	.dc.b	226				
	.dc.b	63				
	.dc.b	142				
						
	.dc.b	171				
						
	.dc.b	228				
	.dc.b	20				
	.dc.b	16				
						
	.dc.b	235				
						
	.dc.b	229				
	.dc.b	233				
	.dc.b	132				
						
	.dc.b	75				
						
	.dc.b	231				
	.dc.b	191				
	.dc.b	231				
						
	.dc.b	203				
						
	.dc.b	233				
	.dc.b	151				
	.dc.b	58				
						
	.dc.b	107				
						
	.dc.b	235				
	.dc.b	111				
	.dc.b	123				
						
	.dc.b	107				
						
	.dc.b	237				
	.dc.b	72				
	.dc.b	169				
						
	.dc.b	139				
						
	.dc.b	239				
	.dc.b	34				
	.dc.b	196				
						
	.dc.b	11				
						
	.dc.b	240				
	.dc.b	253				
	.dc.b	202				
						
	.dc.b	11				
						
	.dc.b	242				
	.dc.b	217				
	.dc.b	186				
						
	.dc.b	139				
						
	.dc.b	244				
	.dc.b	182				
	.dc.b	148				
						
	.dc.b	171				
						
	.dc.b	246				
	.dc.b	148				
	.dc.b	87				
						
	.dc.b	139				
						
	.dc.b	248				
	.dc.b	115				
	.dc.b	2				
						
	.dc.b	75				
						
	.dc.b	250				
	.dc.b	82				
	.dc.b	148				
						
	.dc.b	11				
						
	.dc.b	252				
	.dc.b	51				
	.dc.b	11				
						
	.dc.b	235				
						
	.dc.b	254				
	.dc.b	20				
	.dc.b	105				
						
	.dc.b	11				
						
	.dc.b	255				
	.dc.b	246				
	.dc.b	170				
						
	.dc.b	139				
						
	.dc.b	128				
	.dc.b	236				
	.dc.b	231				
						
	.dc.b	236				
						
	.dc.b	129				
	.dc.b	222				
	.dc.b	235				
						
	.dc.b	204				
						
	.dc.b	130				
	.dc.b	209				
	.dc.b	96				
						
	.dc.b	172				
						
	.dc.b	131				
	.dc.b	196				
	.dc.b	70				
						
	.dc.b	12				
						
	.dc.b	132				
	.dc.b	183				
	.dc.b	155				
						
	.dc.b	172				
						
	.dc.b	133				
	.dc.b	171				
	.dc.b	96				
						
	.dc.b	236				
						
	.dc.b	134				
	.dc.b	159				
	.dc.b	149				
						
	.dc.b	172				
						
	.dc.b	135				
	.dc.b	148				
	.dc.b	57				
						
	.dc.b	44				
						
	.dc.b	136				
	.dc.b	137				
	.dc.b	75				
						
	.dc.b	76				
						
	.dc.b	137				
	.dc.b	126				
	.dc.b	203				
						
	.dc.b	172				
						
	.dc.b	138				
	.dc.b	116				
	.dc.b	185				
						
	.dc.b	172				
						
	.dc.b	139				
	.dc.b	107				
	.dc.b	21				
						
	.dc.b	44				
						
	.dc.b	140				
	.dc.b	97				
	.dc.b	221				
						
	.dc.b	172				
						
	.dc.b	141				
	.dc.b	89				
	.dc.b	18				
						
	.dc.b	204				
						
	.dc.b	142				
	.dc.b	80				
	.dc.b	180				
						
	.dc.b	76				
						
	.dc.b	143				
	.dc.b	72				
	.dc.b	193				
						
	.dc.b	140				
						
	.dc.b	144				
	.dc.b	65				
	.dc.b	58				
						
	.dc.b	108				
						
	.dc.b	145				
	.dc.b	58				
	.dc.b	30				
						
	.dc.b	140				
						
	.dc.b	146				
	.dc.b	51				
	.dc.b	109				
						
	.dc.b	76				
						
	.dc.b	147				
	.dc.b	45				
	.dc.b	38				
						
	.dc.b	172				
						
	.dc.b	148				
	.dc.b	39				
	.dc.b	74				
						
	.dc.b	12				
						
	.dc.b	149				
	.dc.b	33				
	.dc.b	215				
						
	.dc.b	76				
						
	.dc.b	150				
	.dc.b	28				
	.dc.b	205				
						
	.dc.b	204				
						
	.dc.b	151				
	.dc.b	24				
	.dc.b	45				
						
	.dc.b	140				
						
	.dc.b	152				
	.dc.b	19				
	.dc.b	245				
						
	.dc.b	236				
						
	.dc.b	153				
	.dc.b	16				
	.dc.b	38				
						
	.dc.b	172				
						
	.dc.b	154				
	.dc.b	12				
	.dc.b	191				
						
	.dc.b	108				
						
	.dc.b	155				
	.dc.b	9				
	.dc.b	191				
						
	.dc.b	236				
						
	.dc.b	156				
	.dc.b	7				
	.dc.b	39				
						
	.dc.b	204				
						
	.dc.b	157				
	.dc.b	4				
	.dc.b	246				
						
	.dc.b	204				
						
	.dc.b	158				
	.dc.b	3				
	.dc.b	44				
						
	.dc.b	108				
						
	.dc.b	159				
	.dc.b	1				
	.dc.b	200				
						
	.dc.b	140				
						
	.dc.b	160				
	.dc.b	0				
	.dc.b	202				
						
	.dc.b	172				
						
	.dc.b	161				
	.dc.b	0				
	.dc.b	50				
						
	.dc.b	172				
						
	.dc.b	162				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	12				
						
	.dc.b	163				
	.dc.b	0				
	.dc.b	50				
						
	.dc.b	140				
						
	.dc.b	164				
	.dc.b	0				
	.dc.b	201				
						
	.dc.b	236				
						
	.dc.b	165				
	.dc.b	1				
	.dc.b	197				
						
	.dc.b	172				
						
	.dc.b	166				
	.dc.b	3				
	.dc.b	37				
						
	.dc.b	204				
						
	.dc.b	167				
	.dc.b	4				
	.dc.b	233				
						
	.dc.b	204				
						
	.dc.b	168				
	.dc.b	7				
	.dc.b	17				
						
	.dc.b	76				
						
	.dc.b	169				
	.dc.b	9				
	.dc.b	156				
						
	.dc.b	76				
						
	.dc.b	170				
	.dc.b	12				
	.dc.b	138				
						
	.dc.b	44				
						
	.dc.b	171				
	.dc.b	15				
	.dc.b	218				
						
	.dc.b	172				
						
	.dc.b	172				
	.dc.b	19				
	.dc.b	141				
						
	.dc.b	204				
						
	.dc.b	173				
	.dc.b	23				
	.dc.b	162				
						
	.dc.b	236				
						
	.dc.b	174				
	.dc.b	28				
	.dc.b	25				
						
	.dc.b	236				
						
	.dc.b	175				
	.dc.b	32				
	.dc.b	242				
						
	.dc.b	108				
						
	.dc.b	176				
	.dc.b	38				
	.dc.b	44				
						
	.dc.b	76				
						
	.dc.b	177				
	.dc.b	43				
	.dc.b	199				
						
	.dc.b	44				
						
	.dc.b	178				
	.dc.b	49				
	.dc.b	194				
						
	.dc.b	172				
						
	.dc.b	179				
	.dc.b	56				
	.dc.b	30				
						
	.dc.b	140				
						
	.dc.b	180				
	.dc.b	62				
	.dc.b	218				
						
	.dc.b	172				
						
	.dc.b	181				
	.dc.b	69				
	.dc.b	246				
						
	.dc.b	172				
						
	.dc.b	182				
	.dc.b	77				
	.dc.b	114				
						
	.dc.b	76				
						
	.dc.b	183				
	.dc.b	85				
	.dc.b	77				
						
	.dc.b	44				
						
	.dc.b	184				
	.dc.b	93				
	.dc.b	135				
						
	.dc.b	44				
						
	.dc.b	185				
	.dc.b	102				
	.dc.b	32				
						
	.dc.b	12				
						
	.dc.b	186				
	.dc.b	111				
	.dc.b	23				
						
	.dc.b	108				
						
	.dc.b	187				
	.dc.b	120				
	.dc.b	109				
						
	.dc.b	12				
						
	.dc.b	188				
	.dc.b	130				
	.dc.b	32				
						
	.dc.b	172				
						
	.dc.b	189				
	.dc.b	140				
	.dc.b	50				
						
	.dc.b	12				
						
	.dc.b	190				
	.dc.b	150				
	.dc.b	160				
						
	.dc.b	236				
						
	.dc.b	191				
	.dc.b	161				
	.dc.b	109				
						
	.dc.b	12				
						
	.dc.b	192				
	.dc.b	172				
	.dc.b	150				
						
	.dc.b	44				
						
	.dc.b	193				
	.dc.b	184				
	.dc.b	28				
						
	.dc.b	12				
						
	.dc.b	194				
	.dc.b	195				
	.dc.b	254				
						
	.dc.b	108				
						
	.dc.b	195				
	.dc.b	208				
	.dc.b	61				
						
	.dc.b	12				
						
	.dc.b	196				
	.dc.b	220				
	.dc.b	215				
						
	.dc.b	140				
						
	.dc.b	197				
	.dc.b	233				
	.dc.b	205				
						
	.dc.b	236				
						
	.dc.b	198				
	.dc.b	247				
	.dc.b	31				
						
	.dc.b	172				
						
	.dc.b	200				
	.dc.b	4				
	.dc.b	204				
						
	.dc.b	204				
						
	.dc.b	201				
	.dc.b	18				
	.dc.b	212				
						
	.dc.b	236				
						
	.dc.b	202				
	.dc.b	33				
	.dc.b	55				
						
	.dc.b	204				
						
	.dc.b	203				
	.dc.b	47				
	.dc.b	245				
						
	.dc.b	44				
						
	.dc.b	204				
	.dc.b	63				
	.dc.b	12				
						
	.dc.b	236				
						
	.dc.b	205				
	.dc.b	78				
	.dc.b	126				
						
	.dc.b	172				
						
	.dc.b	206				
	.dc.b	94				
	.dc.b	74				
						
	.dc.b	76				
						
	.dc.b	207				
	.dc.b	110				
	.dc.b	111				
						
	.dc.b	140				
						
	.dc.b	208				
	.dc.b	126				
	.dc.b	238				
						
	.dc.b	44				
						
	.dc.b	209				
	.dc.b	143				
	.dc.b	197				
						
	.dc.b	236				
						
	.dc.b	210				
	.dc.b	160				
	.dc.b	246				
						
	.dc.b	172				
						
	.dc.b	211				
	.dc.b	178				
	.dc.b	128				
						
	.dc.b	12				
						
	.dc.b	212				
	.dc.b	196				
	.dc.b	97				
						
	.dc.b	236				
						
	.dc.b	213				
	.dc.b	214				
	.dc.b	156				
						
	.dc.b	12				
						
	.dc.b	214				
	.dc.b	233				
	.dc.b	46				
						
	.dc.b	44				
						
	.dc.b	215				
	.dc.b	252				
	.dc.b	24				
						
	.dc.b	12				
						
	.dc.b	217				
	.dc.b	15				
	.dc.b	89				
						
	.dc.b	140				
						
	.dc.b	218				
	.dc.b	34				
	.dc.b	242				
						
	.dc.b	140				
						
	.dc.b	219				
	.dc.b	54				
	.dc.b	226				
						
	.dc.b	140				
						
	.dc.b	220				
	.dc.b	75				
	.dc.b	41				
						
	.dc.b	140				
						
	.dc.b	221				
	.dc.b	95				
	.dc.b	199				
						
	.dc.b	76				
						
	.dc.b	222				
	.dc.b	116				
	.dc.b	187				
						
	.dc.b	140				
						
	.dc.b	223				
	.dc.b	138				
	.dc.b	6				
						
	.dc.b	12				
						
	.dc.b	224				
	.dc.b	159				
	.dc.b	166				
						
	.dc.b	172				
						
	.dc.b	225				
	.dc.b	181				
	.dc.b	157				
						
	.dc.b	76				
						
	.dc.b	226				
	.dc.b	203				
	.dc.b	233				
						
	.dc.b	108				
						
	.dc.b	227				
	.dc.b	226				
	.dc.b	139				
						
	.dc.b	44				
						
	.dc.b	228				
	.dc.b	249				
	.dc.b	130				
						
	.dc.b	44				
						
	.dc.b	230				
	.dc.b	16				
	.dc.b	206				
						
	.dc.b	44				
						
	.dc.b	231				
	.dc.b	40				
	.dc.b	111				
						
	.dc.b	12				
						
	.dc.b	232				
	.dc.b	64				
	.dc.b	100				
						
	.dc.b	172				
						
	.dc.b	233				
	.dc.b	88				
	.dc.b	174				
						
	.dc.b	172				
						
	.dc.b	234				
	.dc.b	113				
	.dc.b	76				
						
	.dc.b	236				
						
	.dc.b	235				
	.dc.b	138				
	.dc.b	63				
						
	.dc.b	76				
						
	.dc.b	236				
	.dc.b	163				
	.dc.b	133				
						
	.dc.b	140				
						
	.dc.b	237				
	.dc.b	189				
	.dc.b	31				
						
	.dc.b	140				
						
	.dc.b	238				
	.dc.b	215				
	.dc.b	12				
						
	.dc.b	236				
						
	.dc.b	239				
	.dc.b	241				
	.dc.b	77				
						
	.dc.b	172				
						
	.dc.b	241				
	.dc.b	11				
	.dc.b	225				
						
	.dc.b	108				
						
	.dc.b	242				
	.dc.b	38				
	.dc.b	200				
						
	.dc.b	44				
						
	.dc.b	243				
	.dc.b	66				
	.dc.b	1				
						
	.dc.b	140				
						
	.dc.b	244				
	.dc.b	93				
	.dc.b	141				
						
	.dc.b	140				
						
	.dc.b	245				
	.dc.b	121				
	.dc.b	107				
						
	.dc.b	236				
						
	.dc.b	246				
	.dc.b	149				
	.dc.b	156				
						
	.dc.b	108				
						
	.dc.b	247				
	.dc.b	178				
	.dc.b	30				
						
	.dc.b	204				
						
	.dc.b	248				
	.dc.b	206				
	.dc.b	243				
						
	.dc.b	12				
						
	.dc.b	249				
	.dc.b	236				
	.dc.b	24				
						
	.dc.b	236				
						
	.dc.b	251				
	.dc.b	9				
	.dc.b	144				
						
	.dc.b	44				
						
	.dc.b	252				
	.dc.b	39				
	.dc.b	88				
						
	.dc.b	172				
						
	.dc.b	253				
	.dc.b	69				
	.dc.b	114				
						
	.dc.b	76				
						
	.dc.b	254				
	.dc.b	99				
	.dc.b	220				
						
	.dc.b	204				
						
	.dc.b	255				
	.dc.b	130				
	.dc.b	151				
						
	.dc.b	236				
						
	.dc.b	128				
	.dc.b	80				
	.dc.b	209				
						
	.dc.b	205				
						
	.dc.b	128				
	.dc.b	224				
	.dc.b	127				
						
	.dc.b	237				
						
	.dc.b	129				
	.dc.b	112				
	.dc.b	86				
						
	.dc.b	13				
						
	.dc.b	130				
	.dc.b	0				
	.dc.b	84				
						
	.dc.b	45				
						
	.dc.b	130				
	.dc.b	144				
	.dc.b	122				
						
	.dc.b	45				
						
	.dc.b	131				
	.dc.b	32				
	.dc.b	200				
						
	.dc.b	13				
						
	.dc.b	131				
	.dc.b	177				
	.dc.b	61				
						
	.dc.b	173				
						
	.dc.b	132				
	.dc.b	65				
	.dc.b	218				
						
	.dc.b	237				
						
	.dc.b	132				
	.dc.b	210				
	.dc.b	159				
						
	.dc.b	205				
						
	.dc.b	133				
	.dc.b	99				
	.dc.b	140				
						
	.dc.b	13				
						
	.dc.b	133				
	.dc.b	244				
	.dc.b	159				
						
	.dc.b	205				
						
	.dc.b	134				
	.dc.b	133				
	.dc.b	218				
						
	.dc.b	237				
						
	.dc.b	135				
	.dc.b	23				
	.dc.b	61				
						
	.dc.b	45				
						
	.dc.b	135				
	.dc.b	168				
	.dc.b	198				
						
	.dc.b	173				
						
	.dc.b	136				
	.dc.b	58				
	.dc.b	119				
						
	.dc.b	45				
						
	.dc.b	136				
	.dc.b	204				
	.dc.b	78				
						
	.dc.b	173				
						
	.dc.b	137				
	.dc.b	94				
	.dc.b	77				
						
	.dc.b	45				
						
	.dc.b	137				
	.dc.b	240				
	.dc.b	114				
						
	.dc.b	109				
						
	.dc.b	138				
	.dc.b	130				
	.dc.b	190				
						
	.dc.b	109				
						
	.dc.b	139				
	.dc.b	21				
	.dc.b	49				
						
	.dc.b	45				
						
	.dc.b	139				
	.dc.b	167				
	.dc.b	202				
						
	.dc.b	109				
						
	.dc.b	140				
	.dc.b	58				
	.dc.b	138				
						
	.dc.b	45				
						
	.dc.b	140				
	.dc.b	205				
	.dc.b	112				
						
	.dc.b	109				
						
	.dc.b	141				
	.dc.b	96				
	.dc.b	124				
						
	.dc.b	237				
						
	.dc.b	141				
	.dc.b	243				
	.dc.b	175				
						
	.dc.b	205				
						
	.dc.b	142				
	.dc.b	135				
	.dc.b	8				
						
	.dc.b	237				
						
	.dc.b	143				
	.dc.b	26				
	.dc.b	136				
						
	.dc.b	13				
						
	.dc.b	143				
	.dc.b	174				
	.dc.b	45				
						
	.dc.b	77				
						
	.dc.b	144				
	.dc.b	65				
	.dc.b	248				
						
	.dc.b	109				
						
	.dc.b	144				
	.dc.b	213				
	.dc.b	233				
						
	.dc.b	141				
						
	.dc.b	145				
	.dc.b	106				
	.dc.b	0				
						
	.dc.b	109				
						
	.dc.b	145				
	.dc.b	254				
	.dc.b	61				
						
	.dc.b	13				
						
	.dc.b	146				
	.dc.b	146				
	.dc.b	159				
						
	.dc.b	109				
						
	.dc.b	147				
	.dc.b	39				
	.dc.b	39				
						
	.dc.b	77				
						
	.dc.b	147				
	.dc.b	187				
	.dc.b	212				
						
	.dc.b	173				
						
	.dc.b	148				
	.dc.b	80				
	.dc.b	167				
						
	.dc.b	141				
						
	.dc.b	148				
	.dc.b	229				
	.dc.b	159				
						
	.dc.b	205				
						
	.dc.b	149				
	.dc.b	122				
	.dc.b	189				
						
	.dc.b	77				
						
	.dc.b	150				
	.dc.b	16				
	.dc.b	0				
						
	.dc.b	13				
						
	.dc.b	150				
	.dc.b	165				
	.dc.b	103				
						
	.dc.b	237				
						
	.dc.b	151				
	.dc.b	58				
	.dc.b	244				
						
	.dc.b	237				
						
	.dc.b	151				
	.dc.b	208				
	.dc.b	166				
						
	.dc.b	237				
						
	.dc.b	152				
	.dc.b	102				
	.dc.b	125				
						
	.dc.b	205				
						
	.dc.b	152				
	.dc.b	252				
	.dc.b	121				
						
	.dc.b	141				
						
	.dc.b	153				
	.dc.b	146				
	.dc.b	154				
						
	.dc.b	45				
						
	.dc.b	154				
	.dc.b	40				
	.dc.b	223				
						
	.dc.b	109				
						
	.dc.b	154				
	.dc.b	191				
	.dc.b	73				
						
	.dc.b	109				
						
	.dc.b	155				
	.dc.b	85				
	.dc.b	216				
						
	.dc.b	13				
						
	.dc.b	155				
	.dc.b	236				
	.dc.b	139				
						
	.dc.b	13				
						
	.dc.b	156				
	.dc.b	131				
	.dc.b	98				
						
	.dc.b	141				
						
	.dc.b	157				
	.dc.b	26				
	.dc.b	94				
						
	.dc.b	109				
						
	.dc.b	157				
	.dc.b	177				
	.dc.b	126				
						
	.dc.b	173				
						
	.dc.b	158				
	.dc.b	72				
	.dc.b	195				
						
	.dc.b	13				
						
	.dc.b	158				
	.dc.b	224				
	.dc.b	43				
						
	.dc.b	173				
						
	.dc.b	159				
	.dc.b	119				
	.dc.b	184				
						
	.dc.b	109				
						
	.dc.b	160				
	.dc.b	15				
	.dc.b	105				
						
	.dc.b	45				
						
	.dc.b	160				
	.dc.b	167				
	.dc.b	61				
						
	.dc.b	237				
						
	.dc.b	161				
	.dc.b	63				
	.dc.b	54				
						
	.dc.b	141				
						
	.dc.b	161				
	.dc.b	215				
	.dc.b	83				
						
	.dc.b	13				
						
	.dc.b	162				
	.dc.b	111				
	.dc.b	147				
						
	.dc.b	77				
						
	.dc.b	163				
	.dc.b	7				
	.dc.b	247				
						
	.dc.b	77				
						
	.dc.b	163				
	.dc.b	160				
	.dc.b	126				
						
	.dc.b	237				
						
	.dc.b	164				
	.dc.b	57				
	.dc.b	42				
						
	.dc.b	13				
						
	.dc.b	164				
	.dc.b	209				
	.dc.b	248				
						
	.dc.b	205				
						
	.dc.b	165				
	.dc.b	106				
	.dc.b	234				
						
	.dc.b	237				
						
	.dc.b	166				
	.dc.b	4				
	.dc.b	0				
						
	.dc.b	109				
						
	.dc.b	166				
	.dc.b	157				
	.dc.b	57				
						
	.dc.b	77				
						
	.dc.b	167				
	.dc.b	54				
	.dc.b	149				
						
	.dc.b	109				
						
	.dc.b	167				
	.dc.b	208				
	.dc.b	20				
						
	.dc.b	205				
						
	.dc.b	168				
	.dc.b	105				
	.dc.b	183				
						
	.dc.b	45				
						
	.dc.b	169				
	.dc.b	3				
	.dc.b	124				
						
	.dc.b	173				
						
	.dc.b	169				
	.dc.b	157				
	.dc.b	101				
						
	.dc.b	77				
						
	.dc.b	170				
	.dc.b	55				
	.dc.b	112				
						
	.dc.b	173				
						
	.dc.b	170				
	.dc.b	209				
	.dc.b	159				
						
	.dc.b	13				
						
	.dc.b	171				
	.dc.b	107				
	.dc.b	240				
						
	.dc.b	45				
						
	.dc.b	172				
	.dc.b	6				
	.dc.b	100				
						
	.dc.b	45				
						
	.dc.b	172				
	.dc.b	160				
	.dc.b	250				
						
	.dc.b	205				
						
	.dc.b	173				
	.dc.b	59				
	.dc.b	180				
						
	.dc.b	13				
						
	.dc.b	173				
	.dc.b	214				
	.dc.b	143				
						
	.dc.b	237				
						
	.dc.b	174				
	.dc.b	113				
	.dc.b	142				
						
	.dc.b	77				
						
	.dc.b	175				
	.dc.b	12				
	.dc.b	175				
						
	.dc.b	13				
						
	.dc.b	175				
	.dc.b	167				
	.dc.b	242				
						
	.dc.b	77				
						
	.dc.b	176				
	.dc.b	67				
	.dc.b	87				
						
	.dc.b	237				
						
	.dc.b	176				
	.dc.b	222				
	.dc.b	223				
						
	.dc.b	173				
						
	.dc.b	177				
	.dc.b	122				
	.dc.b	137				
						
	.dc.b	205				
						
	.dc.b	178				
	.dc.b	22				
	.dc.b	86				
						
	.dc.b	13				
						
	.dc.b	178				
	.dc.b	178				
	.dc.b	68				
						
	.dc.b	77				
						
	.dc.b	179				
	.dc.b	78				
	.dc.b	84				
						
	.dc.b	173				
						
	.dc.b	179				
	.dc.b	234				
	.dc.b	135				
						
	.dc.b	13				
						
	.dc.b	180				
	.dc.b	134				
	.dc.b	219				
						
	.dc.b	77				
						
	.dc.b	181				
	.dc.b	35				
	.dc.b	81				
						
	.dc.b	141				
						
	.dc.b	181				
	.dc.b	191				
	.dc.b	233				
						
	.dc.b	141				
						
	.dc.b	182				
	.dc.b	92				
	.dc.b	163				
						
	.dc.b	77				
						
	.dc.b	182				
	.dc.b	249				
	.dc.b	126				
						
	.dc.b	173				
						
	.dc.b	183				
	.dc.b	150				
	.dc.b	123				
						
	.dc.b	205				
						
	.dc.b	184				
	.dc.b	51				
	.dc.b	154				
						
	.dc.b	109				
						
	.dc.b	184				
	.dc.b	208				
	.dc.b	218				
						
	.dc.b	173				
						
	.dc.b	185				
	.dc.b	110				
	.dc.b	60				
						
	.dc.b	77				
						
	.dc.b	186				
	.dc.b	11				
	.dc.b	191				
						
	.dc.b	109				
						
	.dc.b	186				
	.dc.b	169				
	.dc.b	99				
						
	.dc.b	237				
						
	.dc.b	187				
	.dc.b	71				
	.dc.b	41				
						
	.dc.b	173				
						
	.dc.b	187				
	.dc.b	229				
	.dc.b	16				
						
	.dc.b	173				
						
	.dc.b	188				
	.dc.b	131				
	.dc.b	24				
						
	.dc.b	237				
						
	.dc.b	189				
	.dc.b	33				
	.dc.b	66				
						
	.dc.b	77				
						
	.dc.b	189				
	.dc.b	191				
	.dc.b	140				
						
	.dc.b	205				
						
	.dc.b	190				
	.dc.b	93				
	.dc.b	248				
						
	.dc.b	77				
						
	.dc.b	190				
	.dc.b	252				
	.dc.b	132				
						
	.dc.b	205				
						
	.dc.b	191				
	.dc.b	155				
	.dc.b	50				
						
	.dc.b	77				
						
	.dc.b	192				
	.dc.b	58				
	.dc.b	0				
						
	.dc.b	141				
						
	.dc.b	192				
	.dc.b	216				
	.dc.b	239				
						
	.dc.b	173				
						
	.dc.b	193				
	.dc.b	119				
	.dc.b	255				
						
	.dc.b	173				
						
	.dc.b	194				
	.dc.b	23				
	.dc.b	48				
						
	.dc.b	77				
						
	.dc.b	194				
	.dc.b	182				
	.dc.b	129				
						
	.dc.b	141				
						
	.dc.b	195				
	.dc.b	85				
	.dc.b	243				
						
	.dc.b	141				
						
	.dc.b	195				
	.dc.b	245				
	.dc.b	133				
						
	.dc.b	237				
						
	.dc.b	196				
	.dc.b	149				
	.dc.b	56				
						
	.dc.b	237				
						
	.dc.b	197				
	.dc.b	53				
	.dc.b	12				
						
	.dc.b	109				
						
	.dc.b	197				
	.dc.b	213				
	.dc.b	0				
						
	.dc.b	77				
						
	.dc.b	198				
	.dc.b	117				
	.dc.b	20				
						
	.dc.b	109				
						
	.dc.b	199				
	.dc.b	21				
	.dc.b	73				
						
	.dc.b	13				
						
	.dc.b	199				
	.dc.b	181				
	.dc.b	157				
						
	.dc.b	205				
						
	.dc.b	200				
	.dc.b	86				
	.dc.b	18				
						
	.dc.b	205				
						
	.dc.b	200				
	.dc.b	246				
	.dc.b	167				
						
	.dc.b	237				
						
	.dc.b	201				
	.dc.b	151				
	.dc.b	93				
						
	.dc.b	45				
						
	.dc.b	202				
	.dc.b	56				
	.dc.b	50				
						
	.dc.b	109				
						
	.dc.b	202				
	.dc.b	217				
	.dc.b	39				
						
	.dc.b	173				
						
	.dc.b	203				
	.dc.b	122				
	.dc.b	60				
						
	.dc.b	237				
						
	.dc.b	204				
	.dc.b	27				
	.dc.b	114				
						
	.dc.b	45				
						
	.dc.b	204				
	.dc.b	188				
	.dc.b	199				
						
	.dc.b	45				
						
	.dc.b	205				
	.dc.b	94				
	.dc.b	59				
						
	.dc.b	237				
						
	.dc.b	205				
	.dc.b	255				
	.dc.b	208				
						
	.dc.b	141				
						
	.dc.b	206				
	.dc.b	161				
	.dc.b	132				
						
	.dc.b	205				
						
	.dc.b	207				
	.dc.b	67				
	.dc.b	88				
						
	.dc.b	205				
						
	.dc.b	207				
	.dc.b	229				
	.dc.b	76				
						
	.dc.b	77				
						
	.dc.b	208				
	.dc.b	135				
	.dc.b	95				
						
	.dc.b	109				
						
	.dc.b	209				
	.dc.b	41				
	.dc.b	146				
						
	.dc.b	13				
						
	.dc.b	209				
	.dc.b	203				
	.dc.b	228				
						
	.dc.b	45				
						
	.dc.b	210				
	.dc.b	110				
	.dc.b	85				
						
	.dc.b	205				
						
	.dc.b	211				
	.dc.b	16				
	.dc.b	230				
						
	.dc.b	173				
						
	.dc.b	211				
	.dc.b	179				
	.dc.b	150				
						
	.dc.b	237				
						
	.dc.b	212				
	.dc.b	86				
	.dc.b	102				
						
	.dc.b	109				
						
	.dc.b	212				
	.dc.b	249				
	.dc.b	85				
						
	.dc.b	45				
						
	.dc.b	213				
	.dc.b	156				
	.dc.b	99				
						
	.dc.b	13				
						
	.dc.b	214				
	.dc.b	63				
	.dc.b	144				
						
	.dc.b	45				
						
	.dc.b	214				
	.dc.b	226				
	.dc.b	220				
						
	.dc.b	77				
						
	.dc.b	215				
	.dc.b	134				
	.dc.b	71				
						
	.dc.b	109				
						
	.dc.b	216				
	.dc.b	41				
	.dc.b	209				
						
	.dc.b	173				
						
	.dc.b	216				
	.dc.b	205				
	.dc.b	122				
						
	.dc.b	205				
						
	.dc.b	217				
	.dc.b	113				
	.dc.b	66				
						
	.dc.b	237				
						
	.dc.b	218				
	.dc.b	21				
	.dc.b	41				
						
	.dc.b	205				
						
	.dc.b	218				
	.dc.b	185				
	.dc.b	47				
						
	.dc.b	141				
						
	.dc.b	219				
	.dc.b	93				
	.dc.b	84				
						
	.dc.b	45				
						
	.dc.b	220				
	.dc.b	1				
	.dc.b	151				
						
	.dc.b	109				
						
	.dc.b	220				
	.dc.b	165				
	.dc.b	249				
						
	.dc.b	77				
						
	.dc.b	221				
	.dc.b	74				
	.dc.b	121				
						
	.dc.b	237				
						
	.dc.b	221				
	.dc.b	239				
	.dc.b	25				
						
	.dc.b	13				
						
	.dc.b	222				
	.dc.b	147				
	.dc.b	214				
						
	.dc.b	205				
						
	.dc.b	223				
	.dc.b	56				
	.dc.b	178				
						
	.dc.b	237				
						
	.dc.b	223				
	.dc.b	221				
	.dc.b	173				
						
	.dc.b	173				
						
	.dc.b	224				
	.dc.b	130				
	.dc.b	198				
						
	.dc.b	205				
						
	.dc.b	225				
	.dc.b	39				
	.dc.b	254				
						
	.dc.b	77				
						
	.dc.b	225				
	.dc.b	205				
	.dc.b	84				
						
	.dc.b	13				
						
	.dc.b	226				
	.dc.b	114				
	.dc.b	200				
						
	.dc.b	45				
						
	.dc.b	227				
	.dc.b	24				
	.dc.b	90				
						
	.dc.b	109				
						
	.dc.b	227				
	.dc.b	190				
	.dc.b	11				
						
	.dc.b	13				
						
	.dc.b	228				
	.dc.b	99				
	.dc.b	217				
						
	.dc.b	173				
						
	.dc.b	229				
	.dc.b	9				
	.dc.b	198				
						
	.dc.b	141				
						
	.dc.b	229				
	.dc.b	175				
	.dc.b	209				
						
	.dc.b	109				
						
	.dc.b	230				
	.dc.b	85				
	.dc.b	250				
						
	.dc.b	77				
						
	.dc.b	230				
	.dc.b	252				
	.dc.b	65				
						
	.dc.b	45				
						
	.dc.b	231				
	.dc.b	162				
	.dc.b	166				
						
	.dc.b	13				
						
	.dc.b	232				
	.dc.b	73				
	.dc.b	40				
						
	.dc.b	205				
						
	.dc.b	232				
	.dc.b	239				
	.dc.b	201				
						
	.dc.b	109				
						
	.dc.b	233				
	.dc.b	150				
	.dc.b	135				
						
	.dc.b	205				
						
	.dc.b	234				
	.dc.b	61				
	.dc.b	100				
						
	.dc.b	13				
						
	.dc.b	234				
	.dc.b	228				
	.dc.b	93				
						
	.dc.b	237				
						
	.dc.b	235				
	.dc.b	139				
	.dc.b	117				
						
	.dc.b	141				
						
	.dc.b	236				
	.dc.b	50				
	.dc.b	170				
						
	.dc.b	237				
						
	.dc.b	236				
	.dc.b	217				
	.dc.b	253				
						
	.dc.b	205				
						
	.dc.b	237				
	.dc.b	129				
	.dc.b	110				
						
	.dc.b	77				
						
	.dc.b	238				
	.dc.b	40				
	.dc.b	252				
						
	.dc.b	77				
						
	.dc.b	238				
	.dc.b	208				
	.dc.b	167				
						
	.dc.b	205				
						
	.dc.b	239				
	.dc.b	120				
	.dc.b	112				
						
	.dc.b	173				
						
	.dc.b	240				
	.dc.b	32				
	.dc.b	87				
						
	.dc.b	13				
						
	.dc.b	240				
	.dc.b	200				
	.dc.b	90				
						
	.dc.b	205				
						
	.dc.b	241				
	.dc.b	112				
	.dc.b	123				
						
	.dc.b	205				
						
	.dc.b	242				
	.dc.b	24				
	.dc.b	186				
						
	.dc.b	45				
						
	.dc.b	242				
	.dc.b	193				
	.dc.b	21				
						
	.dc.b	205				
						
	.dc.b	243				
	.dc.b	105				
	.dc.b	142				
						
	.dc.b	141				
						
	.dc.b	244				
	.dc.b	18				
	.dc.b	36				
						
	.dc.b	141				
						
	.dc.b	244				
	.dc.b	186				
	.dc.b	215				
						
	.dc.b	173				
						
	.dc.b	245				
	.dc.b	99				
	.dc.b	167				
						
	.dc.b	205				
						
	.dc.b	246				
	.dc.b	12				
	.dc.b	149				
						
	.dc.b	13				
						
	.dc.b	246				
	.dc.b	181				
	.dc.b	159				
						
	.dc.b	109				
						
	.dc.b	247				
	.dc.b	94				
	.dc.b	198				
						
	.dc.b	173				
						
	.dc.b	248				
	.dc.b	8				
	.dc.b	10				
						
	.dc.b	205				
						
	.dc.b	248				
	.dc.b	177				
	.dc.b	107				
						
	.dc.b	237				
						
	.dc.b	249				
	.dc.b	90				
	.dc.b	233				
						
	.dc.b	205				
						
	.dc.b	250				
	.dc.b	4				
	.dc.b	132				
						
	.dc.b	141				
						
	.dc.b	250				
	.dc.b	174				
	.dc.b	60				
						
	.dc.b	13				
						
	.dc.b	251				
	.dc.b	88				
	.dc.b	16				
						
	.dc.b	109				
						
	.dc.b	252				
	.dc.b	2				
	.dc.b	1				
						
	.dc.b	77				
						
	.dc.b	252				
	.dc.b	172				
	.dc.b	15				
						
	.dc.b	13				
						
	.dc.b	253				
	.dc.b	86				
	.dc.b	57				
						
	.dc.b	77				
						
	.dc.b	254				
	.dc.b	0				
	.dc.b	128				
						
	.dc.b	45				
						
	.dc.b	254				
	.dc.b	170				
	.dc.b	227				
						
	.dc.b	173				
						
	.dc.b	255				
	.dc.b	85				
	.dc.b	99				
						
	.dc.b	141				
						
	.dc.b	128				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	14				
						
	.dc.b	128				
	.dc.b	85				
	.dc.b	92				
						
	.dc.b	110				
						
	.dc.b	128				
	.dc.b	170				
	.dc.b	199				
						
	.dc.b	14				
						
	.dc.b	129				
	.dc.b	0				
	.dc.b	63				
						
	.dc.b	238				
						
	.dc.b	129				
	.dc.b	85				
	.dc.b	198				
						
	.dc.b	238				
						
	.dc.b	129				
	.dc.b	171				
	.dc.b	92				
						
	.dc.b	14				
						
	.dc.b	130				
	.dc.b	0				
	.dc.b	255				
						
	.dc.b	78				
						
	.dc.b	130				
	.dc.b	86				
	.dc.b	176				
						
	.dc.b	206				
						
	.dc.b	130				
	.dc.b	172				
	.dc.b	112				
						
	.dc.b	46				
						
	.dc.b	131				
	.dc.b	2				
	.dc.b	61				
						
	.dc.b	206				
						
	.dc.b	131				
	.dc.b	88				
	.dc.b	25				
						
	.dc.b	110				
						
	.dc.b	131				
	.dc.b	174				
	.dc.b	3				
						
	.dc.b	14				
						
	.dc.b	132				
	.dc.b	3				
	.dc.b	250				
						
	.dc.b	174				
						
	.dc.b	132				
	.dc.b	90				
	.dc.b	0				
						
	.dc.b	110				
						
	.dc.b	132				
	.dc.b	176				
	.dc.b	20				
						
	.dc.b	14				
						
	.dc.b	133				
	.dc.b	6				
	.dc.b	53				
						
	.dc.b	174				
						
	.dc.b	133				
	.dc.b	92				
	.dc.b	101				
						
	.dc.b	78				
						
	.dc.b	133				
	.dc.b	178				
	.dc.b	162				
						
	.dc.b	206				
						
	.dc.b	134				
	.dc.b	8				
	.dc.b	238				
						
	.dc.b	78				
						
	.dc.b	134				
	.dc.b	95				
	.dc.b	71				
						
	.dc.b	174				
						
	.dc.b	134				
	.dc.b	181				
	.dc.b	174				
						
	.dc.b	206				
						
	.dc.b	135				
	.dc.b	12				
	.dc.b	35				
						
	.dc.b	238				
						
	.dc.b	135				
	.dc.b	98				
	.dc.b	166				
						
	.dc.b	206				
						
	.dc.b	135				
	.dc.b	185				
	.dc.b	55				
						
	.dc.b	142				
						
	.dc.b	136				
	.dc.b	15				
	.dc.b	214				
						
	.dc.b	46				
						
	.dc.b	136				
	.dc.b	102				
	.dc.b	130				
						
	.dc.b	142				
						
	.dc.b	136				
	.dc.b	189				
	.dc.b	60				
						
	.dc.b	174				
						
	.dc.b	137				
	.dc.b	20				
	.dc.b	4				
						
	.dc.b	142				
						
	.dc.b	137				
	.dc.b	106				
	.dc.b	218				
						
	.dc.b	46				
						
	.dc.b	137				
	.dc.b	193				
	.dc.b	189				
						
	.dc.b	142				
						
	.dc.b	138				
	.dc.b	24				
	.dc.b	174				
						
	.dc.b	174				
						
	.dc.b	138				
	.dc.b	111				
	.dc.b	173				
						
	.dc.b	110				
						
	.dc.b	138				
	.dc.b	198				
	.dc.b	185				
						
	.dc.b	238				
						
	.dc.b	139				
	.dc.b	29				
	.dc.b	211				
						
	.dc.b	238				
						
	.dc.b	139				
	.dc.b	116				
	.dc.b	251				
						
	.dc.b	174				
						
	.dc.b	139				
	.dc.b	204				
	.dc.b	49				
						
	.dc.b	14				
						
	.dc.b	140				
	.dc.b	35				
	.dc.b	116				
						
	.dc.b	14				
						
	.dc.b	140				
	.dc.b	122				
	.dc.b	196				
						
	.dc.b	174				
						
	.dc.b	140				
	.dc.b	210				
	.dc.b	34				
						
	.dc.b	206				
						
	.dc.b	141				
	.dc.b	41				
	.dc.b	142				
						
	.dc.b	142				
						
	.dc.b	141				
	.dc.b	129				
	.dc.b	7				
						
	.dc.b	206				
						
	.dc.b	141				
	.dc.b	216				
	.dc.b	142				
						
	.dc.b	142				
						
	.dc.b	142				
	.dc.b	48				
	.dc.b	34				
						
	.dc.b	206				
						
	.dc.b	142				
	.dc.b	135				
	.dc.b	196				
						
	.dc.b	174				
						
	.dc.b	142				
	.dc.b	223				
	.dc.b	115				
						
	.dc.b	238				
						
	.dc.b	143				
	.dc.b	55				
	.dc.b	48				
						
	.dc.b	142				
						
	.dc.b	143				
	.dc.b	142				
	.dc.b	250				
						
	.dc.b	206				
						
	.dc.b	143				
	.dc.b	230				
	.dc.b	210				
						
	.dc.b	110				
						
	.dc.b	144				
	.dc.b	62				
	.dc.b	183				
						
	.dc.b	110				
						
	.dc.b	144				
	.dc.b	150				
	.dc.b	169				
						
	.dc.b	206				
						
	.dc.b	144				
	.dc.b	238				
	.dc.b	169				
						
	.dc.b	142				
						
	.dc.b	145				
	.dc.b	70				
	.dc.b	182				
						
	.dc.b	206				
						
	.dc.b	145				
	.dc.b	158				
	.dc.b	209				
						
	.dc.b	78				
						
	.dc.b	145				
	.dc.b	246				
	.dc.b	249				
						
	.dc.b	14				
						
	.dc.b	146				
	.dc.b	79				
	.dc.b	46				
						
	.dc.b	78				
						
	.dc.b	146				
	.dc.b	167				
	.dc.b	112				
						
	.dc.b	174				
						
	.dc.b	146				
	.dc.b	255				
	.dc.b	192				
						
	.dc.b	110				
						
	.dc.b	147				
	.dc.b	88				
	.dc.b	29				
						
	.dc.b	110				
						
	.dc.b	147				
	.dc.b	176				
	.dc.b	135				
						
	.dc.b	206				
						
	.dc.b	148				
	.dc.b	8				
	.dc.b	255				
						
	.dc.b	78				
						
	.dc.b	148				
	.dc.b	97				
	.dc.b	132				
						
	.dc.b	14				
						
	.dc.b	148				
	.dc.b	186				
	.dc.b	21				
						
	.dc.b	238				
						
	.dc.b	149				
	.dc.b	18				
	.dc.b	181				
						
	.dc.b	14				
						
	.dc.b	149				
	.dc.b	107				
	.dc.b	97				
						
	.dc.b	110				
						
	.dc.b	149				
	.dc.b	196				
	.dc.b	26				
						
	.dc.b	238				
						
	.dc.b	150				
	.dc.b	28				
	.dc.b	225				
						
	.dc.b	142				
						
	.dc.b	150				
	.dc.b	117				
	.dc.b	181				
						
	.dc.b	78				
						
	.dc.b	150				
	.dc.b	206				
	.dc.b	150				
						
	.dc.b	46				
						
	.dc.b	151				
	.dc.b	39				
	.dc.b	132				
						
	.dc.b	46				
						
	.dc.b	151				
	.dc.b	128				
	.dc.b	127				
						
	.dc.b	78				
						
	.dc.b	151				
	.dc.b	217				
	.dc.b	135				
						
	.dc.b	110				
						
	.dc.b	152				
	.dc.b	50				
	.dc.b	156				
						
	.dc.b	142				
						
	.dc.b	152				
	.dc.b	139				
	.dc.b	190				
						
	.dc.b	206				
						
	.dc.b	152				
	.dc.b	228				
	.dc.b	238				
						
	.dc.b	46				
						
	.dc.b	153				
	.dc.b	62				
	.dc.b	42				
						
	.dc.b	110				
						
	.dc.b	153				
	.dc.b	151				
	.dc.b	115				
						
	.dc.b	174				
						
	.dc.b	153				
	.dc.b	240				
	.dc.b	201				
						
	.dc.b	238				
						
	.dc.b	154				
	.dc.b	74				
	.dc.b	45				
						
	.dc.b	46				
						
	.dc.b	154				
	.dc.b	163				
	.dc.b	157				
						
	.dc.b	110				
						
	.dc.b	154				
	.dc.b	253				
	.dc.b	26				
						
	.dc.b	142				
						
	.dc.b	155				
	.dc.b	86				
	.dc.b	164				
						
	.dc.b	142				
						
	.dc.b	155				
	.dc.b	176				
	.dc.b	59				
						
	.dc.b	142				
						
	.dc.b	156				
	.dc.b	9				
	.dc.b	223				
						
	.dc.b	110				
						
	.dc.b	156				
	.dc.b	99				
	.dc.b	144				
						
	.dc.b	46				
						
	.dc.b	156				
	.dc.b	189				
	.dc.b	77				
						
	.dc.b	206				
						
	.dc.b	157				
	.dc.b	23				
	.dc.b	24				
						
	.dc.b	78				
						
	.dc.b	157				
	.dc.b	112				
	.dc.b	239				
						
	.dc.b	142				
						
	.dc.b	157				
	.dc.b	202				
	.dc.b	211				
						
	.dc.b	174				
						
	.dc.b	158				
	.dc.b	36				
	.dc.b	196				
						
	.dc.b	142				
						
	.dc.b	158				
	.dc.b	126				
	.dc.b	194				
						
	.dc.b	78				
						
	.dc.b	158				
	.dc.b	216				
	.dc.b	204				
						
	.dc.b	206				
						
	.dc.b	159				
	.dc.b	50				
	.dc.b	228				
						
	.dc.b	46				
						
	.dc.b	159				
	.dc.b	141				
	.dc.b	8				
						
	.dc.b	46				
						
	.dc.b	159				
	.dc.b	231				
	.dc.b	56				
						
	.dc.b	238				
						
	.dc.b	160				
	.dc.b	65				
	.dc.b	118				
						
	.dc.b	110				
						
	.dc.b	160				
	.dc.b	155				
	.dc.b	192				
						
	.dc.b	174				
						
	.dc.b	160				
	.dc.b	246				
	.dc.b	23				
						
	.dc.b	142				
						
	.dc.b	161				
	.dc.b	80				
	.dc.b	123				
						
	.dc.b	14				
						
	.dc.b	161				
	.dc.b	170				
	.dc.b	235				
						
	.dc.b	110				
						
	.dc.b	162				
	.dc.b	5				
	.dc.b	104				
						
	.dc.b	78				
						
	.dc.b	162				
	.dc.b	95				
	.dc.b	241				
						
	.dc.b	206				
						
	.dc.b	162				
	.dc.b	186				
	.dc.b	136				
						
	.dc.b	14				
						
	.dc.b	163				
	.dc.b	21				
	.dc.b	42				
						
	.dc.b	206				
						
	.dc.b	163				
	.dc.b	111				
	.dc.b	218				
						
	.dc.b	46				
						
	.dc.b	163				
	.dc.b	202				
	.dc.b	150				
						
	.dc.b	46				
						
	.dc.b	164				
	.dc.b	37				
	.dc.b	94				
						
	.dc.b	174				
						
	.dc.b	164				
	.dc.b	128				
	.dc.b	51				
						
	.dc.b	206				
						
	.dc.b	164				
	.dc.b	219				
	.dc.b	21				
						
	.dc.b	110				
						
	.dc.b	165				
	.dc.b	54				
	.dc.b	3				
						
	.dc.b	174				
						
	.dc.b	165				
	.dc.b	144				
	.dc.b	254				
						
	.dc.b	78				
						
	.dc.b	165				
	.dc.b	236				
	.dc.b	5				
						
	.dc.b	142				
						
	.dc.b	166				
	.dc.b	71				
	.dc.b	25				
						
	.dc.b	78				
						
	.dc.b	166				
	.dc.b	162				
	.dc.b	57				
						
	.dc.b	110				
						
	.dc.b	166				
	.dc.b	253				
	.dc.b	102				
						
	.dc.b	14				
						
	.dc.b	167				
	.dc.b	88				
	.dc.b	159				
						
	.dc.b	46				
						
	.dc.b	167				
	.dc.b	179				
	.dc.b	228				
						
	.dc.b	174				
						
	.dc.b	168				
	.dc.b	15				
	.dc.b	54				
						
	.dc.b	174				
						
	.dc.b	168				
	.dc.b	106				
	.dc.b	149				
						
	.dc.b	14				
						
	.dc.b	168				
	.dc.b	197				
	.dc.b	255				
						
	.dc.b	206				
						
	.dc.b	169				
	.dc.b	33				
	.dc.b	118				
						
	.dc.b	238				
						
	.dc.b	169				
	.dc.b	124				
	.dc.b	250				
						
	.dc.b	142				
						
	.dc.b	169				
	.dc.b	216				
	.dc.b	138				
						
	.dc.b	110				
						
	.dc.b	170				
	.dc.b	52				
	.dc.b	38				
						
	.dc.b	142				
						
	.dc.b	170				
	.dc.b	143				
	.dc.b	207				
						
	.dc.b	46				
						
	.dc.b	170				
	.dc.b	235				
	.dc.b	132				
						
	.dc.b	14				
						
	.dc.b	171				
	.dc.b	71				
	.dc.b	69				
						
	.dc.b	78				
						
	.dc.b	171				
	.dc.b	163				
	.dc.b	18				
						
	.dc.b	206				
						
	.dc.b	171				
	.dc.b	254				
	.dc.b	236				
						
	.dc.b	142				
						
	.dc.b	172				
	.dc.b	90				
	.dc.b	210				
						
	.dc.b	142				
						
	.dc.b	172				
	.dc.b	182				
	.dc.b	196				
						
	.dc.b	238				
						
	.dc.b	173				
	.dc.b	18				
	.dc.b	195				
						
	.dc.b	110				
						
	.dc.b	173				
	.dc.b	110				
	.dc.b	206				
						
	.dc.b	46				
						
	.dc.b	173				
	.dc.b	202				
	.dc.b	229				
						
	.dc.b	46				
						
	.dc.b	174				
	.dc.b	39				
	.dc.b	8				
						
	.dc.b	110				
						
	.dc.b	174				
	.dc.b	131				
	.dc.b	55				
						
	.dc.b	206				
						
	.dc.b	174				
	.dc.b	223				
	.dc.b	115				
						
	.dc.b	78				
						
	.dc.b	175				
	.dc.b	59				
	.dc.b	187				
						
	.dc.b	14				
						
	.dc.b	175				
	.dc.b	152				
	.dc.b	14				
						
	.dc.b	238				
						
	.dc.b	175				
	.dc.b	244				
	.dc.b	111				
						
	.dc.b	14				
						
	.dc.b	176				
	.dc.b	80				
	.dc.b	219				
						
	.dc.b	46				
						
	.dc.b	176				
	.dc.b	173				
	.dc.b	83				
						
	.dc.b	110				
						
	.dc.b	177				
	.dc.b	9				
	.dc.b	215				
						
	.dc.b	206				
						
	.dc.b	177				
	.dc.b	102				
	.dc.b	104				
						
	.dc.b	78				
						
	.dc.b	177				
	.dc.b	195				
	.dc.b	4				
						
	.dc.b	238				
						
	.dc.b	178				
	.dc.b	31				
	.dc.b	173				
						
	.dc.b	142				
						
	.dc.b	178				
	.dc.b	124				
	.dc.b	98				
						
	.dc.b	46				
						
	.dc.b	178				
	.dc.b	217				
	.dc.b	34				
						
	.dc.b	238				
						
	.dc.b	179				
	.dc.b	53				
	.dc.b	239				
						
	.dc.b	174				
						
	.dc.b	179				
	.dc.b	146				
	.dc.b	200				
						
	.dc.b	110				
						
	.dc.b	179				
	.dc.b	239				
	.dc.b	173				
						
	.dc.b	78				
						
	.dc.b	180				
	.dc.b	76				
	.dc.b	158				
						
	.dc.b	14				
						
	.dc.b	180				
	.dc.b	169				
	.dc.b	154				
						
	.dc.b	206				
						
	.dc.b	181				
	.dc.b	6				
	.dc.b	163				
						
	.dc.b	142				
						
	.dc.b	181				
	.dc.b	99				
	.dc.b	184				
						
	.dc.b	78				
						
	.dc.b	181				
	.dc.b	192				
	.dc.b	216				
						
	.dc.b	238				
						
	.dc.b	182				
	.dc.b	30				
	.dc.b	5				
						
	.dc.b	110				
						
	.dc.b	182				
	.dc.b	123				
	.dc.b	62				
						
	.dc.b	14				
						
	.dc.b	182				
	.dc.b	216				
	.dc.b	130				
						
	.dc.b	110				
						
	.dc.b	183				
	.dc.b	53				
	.dc.b	210				
						
	.dc.b	174				
						
	.dc.b	183				
	.dc.b	147				
	.dc.b	46				
						
	.dc.b	238				
						
	.dc.b	183				
	.dc.b	240				
	.dc.b	151				
						
	.dc.b	14				
						
	.dc.b	184				
	.dc.b	78				
	.dc.b	10				
						
	.dc.b	238				
						
	.dc.b	184				
	.dc.b	171				
	.dc.b	138				
						
	.dc.b	206				
						
	.dc.b	185				
	.dc.b	9				
	.dc.b	22				
						
	.dc.b	110				
						
	.dc.b	185				
	.dc.b	102				
	.dc.b	173				
						
	.dc.b	206				
						
	.dc.b	185				
	.dc.b	196				
	.dc.b	81				
						
	.dc.b	46				
						
	.dc.b	186				
	.dc.b	34				
	.dc.b	0				
						
	.dc.b	46				
						
	.dc.b	186				
	.dc.b	127				
	.dc.b	187				
						
	.dc.b	14				
						
	.dc.b	186				
	.dc.b	221				
	.dc.b	129				
						
	.dc.b	206				
						
	.dc.b	187				
	.dc.b	59				
	.dc.b	84				
						
	.dc.b	46				
						
	.dc.b	187				
	.dc.b	153				
	.dc.b	50				
						
	.dc.b	110				
						
	.dc.b	187				
	.dc.b	247				
	.dc.b	28				
						
	.dc.b	78				
						
	.dc.b	188				
	.dc.b	85				
	.dc.b	18				
						
	.dc.b	14				
						
	.dc.b	188				
	.dc.b	179				
	.dc.b	19				
						
	.dc.b	110				
						
	.dc.b	189				
	.dc.b	17				
	.dc.b	32				
						
	.dc.b	142				
						
	.dc.b	189				
	.dc.b	111				
	.dc.b	57				
						
	.dc.b	110				
						
	.dc.b	189				
	.dc.b	205				
	.dc.b	93				
						
	.dc.b	238				
						
	.dc.b	190				
	.dc.b	43				
	.dc.b	142				
						
	.dc.b	14				
						
	.dc.b	190				
	.dc.b	137				
	.dc.b	201				
						
	.dc.b	238				
						
	.dc.b	190				
	.dc.b	232				
	.dc.b	17				
						
	.dc.b	110				
						
	.dc.b	191				
	.dc.b	70				
	.dc.b	100				
						
	.dc.b	142				
						
	.dc.b	191				
	.dc.b	164				
	.dc.b	195				
						
	.dc.b	110				
						
	.dc.b	192				
	.dc.b	3				
	.dc.b	45				
						
	.dc.b	206				
						
	.dc.b	192				
	.dc.b	97				
	.dc.b	163				
						
	.dc.b	206				
						
	.dc.b	192				
	.dc.b	192				
	.dc.b	37				
						
	.dc.b	110				
						
	.dc.b	193				
	.dc.b	30				
	.dc.b	178				
						
	.dc.b	174				
						
	.dc.b	193				
	.dc.b	125				
	.dc.b	75				
						
	.dc.b	142				
						
	.dc.b	193				
	.dc.b	219				
	.dc.b	239				
						
	.dc.b	238				
						
	.dc.b	194				
	.dc.b	58				
	.dc.b	159				
						
	.dc.b	206				
						
	.dc.b	194				
	.dc.b	153				
	.dc.b	91				
						
	.dc.b	78				
						
	.dc.b	194				
	.dc.b	248				
	.dc.b	34				
						
	.dc.b	78				
						
	.dc.b	195				
	.dc.b	86				
	.dc.b	244				
						
	.dc.b	206				
						
	.dc.b	195				
	.dc.b	181				
	.dc.b	210				
						
	.dc.b	206				
						
	.dc.b	196				
	.dc.b	20				
	.dc.b	188				
						
	.dc.b	110				
						
	.dc.b	196				
	.dc.b	115				
	.dc.b	177				
						
	.dc.b	110				
						
	.dc.b	196				
	.dc.b	210				
	.dc.b	177				
						
	.dc.b	238				
						
	.dc.b	197				
	.dc.b	49				
	.dc.b	189				
						
	.dc.b	238				
						
	.dc.b	197				
	.dc.b	144				
	.dc.b	213				
						
	.dc.b	78				
						
	.dc.b	197				
	.dc.b	239				
	.dc.b	248				
						
	.dc.b	46				
						
	.dc.b	198				
	.dc.b	79				
	.dc.b	38				
						
	.dc.b	142				
						
	.dc.b	198				
	.dc.b	174				
	.dc.b	96				
						
	.dc.b	78				
						
	.dc.b	199				
	.dc.b	13				
	.dc.b	165				
						
	.dc.b	110				
						
	.dc.b	199				
	.dc.b	108				
	.dc.b	246				
						
	.dc.b	14				
						
	.dc.b	199				
	.dc.b	204				
	.dc.b	82				
						
	.dc.b	14				
						
	.dc.b	200				
	.dc.b	43				
	.dc.b	185				
						
	.dc.b	110				
						
	.dc.b	200				
	.dc.b	139				
	.dc.b	44				
						
	.dc.b	14				
						
	.dc.b	200				
	.dc.b	234				
	.dc.b	170				
						
	.dc.b	46				
						
	.dc.b	201				
	.dc.b	74				
	.dc.b	51				
						
	.dc.b	142				
						
	.dc.b	201				
	.dc.b	169				
	.dc.b	200				
						
	.dc.b	110				
						
	.dc.b	202				
	.dc.b	9				
	.dc.b	104				
						
	.dc.b	142				
						
	.dc.b	202				
	.dc.b	105				
	.dc.b	19				
						
	.dc.b	238				
						
	.dc.b	202				
	.dc.b	200				
	.dc.b	202				
						
	.dc.b	174				
						
	.dc.b	203				
	.dc.b	40				
	.dc.b	140				
						
	.dc.b	174				
						
	.dc.b	203				
	.dc.b	136				
	.dc.b	90				
						
	.dc.b	14				
						
	.dc.b	203				
	.dc.b	232				
	.dc.b	50				
						
	.dc.b	174				
						
	.dc.b	204				
	.dc.b	72				
	.dc.b	22				
						
	.dc.b	142				
						
	.dc.b	204				
	.dc.b	168				
	.dc.b	5				
						
	.dc.b	174				
						
	.dc.b	205				
	.dc.b	8				
	.dc.b	0				
						
	.dc.b	14				
						
	.dc.b	205				
	.dc.b	104				
	.dc.b	5				
						
	.dc.b	174				
						
	.dc.b	205				
	.dc.b	200				
	.dc.b	22				
						
	.dc.b	110				
						
	.dc.b	206				
	.dc.b	40				
	.dc.b	50				
						
	.dc.b	142				
						
	.dc.b	206				
	.dc.b	136				
	.dc.b	89				
						
	.dc.b	206				
						
	.dc.b	206				
	.dc.b	232				
	.dc.b	140				
						
	.dc.b	78				
						
	.dc.b	207				
	.dc.b	72				
	.dc.b	201				
						
	.dc.b	238				
						
	.dc.b	207				
	.dc.b	169				
	.dc.b	18				
						
	.dc.b	206				
						
	.dc.b	208				
	.dc.b	9				
	.dc.b	102				
						
	.dc.b	206				
						
	.dc.b	208				
	.dc.b	105				
	.dc.b	197				
						
	.dc.b	238				
						
	.dc.b	208				
	.dc.b	202				
	.dc.b	48				
						
	.dc.b	46				
						
	.dc.b	209				
	.dc.b	42				
	.dc.b	165				
						
	.dc.b	142				
						
	.dc.b	209				
	.dc.b	139				
	.dc.b	38				
						
	.dc.b	46				
						
	.dc.b	209				
	.dc.b	235				
	.dc.b	177				
						
	.dc.b	206				
						
	.dc.b	210				
	.dc.b	76				
	.dc.b	72				
						
	.dc.b	174				
						
	.dc.b	210				
	.dc.b	172				
	.dc.b	234				
						
	.dc.b	110				
						
	.dc.b	211				
	.dc.b	13				
	.dc.b	151				
						
	.dc.b	110				
						
	.dc.b	211				
	.dc.b	110				
	.dc.b	79				
						
	.dc.b	110				
						
	.dc.b	211				
	.dc.b	207				
	.dc.b	18				
						
	.dc.b	142				
						
	.dc.b	212				
	.dc.b	47				
	.dc.b	224				
						
	.dc.b	174				
						
	.dc.b	212				
	.dc.b	144				
	.dc.b	185				
						
	.dc.b	238				
						
	.dc.b	212				
	.dc.b	241				
	.dc.b	158				
						
	.dc.b	46				
						
	.dc.b	213				
	.dc.b	82				
	.dc.b	141				
						
	.dc.b	110				
						
	.dc.b	213				
	.dc.b	179				
	.dc.b	135				
						
	.dc.b	174				
						
	.dc.b	214				
	.dc.b	20				
	.dc.b	141				
						
	.dc.b	14				
						
	.dc.b	214				
	.dc.b	117				
	.dc.b	157				
						
	.dc.b	78				
						
	.dc.b	214				
	.dc.b	214				
	.dc.b	184				
						
	.dc.b	142				
						
	.dc.b	215				
	.dc.b	55				
	.dc.b	222				
						
	.dc.b	206				
						
	.dc.b	215				
	.dc.b	153				
	.dc.b	16				
						
	.dc.b	14				
						
	.dc.b	215				
	.dc.b	250				
	.dc.b	76				
						
	.dc.b	46				
						
	.dc.b	216				
	.dc.b	91				
	.dc.b	147				
						
	.dc.b	78				
						
	.dc.b	216				
	.dc.b	188				
	.dc.b	229				
						
	.dc.b	110				
						
	.dc.b	217				
	.dc.b	30				
	.dc.b	66				
						
	.dc.b	110				
						
	.dc.b	217				
	.dc.b	127				
	.dc.b	170				
						
	.dc.b	78				
						
	.dc.b	217				
	.dc.b	225				
	.dc.b	29				
						
	.dc.b	46				
						
	.dc.b	218				
	.dc.b	66				
	.dc.b	154				
						
	.dc.b	238				
						
	.dc.b	218				
	.dc.b	164				
	.dc.b	35				
						
	.dc.b	142				
						
	.dc.b	219				
	.dc.b	5				
	.dc.b	183				
						
	.dc.b	14				
						
	.dc.b	219				
	.dc.b	103				
	.dc.b	85				
						
	.dc.b	78				
						
	.dc.b	219				
	.dc.b	200				
	.dc.b	254				
						
	.dc.b	142				
						
	.dc.b	220				
	.dc.b	42				
	.dc.b	178				
						
	.dc.b	174				
						
	.dc.b	220				
	.dc.b	140				
	.dc.b	113				
						
	.dc.b	174				
						
	.dc.b	220				
	.dc.b	238				
	.dc.b	59				
						
	.dc.b	110				
						
	.dc.b	221				
	.dc.b	80				
	.dc.b	15				
						
	.dc.b	238				
						
	.dc.b	221				
	.dc.b	177				
	.dc.b	239				
						
	.dc.b	110				
						
	.dc.b	222				
	.dc.b	19				
	.dc.b	217				
						
	.dc.b	142				
						
	.dc.b	222				
	.dc.b	117				
	.dc.b	206				
						
	.dc.b	174				
						
	.dc.b	222				
	.dc.b	215				
	.dc.b	206				
						
	.dc.b	110				
						
	.dc.b	223				
	.dc.b	57				
	.dc.b	217				
						
	.dc.b	14				
						
	.dc.b	223				
	.dc.b	155				
	.dc.b	238				
						
	.dc.b	78				
						
	.dc.b	223				
	.dc.b	254				
	.dc.b	14				
						
	.dc.b	110				
						
	.dc.b	224				
	.dc.b	96				
	.dc.b	57				
						
	.dc.b	78				
						
	.dc.b	224				
	.dc.b	194				
	.dc.b	110				
						
	.dc.b	238				
						
	.dc.b	225				
	.dc.b	36				
	.dc.b	175				
						
	.dc.b	78				
						
	.dc.b	225				
	.dc.b	134				
	.dc.b	250				
						
	.dc.b	78				
						
	.dc.b	225				
	.dc.b	233				
	.dc.b	80				
						
	.dc.b	14				
						
	.dc.b	226				
	.dc.b	75				
	.dc.b	176				
						
	.dc.b	142				
						
	.dc.b	226				
	.dc.b	174				
	.dc.b	27				
						
	.dc.b	206				
						
	.dc.b	227				
	.dc.b	16				
	.dc.b	145				
						
	.dc.b	174				
						
	.dc.b	227				
	.dc.b	115				
	.dc.b	18				
						
	.dc.b	46				
						
	.dc.b	227				
	.dc.b	213				
	.dc.b	157				
						
	.dc.b	110				
						
	.dc.b	228				
	.dc.b	56				
	.dc.b	51				
						
	.dc.b	78				
						
	.dc.b	228				
	.dc.b	154				
	.dc.b	211				
						
	.dc.b	206				
						
	.dc.b	228				
	.dc.b	253				
	.dc.b	126				
						
	.dc.b	238				
						
	.dc.b	229				
	.dc.b	96				
	.dc.b	52				
						
	.dc.b	206				
						
	.dc.b	229				
	.dc.b	194				
	.dc.b	245				
						
	.dc.b	46				
						
	.dc.b	230				
	.dc.b	37				
	.dc.b	192				
						
	.dc.b	46				
						
	.dc.b	230				
	.dc.b	136				
	.dc.b	149				
						
	.dc.b	206				
						
	.dc.b	230				
	.dc.b	235				
	.dc.b	118				
						
	.dc.b	14				
						
	.dc.b	231				
	.dc.b	78				
	.dc.b	96				
						
	.dc.b	238				
						
	.dc.b	231				
	.dc.b	177				
	.dc.b	86				
						
	.dc.b	78				
						
	.dc.b	232				
	.dc.b	20				
	.dc.b	86				
						
	.dc.b	78				
						
	.dc.b	232				
	.dc.b	119				
	.dc.b	96				
						
	.dc.b	206				
						
	.dc.b	232				
	.dc.b	218				
	.dc.b	117				
						
	.dc.b	238				
						
	.dc.b	233				
	.dc.b	61				
	.dc.b	149				
						
	.dc.b	142				
						
	.dc.b	233				
	.dc.b	160				
	.dc.b	191				
						
	.dc.b	206				
						
	.dc.b	234				
	.dc.b	3				
	.dc.b	244				
						
	.dc.b	110				
						
	.dc.b	234				
	.dc.b	103				
	.dc.b	51				
						
	.dc.b	174				
						
	.dc.b	234				
	.dc.b	202				
	.dc.b	125				
						
	.dc.b	110				
						
	.dc.b	235				
	.dc.b	45				
	.dc.b	209				
						
	.dc.b	174				
						
	.dc.b	235				
	.dc.b	145				
	.dc.b	48				
						
	.dc.b	110				
						
	.dc.b	235				
	.dc.b	244				
	.dc.b	153				
						
	.dc.b	142				
						
	.dc.b	236				
	.dc.b	88				
	.dc.b	13				
						
	.dc.b	78				
						
	.dc.b	236				
	.dc.b	187				
	.dc.b	139				
						
	.dc.b	110				
						
	.dc.b	237				
	.dc.b	31				
	.dc.b	20				
						
	.dc.b	14				
						
	.dc.b	237				
	.dc.b	130				
	.dc.b	167				
						
	.dc.b	14				
						
	.dc.b	237				
	.dc.b	230				
	.dc.b	68				
						
	.dc.b	142				
						
	.dc.b	238				
	.dc.b	73				
	.dc.b	236				
						
	.dc.b	142				
						
	.dc.b	238				
	.dc.b	173				
	.dc.b	158				
						
	.dc.b	238				
						
	.dc.b	239				
	.dc.b	17				
	.dc.b	91				
						
	.dc.b	174				
						
	.dc.b	239				
	.dc.b	117				
	.dc.b	34				
						
	.dc.b	206				
						
	.dc.b	239				
	.dc.b	216				
	.dc.b	244				
						
	.dc.b	110				
						
	.dc.b	240				
	.dc.b	60				
	.dc.b	208				
						
	.dc.b	110				
						
	.dc.b	240				
	.dc.b	160				
	.dc.b	182				
						
	.dc.b	174				
						
	.dc.b	241				
	.dc.b	4				
	.dc.b	167				
						
	.dc.b	110				
						
	.dc.b	241				
	.dc.b	104				
	.dc.b	162				
						
	.dc.b	142				
						
	.dc.b	241				
	.dc.b	204				
	.dc.b	167				
						
	.dc.b	238				
						
	.dc.b	242				
	.dc.b	48				
	.dc.b	183				
						
	.dc.b	206				
						
	.dc.b	242				
	.dc.b	148				
	.dc.b	209				
						
	.dc.b	238				
						
	.dc.b	242				
	.dc.b	248				
	.dc.b	246				
						
	.dc.b	78				
						
	.dc.b	243				
	.dc.b	93				
	.dc.b	37				
						
	.dc.b	46				
						
	.dc.b	243				
	.dc.b	193				
	.dc.b	94				
						
	.dc.b	46				
						
	.dc.b	244				
	.dc.b	37				
	.dc.b	161				
						
	.dc.b	142				
						
	.dc.b	244				
	.dc.b	137				
	.dc.b	239				
						
	.dc.b	78				
						
	.dc.b	244				
	.dc.b	238				
	.dc.b	71				
						
	.dc.b	78				
						
	.dc.b	245				
	.dc.b	82				
	.dc.b	169				
						
	.dc.b	142				
						
	.dc.b	245				
	.dc.b	183				
	.dc.b	22				
						
	.dc.b	14				
						
	.dc.b	246				
	.dc.b	27				
	.dc.b	140				
						
	.dc.b	238				
						
	.dc.b	246				
	.dc.b	128				
	.dc.b	13				
						
	.dc.b	238				
						
	.dc.b	246				
	.dc.b	228				
	.dc.b	153				
						
	.dc.b	78				
						
	.dc.b	247				
	.dc.b	73				
	.dc.b	46				
						
	.dc.b	206				
						
	.dc.b	247				
	.dc.b	173				
	.dc.b	206				
						
	.dc.b	174				
						
	.dc.b	248				
	.dc.b	18				
	.dc.b	120				
						
	.dc.b	174				
						
	.dc.b	248				
	.dc.b	119				
	.dc.b	44				
						
	.dc.b	238				
						
	.dc.b	248				
	.dc.b	219				
	.dc.b	235				
						
	.dc.b	78				
						
	.dc.b	249				
	.dc.b	64				
	.dc.b	179				
						
	.dc.b	238				
						
	.dc.b	249				
	.dc.b	165				
	.dc.b	134				
						
	.dc.b	206				
						
	.dc.b	250				
	.dc.b	10				
	.dc.b	99				
						
	.dc.b	206				
						
	.dc.b	250				
	.dc.b	111				
	.dc.b	74				
						
	.dc.b	238				
						
	.dc.b	250				
	.dc.b	212				
	.dc.b	60				
						
	.dc.b	78				
						
	.dc.b	251				
	.dc.b	57				
	.dc.b	55				
						
	.dc.b	206				
						
	.dc.b	251				
	.dc.b	158				
	.dc.b	61				
						
	.dc.b	142				
						
	.dc.b	252				
	.dc.b	3				
	.dc.b	77				
						
	.dc.b	78				
						
	.dc.b	252				
	.dc.b	104				
	.dc.b	103				
						
	.dc.b	78				
						
	.dc.b	252				
	.dc.b	205				
	.dc.b	139				
						
	.dc.b	78				
						
	.dc.b	253				
	.dc.b	50				
	.dc.b	185				
						
	.dc.b	142				
						
	.dc.b	253				
	.dc.b	151				
	.dc.b	241				
						
	.dc.b	206				
						
	.dc.b	253				
	.dc.b	253				
	.dc.b	52				
						
	.dc.b	46				
						
	.dc.b	254				
	.dc.b	98				
	.dc.b	128				
						
	.dc.b	174				
						
	.dc.b	254				
	.dc.b	199				
	.dc.b	215				
						
	.dc.b	78				
						
	.dc.b	255				
	.dc.b	45				
	.dc.b	56				
						
	.dc.b	14				
						
	.dc.b	255				
	.dc.b	146				
	.dc.b	162				
						
	.dc.b	206				
						
	.dc.b	255				
	.dc.b	248				
	.dc.b	23				
						
	.dc.b	142				
						
	.dc.b	128				
	.dc.b	46				
	.dc.b	203				
						
	.dc.b	47				
						
	.dc.b	128				
	.dc.b	97				
	.dc.b	143				
						
	.dc.b	175				
						
	.dc.b	128				
	.dc.b	148				
	.dc.b	89				
						
	.dc.b	47				
						
	.dc.b	128				
	.dc.b	199				
	.dc.b	39				
						
	.dc.b	175				
						
	.dc.b	128				
	.dc.b	249				
	.dc.b	251				
						
	.dc.b	47				
						
	.dc.b	129				
	.dc.b	44				
	.dc.b	211				
						
	.dc.b	175				
						
	.dc.b	129				
	.dc.b	95				
	.dc.b	177				
						
	.dc.b	47				
						
	.dc.b	129				
	.dc.b	146				
	.dc.b	147				
						
	.dc.b	207				
						
	.dc.b	129				
	.dc.b	197				
	.dc.b	123				
						
	.dc.b	79				
						
	.dc.b	129				
	.dc.b	248				
	.dc.b	103				
						
	.dc.b	207				
						
	.dc.b	130				
	.dc.b	43				
	.dc.b	89				
						
	.dc.b	79				
						
	.dc.b	130				
	.dc.b	94				
	.dc.b	79				
						
	.dc.b	207				
						
	.dc.b	130				
	.dc.b	145				
	.dc.b	75				
						
	.dc.b	79				
						
	.dc.b	130				
	.dc.b	196				
	.dc.b	75				
						
	.dc.b	175				
						
	.dc.b	130				
	.dc.b	247				
	.dc.b	81				
						
	.dc.b	47				
						
	.dc.b	131				
	.dc.b	42				
	.dc.b	91				
						
	.dc.b	143				
						
	.dc.b	131				
	.dc.b	93				
	.dc.b	106				
						
	.dc.b	239				
						
	.dc.b	131				
	.dc.b	144				
	.dc.b	127				
						
	.dc.b	79				
						
	.dc.b	131				
	.dc.b	195				
	.dc.b	152				
						
	.dc.b	143				
						
	.dc.b	131				
	.dc.b	246				
	.dc.b	182				
						
	.dc.b	207				
						
	.dc.b	132				
	.dc.b	41				
	.dc.b	218				
						
	.dc.b	15				
						
	.dc.b	132				
	.dc.b	93				
	.dc.b	2				
						
	.dc.b	47				
						
	.dc.b	132				
	.dc.b	144				
	.dc.b	47				
						
	.dc.b	47				
						
	.dc.b	132				
	.dc.b	195				
	.dc.b	97				
						
	.dc.b	79				
						
	.dc.b	132				
	.dc.b	246				
	.dc.b	152				
						
	.dc.b	79				
						
	.dc.b	133				
	.dc.b	41				
	.dc.b	212				
						
	.dc.b	47				
						
	.dc.b	133				
	.dc.b	93				
	.dc.b	20				
						
	.dc.b	239				
						
	.dc.b	133				
	.dc.b	144				
	.dc.b	90				
						
	.dc.b	207				
						
	.dc.b	133				
	.dc.b	195				
	.dc.b	165				
						
	.dc.b	111				
						
	.dc.b	133				
	.dc.b	246				
	.dc.b	245				
						
	.dc.b	15				
						
	.dc.b	134				
	.dc.b	42				
	.dc.b	73				
						
	.dc.b	143				
						
	.dc.b	134				
	.dc.b	93				
	.dc.b	162				
						
	.dc.b	239				
						
	.dc.b	134				
	.dc.b	145				
	.dc.b	1				
						
	.dc.b	79				
						
	.dc.b	134				
	.dc.b	196				
	.dc.b	100				
						
	.dc.b	143				
						
	.dc.b	134				
	.dc.b	247				
	.dc.b	204				
						
	.dc.b	175				
						
	.dc.b	135				
	.dc.b	43				
	.dc.b	57				
						
	.dc.b	175				
						
	.dc.b	135				
	.dc.b	94				
	.dc.b	171				
						
	.dc.b	175				
						
	.dc.b	135				
	.dc.b	146				
	.dc.b	34				
						
	.dc.b	111				
						
	.dc.b	135				
	.dc.b	197				
	.dc.b	158				
						
	.dc.b	47				
						
	.dc.b	135				
	.dc.b	249				
	.dc.b	30				
						
	.dc.b	207				
						
	.dc.b	136				
	.dc.b	44				
	.dc.b	164				
						
	.dc.b	79				
						
	.dc.b	136				
	.dc.b	96				
	.dc.b	46				
						
	.dc.b	143				
						
	.dc.b	136				
	.dc.b	147				
	.dc.b	189				
						
	.dc.b	207				
						
	.dc.b	136				
	.dc.b	199				
	.dc.b	81				
						
	.dc.b	239				
						
	.dc.b	136				
	.dc.b	250				
	.dc.b	234				
						
	.dc.b	207				
						
	.dc.b	137				
	.dc.b	46				
	.dc.b	136				
						
	.dc.b	175				
						
	.dc.b	137				
	.dc.b	98				
	.dc.b	43				
						
	.dc.b	79				
						
	.dc.b	137				
	.dc.b	149				
	.dc.b	210				
						
	.dc.b	207				
						
	.dc.b	137				
	.dc.b	201				
	.dc.b	127				
						
	.dc.b	47				
						
	.dc.b	137				
	.dc.b	253				
	.dc.b	48				
						
	.dc.b	111				
						
	.dc.b	138				
	.dc.b	48				
	.dc.b	230				
						
	.dc.b	111				
						
	.dc.b	138				
	.dc.b	100				
	.dc.b	161				
						
	.dc.b	79				
						
	.dc.b	138				
	.dc.b	152				
	.dc.b	97				
						
	.dc.b	15				
						
	.dc.b	138				
	.dc.b	204				
	.dc.b	37				
						
	.dc.b	175				
						
	.dc.b	138				
	.dc.b	255				
	.dc.b	239				
						
	.dc.b	15				
						
	.dc.b	139				
	.dc.b	51				
	.dc.b	189				
						
	.dc.b	79				
						
	.dc.b	139				
	.dc.b	103				
	.dc.b	144				
						
	.dc.b	79				
						
	.dc.b	139				
	.dc.b	155				
	.dc.b	104				
						
	.dc.b	47				
						
	.dc.b	139				
	.dc.b	207				
	.dc.b	68				
						
	.dc.b	207				
						
	.dc.b	140				
	.dc.b	3				
	.dc.b	38				
						
	.dc.b	79				
						
	.dc.b	140				
	.dc.b	55				
	.dc.b	12				
						
	.dc.b	143				
						
	.dc.b	140				
	.dc.b	106				
	.dc.b	247				
						
	.dc.b	175				
						
	.dc.b	140				
	.dc.b	158				
	.dc.b	231				
						
	.dc.b	143				
						
	.dc.b	140				
	.dc.b	210				
	.dc.b	220				
						
	.dc.b	79				
						
	.dc.b	141				
	.dc.b	6				
	.dc.b	213				
						
	.dc.b	207				
						
	.dc.b	141				
	.dc.b	58				
	.dc.b	212				
						
	.dc.b	15				
						
	.dc.b	141				
	.dc.b	110				
	.dc.b	215				
						
	.dc.b	47				
						
	.dc.b	141				
	.dc.b	162				
	.dc.b	222				
						
	.dc.b	239				
						
	.dc.b	141				
	.dc.b	214				
	.dc.b	235				
						
	.dc.b	143				
						
	.dc.b	142				
	.dc.b	10				
	.dc.b	253				
						
	.dc.b	15				
						
	.dc.b	142				
	.dc.b	63				
	.dc.b	19				
						
	.dc.b	47				
						
	.dc.b	142				
	.dc.b	115				
	.dc.b	46				
						
	.dc.b	47				
						
	.dc.b	142				
	.dc.b	167				
	.dc.b	77				
						
	.dc.b	239				
						
	.dc.b	142				
	.dc.b	219				
	.dc.b	114				
						
	.dc.b	79				
						
	.dc.b	143				
	.dc.b	15				
	.dc.b	155				
						
	.dc.b	143				
						
	.dc.b	143				
	.dc.b	67				
	.dc.b	201				
						
	.dc.b	143				
						
	.dc.b	143				
	.dc.b	119				
	.dc.b	252				
						
	.dc.b	79				
						
	.dc.b	143				
	.dc.b	172				
	.dc.b	51				
						
	.dc.b	207				
						
	.dc.b	143				
	.dc.b	224				
	.dc.b	112				
						
	.dc.b	15				
						
	.dc.b	144				
	.dc.b	20				
	.dc.b	177				
						
	.dc.b	15				
						
	.dc.b	144				
	.dc.b	72				
	.dc.b	246				
						
	.dc.b	207				
						
	.dc.b	144				
	.dc.b	125				
	.dc.b	65				
						
	.dc.b	79				
						
	.dc.b	144				
	.dc.b	177				
	.dc.b	144				
						
	.dc.b	111				
						
	.dc.b	144				
	.dc.b	229				
	.dc.b	228				
						
	.dc.b	79				
						
	.dc.b	145				
	.dc.b	26				
	.dc.b	61				
						
	.dc.b	15				
						
	.dc.b	145				
	.dc.b	78				
	.dc.b	154				
						
	.dc.b	111				
						
	.dc.b	145				
	.dc.b	130				
	.dc.b	252				
						
	.dc.b	111				
						
	.dc.b	145				
	.dc.b	183				
	.dc.b	99				
						
	.dc.b	79				
						
	.dc.b	145				
	.dc.b	235				
	.dc.b	206				
						
	.dc.b	207				
						
	.dc.b	146				
	.dc.b	32				
	.dc.b	63				
						
	.dc.b	15				
						
	.dc.b	146				
	.dc.b	84				
	.dc.b	179				
						
	.dc.b	239				
						
	.dc.b	146				
	.dc.b	137				
	.dc.b	45				
						
	.dc.b	143				
						
	.dc.b	146				
	.dc.b	189				
	.dc.b	171				
						
	.dc.b	239				
						
	.dc.b	146				
	.dc.b	242				
	.dc.b	46				
						
	.dc.b	239				
						
	.dc.b	147				
	.dc.b	38				
	.dc.b	182				
						
	.dc.b	175				
						
	.dc.b	147				
	.dc.b	91				
	.dc.b	67				
						
	.dc.b	47				
						
	.dc.b	147				
	.dc.b	143				
	.dc.b	212				
						
	.dc.b	47				
						
	.dc.b	147				
	.dc.b	196				
	.dc.b	106				
						
	.dc.b	15				
						
	.dc.b	147				
	.dc.b	249				
	.dc.b	4				
						
	.dc.b	143				
						
	.dc.b	148				
	.dc.b	45				
	.dc.b	163				
						
	.dc.b	175				
						
	.dc.b	148				
	.dc.b	98				
	.dc.b	71				
						
	.dc.b	111				
						
	.dc.b	148				
	.dc.b	150				
	.dc.b	239				
						
	.dc.b	239				
						
	.dc.b	148				
	.dc.b	203				
	.dc.b	157				
						
	.dc.b	15				
						
	.dc.b	149				
	.dc.b	0				
	.dc.b	78				
						
	.dc.b	239				
						
	.dc.b	149				
	.dc.b	53				
	.dc.b	5				
						
	.dc.b	111				
						
	.dc.b	149				
	.dc.b	105				
	.dc.b	192				
						
	.dc.b	143				
						
	.dc.b	149				
	.dc.b	158				
	.dc.b	128				
						
	.dc.b	79				
						
	.dc.b	149				
	.dc.b	211				
	.dc.b	68				
						
	.dc.b	207				
						
	.dc.b	150				
	.dc.b	8				
	.dc.b	13				
						
	.dc.b	207				
						
	.dc.b	150				
	.dc.b	60				
	.dc.b	219				
						
	.dc.b	143				
						
	.dc.b	150				
	.dc.b	113				
	.dc.b	173				
						
	.dc.b	239				
						
	.dc.b	150				
	.dc.b	166				
	.dc.b	132				
						
	.dc.b	239				
						
	.dc.b	150				
	.dc.b	219				
	.dc.b	96				
						
	.dc.b	175				
						
	.dc.b	151				
	.dc.b	16				
	.dc.b	64				
						
	.dc.b	239				
						
	.dc.b	151				
	.dc.b	69				
	.dc.b	37				
						
	.dc.b	207				
						
	.dc.b	151				
	.dc.b	122				
	.dc.b	15				
						
	.dc.b	79				
						
	.dc.b	151				
	.dc.b	174				
	.dc.b	253				
						
	.dc.b	143				
						
	.dc.b	151				
	.dc.b	227				
	.dc.b	240				
						
	.dc.b	79				
						
	.dc.b	152				
	.dc.b	24				
	.dc.b	231				
						
	.dc.b	175				
						
	.dc.b	152				
	.dc.b	77				
	.dc.b	227				
						
	.dc.b	175				
						
	.dc.b	152				
	.dc.b	130				
	.dc.b	228				
						
	.dc.b	79				
						
	.dc.b	152				
	.dc.b	183				
	.dc.b	233				
						
	.dc.b	143				
						
	.dc.b	152				
	.dc.b	236				
	.dc.b	243				
						
	.dc.b	79				
						
	.dc.b	153				
	.dc.b	34				
	.dc.b	1				
						
	.dc.b	175				
						
	.dc.b	153				
	.dc.b	87				
	.dc.b	20				
						
	.dc.b	207				
						
	.dc.b	153				
	.dc.b	140				
	.dc.b	44				
						
	.dc.b	111				
						
	.dc.b	153				
	.dc.b	193				
	.dc.b	72				
						
	.dc.b	143				
						
	.dc.b	153				
	.dc.b	246				
	.dc.b	105				
						
	.dc.b	111				
						
	.dc.b	154				
	.dc.b	43				
	.dc.b	142				
						
	.dc.b	207				
						
	.dc.b	154				
	.dc.b	96				
	.dc.b	184				
						
	.dc.b	175				
						
	.dc.b	154				
	.dc.b	149				
	.dc.b	231				
						
	.dc.b	79				
						
	.dc.b	154				
	.dc.b	203				
	.dc.b	26				
						
	.dc.b	79				
						
	.dc.b	155				
	.dc.b	0				
	.dc.b	82				
						
	.dc.b	15				
						
	.dc.b	155				
	.dc.b	53				
	.dc.b	142				
						
	.dc.b	79				
						
	.dc.b	155				
	.dc.b	106				
	.dc.b	207				
						
	.dc.b	47				
						
	.dc.b	155				
	.dc.b	160				
	.dc.b	20				
						
	.dc.b	143				
						
	.dc.b	155				
	.dc.b	213				
	.dc.b	94				
						
	.dc.b	111				
						
	.dc.b	156				
	.dc.b	10				
	.dc.b	172				
						
	.dc.b	239				
						
	.dc.b	156				
	.dc.b	64				
	.dc.b	0				
						
	.dc.b	15				
						
	.dc.b	156				
	.dc.b	117				
	.dc.b	87				
						
	.dc.b	175				
						
	.dc.b	156				
	.dc.b	170				
	.dc.b	179				
						
	.dc.b	207				
						
	.dc.b	156				
	.dc.b	224				
	.dc.b	20				
						
	.dc.b	111				
						
	.dc.b	157				
	.dc.b	21				
	.dc.b	121				
						
	.dc.b	175				
						
	.dc.b	157				
	.dc.b	74				
	.dc.b	227				
						
	.dc.b	143				
						
	.dc.b	157				
	.dc.b	128				
	.dc.b	81				
						
	.dc.b	207				
						
	.dc.b	157				
	.dc.b	181				
	.dc.b	196				
						
	.dc.b	175				
						
	.dc.b	157				
	.dc.b	235				
	.dc.b	60				
						
	.dc.b	15				
						
	.dc.b	158				
	.dc.b	32				
	.dc.b	183				
						
	.dc.b	239				
						
	.dc.b	158				
	.dc.b	86				
	.dc.b	56				
						
	.dc.b	111				
						
	.dc.b	158				
	.dc.b	139				
	.dc.b	189				
						
	.dc.b	79				
						
	.dc.b	158				
	.dc.b	193				
	.dc.b	70				
						
	.dc.b	207				
						
	.dc.b	158				
	.dc.b	246				
	.dc.b	212				
						
	.dc.b	207				
						
	.dc.b	159				
	.dc.b	44				
	.dc.b	103				
						
	.dc.b	79				
						
	.dc.b	159				
	.dc.b	97				
	.dc.b	254				
						
	.dc.b	79				
						
	.dc.b	159				
	.dc.b	151				
	.dc.b	153				
						
	.dc.b	207				
						
	.dc.b	159				
	.dc.b	205				
	.dc.b	57				
						
	.dc.b	207				
						
	.dc.b	160				
	.dc.b	2				
	.dc.b	222				
						
	.dc.b	111				
						
	.dc.b	160				
	.dc.b	56				
	.dc.b	135				
						
	.dc.b	111				
						
	.dc.b	160				
	.dc.b	110				
	.dc.b	52				
						
	.dc.b	239				
						
	.dc.b	160				
	.dc.b	163				
	.dc.b	230				
						
	.dc.b	239				
						
	.dc.b	160				
	.dc.b	217				
	.dc.b	157				
						
	.dc.b	111				
						
	.dc.b	161				
	.dc.b	15				
	.dc.b	88				
						
	.dc.b	79				
						
	.dc.b	161				
	.dc.b	69				
	.dc.b	23				
						
	.dc.b	207				
						
	.dc.b	161				
	.dc.b	122				
	.dc.b	219				
						
	.dc.b	207				
						
	.dc.b	161				
	.dc.b	176				
	.dc.b	164				
						
	.dc.b	47				
						
	.dc.b	161				
	.dc.b	230				
	.dc.b	113				
						
	.dc.b	15				
						
	.dc.b	162				
	.dc.b	28				
	.dc.b	66				
						
	.dc.b	111				
						
	.dc.b	162				
	.dc.b	82				
	.dc.b	24				
						
	.dc.b	79				
						
	.dc.b	162				
	.dc.b	135				
	.dc.b	242				
						
	.dc.b	143				
						
	.dc.b	162				
	.dc.b	189				
	.dc.b	209				
						
	.dc.b	79				
						
	.dc.b	162				
	.dc.b	243				
	.dc.b	180				
						
	.dc.b	143				
						
	.dc.b	163				
	.dc.b	41				
	.dc.b	156				
						
	.dc.b	47				
						
	.dc.b	163				
	.dc.b	95				
	.dc.b	136				
						
	.dc.b	79				
						
	.dc.b	163				
	.dc.b	149				
	.dc.b	120				
						
	.dc.b	239				
						
	.dc.b	163				
	.dc.b	203				
	.dc.b	109				
						
	.dc.b	239				
						
	.dc.b	164				
	.dc.b	1				
	.dc.b	103				
						
	.dc.b	79				
						
	.dc.b	164				
	.dc.b	55				
	.dc.b	101				
						
	.dc.b	79				
						
	.dc.b	164				
	.dc.b	109				
	.dc.b	103				
						
	.dc.b	175				
						
	.dc.b	164				
	.dc.b	163				
	.dc.b	110				
						
	.dc.b	111				
						
	.dc.b	164				
	.dc.b	217				
	.dc.b	121				
						
	.dc.b	175				
						
	.dc.b	165				
	.dc.b	15				
	.dc.b	137				
						
	.dc.b	79				
						
	.dc.b	165				
	.dc.b	69				
	.dc.b	157				
						
	.dc.b	79				
						
	.dc.b	165				
	.dc.b	123				
	.dc.b	181				
						
	.dc.b	207				
						
	.dc.b	165				
	.dc.b	177				
	.dc.b	210				
						
	.dc.b	207				
						
	.dc.b	165				
	.dc.b	231				
	.dc.b	244				
						
	.dc.b	47				
						
	.dc.b	166				
	.dc.b	30				
	.dc.b	25				
						
	.dc.b	239				
						
	.dc.b	166				
	.dc.b	84				
	.dc.b	68				
						
	.dc.b	15				
						
	.dc.b	166				
	.dc.b	138				
	.dc.b	114				
						
	.dc.b	175				
						
	.dc.b	166				
	.dc.b	192				
	.dc.b	165				
						
	.dc.b	175				
						
	.dc.b	166				
	.dc.b	246				
	.dc.b	221				
						
	.dc.b	15				
						
	.dc.b	167				
	.dc.b	45				
	.dc.b	24				
						
	.dc.b	207				
						
	.dc.b	167				
	.dc.b	99				
	.dc.b	89				
						
	.dc.b	15				
						
	.dc.b	167				
	.dc.b	153				
	.dc.b	157				
						
	.dc.b	175				
						
	.dc.b	167				
	.dc.b	207				
	.dc.b	230				
						
	.dc.b	175				
						
	.dc.b	168				
	.dc.b	6				
	.dc.b	52				
						
	.dc.b	15				
						
	.dc.b	168				
	.dc.b	60				
	.dc.b	133				
						
	.dc.b	207				
						
	.dc.b	168				
	.dc.b	114				
	.dc.b	219				
						
	.dc.b	239				
						
	.dc.b	168				
	.dc.b	169				
	.dc.b	54				
						
	.dc.b	143				
						
	.dc.b	168				
	.dc.b	223				
	.dc.b	149				
						
	.dc.b	111				
						
	.dc.b	169				
	.dc.b	21				
	.dc.b	248				
						
	.dc.b	207				
						
	.dc.b	169				
	.dc.b	76				
	.dc.b	96				
						
	.dc.b	111				
						
	.dc.b	169				
	.dc.b	130				
	.dc.b	204				
						
	.dc.b	111				
						
	.dc.b	169				
	.dc.b	185				
	.dc.b	60				
						
	.dc.b	239				
						
	.dc.b	169				
	.dc.b	239				
	.dc.b	177				
						
	.dc.b	175				
						
	.dc.b	170				
	.dc.b	38				
	.dc.b	42				
						
	.dc.b	207				
						
	.dc.b	170				
	.dc.b	92				
	.dc.b	168				
						
	.dc.b	79				
						
	.dc.b	170				
	.dc.b	147				
	.dc.b	42				
						
	.dc.b	47				
						
	.dc.b	170				
	.dc.b	201				
	.dc.b	176				
						
	.dc.b	111				
						
	.dc.b	171				
	.dc.b	0				
	.dc.b	59				
						
	.dc.b	15				
						
	.dc.b	171				
	.dc.b	54				
	.dc.b	201				
						
	.dc.b	239				
						
	.dc.b	171				
	.dc.b	109				
	.dc.b	93				
						
	.dc.b	47				
						
	.dc.b	171				
	.dc.b	163				
	.dc.b	244				
						
	.dc.b	207				
						
	.dc.b	171				
	.dc.b	218				
	.dc.b	144				
						
	.dc.b	207				
						
	.dc.b	172				
	.dc.b	17				
	.dc.b	49				
						
	.dc.b	15				
						
	.dc.b	172				
	.dc.b	71				
	.dc.b	213				
						
	.dc.b	175				
						
	.dc.b	172				
	.dc.b	126				
	.dc.b	126				
						
	.dc.b	175				
						
	.dc.b	172				
	.dc.b	181				
	.dc.b	44				
						
	.dc.b	15				
						
	.dc.b	172				
	.dc.b	235				
	.dc.b	221				
						
	.dc.b	175				
						
	.dc.b	173				
	.dc.b	34				
	.dc.b	147				
						
	.dc.b	143				
						
	.dc.b	173				
	.dc.b	89				
	.dc.b	77				
						
	.dc.b	239				
						
	.dc.b	173				
	.dc.b	144				
	.dc.b	12				
						
	.dc.b	143				
						
	.dc.b	173				
	.dc.b	198				
	.dc.b	207				
						
	.dc.b	111				
						
	.dc.b	173				
	.dc.b	253				
	.dc.b	150				
						
	.dc.b	175				
						
	.dc.b	174				
	.dc.b	52				
	.dc.b	98				
						
	.dc.b	47				
						
	.dc.b	174				
	.dc.b	107				
	.dc.b	50				
						
	.dc.b	15				
						
	.dc.b	174				
	.dc.b	162				
	.dc.b	6				
						
	.dc.b	79				
						
	.dc.b	174				
	.dc.b	216				
	.dc.b	222				
						
	.dc.b	175				
						
	.dc.b	175				
	.dc.b	15				
	.dc.b	187				
						
	.dc.b	143				
						
	.dc.b	175				
	.dc.b	70				
	.dc.b	156				
						
	.dc.b	143				
						
	.dc.b	175				
	.dc.b	125				
	.dc.b	129				
						
	.dc.b	239				
						
	.dc.b	175				
	.dc.b	180				
	.dc.b	107				
						
	.dc.b	175				
						
	.dc.b	175				
	.dc.b	235				
	.dc.b	89				
						
	.dc.b	143				
						
	.dc.b	176				
	.dc.b	34				
	.dc.b	75				
						
	.dc.b	207				
						
	.dc.b	176				
	.dc.b	89				
	.dc.b	66				
						
	.dc.b	79				
						
	.dc.b	176				
	.dc.b	144				
	.dc.b	61				
						
	.dc.b	47				
						
	.dc.b	176				
	.dc.b	199				
	.dc.b	60				
						
	.dc.b	79				
						
	.dc.b	176				
	.dc.b	254				
	.dc.b	63				
						
	.dc.b	175				
						
	.dc.b	177				
	.dc.b	53				
	.dc.b	71				
						
	.dc.b	79				
						
	.dc.b	177				
	.dc.b	108				
	.dc.b	83				
						
	.dc.b	79				
						
	.dc.b	177				
	.dc.b	163				
	.dc.b	99				
						
	.dc.b	111				
						
	.dc.b	177				
	.dc.b	218				
	.dc.b	119				
						
	.dc.b	239				
						
	.dc.b	178				
	.dc.b	17				
	.dc.b	144				
						
	.dc.b	175				
						
	.dc.b	178				
	.dc.b	72				
	.dc.b	173				
						
	.dc.b	175				
						
	.dc.b	178				
	.dc.b	127				
	.dc.b	206				
						
	.dc.b	239				
						
	.dc.b	178				
	.dc.b	182				
	.dc.b	244				
						
	.dc.b	111				
						
	.dc.b	178				
	.dc.b	238				
	.dc.b	30				
						
	.dc.b	47				
						
	.dc.b	179				
	.dc.b	37				
	.dc.b	76				
						
	.dc.b	47				
						
	.dc.b	179				
	.dc.b	92				
	.dc.b	126				
						
	.dc.b	111				
						
	.dc.b	179				
	.dc.b	147				
	.dc.b	181				
						
	.dc.b	15				
						
	.dc.b	179				
	.dc.b	202				
	.dc.b	239				
						
	.dc.b	207				
						
	.dc.b	180				
	.dc.b	2				
	.dc.b	46				
						
	.dc.b	207				
						
	.dc.b	180				
	.dc.b	57				
	.dc.b	114				
						
	.dc.b	15				
						
	.dc.b	180				
	.dc.b	112				
	.dc.b	185				
						
	.dc.b	143				
						
	.dc.b	180				
	.dc.b	168				
	.dc.b	5				
						
	.dc.b	79				
						
	.dc.b	180				
	.dc.b	223				
	.dc.b	85				
						
	.dc.b	47				
						
	.dc.b	181				
	.dc.b	22				
	.dc.b	169				
						
	.dc.b	111				
						
	.dc.b	181				
	.dc.b	78				
	.dc.b	1				
						
	.dc.b	207				
						
	.dc.b	181				
	.dc.b	133				
	.dc.b	94				
						
	.dc.b	111				
						
	.dc.b	181				
	.dc.b	188				
	.dc.b	191				
						
	.dc.b	79				
						
	.dc.b	181				
	.dc.b	244				
	.dc.b	36				
						
	.dc.b	111				
						
	.dc.b	182				
	.dc.b	43				
	.dc.b	141				
						
	.dc.b	175				
						
	.dc.b	182				
	.dc.b	98				
	.dc.b	251				
						
	.dc.b	47				
						
	.dc.b	182				
	.dc.b	154				
	.dc.b	108				
						
	.dc.b	239				
						
	.dc.b	182				
	.dc.b	209				
	.dc.b	226				
						
	.dc.b	207				
						
	.dc.b	183				
	.dc.b	9				
	.dc.b	92				
						
	.dc.b	239				
						
	.dc.b	183				
	.dc.b	64				
	.dc.b	219				
						
	.dc.b	79				
						
	.dc.b	183				
	.dc.b	120				
	.dc.b	93				
						
	.dc.b	239				
						
	.dc.b	183				
	.dc.b	175				
	.dc.b	228				
						
	.dc.b	175				
						
	.dc.b	183				
	.dc.b	231				
	.dc.b	111				
						
	.dc.b	143				
						
	.dc.b	184				
	.dc.b	30				
	.dc.b	254				
						
	.dc.b	175				
						
	.dc.b	184				
	.dc.b	86				
	.dc.b	146				
						
	.dc.b	15				
						
	.dc.b	184				
	.dc.b	142				
	.dc.b	41				
						
	.dc.b	143				
						
	.dc.b	184				
	.dc.b	197				
	.dc.b	197				
						
	.dc.b	79				
						
	.dc.b	184				
	.dc.b	253				
	.dc.b	101				
						
	.dc.b	47				
						
	.dc.b	185				
	.dc.b	53				
	.dc.b	9				
						
	.dc.b	79				
						
	.dc.b	185				
	.dc.b	108				
	.dc.b	177				
						
	.dc.b	143				
						
	.dc.b	185				
	.dc.b	164				
	.dc.b	93				
						
	.dc.b	239				
						
	.dc.b	185				
	.dc.b	220				
	.dc.b	14				
						
	.dc.b	143				
						
	.dc.b	186				
	.dc.b	19				
	.dc.b	195				
						
	.dc.b	111				
						
	.dc.b	186				
	.dc.b	75				
	.dc.b	124				
						
	.dc.b	79				
						
	.dc.b	186				
	.dc.b	131				
	.dc.b	57				
						
	.dc.b	111				
						
	.dc.b	186				
	.dc.b	186				
	.dc.b	250				
						
	.dc.b	175				
						
	.dc.b	186				
	.dc.b	242				
	.dc.b	192				
						
	.dc.b	47				
						
	.dc.b	187				
	.dc.b	42				
	.dc.b	137				
						
	.dc.b	207				
						
	.dc.b	187				
	.dc.b	98				
	.dc.b	87				
						
	.dc.b	143				
						
	.dc.b	187				
	.dc.b	154				
	.dc.b	41				
						
	.dc.b	143				
						
	.dc.b	187				
	.dc.b	209				
	.dc.b	255				
						
	.dc.b	143				
						
	.dc.b	188				
	.dc.b	9				
	.dc.b	217				
						
	.dc.b	207				
						
	.dc.b	188				
	.dc.b	65				
	.dc.b	184				
						
	.dc.b	47				
						
	.dc.b	188				
	.dc.b	121				
	.dc.b	154				
						
	.dc.b	175				
						
	.dc.b	188				
	.dc.b	177				
	.dc.b	129				
						
	.dc.b	111				
						
	.dc.b	188				
	.dc.b	233				
	.dc.b	108				
						
	.dc.b	47				
						
	.dc.b	189				
	.dc.b	33				
	.dc.b	91				
						
	.dc.b	47				
						
	.dc.b	189				
	.dc.b	89				
	.dc.b	78				
						
	.dc.b	79				
						
	.dc.b	189				
	.dc.b	145				
	.dc.b	69				
						
	.dc.b	111				
						
	.dc.b	189				
	.dc.b	201				
	.dc.b	64				
						
	.dc.b	207				
						
	.dc.b	190				
	.dc.b	1				
	.dc.b	64				
						
	.dc.b	79				
						
	.dc.b	190				
	.dc.b	57				
	.dc.b	67				
						
	.dc.b	239				
						
	.dc.b	190				
	.dc.b	113				
	.dc.b	75				
						
	.dc.b	175				
						
	.dc.b	190				
	.dc.b	169				
	.dc.b	87				
						
	.dc.b	143				
						
	.dc.b	190				
	.dc.b	225				
	.dc.b	103				
						
	.dc.b	143				
						
	.dc.b	191				
	.dc.b	25				
	.dc.b	123				
						
	.dc.b	143				
						
	.dc.b	191				
	.dc.b	81				
	.dc.b	147				
						
	.dc.b	207				
						
	.dc.b	191				
	.dc.b	137				
	.dc.b	176				
						
	.dc.b	47				
						
	.dc.b	191				
	.dc.b	193				
	.dc.b	208				
						
	.dc.b	143				
						
	.dc.b	191				
	.dc.b	249				
	.dc.b	245				
						
	.dc.b	15				
						
	.dc.b	192				
	.dc.b	50				
	.dc.b	29				
						
	.dc.b	207				
						
	.dc.b	192				
	.dc.b	106				
	.dc.b	74				
						
	.dc.b	143				
						
	.dc.b	192				
	.dc.b	162				
	.dc.b	123				
						
	.dc.b	79				
						
	.dc.b	192				
	.dc.b	218				
	.dc.b	176				
						
	.dc.b	79				
						
	.dc.b	193				
	.dc.b	18				
	.dc.b	233				
						
	.dc.b	79				
						
	.dc.b	193				
	.dc.b	75				
	.dc.b	38				
						
	.dc.b	143				
						
	.dc.b	193				
	.dc.b	131				
	.dc.b	103				
						
	.dc.b	175				
						
	.dc.b	193				
	.dc.b	187				
	.dc.b	173				
						
	.dc.b	15				
						
	.dc.b	193				
	.dc.b	243				
	.dc.b	246				
						
	.dc.b	111				
						
	.dc.b	194				
	.dc.b	44				
	.dc.b	67				
						
	.dc.b	239				
						
	.dc.b	194				
	.dc.b	100				
	.dc.b	149				
						
	.dc.b	143				
						
	.dc.b	194				
	.dc.b	156				
	.dc.b	235				
						
	.dc.b	47				
						
	.dc.b	194				
	.dc.b	213				
	.dc.b	68				
						
	.dc.b	239				
						
	.dc.b	195				
	.dc.b	13				
	.dc.b	162				
						
	.dc.b	207				
						
	.dc.b	195				
	.dc.b	70				
	.dc.b	4				
						
	.dc.b	175				
						
	.dc.b	195				
	.dc.b	126				
	.dc.b	106				
						
	.dc.b	143				
						
	.dc.b	195				
	.dc.b	182				
	.dc.b	212				
						
	.dc.b	175				
						
	.dc.b	195				
	.dc.b	239				
	.dc.b	66				
						
	.dc.b	175				
						
	.dc.b	196				
	.dc.b	39				
	.dc.b	180				
						
	.dc.b	239				
						
	.dc.b	196				
	.dc.b	96				
	.dc.b	43				
						
	.dc.b	15				
						
	.dc.b	196				
	.dc.b	152				
	.dc.b	165				
						
	.dc.b	79				
						
	.dc.b	196				
	.dc.b	209				
	.dc.b	35				
						
	.dc.b	175				
						
	.dc.b	197				
	.dc.b	9				
	.dc.b	166				
						
	.dc.b	15				
						
	.dc.b	197				
	.dc.b	66				
	.dc.b	44				
						
	.dc.b	143				
						
	.dc.b	197				
	.dc.b	122				
	.dc.b	183				
						
	.dc.b	15				
						
	.dc.b	197				
	.dc.b	179				
	.dc.b	69				
						
	.dc.b	143				
						
	.dc.b	197				
	.dc.b	235				
	.dc.b	216				
						
	.dc.b	47				
						
	.dc.b	198				
	.dc.b	36				
	.dc.b	110				
						
	.dc.b	207				
						
	.dc.b	198				
	.dc.b	93				
	.dc.b	9				
						
	.dc.b	111				
						
	.dc.b	198				
	.dc.b	149				
	.dc.b	168				
						
	.dc.b	47				
						
	.dc.b	198				
	.dc.b	206				
	.dc.b	74				
						
	.dc.b	239				
						
	.dc.b	199				
	.dc.b	6				
	.dc.b	241				
						
	.dc.b	175				
						
	.dc.b	199				
	.dc.b	63				
	.dc.b	156				
						
	.dc.b	143				
						
	.dc.b	199				
	.dc.b	120				
	.dc.b	75				
						
	.dc.b	111				
						
	.dc.b	199				
	.dc.b	176				
	.dc.b	254				
						
	.dc.b	79				
						
	.dc.b	199				
	.dc.b	233				
	.dc.b	181				
						
	.dc.b	47				
						
	.dc.b	200				
	.dc.b	34				
	.dc.b	112				
						
	.dc.b	15				
						
	.dc.b	200				
	.dc.b	91				
	.dc.b	47				
						
	.dc.b	15				
						
	.dc.b	200				
	.dc.b	147				
	.dc.b	241				
						
	.dc.b	239				
						
	.dc.b	200				
	.dc.b	204				
	.dc.b	184				
						
	.dc.b	239				
						
	.dc.b	201				
	.dc.b	5				
	.dc.b	131				
						
	.dc.b	239				
						
	.dc.b	201				
	.dc.b	62				
	.dc.b	82				
						
	.dc.b	239				
						
	.dc.b	201				
	.dc.b	119				
	.dc.b	37				
						
	.dc.b	239				
						
	.dc.b	201				
	.dc.b	175				
	.dc.b	253				
						
	.dc.b	15				
						
	.dc.b	201				
	.dc.b	232				
	.dc.b	216				
						
	.dc.b	15				
						
	.dc.b	202				
	.dc.b	33				
	.dc.b	183				
						
	.dc.b	15				
						
	.dc.b	202				
	.dc.b	90				
	.dc.b	154				
						
	.dc.b	15				
						
	.dc.b	202				
	.dc.b	147				
	.dc.b	129				
						
	.dc.b	47				
						
	.dc.b	202				
	.dc.b	204				
	.dc.b	108				
						
	.dc.b	47				
						
	.dc.b	203				
	.dc.b	5				
	.dc.b	91				
						
	.dc.b	47				
						
	.dc.b	203				
	.dc.b	62				
	.dc.b	78				
						
	.dc.b	47				
						
	.dc.b	203				
	.dc.b	119				
	.dc.b	69				
						
	.dc.b	47				
						
	.dc.b	203				
	.dc.b	176				
	.dc.b	64				
						
	.dc.b	47				
						
	.dc.b	203				
	.dc.b	233				
	.dc.b	63				
						
	.dc.b	47				
						
	.dc.b	204				
	.dc.b	34				
	.dc.b	66				
						
	.dc.b	47				
						
	.dc.b	204				
	.dc.b	91				
	.dc.b	73				
						
	.dc.b	47				
						
	.dc.b	204				
	.dc.b	148				
	.dc.b	84				
						
	.dc.b	15				
						
	.dc.b	204				
	.dc.b	205				
	.dc.b	98				
						
	.dc.b	239				
						
	.dc.b	205				
	.dc.b	6				
	.dc.b	117				
						
	.dc.b	207				
						
	.dc.b	205				
	.dc.b	63				
	.dc.b	140				
						
	.dc.b	175				
						
	.dc.b	205				
	.dc.b	120				
	.dc.b	167				
						
	.dc.b	143				
						
	.dc.b	205				
	.dc.b	177				
	.dc.b	198				
						
	.dc.b	79				
						
	.dc.b	205				
	.dc.b	234				
	.dc.b	233				
						
	.dc.b	15				
						
	.dc.b	206				
	.dc.b	36				
	.dc.b	15				
						
	.dc.b	207				
						
	.dc.b	206				
	.dc.b	93				
	.dc.b	58				
						
	.dc.b	143				
						
	.dc.b	206				
	.dc.b	150				
	.dc.b	105				
						
	.dc.b	47				
						
	.dc.b	206				
	.dc.b	207				
	.dc.b	155				
						
	.dc.b	207				
						
	.dc.b	207				
	.dc.b	8				
	.dc.b	210				
						
	.dc.b	79				
						
	.dc.b	207				
	.dc.b	66				
	.dc.b	12				
						
	.dc.b	207				
						
	.dc.b	207				
	.dc.b	123				
	.dc.b	75				
						
	.dc.b	79				
						
	.dc.b	207				
	.dc.b	180				
	.dc.b	141				
						
	.dc.b	175				
						
	.dc.b	207				
	.dc.b	237				
	.dc.b	212				
						
	.dc.b	15				
						
	.dc.b	208				
	.dc.b	39				
	.dc.b	30				
						
	.dc.b	111				
						
	.dc.b	208				
	.dc.b	96				
	.dc.b	108				
						
	.dc.b	175				
						
	.dc.b	208				
	.dc.b	153				
	.dc.b	190				
						
	.dc.b	207				
						
	.dc.b	208				
	.dc.b	211				
	.dc.b	21				
						
	.dc.b	15				
						
	.dc.b	209				
	.dc.b	12				
	.dc.b	111				
						
	.dc.b	15				
						
	.dc.b	209				
	.dc.b	69				
	.dc.b	205				
						
	.dc.b	15				
						
	.dc.b	209				
	.dc.b	127				
	.dc.b	47				
						
	.dc.b	15				
						
	.dc.b	209				
	.dc.b	184				
	.dc.b	148				
						
	.dc.b	239				
						
	.dc.b	209				
	.dc.b	241				
	.dc.b	254				
						
	.dc.b	175				
						
	.dc.b	210				
	.dc.b	43				
	.dc.b	108				
						
	.dc.b	111				
						
	.dc.b	210				
	.dc.b	100				
	.dc.b	222				
						
	.dc.b	15				
						
	.dc.b	210				
	.dc.b	158				
	.dc.b	83				
						
	.dc.b	143				
						
	.dc.b	210				
	.dc.b	215				
	.dc.b	205				
						
	.dc.b	15				
						
	.dc.b	211				
	.dc.b	17				
	.dc.b	74				
						
	.dc.b	143				
						
	.dc.b	211				
	.dc.b	74				
	.dc.b	203				
						
	.dc.b	207				
						
	.dc.b	211				
	.dc.b	132				
	.dc.b	81				
						
	.dc.b	15				
						
	.dc.b	211				
	.dc.b	189				
	.dc.b	218				
						
	.dc.b	47				
						
	.dc.b	211				
	.dc.b	247				
	.dc.b	103				
						
	.dc.b	79				
						
	.dc.b	212				
	.dc.b	48				
	.dc.b	248				
						
	.dc.b	47				
						
	.dc.b	212				
	.dc.b	106				
	.dc.b	141				
						
	.dc.b	15				
						
	.dc.b	212				
	.dc.b	164				
	.dc.b	37				
						
	.dc.b	239				
						
	.dc.b	212				
	.dc.b	221				
	.dc.b	194				
						
	.dc.b	143				
						
	.dc.b	213				
	.dc.b	23				
	.dc.b	99				
						
	.dc.b	15				
						
	.dc.b	213				
	.dc.b	81				
	.dc.b	7				
						
	.dc.b	143				
						
	.dc.b	213				
	.dc.b	138				
	.dc.b	175				
						
	.dc.b	239				
						
	.dc.b	213				
	.dc.b	196				
	.dc.b	92				
						
	.dc.b	47				
						
	.dc.b	213				
	.dc.b	254				
	.dc.b	12				
						
	.dc.b	79				
						
	.dc.b	214				
	.dc.b	55				
	.dc.b	192				
						
	.dc.b	111				
						
	.dc.b	214				
	.dc.b	113				
	.dc.b	120				
						
	.dc.b	79				
						
	.dc.b	214				
	.dc.b	171				
	.dc.b	52				
						
	.dc.b	47				
						
	.dc.b	214				
	.dc.b	228				
	.dc.b	243				
						
	.dc.b	207				
						
	.dc.b	215				
	.dc.b	30				
	.dc.b	183				
						
	.dc.b	111				
						
	.dc.b	215				
	.dc.b	88				
	.dc.b	126				
						
	.dc.b	207				
						
	.dc.b	215				
	.dc.b	146				
	.dc.b	74				
						
	.dc.b	47				
						
	.dc.b	215				
	.dc.b	204				
	.dc.b	25				
						
	.dc.b	111				
						
	.dc.b	216				
	.dc.b	5				
	.dc.b	236				
						
	.dc.b	111				
						
	.dc.b	216				
	.dc.b	63				
	.dc.b	195				
						
	.dc.b	111				
						
	.dc.b	216				
	.dc.b	121				
	.dc.b	158				
						
	.dc.b	47				
						
	.dc.b	216				
	.dc.b	179				
	.dc.b	124				
						
	.dc.b	239				
						
	.dc.b	216				
	.dc.b	237				
	.dc.b	95				
						
	.dc.b	111				
						
	.dc.b	217				
	.dc.b	39				
	.dc.b	69				
						
	.dc.b	207				
						
	.dc.b	217				
	.dc.b	97				
	.dc.b	48				
						
	.dc.b	47				
						
	.dc.b	217				
	.dc.b	155				
	.dc.b	30				
						
	.dc.b	79				
						
	.dc.b	217				
	.dc.b	213				
	.dc.b	16				
						
	.dc.b	47				
						
	.dc.b	218				
	.dc.b	15				
	.dc.b	6				
						
	.dc.b	15				
						
	.dc.b	218				
	.dc.b	72				
	.dc.b	255				
						
	.dc.b	207				
						
	.dc.b	218				
	.dc.b	130				
	.dc.b	253				
						
	.dc.b	79				
						
	.dc.b	218				
	.dc.b	188				
	.dc.b	254				
						
	.dc.b	175				
						
	.dc.b	218				
	.dc.b	247				
	.dc.b	3				
						
	.dc.b	239				
						
	.dc.b	219				
	.dc.b	49				
	.dc.b	13				
						
	.dc.b	15				
						
	.dc.b	219				
	.dc.b	107				
	.dc.b	25				
						
	.dc.b	239				
						
	.dc.b	219				
	.dc.b	165				
	.dc.b	42				
						
	.dc.b	175				
						
	.dc.b	219				
	.dc.b	223				
	.dc.b	63				
						
	.dc.b	79				
						
	.dc.b	220				
	.dc.b	25				
	.dc.b	87				
						
	.dc.b	207				
						
	.dc.b	220				
	.dc.b	83				
	.dc.b	116				
						
	.dc.b	15				
						
	.dc.b	220				
	.dc.b	141				
	.dc.b	148				
						
	.dc.b	47				
						
	.dc.b	220				
	.dc.b	199				
	.dc.b	184				
						
	.dc.b	15				
						
	.dc.b	221				
	.dc.b	1				
	.dc.b	223				
						
	.dc.b	207				
						
	.dc.b	221				
	.dc.b	60				
	.dc.b	11				
						
	.dc.b	111				
						
	.dc.b	221				
	.dc.b	118				
	.dc.b	58				
						
	.dc.b	207				
						
	.dc.b	221				
	.dc.b	176				
	.dc.b	110				
						
	.dc.b	15				
						
	.dc.b	221				
	.dc.b	234				
	.dc.b	165				
						
	.dc.b	47				
						
	.dc.b	222				
	.dc.b	36				
	.dc.b	224				
						
	.dc.b	15				
						
	.dc.b	222				
	.dc.b	95				
	.dc.b	30				
						
	.dc.b	175				
						
	.dc.b	222				
	.dc.b	153				
	.dc.b	97				
						
	.dc.b	47				
						
	.dc.b	222				
	.dc.b	211				
	.dc.b	167				
						
	.dc.b	143				
						
	.dc.b	223				
	.dc.b	13				
	.dc.b	241				
						
	.dc.b	175				
						
	.dc.b	223				
	.dc.b	72				
	.dc.b	63				
						
	.dc.b	175				
						
	.dc.b	223				
	.dc.b	130				
	.dc.b	145				
						
	.dc.b	111				
						
	.dc.b	223				
	.dc.b	188				
	.dc.b	230				
						
	.dc.b	239				
						
	.dc.b	223				
	.dc.b	247				
	.dc.b	64				
						
	.dc.b	79				
						
	.dc.b	224				
	.dc.b	49				
	.dc.b	157				
						
	.dc.b	111				
						
	.dc.b	224				
	.dc.b	107				
	.dc.b	254				
						
	.dc.b	111				
						
	.dc.b	224				
	.dc.b	166				
	.dc.b	99				
						
	.dc.b	47				
						
	.dc.b	224				
	.dc.b	224				
	.dc.b	203				
						
	.dc.b	175				
						
	.dc.b	225				
	.dc.b	27				
	.dc.b	56				
						
	.dc.b	15				
						
	.dc.b	225				
	.dc.b	85				
	.dc.b	168				
						
	.dc.b	47				
						
	.dc.b	225				
	.dc.b	144				
	.dc.b	28				
						
	.dc.b	47				
						
	.dc.b	225				
	.dc.b	202				
	.dc.b	147				
						
	.dc.b	239				
						
	.dc.b	226				
	.dc.b	5				
	.dc.b	15				
						
	.dc.b	111				
						
	.dc.b	226				
	.dc.b	63				
	.dc.b	142				
						
	.dc.b	175				
						
	.dc.b	226				
	.dc.b	122				
	.dc.b	17				
						
	.dc.b	175				
						
	.dc.b	226				
	.dc.b	180				
	.dc.b	152				
						
	.dc.b	143				
						
	.dc.b	226				
	.dc.b	239				
	.dc.b	35				
						
	.dc.b	47				
						
	.dc.b	227				
	.dc.b	41				
	.dc.b	177				
						
	.dc.b	143				
						
	.dc.b	227				
	.dc.b	100				
	.dc.b	67				
						
	.dc.b	207				
						
	.dc.b	227				
	.dc.b	158				
	.dc.b	217				
						
	.dc.b	207				
						
	.dc.b	227				
	.dc.b	217				
	.dc.b	115				
						
	.dc.b	111				
						
	.dc.b	228				
	.dc.b	20				
	.dc.b	16				
						
	.dc.b	239				
						
	.dc.b	228				
	.dc.b	78				
	.dc.b	178				
						
	.dc.b	47				
						
	.dc.b	228				
	.dc.b	137				
	.dc.b	87				
						
	.dc.b	47				
						
	.dc.b	228				
	.dc.b	196				
	.dc.b	0				
						
	.dc.b	15				
						
	.dc.b	228				
	.dc.b	254				
	.dc.b	172				
						
	.dc.b	143				
						
	.dc.b	229				
	.dc.b	57				
	.dc.b	92				
						
	.dc.b	239				
						
	.dc.b	229				
	.dc.b	116				
	.dc.b	16				
						
	.dc.b	239				
						
	.dc.b	229				
	.dc.b	174				
	.dc.b	200				
						
	.dc.b	207				
						
	.dc.b	229				
	.dc.b	233				
	.dc.b	132				
						
	.dc.b	79				
						
	.dc.b	230				
	.dc.b	36				
	.dc.b	67				
						
	.dc.b	175				
						
	.dc.b	230				
	.dc.b	95				
	.dc.b	6				
						
	.dc.b	175				
						
	.dc.b	230				
	.dc.b	153				
	.dc.b	205				
						
	.dc.b	143				
						
	.dc.b	230				
	.dc.b	212				
	.dc.b	152				
						
	.dc.b	47				
						
	.dc.b	231				
	.dc.b	15				
	.dc.b	102				
						
	.dc.b	111				
						
	.dc.b	231				
	.dc.b	74				
	.dc.b	56				
						
	.dc.b	143				
						
	.dc.b	231				
	.dc.b	133				
	.dc.b	14				
						
	.dc.b	79				
						
	.dc.b	231				
	.dc.b	191				
	.dc.b	231				
						
	.dc.b	207				
						
	.dc.b	231				
	.dc.b	250				
	.dc.b	197				
						
	.dc.b	15				
						
	.dc.b	232				
	.dc.b	53				
	.dc.b	166				
						
	.dc.b	15				
						
	.dc.b	232				
	.dc.b	112				
	.dc.b	138				
						
	.dc.b	207				
						
	.dc.b	232				
	.dc.b	171				
	.dc.b	115				
						
	.dc.b	79				
						
	.dc.b	232				
	.dc.b	230				
	.dc.b	95				
						
	.dc.b	143				
						
	.dc.b	233				
	.dc.b	33				
	.dc.b	79				
						
	.dc.b	111				
						
	.dc.b	233				
	.dc.b	92				
	.dc.b	67				
						
	.dc.b	15				
						
	.dc.b	233				
	.dc.b	151				
	.dc.b	58				
						
	.dc.b	111				
						
	.dc.b	233				
	.dc.b	210				
	.dc.b	53				
						
	.dc.b	143				
						
	.dc.b	234				
	.dc.b	13				
	.dc.b	52				
						
	.dc.b	111				
						
	.dc.b	234				
	.dc.b	72				
	.dc.b	54				
						
	.dc.b	239				
						
	.dc.b	234				
	.dc.b	131				
	.dc.b	61				
						
	.dc.b	47				
						
	.dc.b	234				
	.dc.b	190				
	.dc.b	71				
						
	.dc.b	47				
						
	.dc.b	234				
	.dc.b	249				
	.dc.b	84				
						
	.dc.b	239				
						
	.dc.b	235				
	.dc.b	52				
	.dc.b	102				
						
	.dc.b	79				
						
	.dc.b	235				
	.dc.b	111				
	.dc.b	123				
						
	.dc.b	111				
						
	.dc.b	235				
	.dc.b	170				
	.dc.b	148				
						
	.dc.b	47				
						
	.dc.b	235				
	.dc.b	229				
	.dc.b	176				
						
	.dc.b	175				
						
	.dc.b	236				
	.dc.b	32				
	.dc.b	208				
						
	.dc.b	239				
						
	.dc.b	236				
	.dc.b	91				
	.dc.b	244				
						
	.dc.b	207				
						
	.dc.b	236				
	.dc.b	151				
	.dc.b	28				
						
	.dc.b	111				
						
	.dc.b	236				
	.dc.b	210				
	.dc.b	71				
						
	.dc.b	207				
						
	.dc.b	237				
	.dc.b	13				
	.dc.b	118				
						
	.dc.b	207				
						
	.dc.b	237				
	.dc.b	72				
	.dc.b	169				
						
	.dc.b	143				
						
	.dc.b	237				
	.dc.b	131				
	.dc.b	223				
						
	.dc.b	239				
						
	.dc.b	237				
	.dc.b	191				
	.dc.b	26				
						
	.dc.b	15				
						
	.dc.b	237				
	.dc.b	250				
	.dc.b	87				
						
	.dc.b	207				
						
	.dc.b	238				
	.dc.b	53				
	.dc.b	153				
						
	.dc.b	79				
						
	.dc.b	238				
	.dc.b	112				
	.dc.b	222				
						
	.dc.b	111				
						
	.dc.b	238				
	.dc.b	172				
	.dc.b	39				
						
	.dc.b	79				
						
	.dc.b	238				
	.dc.b	231				
	.dc.b	115				
						
	.dc.b	207				
						
	.dc.b	239				
	.dc.b	34				
	.dc.b	196				
						
	.dc.b	15				
						
	.dc.b	239				
	.dc.b	94				
	.dc.b	23				
						
	.dc.b	239				
						
	.dc.b	239				
	.dc.b	153				
	.dc.b	111				
						
	.dc.b	143				
						
	.dc.b	239				
	.dc.b	212				
	.dc.b	202				
						
	.dc.b	207				
						
	.dc.b	240				
	.dc.b	16				
	.dc.b	41				
						
	.dc.b	175				
						
	.dc.b	240				
	.dc.b	75				
	.dc.b	140				
						
	.dc.b	79				
						
	.dc.b	240				
	.dc.b	134				
	.dc.b	242				
						
	.dc.b	143				
						
	.dc.b	240				
	.dc.b	194				
	.dc.b	92				
						
	.dc.b	111				
						
	.dc.b	240				
	.dc.b	253				
	.dc.b	202				
						
	.dc.b	15				
						
	.dc.b	241				
	.dc.b	57				
	.dc.b	59				
						
	.dc.b	79				
						
	.dc.b	241				
	.dc.b	116				
	.dc.b	176				
						
	.dc.b	47				
						
	.dc.b	241				
	.dc.b	176				
	.dc.b	40				
						
	.dc.b	207				
						
	.dc.b	241				
	.dc.b	235				
	.dc.b	165				
						
	.dc.b	15				
						
	.dc.b	242				
	.dc.b	39				
	.dc.b	36				
						
	.dc.b	239				
						
	.dc.b	242				
	.dc.b	98				
	.dc.b	168				
						
	.dc.b	111				
						
	.dc.b	242				
	.dc.b	158				
	.dc.b	47				
						
	.dc.b	175				
						
	.dc.b	242				
	.dc.b	217				
	.dc.b	186				
						
	.dc.b	143				
						
	.dc.b	243				
	.dc.b	21				
	.dc.b	73				
						
	.dc.b	15				
						
	.dc.b	243				
	.dc.b	80				
	.dc.b	219				
						
	.dc.b	47				
						
	.dc.b	243				
	.dc.b	140				
	.dc.b	113				
						
	.dc.b	15				
						
	.dc.b	243				
	.dc.b	200				
	.dc.b	10				
						
	.dc.b	111				
						
	.dc.b	244				
	.dc.b	3				
	.dc.b	167				
						
	.dc.b	143				
						
	.dc.b	244				
	.dc.b	63				
	.dc.b	72				
						
	.dc.b	79				
						
	.dc.b	244				
	.dc.b	122				
	.dc.b	236				
						
	.dc.b	175				
						
	.dc.b	244				
	.dc.b	182				
	.dc.b	148				
						
	.dc.b	175				
						
	.dc.b	244				
	.dc.b	242				
	.dc.b	64				
						
	.dc.b	79				
						
	.dc.b	245				
	.dc.b	45				
	.dc.b	239				
						
	.dc.b	175				
						
	.dc.b	245				
	.dc.b	105				
	.dc.b	162				
						
	.dc.b	143				
						
	.dc.b	245				
	.dc.b	165				
	.dc.b	89				
						
	.dc.b	15				
						
	.dc.b	245				
	.dc.b	225				
	.dc.b	19				
						
	.dc.b	79				
						
	.dc.b	246				
	.dc.b	28				
	.dc.b	209				
						
	.dc.b	15				
						
	.dc.b	246				
	.dc.b	88				
	.dc.b	146				
						
	.dc.b	143				
						
	.dc.b	246				
	.dc.b	148				
	.dc.b	87				
						
	.dc.b	143				
						
	.dc.b	246				
	.dc.b	208				
	.dc.b	32				
						
	.dc.b	79				
						
	.dc.b	247				
	.dc.b	11				
	.dc.b	236				
						
	.dc.b	143				
						
	.dc.b	247				
	.dc.b	71				
	.dc.b	188				
						
	.dc.b	143				
						
	.dc.b	247				
	.dc.b	131				
	.dc.b	144				
						
	.dc.b	15				
						
	.dc.b	247				
	.dc.b	191				
	.dc.b	103				
						
	.dc.b	47				
						
	.dc.b	247				
	.dc.b	251				
	.dc.b	65				
						
	.dc.b	239				
						
	.dc.b	248				
	.dc.b	55				
	.dc.b	32				
						
	.dc.b	79				
						
	.dc.b	248				
	.dc.b	115				
	.dc.b	2				
						
	.dc.b	79				
						
	.dc.b	248				
	.dc.b	174				
	.dc.b	231				
						
	.dc.b	239				
						
	.dc.b	248				
	.dc.b	234				
	.dc.b	209				
						
	.dc.b	47				
						
	.dc.b	249				
	.dc.b	38				
	.dc.b	189				
						
	.dc.b	239				
						
	.dc.b	249				
	.dc.b	98				
	.dc.b	174				
						
	.dc.b	111				
						
	.dc.b	249				
	.dc.b	158				
	.dc.b	162				
						
	.dc.b	111				
						
	.dc.b	249				
	.dc.b	218				
	.dc.b	154				
						
	.dc.b	15				
						
	.dc.b	250				
	.dc.b	22				
	.dc.b	149				
						
	.dc.b	79				
						
	.dc.b	250				
	.dc.b	82				
	.dc.b	148				
						
	.dc.b	15				
						
	.dc.b	250				
	.dc.b	142				
	.dc.b	150				
						
	.dc.b	111				
						
	.dc.b	250				
	.dc.b	202				
	.dc.b	156				
						
	.dc.b	143				
						
	.dc.b	251				
	.dc.b	6				
	.dc.b	166				
						
	.dc.b	15				
						
	.dc.b	251				
	.dc.b	66				
	.dc.b	179				
						
	.dc.b	79				
						
	.dc.b	251				
	.dc.b	126				
	.dc.b	196				
						
	.dc.b	15				
						
	.dc.b	251				
	.dc.b	186				
	.dc.b	216				
						
	.dc.b	111				
						
	.dc.b	251				
	.dc.b	246				
	.dc.b	240				
						
	.dc.b	111				
						
	.dc.b	252				
	.dc.b	51				
	.dc.b	11				
						
	.dc.b	239				
						
	.dc.b	252				
	.dc.b	111				
	.dc.b	43				
						
	.dc.b	15				
						
	.dc.b	252				
	.dc.b	171				
	.dc.b	77				
						
	.dc.b	207				
						
	.dc.b	252				
	.dc.b	231				
	.dc.b	116				
						
	.dc.b	15				
						
	.dc.b	253				
	.dc.b	35				
	.dc.b	157				
						
	.dc.b	239				
						
	.dc.b	253				
	.dc.b	95				
	.dc.b	203				
						
	.dc.b	79				
						
	.dc.b	253				
	.dc.b	155				
	.dc.b	252				
						
	.dc.b	79				
						
	.dc.b	253				
	.dc.b	216				
	.dc.b	48				
						
	.dc.b	239				
						
	.dc.b	254				
	.dc.b	20				
	.dc.b	105				
						
	.dc.b	15				
						
	.dc.b	254				
	.dc.b	80				
	.dc.b	164				
						
	.dc.b	207				
						
	.dc.b	254				
	.dc.b	140				
	.dc.b	228				
						
	.dc.b	15				
						
	.dc.b	254				
	.dc.b	201				
	.dc.b	38				
						
	.dc.b	239				
						
	.dc.b	255				
	.dc.b	5				
	.dc.b	109				
						
	.dc.b	79				
						
	.dc.b	255				
	.dc.b	65				
	.dc.b	183				
						
	.dc.b	79				
						
	.dc.b	255				
	.dc.b	126				
	.dc.b	4				
						
	.dc.b	207				
						
	.dc.b	255				
	.dc.b	186				
	.dc.b	85				
						
	.dc.b	239				
						
	.dc.b	255				
	.dc.b	246				
	.dc.b	170				
						
	.dc.b	143				
						
	.dc.b	128				
	.dc.b	25				
	.dc.b	129				
						
	.dc.b	112				
						
	.dc.b	128				
	.dc.b	55				
	.dc.b	175				
						
	.dc.b	80				
						
	.dc.b	128				
	.dc.b	85				
	.dc.b	222				
						
	.dc.b	240				
						
	.dc.b	128				
	.dc.b	116				
	.dc.b	16				
						
	.dc.b	112				
						
	.dc.b	128				
	.dc.b	146				
	.dc.b	67				
						
	.dc.b	144				
						
	.dc.b	128				
	.dc.b	176				
	.dc.b	120				
						
	.dc.b	144				
						
	.dc.b	128				
	.dc.b	206				
	.dc.b	175				
						
	.dc.b	80				
						
	.dc.b	128				
	.dc.b	236				
	.dc.b	231				
						
	.dc.b	240				
						
	.dc.b	129				
	.dc.b	11				
	.dc.b	34				
						
	.dc.b	48				
						
	.dc.b	129				
	.dc.b	41				
	.dc.b	94				
						
	.dc.b	48				
						
	.dc.b	129				
	.dc.b	71				
	.dc.b	156				
						
	.dc.b	16				
						
	.dc.b	129				
	.dc.b	101				
	.dc.b	219				
						
	.dc.b	176				
						
	.dc.b	129				
	.dc.b	132				
	.dc.b	29				
						
	.dc.b	16				
						
	.dc.b	129				
	.dc.b	162				
	.dc.b	96				
						
	.dc.b	48				
						
	.dc.b	129				
	.dc.b	192				
	.dc.b	165				
						
	.dc.b	48				
						
	.dc.b	129				
	.dc.b	222				
	.dc.b	235				
						
	.dc.b	208				
						
	.dc.b	129				
	.dc.b	253				
	.dc.b	52				
						
	.dc.b	48				
						
	.dc.b	130				
	.dc.b	27				
	.dc.b	126				
						
	.dc.b	112				
						
	.dc.b	130				
	.dc.b	57				
	.dc.b	202				
						
	.dc.b	112				
						
	.dc.b	130				
	.dc.b	88				
	.dc.b	24				
						
	.dc.b	48				
						
	.dc.b	130				
	.dc.b	118				
	.dc.b	103				
						
	.dc.b	176				
						
	.dc.b	130				
	.dc.b	148				
	.dc.b	184				
						
	.dc.b	240				
						
	.dc.b	130				
	.dc.b	179				
	.dc.b	11				
						
	.dc.b	240				
						
	.dc.b	130				
	.dc.b	209				
	.dc.b	96				
						
	.dc.b	176				
						
	.dc.b	130				
	.dc.b	239				
	.dc.b	183				
						
	.dc.b	48				
						
	.dc.b	131				
	.dc.b	14				
	.dc.b	15				
						
	.dc.b	144				
						
	.dc.b	131				
	.dc.b	44				
	.dc.b	105				
						
	.dc.b	144				
						
	.dc.b	131				
	.dc.b	74				
	.dc.b	197				
						
	.dc.b	80				
						
	.dc.b	131				
	.dc.b	105				
	.dc.b	34				
						
	.dc.b	240				
						
	.dc.b	131				
	.dc.b	135				
	.dc.b	130				
						
	.dc.b	48				
						
	.dc.b	131				
	.dc.b	165				
	.dc.b	227				
						
	.dc.b	80				
						
	.dc.b	131				
	.dc.b	196				
	.dc.b	70				
						
	.dc.b	16				
						
	.dc.b	131				
	.dc.b	226				
	.dc.b	170				
						
	.dc.b	176				
						
	.dc.b	132				
	.dc.b	1				
	.dc.b	17				
						
	.dc.b	16				
						
	.dc.b	132				
	.dc.b	31				
	.dc.b	121				
						
	.dc.b	16				
						
	.dc.b	132				
	.dc.b	61				
	.dc.b	226				
						
	.dc.b	240				
						
	.dc.b	132				
	.dc.b	92				
	.dc.b	78				
						
	.dc.b	112				
						
	.dc.b	132				
	.dc.b	122				
	.dc.b	187				
						
	.dc.b	208				
						
	.dc.b	132				
	.dc.b	153				
	.dc.b	42				
						
	.dc.b	208				
						
	.dc.b	132				
	.dc.b	183				
	.dc.b	155				
						
	.dc.b	176				
						
	.dc.b	132				
	.dc.b	214				
	.dc.b	14				
						
	.dc.b	48				
						
	.dc.b	132				
	.dc.b	244				
	.dc.b	130				
						
	.dc.b	144				
						
	.dc.b	133				
	.dc.b	18				
	.dc.b	248				
						
	.dc.b	144				
						
	.dc.b	133				
	.dc.b	49				
	.dc.b	112				
						
	.dc.b	112				
						
	.dc.b	133				
	.dc.b	79				
	.dc.b	233				
						
	.dc.b	240				
						
	.dc.b	133				
	.dc.b	110				
	.dc.b	101				
						
	.dc.b	48				
						
	.dc.b	133				
	.dc.b	140				
	.dc.b	226				
						
	.dc.b	48				
						
	.dc.b	133				
	.dc.b	171				
	.dc.b	96				
						
	.dc.b	240				
						
	.dc.b	133				
	.dc.b	201				
	.dc.b	225				
						
	.dc.b	112				
						
	.dc.b	133				
	.dc.b	232				
	.dc.b	99				
						
	.dc.b	176				
						
	.dc.b	134				
	.dc.b	6				
	.dc.b	231				
						
	.dc.b	176				
						
	.dc.b	134				
	.dc.b	37				
	.dc.b	109				
						
	.dc.b	112				
						
	.dc.b	134				
	.dc.b	67				
	.dc.b	244				
						
	.dc.b	208				
						
	.dc.b	134				
	.dc.b	98				
	.dc.b	126				
						
	.dc.b	16				
						
	.dc.b	134				
	.dc.b	129				
	.dc.b	8				
						
	.dc.b	240				
						
	.dc.b	134				
	.dc.b	159				
	.dc.b	149				
						
	.dc.b	176				
						
	.dc.b	134				
	.dc.b	190				
	.dc.b	36				
						
	.dc.b	16				
						
	.dc.b	134				
	.dc.b	220				
	.dc.b	180				
						
	.dc.b	48				
						
	.dc.b	134				
	.dc.b	251				
	.dc.b	69				
						
	.dc.b	240				
						
	.dc.b	135				
	.dc.b	25				
	.dc.b	217				
						
	.dc.b	144				
						
	.dc.b	135				
	.dc.b	56				
	.dc.b	110				
						
	.dc.b	240				
						
	.dc.b	135				
	.dc.b	87				
	.dc.b	5				
						
	.dc.b	240				
						
	.dc.b	135				
	.dc.b	117				
	.dc.b	158				
						
	.dc.b	176				
						
	.dc.b	135				
	.dc.b	148				
	.dc.b	57				
						
	.dc.b	48				
						
	.dc.b	135				
	.dc.b	178				
	.dc.b	213				
						
	.dc.b	112				
						
	.dc.b	135				
	.dc.b	209				
	.dc.b	115				
						
	.dc.b	112				
						
	.dc.b	135				
	.dc.b	240				
	.dc.b	19				
						
	.dc.b	16				
						
	.dc.b	136				
	.dc.b	14				
	.dc.b	180				
						
	.dc.b	112				
						
	.dc.b	136				
	.dc.b	45				
	.dc.b	87				
						
	.dc.b	144				
						
	.dc.b	136				
	.dc.b	75				
	.dc.b	252				
						
	.dc.b	112				
						
	.dc.b	136				
	.dc.b	106				
	.dc.b	163				
						
	.dc.b	16				
						
	.dc.b	136				
	.dc.b	137				
	.dc.b	75				
						
	.dc.b	80				
						
	.dc.b	136				
	.dc.b	167				
	.dc.b	245				
						
	.dc.b	112				
						
	.dc.b	136				
	.dc.b	198				
	.dc.b	161				
						
	.dc.b	16				
						
	.dc.b	136				
	.dc.b	229				
	.dc.b	78				
						
	.dc.b	144				
						
	.dc.b	137				
	.dc.b	3				
	.dc.b	253				
						
	.dc.b	208				
						
	.dc.b	137				
	.dc.b	34				
	.dc.b	174				
						
	.dc.b	176				
						
	.dc.b	137				
	.dc.b	65				
	.dc.b	97				
						
	.dc.b	80				
						
	.dc.b	137				
	.dc.b	96				
	.dc.b	21				
						
	.dc.b	144				
						
	.dc.b	137				
	.dc.b	126				
	.dc.b	203				
						
	.dc.b	176				
						
	.dc.b	137				
	.dc.b	157				
	.dc.b	131				
						
	.dc.b	112				
						
	.dc.b	137				
	.dc.b	188				
	.dc.b	60				
						
	.dc.b	240				
						
	.dc.b	137				
	.dc.b	218				
	.dc.b	248				
						
	.dc.b	16				
						
	.dc.b	137				
	.dc.b	249				
	.dc.b	181				
						
	.dc.b	16				
						
	.dc.b	138				
	.dc.b	24				
	.dc.b	115				
						
	.dc.b	144				
						
	.dc.b	138				
	.dc.b	55				
	.dc.b	51				
						
	.dc.b	240				
						
	.dc.b	138				
	.dc.b	85				
	.dc.b	245				
						
	.dc.b	240				
						
	.dc.b	138				
	.dc.b	116				
	.dc.b	185				
						
	.dc.b	176				
						
	.dc.b	138				
	.dc.b	147				
	.dc.b	127				
						
	.dc.b	48				
						
	.dc.b	138				
	.dc.b	178				
	.dc.b	70				
						
	.dc.b	80				
						
	.dc.b	138				
	.dc.b	209				
	.dc.b	15				
						
	.dc.b	48				
						
	.dc.b	138				
	.dc.b	239				
	.dc.b	217				
						
	.dc.b	208				
						
	.dc.b	139				
	.dc.b	14				
	.dc.b	166				
						
	.dc.b	16				
						
	.dc.b	139				
	.dc.b	45				
	.dc.b	116				
						
	.dc.b	16				
						
	.dc.b	139				
	.dc.b	76				
	.dc.b	67				
						
	.dc.b	208				
						
	.dc.b	139				
	.dc.b	107				
	.dc.b	21				
						
	.dc.b	48				
						
	.dc.b	139				
	.dc.b	137				
	.dc.b	232				
						
	.dc.b	80				
						
	.dc.b	139				
	.dc.b	168				
	.dc.b	189				
						
	.dc.b	48				
						
	.dc.b	139				
	.dc.b	199				
	.dc.b	147				
						
	.dc.b	176				
						
	.dc.b	139				
	.dc.b	230				
	.dc.b	107				
						
	.dc.b	208				
						
	.dc.b	140				
	.dc.b	5				
	.dc.b	69				
						
	.dc.b	208				
						
	.dc.b	140				
	.dc.b	36				
	.dc.b	33				
						
	.dc.b	112				
						
	.dc.b	140				
	.dc.b	66				
	.dc.b	254				
						
	.dc.b	176				
						
	.dc.b	140				
	.dc.b	97				
	.dc.b	221				
						
	.dc.b	176				
						
	.dc.b	140				
	.dc.b	128				
	.dc.b	190				
						
	.dc.b	112				
						
	.dc.b	140				
	.dc.b	159				
	.dc.b	160				
						
	.dc.b	208				
						
	.dc.b	140				
	.dc.b	190				
	.dc.b	132				
						
	.dc.b	240				
						
	.dc.b	140				
	.dc.b	221				
	.dc.b	106				
						
	.dc.b	176				
						
	.dc.b	140				
	.dc.b	252				
	.dc.b	82				
						
	.dc.b	48				
						
	.dc.b	141				
	.dc.b	27				
	.dc.b	59				
						
	.dc.b	112				
						
	.dc.b	141				
	.dc.b	58				
	.dc.b	38				
						
	.dc.b	80				
						
	.dc.b	141				
	.dc.b	89				
	.dc.b	18				
						
	.dc.b	208				
						
	.dc.b	141				
	.dc.b	120				
	.dc.b	1				
						
	.dc.b	48				
						
	.dc.b	141				
	.dc.b	150				
	.dc.b	241				
						
	.dc.b	16				
						
	.dc.b	141				
	.dc.b	181				
	.dc.b	226				
						
	.dc.b	176				
						
	.dc.b	141				
	.dc.b	212				
	.dc.b	214				
						
	.dc.b	16				
						
	.dc.b	141				
	.dc.b	243				
	.dc.b	203				
						
	.dc.b	16				
						
	.dc.b	142				
	.dc.b	18				
	.dc.b	193				
						
	.dc.b	208				
						
	.dc.b	142				
	.dc.b	49				
	.dc.b	186				
						
	.dc.b	48				
						
	.dc.b	142				
	.dc.b	80				
	.dc.b	180				
						
	.dc.b	80				
						
	.dc.b	142				
	.dc.b	111				
	.dc.b	176				
						
	.dc.b	16				
						
	.dc.b	142				
	.dc.b	142				
	.dc.b	173				
						
	.dc.b	144				
						
	.dc.b	142				
	.dc.b	173				
	.dc.b	172				
						
	.dc.b	176				
						
	.dc.b	142				
	.dc.b	204				
	.dc.b	173				
						
	.dc.b	112				
						
	.dc.b	142				
	.dc.b	235				
	.dc.b	175				
						
	.dc.b	240				
						
	.dc.b	143				
	.dc.b	10				
	.dc.b	180				
						
	.dc.b	48				
						
	.dc.b	143				
	.dc.b	41				
	.dc.b	186				
						
	.dc.b	16				
						
	.dc.b	143				
	.dc.b	72				
	.dc.b	193				
						
	.dc.b	144				
						
	.dc.b	143				
	.dc.b	103				
	.dc.b	202				
						
	.dc.b	208				
						
	.dc.b	143				
	.dc.b	134				
	.dc.b	213				
						
	.dc.b	208				
						
	.dc.b	143				
	.dc.b	165				
	.dc.b	226				
						
	.dc.b	80				
						
	.dc.b	143				
	.dc.b	196				
	.dc.b	240				
						
	.dc.b	144				
						
	.dc.b	143				
	.dc.b	228				
	.dc.b	0				
						
	.dc.b	144				
						
	.dc.b	144				
	.dc.b	3				
	.dc.b	18				
						
	.dc.b	48				
						
	.dc.b	144				
	.dc.b	34				
	.dc.b	37				
						
	.dc.b	112				
						
	.dc.b	144				
	.dc.b	65				
	.dc.b	58				
						
	.dc.b	112				
						
	.dc.b	144				
	.dc.b	96				
	.dc.b	81				
						
	.dc.b	16				
						
	.dc.b	144				
	.dc.b	127				
	.dc.b	105				
						
	.dc.b	112				
						
	.dc.b	144				
	.dc.b	158				
	.dc.b	131				
						
	.dc.b	112				
						
	.dc.b	144				
	.dc.b	189				
	.dc.b	159				
						
	.dc.b	16				
						
	.dc.b	144				
	.dc.b	220				
	.dc.b	188				
						
	.dc.b	112				
						
	.dc.b	144				
	.dc.b	251				
	.dc.b	219				
						
	.dc.b	112				
						
	.dc.b	145				
	.dc.b	26				
	.dc.b	252				
						
	.dc.b	48				
						
	.dc.b	145				
	.dc.b	58				
	.dc.b	30				
						
	.dc.b	144				
						
	.dc.b	145				
	.dc.b	89				
	.dc.b	66				
						
	.dc.b	144				
						
	.dc.b	145				
	.dc.b	120				
	.dc.b	104				
						
	.dc.b	48				
						
	.dc.b	145				
	.dc.b	151				
	.dc.b	143				
						
	.dc.b	144				
						
	.dc.b	145				
	.dc.b	182				
	.dc.b	184				
						
	.dc.b	144				
						
	.dc.b	145				
	.dc.b	213				
	.dc.b	227				
						
	.dc.b	80				
						
	.dc.b	145				
	.dc.b	245				
	.dc.b	15				
						
	.dc.b	176				
						
	.dc.b	146				
	.dc.b	20				
	.dc.b	61				
						
	.dc.b	176				
						
	.dc.b	146				
	.dc.b	51				
	.dc.b	109				
						
	.dc.b	80				
						
	.dc.b	146				
	.dc.b	82				
	.dc.b	158				
						
	.dc.b	176				
						
	.dc.b	146				
	.dc.b	113				
	.dc.b	209				
						
	.dc.b	176				
						
	.dc.b	146				
	.dc.b	145				
	.dc.b	6				
						
	.dc.b	112				
						
	.dc.b	146				
	.dc.b	176				
	.dc.b	60				
						
	.dc.b	176				
						
	.dc.b	146				
	.dc.b	207				
	.dc.b	116				
						
	.dc.b	176				
						
	.dc.b	146				
	.dc.b	238				
	.dc.b	174				
						
	.dc.b	112				
						
	.dc.b	147				
	.dc.b	13				
	.dc.b	233				
						
	.dc.b	176				
						
	.dc.b	147				
	.dc.b	45				
	.dc.b	38				
						
	.dc.b	176				
						
	.dc.b	147				
	.dc.b	76				
	.dc.b	101				
						
	.dc.b	80				
						
	.dc.b	147				
	.dc.b	107				
	.dc.b	165				
						
	.dc.b	144				
						
	.dc.b	147				
	.dc.b	138				
	.dc.b	231				
						
	.dc.b	144				
						
	.dc.b	147				
	.dc.b	170				
	.dc.b	43				
						
	.dc.b	48				
						
	.dc.b	147				
	.dc.b	201				
	.dc.b	112				
						
	.dc.b	112				
						
	.dc.b	147				
	.dc.b	232				
	.dc.b	183				
						
	.dc.b	80				
						
	.dc.b	148				
	.dc.b	7				
	.dc.b	255				
						
	.dc.b	208				
						
	.dc.b	148				
	.dc.b	39				
	.dc.b	74				
						
	.dc.b	16				
						
	.dc.b	148				
	.dc.b	70				
	.dc.b	149				
						
	.dc.b	240				
						
	.dc.b	148				
	.dc.b	101				
	.dc.b	227				
						
	.dc.b	112				
						
	.dc.b	148				
	.dc.b	133				
	.dc.b	50				
						
	.dc.b	176				
						
	.dc.b	148				
	.dc.b	164				
	.dc.b	131				
						
	.dc.b	112				
						
	.dc.b	148				
	.dc.b	195				
	.dc.b	213				
						
	.dc.b	240				
						
	.dc.b	148				
	.dc.b	227				
	.dc.b	42				
						
	.dc.b	16				
						
	.dc.b	149				
	.dc.b	2				
	.dc.b	127				
						
	.dc.b	208				
						
	.dc.b	149				
	.dc.b	33				
	.dc.b	215				
						
	.dc.b	80				
						
	.dc.b	149				
	.dc.b	65				
	.dc.b	48				
						
	.dc.b	80				
						
	.dc.b	149				
	.dc.b	96				
	.dc.b	139				
						
	.dc.b	16				
						
	.dc.b	149				
	.dc.b	127				
	.dc.b	231				
						
	.dc.b	112				
						
	.dc.b	149				
	.dc.b	159				
	.dc.b	69				
						
	.dc.b	112				
						
	.dc.b	149				
	.dc.b	190				
	.dc.b	165				
						
	.dc.b	16				
						
	.dc.b	149				
	.dc.b	222				
	.dc.b	6				
						
	.dc.b	80				
						
	.dc.b	149				
	.dc.b	253				
	.dc.b	105				
						
	.dc.b	80				
						
	.dc.b	150				
	.dc.b	28				
	.dc.b	205				
						
	.dc.b	208				
						
	.dc.b	150				
	.dc.b	60				
	.dc.b	52				
						
	.dc.b	16				
						
	.dc.b	150				
	.dc.b	91				
	.dc.b	155				
						
	.dc.b	240				
						
	.dc.b	150				
	.dc.b	123				
	.dc.b	5				
						
	.dc.b	112				
						
	.dc.b	150				
	.dc.b	154				
	.dc.b	112				
						
	.dc.b	144				
						
	.dc.b	150				
	.dc.b	185				
	.dc.b	221				
						
	.dc.b	80				
						
	.dc.b	150				
	.dc.b	217				
	.dc.b	75				
						
	.dc.b	208				
						
	.dc.b	150				
	.dc.b	248				
	.dc.b	187				
						
	.dc.b	208				
						
	.dc.b	151				
	.dc.b	24				
	.dc.b	45				
						
	.dc.b	144				
						
	.dc.b	151				
	.dc.b	55				
	.dc.b	160				
						
	.dc.b	208				
						
	.dc.b	151				
	.dc.b	87				
	.dc.b	21				
						
	.dc.b	208				
						
	.dc.b	151				
	.dc.b	118				
	.dc.b	140				
						
	.dc.b	112				
						
	.dc.b	151				
	.dc.b	150				
	.dc.b	4				
						
	.dc.b	144				
						
	.dc.b	151				
	.dc.b	181				
	.dc.b	126				
						
	.dc.b	112				
						
	.dc.b	151				
	.dc.b	212				
	.dc.b	249				
						
	.dc.b	240				
						
	.dc.b	151				
	.dc.b	244				
	.dc.b	119				
						
	.dc.b	16				
						
	.dc.b	152				
	.dc.b	19				
	.dc.b	245				
						
	.dc.b	240				
						
	.dc.b	152				
	.dc.b	51				
	.dc.b	118				
						
	.dc.b	80				
						
	.dc.b	152				
	.dc.b	82				
	.dc.b	248				
						
	.dc.b	80				
						
	.dc.b	152				
	.dc.b	114				
	.dc.b	123				
						
	.dc.b	240				
						
	.dc.b	152				
	.dc.b	146				
	.dc.b	1				
						
	.dc.b	48				
						
	.dc.b	152				
	.dc.b	177				
	.dc.b	136				
						
	.dc.b	48				
						
	.dc.b	152				
	.dc.b	209				
	.dc.b	16				
						
	.dc.b	176				
						
	.dc.b	152				
	.dc.b	240				
	.dc.b	154				
						
	.dc.b	208				
						
	.dc.b	153				
	.dc.b	16				
	.dc.b	38				
						
	.dc.b	176				
						
	.dc.b	153				
	.dc.b	47				
	.dc.b	180				
						
	.dc.b	16				
						
	.dc.b	153				
	.dc.b	79				
	.dc.b	67				
						
	.dc.b	16				
						
	.dc.b	153				
	.dc.b	110				
	.dc.b	211				
						
	.dc.b	208				
						
	.dc.b	153				
	.dc.b	142				
	.dc.b	102				
						
	.dc.b	16				
						
	.dc.b	153				
	.dc.b	173				
	.dc.b	249				
						
	.dc.b	240				
						
	.dc.b	153				
	.dc.b	205				
	.dc.b	143				
						
	.dc.b	112				
						
	.dc.b	153				
	.dc.b	237				
	.dc.b	38				
						
	.dc.b	176				
						
	.dc.b	154				
	.dc.b	12				
	.dc.b	191				
						
	.dc.b	112				
						
	.dc.b	154				
	.dc.b	44				
	.dc.b	89				
						
	.dc.b	208				
						
	.dc.b	154				
	.dc.b	75				
	.dc.b	245				
						
	.dc.b	208				
						
	.dc.b	154				
	.dc.b	107				
	.dc.b	147				
						
	.dc.b	112				
						
	.dc.b	154				
	.dc.b	139				
	.dc.b	50				
						
	.dc.b	176				
						
	.dc.b	154				
	.dc.b	170				
	.dc.b	211				
						
	.dc.b	144				
						
	.dc.b	154				
	.dc.b	202				
	.dc.b	118				
						
	.dc.b	16				
						
	.dc.b	154				
	.dc.b	234				
	.dc.b	26				
						
	.dc.b	48				
						
	.dc.b	155				
	.dc.b	9				
	.dc.b	191				
						
	.dc.b	240				
						
	.dc.b	155				
	.dc.b	41				
	.dc.b	103				
						
	.dc.b	80				
						
	.dc.b	155				
	.dc.b	73				
	.dc.b	16				
						
	.dc.b	48				
						
	.dc.b	155				
	.dc.b	104				
	.dc.b	186				
						
	.dc.b	208				
						
	.dc.b	155				
	.dc.b	136				
	.dc.b	102				
						
	.dc.b	240				
						
	.dc.b	155				
	.dc.b	168				
	.dc.b	20				
						
	.dc.b	208				
						
	.dc.b	155				
	.dc.b	199				
	.dc.b	196				
						
	.dc.b	48				
						
	.dc.b	155				
	.dc.b	231				
	.dc.b	117				
						
	.dc.b	48				
						
	.dc.b	156				
	.dc.b	7				
	.dc.b	39				
						
	.dc.b	208				
						
	.dc.b	156				
	.dc.b	38				
	.dc.b	220				
						
	.dc.b	16				
						
	.dc.b	156				
	.dc.b	70				
	.dc.b	145				
						
	.dc.b	240				
						
	.dc.b	156				
	.dc.b	102				
	.dc.b	73				
						
	.dc.b	112				
						
	.dc.b	156				
	.dc.b	134				
	.dc.b	2				
						
	.dc.b	112				
						
	.dc.b	156				
	.dc.b	165				
	.dc.b	189				
						
	.dc.b	48				
						
	.dc.b	156				
	.dc.b	197				
	.dc.b	121				
						
	.dc.b	112				
						
	.dc.b	156				
	.dc.b	229				
	.dc.b	55				
						
	.dc.b	80				
						
	.dc.b	157				
	.dc.b	4				
	.dc.b	246				
						
	.dc.b	208				
						
	.dc.b	157				
	.dc.b	36				
	.dc.b	183				
						
	.dc.b	240				
						
	.dc.b	157				
	.dc.b	68				
	.dc.b	122				
						
	.dc.b	144				
						
	.dc.b	157				
	.dc.b	100				
	.dc.b	62				
						
	.dc.b	240				
						
	.dc.b	157				
	.dc.b	132				
	.dc.b	4				
						
	.dc.b	208				
						
	.dc.b	157				
	.dc.b	163				
	.dc.b	204				
						
	.dc.b	80				
						
	.dc.b	157				
	.dc.b	195				
	.dc.b	149				
						
	.dc.b	112				
						
	.dc.b	157				
	.dc.b	227				
	.dc.b	96				
						
	.dc.b	48				
						
	.dc.b	158				
	.dc.b	3				
	.dc.b	44				
						
	.dc.b	112				
						
	.dc.b	158				
	.dc.b	34				
	.dc.b	250				
						
	.dc.b	112				
						
	.dc.b	158				
	.dc.b	66				
	.dc.b	201				
						
	.dc.b	240				
						
	.dc.b	158				
	.dc.b	98				
	.dc.b	155				
						
	.dc.b	16				
						
	.dc.b	158				
	.dc.b	130				
	.dc.b	109				
						
	.dc.b	176				
						
	.dc.b	158				
	.dc.b	162				
	.dc.b	66				
						
	.dc.b	16				
						
	.dc.b	158				
	.dc.b	194				
	.dc.b	23				
						
	.dc.b	240				
						
	.dc.b	158				
	.dc.b	225				
	.dc.b	239				
						
	.dc.b	112				
						
	.dc.b	159				
	.dc.b	1				
	.dc.b	200				
						
	.dc.b	144				
						
	.dc.b	159				
	.dc.b	33				
	.dc.b	163				
						
	.dc.b	48				
						
	.dc.b	159				
	.dc.b	65				
	.dc.b	127				
						
	.dc.b	144				
						
	.dc.b	159				
	.dc.b	97				
	.dc.b	93				
						
	.dc.b	112				
						
	.dc.b	159				
	.dc.b	129				
	.dc.b	60				
						
	.dc.b	240				
						
	.dc.b	159				
	.dc.b	161				
	.dc.b	29				
						
	.dc.b	240				
						
	.dc.b	159				
	.dc.b	193				
	.dc.b	0				
						
	.dc.b	176				
						
	.dc.b	159				
	.dc.b	224				
	.dc.b	228				
						
	.dc.b	240				
						
	.dc.b	160				
	.dc.b	0				
	.dc.b	202				
						
	.dc.b	176				
						
	.dc.b	160				
	.dc.b	32				
	.dc.b	178				
						
	.dc.b	48				
						
	.dc.b	160				
	.dc.b	64				
	.dc.b	155				
						
	.dc.b	48				
						
	.dc.b	160				
	.dc.b	96				
	.dc.b	133				
						
	.dc.b	208				
						
	.dc.b	160				
	.dc.b	128				
	.dc.b	113				
						
	.dc.b	240				
						
	.dc.b	160				
	.dc.b	160				
	.dc.b	95				
						
	.dc.b	208				
						
	.dc.b	160				
	.dc.b	192				
	.dc.b	79				
						
	.dc.b	48				
						
	.dc.b	160				
	.dc.b	224				
	.dc.b	64				
						
	.dc.b	16				
						
	.dc.b	161				
	.dc.b	0				
	.dc.b	50				
						
	.dc.b	176				
						
	.dc.b	161				
	.dc.b	32				
	.dc.b	38				
						
	.dc.b	208				
						
	.dc.b	161				
	.dc.b	64				
	.dc.b	28				
						
	.dc.b	112				
						
	.dc.b	161				
	.dc.b	96				
	.dc.b	19				
						
	.dc.b	208				
						
	.dc.b	161				
	.dc.b	128				
	.dc.b	12				
						
	.dc.b	176				
						
	.dc.b	161				
	.dc.b	160				
	.dc.b	7				
						
	.dc.b	48				
						
	.dc.b	161				
	.dc.b	192				
	.dc.b	3				
						
	.dc.b	48				
						
	.dc.b	161				
	.dc.b	224				
	.dc.b	0				
						
	.dc.b	208				
						
	.dc.b	162				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	16				
						
	.dc.b	162				
	.dc.b	32				
	.dc.b	0				
						
	.dc.b	208				
						
	.dc.b	162				
	.dc.b	64				
	.dc.b	3				
						
	.dc.b	48				
						
	.dc.b	162				
	.dc.b	96				
	.dc.b	7				
						
	.dc.b	48				
						
	.dc.b	162				
	.dc.b	128				
	.dc.b	12				
						
	.dc.b	176				
						
	.dc.b	162				
	.dc.b	160				
	.dc.b	19				
						
	.dc.b	208				
						
	.dc.b	162				
	.dc.b	192				
	.dc.b	28				
						
	.dc.b	112				
						
	.dc.b	162				
	.dc.b	224				
	.dc.b	38				
						
	.dc.b	176				
						
	.dc.b	163				
	.dc.b	0				
	.dc.b	50				
						
	.dc.b	144				
						
	.dc.b	163				
	.dc.b	32				
	.dc.b	63				
						
	.dc.b	240				
						
	.dc.b	163				
	.dc.b	64				
	.dc.b	78				
						
	.dc.b	240				
						
	.dc.b	163				
	.dc.b	96				
	.dc.b	95				
						
	.dc.b	144				
						
	.dc.b	163				
	.dc.b	128				
	.dc.b	113				
						
	.dc.b	176				
						
	.dc.b	163				
	.dc.b	160				
	.dc.b	133				
						
	.dc.b	80				
						
	.dc.b	163				
	.dc.b	192				
	.dc.b	154				
						
	.dc.b	144				
						
	.dc.b	163				
	.dc.b	224				
	.dc.b	177				
						
	.dc.b	112				
						
	.dc.b	164				
	.dc.b	0				
	.dc.b	201				
						
	.dc.b	240				
						
	.dc.b	164				
	.dc.b	32				
	.dc.b	227				
						
	.dc.b	240				
						
	.dc.b	164				
	.dc.b	64				
	.dc.b	255				
						
	.dc.b	112				
						
	.dc.b	164				
	.dc.b	97				
	.dc.b	28				
						
	.dc.b	144				
						
	.dc.b	164				
	.dc.b	129				
	.dc.b	59				
						
	.dc.b	80				
						
	.dc.b	164				
	.dc.b	161				
	.dc.b	91				
						
	.dc.b	144				
						
	.dc.b	164				
	.dc.b	193				
	.dc.b	125				
						
	.dc.b	80				
						
	.dc.b	164				
	.dc.b	225				
	.dc.b	160				
						
	.dc.b	208				
						
	.dc.b	165				
	.dc.b	1				
	.dc.b	197				
						
	.dc.b	176				
						
	.dc.b	165				
	.dc.b	33				
	.dc.b	236				
						
	.dc.b	80				
						
	.dc.b	165				
	.dc.b	66				
	.dc.b	20				
						
	.dc.b	112				
						
	.dc.b	165				
	.dc.b	98				
	.dc.b	62				
						
	.dc.b	16				
						
	.dc.b	165				
	.dc.b	130				
	.dc.b	105				
						
	.dc.b	80				
						
	.dc.b	165				
	.dc.b	162				
	.dc.b	150				
						
	.dc.b	16				
						
	.dc.b	165				
	.dc.b	194				
	.dc.b	196				
						
	.dc.b	112				
						
	.dc.b	165				
	.dc.b	226				
	.dc.b	244				
						
	.dc.b	80				
						
	.dc.b	166				
	.dc.b	3				
	.dc.b	37				
						
	.dc.b	208				
						
	.dc.b	166				
	.dc.b	35				
	.dc.b	88				
						
	.dc.b	208				
						
	.dc.b	166				
	.dc.b	67				
	.dc.b	141				
						
	.dc.b	112				
						
	.dc.b	166				
	.dc.b	99				
	.dc.b	195				
						
	.dc.b	144				
						
	.dc.b	166				
	.dc.b	131				
	.dc.b	251				
						
	.dc.b	80				
						
	.dc.b	166				
	.dc.b	164				
	.dc.b	52				
						
	.dc.b	144				
						
	.dc.b	166				
	.dc.b	196				
	.dc.b	111				
						
	.dc.b	112				
						
	.dc.b	166				
	.dc.b	228				
	.dc.b	171				
						
	.dc.b	208				
						
	.dc.b	167				
	.dc.b	4				
	.dc.b	233				
						
	.dc.b	208				
						
	.dc.b	167				
	.dc.b	37				
	.dc.b	41				
						
	.dc.b	80				
						
	.dc.b	167				
	.dc.b	69				
	.dc.b	106				
						
	.dc.b	80				
						
	.dc.b	167				
	.dc.b	101				
	.dc.b	172				
						
	.dc.b	240				
						
	.dc.b	167				
	.dc.b	133				
	.dc.b	241				
						
	.dc.b	48				
						
	.dc.b	167				
	.dc.b	166				
	.dc.b	54				
						
	.dc.b	208				
						
	.dc.b	167				
	.dc.b	198				
	.dc.b	126				
						
	.dc.b	48				
						
	.dc.b	167				
	.dc.b	230				
	.dc.b	198				
						
	.dc.b	240				
						
	.dc.b	168				
	.dc.b	7				
	.dc.b	17				
						
	.dc.b	80				
						
	.dc.b	168				
	.dc.b	39				
	.dc.b	93				
						
	.dc.b	80				
						
	.dc.b	168				
	.dc.b	71				
	.dc.b	170				
						
	.dc.b	208				
						
	.dc.b	168				
	.dc.b	103				
	.dc.b	249				
						
	.dc.b	208				
						
	.dc.b	168				
	.dc.b	136				
	.dc.b	74				
						
	.dc.b	112				
						
	.dc.b	168				
	.dc.b	168				
	.dc.b	156				
						
	.dc.b	144				
						
	.dc.b	168				
	.dc.b	200				
	.dc.b	240				
						
	.dc.b	48				
						
	.dc.b	168				
	.dc.b	233				
	.dc.b	69				
						
	.dc.b	112				
						
	.dc.b	169				
	.dc.b	9				
	.dc.b	156				
						
	.dc.b	80				
						
	.dc.b	169				
	.dc.b	41				
	.dc.b	244				
						
	.dc.b	144				
						
	.dc.b	169				
	.dc.b	74				
	.dc.b	78				
						
	.dc.b	112				
						
	.dc.b	169				
	.dc.b	106				
	.dc.b	169				
						
	.dc.b	208				
						
	.dc.b	169				
	.dc.b	139				
	.dc.b	6				
						
	.dc.b	208				
						
	.dc.b	169				
	.dc.b	171				
	.dc.b	101				
						
	.dc.b	80				
						
	.dc.b	169				
	.dc.b	203				
	.dc.b	197				
						
	.dc.b	112				
						
	.dc.b	169				
	.dc.b	236				
	.dc.b	39				
						
	.dc.b	16				
						
	.dc.b	170				
	.dc.b	12				
	.dc.b	138				
						
	.dc.b	48				
						
	.dc.b	170				
	.dc.b	44				
	.dc.b	238				
						
	.dc.b	208				
						
	.dc.b	170				
	.dc.b	77				
	.dc.b	85				
						
	.dc.b	16				
						
	.dc.b	170				
	.dc.b	109				
	.dc.b	188				
						
	.dc.b	208				
						
	.dc.b	170				
	.dc.b	142				
	.dc.b	38				
						
	.dc.b	48				
						
	.dc.b	170				
	.dc.b	174				
	.dc.b	144				
						
	.dc.b	240				
						
	.dc.b	170				
	.dc.b	206				
	.dc.b	253				
						
	.dc.b	80				
						
	.dc.b	170				
	.dc.b	239				
	.dc.b	107				
						
	.dc.b	80				
						
	.dc.b	171				
	.dc.b	15				
	.dc.b	218				
						
	.dc.b	176				
						
	.dc.b	171				
	.dc.b	48				
	.dc.b	75				
						
	.dc.b	208				
						
	.dc.b	171				
	.dc.b	80				
	.dc.b	190				
						
	.dc.b	80				
						
	.dc.b	171				
	.dc.b	113				
	.dc.b	50				
						
	.dc.b	80				
						
	.dc.b	171				
	.dc.b	145				
	.dc.b	167				
						
	.dc.b	240				
						
	.dc.b	171				
	.dc.b	178				
	.dc.b	31				
						
	.dc.b	48				
						
	.dc.b	171				
	.dc.b	210				
	.dc.b	151				
						
	.dc.b	208				
						
	.dc.b	171				
	.dc.b	243				
	.dc.b	18				
						
	.dc.b	16				
						
	.dc.b	172				
	.dc.b	19				
	.dc.b	141				
						
	.dc.b	208				
						
	.dc.b	172				
	.dc.b	52				
	.dc.b	11				
						
	.dc.b	16				
						
	.dc.b	172				
	.dc.b	84				
	.dc.b	137				
						
	.dc.b	240				
						
	.dc.b	172				
	.dc.b	117				
	.dc.b	10				
						
	.dc.b	48				
						
	.dc.b	172				
	.dc.b	149				
	.dc.b	140				
						
	.dc.b	16				
						
	.dc.b	172				
	.dc.b	182				
	.dc.b	15				
						
	.dc.b	144				
						
	.dc.b	172				
	.dc.b	214				
	.dc.b	148				
						
	.dc.b	112				
						
	.dc.b	172				
	.dc.b	247				
	.dc.b	26				
						
	.dc.b	240				
						
	.dc.b	173				
	.dc.b	23				
	.dc.b	162				
						
	.dc.b	240				
						
	.dc.b	173				
	.dc.b	56				
	.dc.b	44				
						
	.dc.b	112				
						
	.dc.b	173				
	.dc.b	88				
	.dc.b	183				
						
	.dc.b	144				
						
	.dc.b	173				
	.dc.b	121				
	.dc.b	68				
						
	.dc.b	16				
						
	.dc.b	173				
	.dc.b	153				
	.dc.b	210				
						
	.dc.b	48				
						
	.dc.b	173				
	.dc.b	186				
	.dc.b	97				
						
	.dc.b	208				
						
	.dc.b	173				
	.dc.b	218				
	.dc.b	243				
						
	.dc.b	16				
						
	.dc.b	173				
	.dc.b	251				
	.dc.b	133				
						
	.dc.b	176				
						
	.dc.b	174				
	.dc.b	28				
	.dc.b	25				
						
	.dc.b	240				
						
	.dc.b	174				
	.dc.b	60				
	.dc.b	175				
						
	.dc.b	176				
						
	.dc.b	174				
	.dc.b	93				
	.dc.b	70				
						
	.dc.b	240				
						
	.dc.b	174				
	.dc.b	125				
	.dc.b	223				
						
	.dc.b	176				
						
	.dc.b	174				
	.dc.b	158				
	.dc.b	122				
						
	.dc.b	16				
						
	.dc.b	174				
	.dc.b	191				
	.dc.b	21				
						
	.dc.b	208				
						
	.dc.b	174				
	.dc.b	223				
	.dc.b	179				
						
	.dc.b	48				
						
	.dc.b	175				
	.dc.b	0				
	.dc.b	82				
						
	.dc.b	16				
						
	.dc.b	175				
	.dc.b	32				
	.dc.b	242				
						
	.dc.b	112				
						
	.dc.b	175				
	.dc.b	65				
	.dc.b	148				
						
	.dc.b	112				
						
	.dc.b	175				
	.dc.b	98				
	.dc.b	55				
						
	.dc.b	208				
						
	.dc.b	175				
	.dc.b	130				
	.dc.b	220				
						
	.dc.b	208				
						
	.dc.b	175				
	.dc.b	163				
	.dc.b	131				
						
	.dc.b	80				
						
	.dc.b	175				
	.dc.b	196				
	.dc.b	43				
						
	.dc.b	48				
						
	.dc.b	175				
	.dc.b	228				
	.dc.b	212				
						
	.dc.b	208				
						
	.dc.b	176				
	.dc.b	5				
	.dc.b	127				
						
	.dc.b	208				
						
	.dc.b	176				
	.dc.b	38				
	.dc.b	44				
						
	.dc.b	80				
						
	.dc.b	176				
	.dc.b	70				
	.dc.b	218				
						
	.dc.b	80				
						
	.dc.b	176				
	.dc.b	103				
	.dc.b	137				
						
	.dc.b	240				
						
	.dc.b	176				
	.dc.b	136				
	.dc.b	59				
						
	.dc.b	16				
						
	.dc.b	176				
	.dc.b	168				
	.dc.b	237				
						
	.dc.b	144				
						
	.dc.b	176				
	.dc.b	201				
	.dc.b	161				
						
	.dc.b	176				
						
	.dc.b	176				
	.dc.b	234				
	.dc.b	87				
						
	.dc.b	80				
						
	.dc.b	177				
	.dc.b	11				
	.dc.b	14				
						
	.dc.b	112				
						
	.dc.b	177				
	.dc.b	43				
	.dc.b	199				
						
	.dc.b	48				
						
	.dc.b	177				
	.dc.b	76				
	.dc.b	129				
						
	.dc.b	80				
						
	.dc.b	177				
	.dc.b	109				
	.dc.b	60				
						
	.dc.b	240				
						
	.dc.b	177				
	.dc.b	141				
	.dc.b	250				
						
	.dc.b	48				
						
	.dc.b	177				
	.dc.b	174				
	.dc.b	184				
						
	.dc.b	208				
						
	.dc.b	177				
	.dc.b	207				
	.dc.b	121				
						
	.dc.b	16				
						
	.dc.b	177				
	.dc.b	240				
	.dc.b	58				
						
	.dc.b	176				
						
	.dc.b	178				
	.dc.b	16				
	.dc.b	253				
						
	.dc.b	240				
						
	.dc.b	178				
	.dc.b	49				
	.dc.b	194				
						
	.dc.b	176				
						
	.dc.b	178				
	.dc.b	82				
	.dc.b	136				
						
	.dc.b	240				
						
	.dc.b	178				
	.dc.b	115				
	.dc.b	80				
						
	.dc.b	144				
						
	.dc.b	178				
	.dc.b	148				
	.dc.b	25				
						
	.dc.b	208				
						
	.dc.b	178				
	.dc.b	180				
	.dc.b	228				
						
	.dc.b	144				
						
	.dc.b	178				
	.dc.b	213				
	.dc.b	176				
						
	.dc.b	208				
						
	.dc.b	178				
	.dc.b	246				
	.dc.b	126				
						
	.dc.b	144				
						
	.dc.b	179				
	.dc.b	23				
	.dc.b	77				
						
	.dc.b	208				
						
	.dc.b	179				
	.dc.b	56				
	.dc.b	30				
						
	.dc.b	144				
						
	.dc.b	179				
	.dc.b	88				
	.dc.b	240				
						
	.dc.b	208				
						
	.dc.b	179				
	.dc.b	121				
	.dc.b	196				
						
	.dc.b	176				
						
	.dc.b	179				
	.dc.b	154				
	.dc.b	153				
						
	.dc.b	240				
						
	.dc.b	179				
	.dc.b	187				
	.dc.b	112				
						
	.dc.b	176				
						
	.dc.b	179				
	.dc.b	220				
	.dc.b	72				
						
	.dc.b	240				
						
	.dc.b	179				
	.dc.b	253				
	.dc.b	34				
						
	.dc.b	176				
						
	.dc.b	180				
	.dc.b	29				
	.dc.b	253				
						
	.dc.b	240				
						
	.dc.b	180				
	.dc.b	62				
	.dc.b	218				
						
	.dc.b	176				
						
	.dc.b	180				
	.dc.b	95				
	.dc.b	184				
						
	.dc.b	240				
						
	.dc.b	180				
	.dc.b	128				
	.dc.b	152				
						
	.dc.b	176				
						
	.dc.b	180				
	.dc.b	161				
	.dc.b	121				
						
	.dc.b	240				
						
	.dc.b	180				
	.dc.b	194				
	.dc.b	92				
						
	.dc.b	176				
						
	.dc.b	180				
	.dc.b	227				
	.dc.b	64				
						
	.dc.b	240				
						
	.dc.b	181				
	.dc.b	4				
	.dc.b	38				
						
	.dc.b	176				
						
	.dc.b	181				
	.dc.b	37				
	.dc.b	13				
						
	.dc.b	240				
						
	.dc.b	181				
	.dc.b	69				
	.dc.b	246				
						
	.dc.b	176				
						
	.dc.b	181				
	.dc.b	102				
	.dc.b	224				
						
	.dc.b	240				
						
	.dc.b	181				
	.dc.b	135				
	.dc.b	204				
						
	.dc.b	176				
						
	.dc.b	181				
	.dc.b	168				
	.dc.b	185				
						
	.dc.b	208				
						
	.dc.b	181				
	.dc.b	201				
	.dc.b	168				
						
	.dc.b	144				
						
	.dc.b	181				
	.dc.b	234				
	.dc.b	152				
						
	.dc.b	208				
						
	.dc.b	182				
	.dc.b	11				
	.dc.b	138				
						
	.dc.b	112				
						
	.dc.b	182				
	.dc.b	44				
	.dc.b	125				
						
	.dc.b	176				
						
	.dc.b	182				
	.dc.b	77				
	.dc.b	114				
						
	.dc.b	80				
						
	.dc.b	182				
	.dc.b	110				
	.dc.b	104				
						
	.dc.b	112				
						
	.dc.b	182				
	.dc.b	143				
	.dc.b	96				
						
	.dc.b	16				
						
	.dc.b	182				
	.dc.b	176				
	.dc.b	89				
						
	.dc.b	48				
						
	.dc.b	182				
	.dc.b	209				
	.dc.b	83				
						
	.dc.b	208				
						
	.dc.b	182				
	.dc.b	242				
	.dc.b	79				
						
	.dc.b	240				
						
	.dc.b	183				
	.dc.b	19				
	.dc.b	77				
						
	.dc.b	144				
						
	.dc.b	183				
	.dc.b	52				
	.dc.b	76				
						
	.dc.b	176				
						
	.dc.b	183				
	.dc.b	85				
	.dc.b	77				
						
	.dc.b	48				
						
	.dc.b	183				
	.dc.b	118				
	.dc.b	79				
						
	.dc.b	80				
						
	.dc.b	183				
	.dc.b	151				
	.dc.b	82				
						
	.dc.b	208				
						
	.dc.b	183				
	.dc.b	184				
	.dc.b	87				
						
	.dc.b	208				
						
	.dc.b	183				
	.dc.b	217				
	.dc.b	94				
						
	.dc.b	80				
						
	.dc.b	183				
	.dc.b	250				
	.dc.b	102				
						
	.dc.b	80				
						
	.dc.b	184				
	.dc.b	27				
	.dc.b	111				
						
	.dc.b	208				
						
	.dc.b	184				
	.dc.b	60				
	.dc.b	122				
						
	.dc.b	208				
						
	.dc.b	184				
	.dc.b	93				
	.dc.b	135				
						
	.dc.b	48				
						
	.dc.b	184				
	.dc.b	126				
	.dc.b	149				
						
	.dc.b	48				
						
	.dc.b	184				
	.dc.b	159				
	.dc.b	164				
						
	.dc.b	144				
						
	.dc.b	184				
	.dc.b	192				
	.dc.b	181				
						
	.dc.b	112				
						
	.dc.b	184				
	.dc.b	225				
	.dc.b	199				
						
	.dc.b	208				
						
	.dc.b	185				
	.dc.b	2				
	.dc.b	219				
						
	.dc.b	176				
						
	.dc.b	185				
	.dc.b	35				
	.dc.b	240				
						
	.dc.b	240				
						
	.dc.b	185				
	.dc.b	69				
	.dc.b	7				
						
	.dc.b	208				
						
	.dc.b	185				
	.dc.b	102				
	.dc.b	32				
						
	.dc.b	16				
						
	.dc.b	185				
	.dc.b	135				
	.dc.b	57				
						
	.dc.b	208				
						
	.dc.b	185				
	.dc.b	168				
	.dc.b	85				
						
	.dc.b	16				
						
	.dc.b	185				
	.dc.b	201				
	.dc.b	113				
						
	.dc.b	176				
						
	.dc.b	185				
	.dc.b	234				
	.dc.b	143				
						
	.dc.b	240				
						
	.dc.b	186				
	.dc.b	11				
	.dc.b	175				
						
	.dc.b	144				
						
	.dc.b	186				
	.dc.b	44				
	.dc.b	208				
						
	.dc.b	176				
						
	.dc.b	186				
	.dc.b	77				
	.dc.b	243				
						
	.dc.b	80				
						
	.dc.b	186				
	.dc.b	111				
	.dc.b	23				
						
	.dc.b	112				
						
	.dc.b	186				
	.dc.b	144				
	.dc.b	60				
						
	.dc.b	240				
						
	.dc.b	186				
	.dc.b	177				
	.dc.b	99				
						
	.dc.b	240				
						
	.dc.b	186				
	.dc.b	210				
	.dc.b	140				
						
	.dc.b	112				
						
	.dc.b	186				
	.dc.b	243				
	.dc.b	182				
						
	.dc.b	112				
						
	.dc.b	187				
	.dc.b	20				
	.dc.b	225				
						
	.dc.b	240				
						
	.dc.b	187				
	.dc.b	54				
	.dc.b	14				
						
	.dc.b	208				
						
	.dc.b	187				
	.dc.b	87				
	.dc.b	61				
						
	.dc.b	48				
						
	.dc.b	187				
	.dc.b	120				
	.dc.b	109				
						
	.dc.b	16				
						
	.dc.b	187				
	.dc.b	153				
	.dc.b	158				
						
	.dc.b	80				
						
	.dc.b	187				
	.dc.b	186				
	.dc.b	209				
						
	.dc.b	48				
						
	.dc.b	187				
	.dc.b	220				
	.dc.b	5				
						
	.dc.b	112				
						
	.dc.b	187				
	.dc.b	253				
	.dc.b	59				
						
	.dc.b	16				
						
	.dc.b	188				
	.dc.b	30				
	.dc.b	114				
						
	.dc.b	80				
						
	.dc.b	188				
	.dc.b	63				
	.dc.b	170				
						
	.dc.b	240				
						
	.dc.b	188				
	.dc.b	96				
	.dc.b	229				
						
	.dc.b	16				
						
	.dc.b	188				
	.dc.b	130				
	.dc.b	32				
						
	.dc.b	176				
						
	.dc.b	188				
	.dc.b	163				
	.dc.b	93				
						
	.dc.b	176				
						
	.dc.b	188				
	.dc.b	196				
	.dc.b	156				
						
	.dc.b	48				
						
	.dc.b	188				
	.dc.b	229				
	.dc.b	220				
						
	.dc.b	48				
						
	.dc.b	189				
	.dc.b	7				
	.dc.b	29				
						
	.dc.b	176				
						
	.dc.b	189				
	.dc.b	40				
	.dc.b	96				
						
	.dc.b	144				
						
	.dc.b	189				
	.dc.b	73				
	.dc.b	164				
						
	.dc.b	240				
						
	.dc.b	189				
	.dc.b	106				
	.dc.b	234				
						
	.dc.b	208				
						
	.dc.b	189				
	.dc.b	140				
	.dc.b	50				
						
	.dc.b	16				
						
	.dc.b	189				
	.dc.b	173				
	.dc.b	122				
						
	.dc.b	208				
						
	.dc.b	189				
	.dc.b	206				
	.dc.b	197				
						
	.dc.b	16				
						
	.dc.b	189				
	.dc.b	240				
	.dc.b	16				
						
	.dc.b	176				
						
	.dc.b	190				
	.dc.b	17				
	.dc.b	93				
						
	.dc.b	208				
						
	.dc.b	190				
	.dc.b	50				
	.dc.b	172				
						
	.dc.b	112				
						
	.dc.b	190				
	.dc.b	83				
	.dc.b	252				
						
	.dc.b	112				
						
	.dc.b	190				
	.dc.b	117				
	.dc.b	77				
						
	.dc.b	240				
						
	.dc.b	190				
	.dc.b	150				
	.dc.b	160				
						
	.dc.b	240				
						
	.dc.b	190				
	.dc.b	183				
	.dc.b	245				
						
	.dc.b	112				
						
	.dc.b	190				
	.dc.b	217				
	.dc.b	75				
						
	.dc.b	80				
						
	.dc.b	190				
	.dc.b	250				
	.dc.b	162				
						
	.dc.b	144				
						
	.dc.b	191				
	.dc.b	27				
	.dc.b	251				
						
	.dc.b	112				
						
	.dc.b	191				
	.dc.b	61				
	.dc.b	85				
						
	.dc.b	176				
						
	.dc.b	191				
	.dc.b	94				
	.dc.b	177				
						
	.dc.b	80				
						
	.dc.b	191				
	.dc.b	128				
	.dc.b	14				
						
	.dc.b	112				
						
	.dc.b	191				
	.dc.b	161				
	.dc.b	109				
						
	.dc.b	16				
						
	.dc.b	191				
	.dc.b	194				
	.dc.b	205				
						
	.dc.b	48				
						
	.dc.b	191				
	.dc.b	228				
	.dc.b	46				
						
	.dc.b	176				
						
	.dc.b	192				
	.dc.b	5				
	.dc.b	145				
						
	.dc.b	176				
						
	.dc.b	192				
	.dc.b	38				
	.dc.b	246				
						
	.dc.b	16				
						
	.dc.b	192				
	.dc.b	72				
	.dc.b	91				
						
	.dc.b	240				
						
	.dc.b	192				
	.dc.b	105				
	.dc.b	195				
						
	.dc.b	48				
						
	.dc.b	192				
	.dc.b	139				
	.dc.b	43				
						
	.dc.b	240				
						
	.dc.b	192				
	.dc.b	172				
	.dc.b	150				
						
	.dc.b	48				
						
	.dc.b	192				
	.dc.b	206				
	.dc.b	1				
						
	.dc.b	240				
						
	.dc.b	192				
	.dc.b	239				
	.dc.b	110				
						
	.dc.b	240				
						
	.dc.b	193				
	.dc.b	16				
	.dc.b	221				
						
	.dc.b	144				
						
	.dc.b	193				
	.dc.b	50				
	.dc.b	77				
						
	.dc.b	144				
						
	.dc.b	193				
	.dc.b	83				
	.dc.b	191				
						
	.dc.b	16				
						
	.dc.b	193				
	.dc.b	117				
	.dc.b	49				
						
	.dc.b	240				
						
	.dc.b	193				
	.dc.b	150				
	.dc.b	166				
						
	.dc.b	80				
						
	.dc.b	193				
	.dc.b	184				
	.dc.b	28				
						
	.dc.b	16				
						
	.dc.b	193				
	.dc.b	217				
	.dc.b	147				
						
	.dc.b	80				
						
	.dc.b	193				
	.dc.b	251				
	.dc.b	12				
						
	.dc.b	16				
						
	.dc.b	194				
	.dc.b	28				
	.dc.b	134				
						
	.dc.b	48				
						
	.dc.b	194				
	.dc.b	62				
	.dc.b	1				
						
	.dc.b	176				
						
	.dc.b	194				
	.dc.b	95				
	.dc.b	126				
						
	.dc.b	176				
						
	.dc.b	194				
	.dc.b	128				
	.dc.b	253				
						
	.dc.b	48				
						
	.dc.b	194				
	.dc.b	162				
	.dc.b	125				
						
	.dc.b	16				
						
	.dc.b	194				
	.dc.b	195				
	.dc.b	254				
						
	.dc.b	112				
						
	.dc.b	194				
	.dc.b	229				
	.dc.b	129				
						
	.dc.b	48				
						
	.dc.b	195				
	.dc.b	7				
	.dc.b	5				
						
	.dc.b	112				
						
	.dc.b	195				
	.dc.b	40				
	.dc.b	139				
						
	.dc.b	16				
						
	.dc.b	195				
	.dc.b	74				
	.dc.b	18				
						
	.dc.b	48				
						
	.dc.b	195				
	.dc.b	107				
	.dc.b	154				
						
	.dc.b	176				
						
	.dc.b	195				
	.dc.b	141				
	.dc.b	36				
						
	.dc.b	176				
						
	.dc.b	195				
	.dc.b	174				
	.dc.b	176				
						
	.dc.b	48				
						
	.dc.b	195				
	.dc.b	208				
	.dc.b	61				
						
	.dc.b	16				
						
	.dc.b	195				
	.dc.b	241				
	.dc.b	203				
						
	.dc.b	80				
						
	.dc.b	196				
	.dc.b	19				
	.dc.b	91				
						
	.dc.b	16				
						
	.dc.b	196				
	.dc.b	52				
	.dc.b	236				
						
	.dc.b	48				
						
	.dc.b	196				
	.dc.b	86				
	.dc.b	126				
						
	.dc.b	208				
						
	.dc.b	196				
	.dc.b	120				
	.dc.b	18				
						
	.dc.b	208				
						
	.dc.b	196				
	.dc.b	153				
	.dc.b	168				
						
	.dc.b	80				
						
	.dc.b	196				
	.dc.b	187				
	.dc.b	63				
						
	.dc.b	48				
						
	.dc.b	196				
	.dc.b	220				
	.dc.b	215				
						
	.dc.b	144				
						
	.dc.b	196				
	.dc.b	254				
	.dc.b	113				
						
	.dc.b	80				
						
	.dc.b	197				
	.dc.b	32				
	.dc.b	12				
						
	.dc.b	144				
						
	.dc.b	197				
	.dc.b	65				
	.dc.b	169				
						
	.dc.b	48				
						
	.dc.b	197				
	.dc.b	99				
	.dc.b	71				
						
	.dc.b	80				
						
	.dc.b	197				
	.dc.b	132				
	.dc.b	230				
						
	.dc.b	208				
						
	.dc.b	197				
	.dc.b	166				
	.dc.b	135				
						
	.dc.b	176				
						
	.dc.b	197				
	.dc.b	200				
	.dc.b	42				
						
	.dc.b	16				
						
	.dc.b	197				
	.dc.b	233				
	.dc.b	205				
						
	.dc.b	240				
						
	.dc.b	198				
	.dc.b	11				
	.dc.b	115				
						
	.dc.b	48				
						
	.dc.b	198				
	.dc.b	45				
	.dc.b	25				
						
	.dc.b	208				
						
	.dc.b	198				
	.dc.b	78				
	.dc.b	193				
						
	.dc.b	240				
						
	.dc.b	198				
	.dc.b	112				
	.dc.b	107				
						
	.dc.b	112				
						
	.dc.b	198				
	.dc.b	146				
	.dc.b	22				
						
	.dc.b	80				
						
	.dc.b	198				
	.dc.b	179				
	.dc.b	194				
						
	.dc.b	176				
						
	.dc.b	198				
	.dc.b	213				
	.dc.b	112				
						
	.dc.b	112				
						
	.dc.b	198				
	.dc.b	247				
	.dc.b	31				
						
	.dc.b	176				
						
	.dc.b	199				
	.dc.b	24				
	.dc.b	208				
						
	.dc.b	80				
						
	.dc.b	199				
	.dc.b	58				
	.dc.b	130				
						
	.dc.b	112				
						
	.dc.b	199				
	.dc.b	92				
	.dc.b	53				
						
	.dc.b	240				
						
	.dc.b	199				
	.dc.b	125				
	.dc.b	234				
						
	.dc.b	208				
						
	.dc.b	199				
	.dc.b	159				
	.dc.b	161				
						
	.dc.b	48				
						
	.dc.b	199				
	.dc.b	193				
	.dc.b	88				
						
	.dc.b	240				
						
	.dc.b	199				
	.dc.b	227				
	.dc.b	18				
						
	.dc.b	48				
						
	.dc.b	200				
	.dc.b	4				
	.dc.b	204				
						
	.dc.b	208				
						
	.dc.b	200				
	.dc.b	38				
	.dc.b	136				
						
	.dc.b	208				
						
	.dc.b	200				
	.dc.b	72				
	.dc.b	70				
						
	.dc.b	80				
						
	.dc.b	200				
	.dc.b	106				
	.dc.b	5				
						
	.dc.b	48				
						
	.dc.b	200				
	.dc.b	139				
	.dc.b	197				
						
	.dc.b	112				
						
	.dc.b	200				
	.dc.b	173				
	.dc.b	135				
						
	.dc.b	48				
						
	.dc.b	200				
	.dc.b	207				
	.dc.b	74				
						
	.dc.b	80				
						
	.dc.b	200				
	.dc.b	241				
	.dc.b	14				
						
	.dc.b	240				
						
	.dc.b	201				
	.dc.b	18				
	.dc.b	212				
						
	.dc.b	240				
						
	.dc.b	201				
	.dc.b	52				
	.dc.b	156				
						
	.dc.b	80				
						
	.dc.b	201				
	.dc.b	86				
	.dc.b	101				
						
	.dc.b	16				
						
	.dc.b	201				
	.dc.b	120				
	.dc.b	47				
						
	.dc.b	80				
						
	.dc.b	201				
	.dc.b	153				
	.dc.b	251				
						
	.dc.b	16				
						
	.dc.b	201				
	.dc.b	187				
	.dc.b	200				
						
	.dc.b	16				
						
	.dc.b	201				
	.dc.b	221				
	.dc.b	150				
						
	.dc.b	144				
						
	.dc.b	201				
	.dc.b	255				
	.dc.b	102				
						
	.dc.b	112				
						
	.dc.b	202				
	.dc.b	33				
	.dc.b	55				
						
	.dc.b	208				
						
	.dc.b	202				
	.dc.b	67				
	.dc.b	10				
						
	.dc.b	144				
						
	.dc.b	202				
	.dc.b	100				
	.dc.b	222				
						
	.dc.b	176				
						
	.dc.b	202				
	.dc.b	134				
	.dc.b	180				
						
	.dc.b	48				
						
	.dc.b	202				
	.dc.b	168				
	.dc.b	139				
						
	.dc.b	48				
						
	.dc.b	202				
	.dc.b	202				
	.dc.b	99				
						
	.dc.b	144				
						
	.dc.b	202				
	.dc.b	236				
	.dc.b	61				
						
	.dc.b	80				
						
	.dc.b	203				
	.dc.b	14				
	.dc.b	24				
						
	.dc.b	144				
						
	.dc.b	203				
	.dc.b	47				
	.dc.b	245				
						
	.dc.b	48				
						
	.dc.b	203				
	.dc.b	81				
	.dc.b	211				
						
	.dc.b	48				
						
	.dc.b	203				
	.dc.b	115				
	.dc.b	178				
						
	.dc.b	176				
						
	.dc.b	203				
	.dc.b	149				
	.dc.b	147				
						
	.dc.b	144				
						
	.dc.b	203				
	.dc.b	183				
	.dc.b	117				
						
	.dc.b	208				
						
	.dc.b	203				
	.dc.b	217				
	.dc.b	89				
						
	.dc.b	112				
						
	.dc.b	203				
	.dc.b	251				
	.dc.b	62				
						
	.dc.b	144				
						
	.dc.b	204				
	.dc.b	29				
	.dc.b	37				
						
	.dc.b	16				
						
	.dc.b	204				
	.dc.b	63				
	.dc.b	12				
						
	.dc.b	240				
						
	.dc.b	204				
	.dc.b	96				
	.dc.b	246				
						
	.dc.b	48				
						
	.dc.b	204				
	.dc.b	130				
	.dc.b	224				
						
	.dc.b	240				
						
	.dc.b	204				
	.dc.b	164				
	.dc.b	205				
						
	.dc.b	16				
						
	.dc.b	204				
	.dc.b	198				
	.dc.b	186				
						
	.dc.b	144				
						
	.dc.b	204				
	.dc.b	232				
	.dc.b	169				
						
	.dc.b	144				
						
	.dc.b	205				
	.dc.b	10				
	.dc.b	153				
						
	.dc.b	208				
						
	.dc.b	205				
	.dc.b	44				
	.dc.b	139				
						
	.dc.b	144				
						
	.dc.b	205				
	.dc.b	78				
	.dc.b	126				
						
	.dc.b	176				
						
	.dc.b	205				
	.dc.b	112				
	.dc.b	115				
						
	.dc.b	80				
						
	.dc.b	205				
	.dc.b	146				
	.dc.b	105				
						
	.dc.b	48				
						
	.dc.b	205				
	.dc.b	180				
	.dc.b	96				
						
	.dc.b	144				
						
	.dc.b	205				
	.dc.b	214				
	.dc.b	89				
						
	.dc.b	80				
						
	.dc.b	205				
	.dc.b	248				
	.dc.b	83				
						
	.dc.b	112				
						
	.dc.b	206				
	.dc.b	26				
	.dc.b	79				
						
	.dc.b	16				
						
	.dc.b	206				
	.dc.b	60				
	.dc.b	75				
						
	.dc.b	240				
						
	.dc.b	206				
	.dc.b	94				
	.dc.b	74				
						
	.dc.b	80				
						
	.dc.b	206				
	.dc.b	128				
	.dc.b	74				
						
	.dc.b	16				
						
	.dc.b	206				
	.dc.b	162				
	.dc.b	75				
						
	.dc.b	80				
						
	.dc.b	206				
	.dc.b	196				
	.dc.b	77				
						
	.dc.b	208				
						
	.dc.b	206				
	.dc.b	230				
	.dc.b	81				
						
	.dc.b	208				
						
	.dc.b	207				
	.dc.b	8				
	.dc.b	87				
						
	.dc.b	48				
						
	.dc.b	207				
	.dc.b	42				
	.dc.b	93				
						
	.dc.b	240				
						
	.dc.b	207				
	.dc.b	76				
	.dc.b	102				
						
	.dc.b	16				
						
	.dc.b	207				
	.dc.b	110				
	.dc.b	111				
						
	.dc.b	144				
						
	.dc.b	207				
	.dc.b	144				
	.dc.b	122				
						
	.dc.b	144				
						
	.dc.b	207				
	.dc.b	178				
	.dc.b	134				
						
	.dc.b	208				
						
	.dc.b	207				
	.dc.b	212				
	.dc.b	148				
						
	.dc.b	144				
						
	.dc.b	207				
	.dc.b	246				
	.dc.b	163				
						
	.dc.b	176				
						
	.dc.b	208				
	.dc.b	24				
	.dc.b	180				
						
	.dc.b	80				
						
	.dc.b	208				
	.dc.b	58				
	.dc.b	198				
						
	.dc.b	48				
						
	.dc.b	208				
	.dc.b	92				
	.dc.b	217				
						
	.dc.b	112				
						
	.dc.b	208				
	.dc.b	126				
	.dc.b	238				
						
	.dc.b	48				
						
	.dc.b	208				
	.dc.b	161				
	.dc.b	4				
						
	.dc.b	80				
						
	.dc.b	208				
	.dc.b	195				
	.dc.b	27				
						
	.dc.b	208				
						
	.dc.b	208				
	.dc.b	229				
	.dc.b	52				
						
	.dc.b	176				
						
	.dc.b	209				
	.dc.b	7				
	.dc.b	78				
						
	.dc.b	240				
						
	.dc.b	209				
	.dc.b	41				
	.dc.b	106				
						
	.dc.b	176				
						
	.dc.b	209				
	.dc.b	75				
	.dc.b	135				
						
	.dc.b	176				
						
	.dc.b	209				
	.dc.b	109				
	.dc.b	166				
						
	.dc.b	48				
						
	.dc.b	209				
	.dc.b	143				
	.dc.b	197				
						
	.dc.b	240				
						
	.dc.b	209				
	.dc.b	177				
	.dc.b	231				
						
	.dc.b	48				
						
	.dc.b	209				
	.dc.b	212				
	.dc.b	9				
						
	.dc.b	208				
						
	.dc.b	209				
	.dc.b	246				
	.dc.b	45				
						
	.dc.b	208				
						
	.dc.b	210				
	.dc.b	24				
	.dc.b	83				
						
	.dc.b	48				
						
	.dc.b	210				
	.dc.b	58				
	.dc.b	121				
						
	.dc.b	240				
						
	.dc.b	210				
	.dc.b	92				
	.dc.b	162				
						
	.dc.b	48				
						
	.dc.b	210				
	.dc.b	126				
	.dc.b	203				
						
	.dc.b	176				
						
	.dc.b	210				
	.dc.b	160				
	.dc.b	246				
						
	.dc.b	176				
						
	.dc.b	210				
	.dc.b	195				
	.dc.b	34				
						
	.dc.b	240				
						
	.dc.b	210				
	.dc.b	229				
	.dc.b	80				
						
	.dc.b	176				
						
	.dc.b	211				
	.dc.b	7				
	.dc.b	127				
						
	.dc.b	208				
						
	.dc.b	211				
	.dc.b	41				
	.dc.b	176				
						
	.dc.b	80				
						
	.dc.b	211				
	.dc.b	75				
	.dc.b	226				
						
	.dc.b	48				
						
	.dc.b	211				
	.dc.b	110				
	.dc.b	21				
						
	.dc.b	112				
						
	.dc.b	211				
	.dc.b	144				
	.dc.b	74				
						
	.dc.b	16				
						
	.dc.b	211				
	.dc.b	178				
	.dc.b	128				
						
	.dc.b	16				
						
	.dc.b	211				
	.dc.b	212				
	.dc.b	183				
						
	.dc.b	112				
						
	.dc.b	211				
	.dc.b	246				
	.dc.b	240				
						
	.dc.b	48				
						
	.dc.b	212				
	.dc.b	25				
	.dc.b	42				
						
	.dc.b	112				
						
	.dc.b	212				
	.dc.b	59				
	.dc.b	101				
						
	.dc.b	240				
						
	.dc.b	212				
	.dc.b	93				
	.dc.b	162				
						
	.dc.b	208				
						
	.dc.b	212				
	.dc.b	127				
	.dc.b	225				
						
	.dc.b	48				
						
	.dc.b	212				
	.dc.b	162				
	.dc.b	32				
						
	.dc.b	208				
						
	.dc.b	212				
	.dc.b	196				
	.dc.b	97				
						
	.dc.b	240				
						
	.dc.b	212				
	.dc.b	230				
	.dc.b	164				
						
	.dc.b	80				
						
	.dc.b	213				
	.dc.b	8				
	.dc.b	232				
						
	.dc.b	48				
						
	.dc.b	213				
	.dc.b	43				
	.dc.b	45				
						
	.dc.b	80				
						
	.dc.b	213				
	.dc.b	77				
	.dc.b	115				
						
	.dc.b	240				
						
	.dc.b	213				
	.dc.b	111				
	.dc.b	187				
						
	.dc.b	240				
						
	.dc.b	213				
	.dc.b	146				
	.dc.b	5				
						
	.dc.b	48				
						
	.dc.b	213				
	.dc.b	180				
	.dc.b	79				
						
	.dc.b	240				
						
	.dc.b	213				
	.dc.b	214				
	.dc.b	156				
						
	.dc.b	16				
						
	.dc.b	213				
	.dc.b	248				
	.dc.b	233				
						
	.dc.b	112				
						
	.dc.b	214				
	.dc.b	27				
	.dc.b	56				
						
	.dc.b	80				
						
	.dc.b	214				
	.dc.b	61				
	.dc.b	136				
						
	.dc.b	112				
						
	.dc.b	214				
	.dc.b	95				
	.dc.b	218				
						
	.dc.b	16				
						
	.dc.b	214				
	.dc.b	130				
	.dc.b	45				
						
	.dc.b	16				
						
	.dc.b	214				
	.dc.b	164				
	.dc.b	129				
						
	.dc.b	80				
						
	.dc.b	214				
	.dc.b	198				
	.dc.b	215				
						
	.dc.b	16				
						
	.dc.b	214				
	.dc.b	233				
	.dc.b	46				
						
	.dc.b	48				
						
	.dc.b	215				
	.dc.b	11				
	.dc.b	134				
						
	.dc.b	144				
						
	.dc.b	215				
	.dc.b	45				
	.dc.b	224				
						
	.dc.b	112				
						
	.dc.b	215				
	.dc.b	80				
	.dc.b	59				
						
	.dc.b	144				
						
	.dc.b	215				
	.dc.b	114				
	.dc.b	152				
						
	.dc.b	48				
						
	.dc.b	215				
	.dc.b	148				
	.dc.b	246				
						
	.dc.b	16				
						
	.dc.b	215				
	.dc.b	183				
	.dc.b	85				
						
	.dc.b	80				
						
	.dc.b	215				
	.dc.b	217				
	.dc.b	182				
						
	.dc.b	16				
						
	.dc.b	215				
	.dc.b	252				
	.dc.b	24				
						
	.dc.b	16				
						
	.dc.b	216				
	.dc.b	30				
	.dc.b	123				
						
	.dc.b	112				
						
	.dc.b	216				
	.dc.b	64				
	.dc.b	224				
						
	.dc.b	80				
						
	.dc.b	216				
	.dc.b	99				
	.dc.b	70				
						
	.dc.b	112				
						
	.dc.b	216				
	.dc.b	133				
	.dc.b	173				
						
	.dc.b	240				
						
	.dc.b	216				
	.dc.b	168				
	.dc.b	22				
						
	.dc.b	208				
						
	.dc.b	216				
	.dc.b	202				
	.dc.b	129				
						
	.dc.b	16				
						
	.dc.b	216				
	.dc.b	236				
	.dc.b	236				
						
	.dc.b	176				
						
	.dc.b	217				
	.dc.b	15				
	.dc.b	89				
						
	.dc.b	144				
						
	.dc.b	217				
	.dc.b	49				
	.dc.b	199				
						
	.dc.b	240				
						
	.dc.b	217				
	.dc.b	84				
	.dc.b	55				
						
	.dc.b	176				
						
	.dc.b	217				
	.dc.b	118				
	.dc.b	168				
						
	.dc.b	176				
						
	.dc.b	217				
	.dc.b	153				
	.dc.b	27				
						
	.dc.b	48				
						
	.dc.b	217				
	.dc.b	187				
	.dc.b	142				
						
	.dc.b	240				
						
	.dc.b	217				
	.dc.b	222				
	.dc.b	4				
						
	.dc.b	16				
						
	.dc.b	218				
	.dc.b	0				
	.dc.b	122				
						
	.dc.b	144				
						
	.dc.b	218				
	.dc.b	34				
	.dc.b	242				
						
	.dc.b	144				
						
	.dc.b	218				
	.dc.b	69				
	.dc.b	107				
						
	.dc.b	208				
						
	.dc.b	218				
	.dc.b	103				
	.dc.b	230				
						
	.dc.b	80				
						
	.dc.b	218				
	.dc.b	138				
	.dc.b	98				
						
	.dc.b	80				
						
	.dc.b	218				
	.dc.b	172				
	.dc.b	223				
						
	.dc.b	176				
						
	.dc.b	218				
	.dc.b	207				
	.dc.b	94				
						
	.dc.b	80				
						
	.dc.b	218				
	.dc.b	241				
	.dc.b	222				
						
	.dc.b	112				
						
	.dc.b	219				
	.dc.b	20				
	.dc.b	95				
						
	.dc.b	208				
						
	.dc.b	219				
	.dc.b	54				
	.dc.b	226				
						
	.dc.b	144				
						
	.dc.b	219				
	.dc.b	89				
	.dc.b	102				
						
	.dc.b	176				
						
	.dc.b	219				
	.dc.b	123				
	.dc.b	236				
						
	.dc.b	48				
						
	.dc.b	219				
	.dc.b	158				
	.dc.b	115				
						
	.dc.b	16				
						
	.dc.b	219				
	.dc.b	192				
	.dc.b	251				
						
	.dc.b	48				
						
	.dc.b	219				
	.dc.b	227				
	.dc.b	132				
						
	.dc.b	208				
						
	.dc.b	220				
	.dc.b	6				
	.dc.b	15				
						
	.dc.b	176				
						
	.dc.b	220				
	.dc.b	40				
	.dc.b	155				
						
	.dc.b	240				
						
	.dc.b	220				
	.dc.b	75				
	.dc.b	41				
						
	.dc.b	144				
						
	.dc.b	220				
	.dc.b	109				
	.dc.b	184				
						
	.dc.b	144				
						
	.dc.b	220				
	.dc.b	144				
	.dc.b	72				
						
	.dc.b	208				
						
	.dc.b	220				
	.dc.b	178				
	.dc.b	218				
						
	.dc.b	144				
						
	.dc.b	220				
	.dc.b	213				
	.dc.b	109				
						
	.dc.b	144				
						
	.dc.b	220				
	.dc.b	248				
	.dc.b	1				
						
	.dc.b	240				
						
	.dc.b	221				
	.dc.b	26				
	.dc.b	151				
						
	.dc.b	176				
						
	.dc.b	221				
	.dc.b	61				
	.dc.b	46				
						
	.dc.b	208				
						
	.dc.b	221				
	.dc.b	95				
	.dc.b	199				
						
	.dc.b	80				
						
	.dc.b	221				
	.dc.b	130				
	.dc.b	97				
						
	.dc.b	16				
						
	.dc.b	221				
	.dc.b	164				
	.dc.b	252				
						
	.dc.b	80				
						
	.dc.b	221				
	.dc.b	199				
	.dc.b	152				
						
	.dc.b	208				
						
	.dc.b	221				
	.dc.b	234				
	.dc.b	54				
						
	.dc.b	144				
						
	.dc.b	222				
	.dc.b	12				
	.dc.b	213				
						
	.dc.b	208				
						
	.dc.b	222				
	.dc.b	47				
	.dc.b	118				
						
	.dc.b	112				
						
	.dc.b	222				
	.dc.b	82				
	.dc.b	24				
						
	.dc.b	80				
						
	.dc.b	222				
	.dc.b	116				
	.dc.b	187				
						
	.dc.b	144				
						
	.dc.b	222				
	.dc.b	151				
	.dc.b	96				
						
	.dc.b	48				
						
	.dc.b	222				
	.dc.b	186				
	.dc.b	6				
						
	.dc.b	16				
						
	.dc.b	222				
	.dc.b	220				
	.dc.b	173				
						
	.dc.b	112				
						
	.dc.b	222				
	.dc.b	255				
	.dc.b	86				
						
	.dc.b	16				
						
	.dc.b	223				
	.dc.b	34				
	.dc.b	0				
						
	.dc.b	16				
						
	.dc.b	223				
	.dc.b	68				
	.dc.b	171				
						
	.dc.b	80				
						
	.dc.b	223				
	.dc.b	103				
	.dc.b	88				
						
	.dc.b	16				
						
	.dc.b	223				
	.dc.b	138				
	.dc.b	6				
						
	.dc.b	16				
						
	.dc.b	223				
	.dc.b	172				
	.dc.b	181				
						
	.dc.b	112				
						
	.dc.b	223				
	.dc.b	207				
	.dc.b	102				
						
	.dc.b	48				
						
	.dc.b	223				
	.dc.b	242				
	.dc.b	24				
						
	.dc.b	80				
						
	.dc.b	224				
	.dc.b	20				
	.dc.b	203				
						
	.dc.b	176				
						
	.dc.b	224				
	.dc.b	55				
	.dc.b	128				
						
	.dc.b	112				
						
	.dc.b	224				
	.dc.b	90				
	.dc.b	54				
						
	.dc.b	144				
						
	.dc.b	224				
	.dc.b	124				
	.dc.b	237				
						
	.dc.b	240				
						
	.dc.b	224				
	.dc.b	159				
	.dc.b	166				
						
	.dc.b	176				
						
	.dc.b	224				
	.dc.b	194				
	.dc.b	96				
						
	.dc.b	208				
						
	.dc.b	224				
	.dc.b	229				
	.dc.b	28				
						
	.dc.b	80				
						
	.dc.b	225				
	.dc.b	7				
	.dc.b	217				
						
	.dc.b	48				
						
	.dc.b	225				
	.dc.b	42				
	.dc.b	151				
						
	.dc.b	80				
						
	.dc.b	225				
	.dc.b	77				
	.dc.b	86				
						
	.dc.b	208				
						
	.dc.b	225				
	.dc.b	112				
	.dc.b	23				
						
	.dc.b	144				
						
	.dc.b	225				
	.dc.b	146				
	.dc.b	217				
						
	.dc.b	208				
						
	.dc.b	225				
	.dc.b	181				
	.dc.b	157				
						
	.dc.b	80				
						
	.dc.b	225				
	.dc.b	216				
	.dc.b	98				
						
	.dc.b	16				
						
	.dc.b	225				
	.dc.b	251				
	.dc.b	40				
						
	.dc.b	80				
						
	.dc.b	226				
	.dc.b	29				
	.dc.b	239				
						
	.dc.b	208				
						
	.dc.b	226				
	.dc.b	64				
	.dc.b	184				
						
	.dc.b	176				
						
	.dc.b	226				
	.dc.b	99				
	.dc.b	130				
						
	.dc.b	240				
						
	.dc.b	226				
	.dc.b	134				
	.dc.b	78				
						
	.dc.b	112				
						
	.dc.b	226				
	.dc.b	169				
	.dc.b	27				
						
	.dc.b	80				
						
	.dc.b	226				
	.dc.b	203				
	.dc.b	233				
						
	.dc.b	112				
						
	.dc.b	226				
	.dc.b	238				
	.dc.b	185				
						
	.dc.b	16				
						
	.dc.b	227				
	.dc.b	17				
	.dc.b	137				
						
	.dc.b	240				
						
	.dc.b	227				
	.dc.b	52				
	.dc.b	92				
						
	.dc.b	16				
						
	.dc.b	227				
	.dc.b	87				
	.dc.b	47				
						
	.dc.b	176				
						
	.dc.b	227				
	.dc.b	122				
	.dc.b	4				
						
	.dc.b	144				
						
	.dc.b	227				
	.dc.b	156				
	.dc.b	218				
						
	.dc.b	208				
						
	.dc.b	227				
	.dc.b	191				
	.dc.b	178				
						
	.dc.b	80				
						
	.dc.b	227				
	.dc.b	226				
	.dc.b	139				
						
	.dc.b	48				
						
	.dc.b	228				
	.dc.b	5				
	.dc.b	101				
						
	.dc.b	112				
						
	.dc.b	228				
	.dc.b	40				
	.dc.b	64				
						
	.dc.b	240				
						
	.dc.b	228				
	.dc.b	75				
	.dc.b	29				
						
	.dc.b	208				
						
	.dc.b	228				
	.dc.b	109				
	.dc.b	252				
						
	.dc.b	16				
						
	.dc.b	228				
	.dc.b	144				
	.dc.b	219				
						
	.dc.b	144				
						
	.dc.b	228				
	.dc.b	179				
	.dc.b	188				
						
	.dc.b	112				
						
	.dc.b	228				
	.dc.b	214				
	.dc.b	158				
						
	.dc.b	144				
						
	.dc.b	228				
	.dc.b	249				
	.dc.b	130				
						
	.dc.b	48				
						
	.dc.b	229				
	.dc.b	28				
	.dc.b	103				
						
	.dc.b	16				
						
	.dc.b	229				
	.dc.b	63				
	.dc.b	77				
						
	.dc.b	48				
						
	.dc.b	229				
	.dc.b	98				
	.dc.b	52				
						
	.dc.b	176				
						
	.dc.b	229				
	.dc.b	133				
	.dc.b	29				
						
	.dc.b	144				
						
	.dc.b	229				
	.dc.b	168				
	.dc.b	7				
						
	.dc.b	176				
						
	.dc.b	229				
	.dc.b	202				
	.dc.b	243				
						
	.dc.b	48				
						
	.dc.b	229				
	.dc.b	237				
	.dc.b	224				
						
	.dc.b	16				
						
	.dc.b	230				
	.dc.b	16				
	.dc.b	206				
						
	.dc.b	48				
						
	.dc.b	230				
	.dc.b	51				
	.dc.b	189				
						
	.dc.b	176				
						
	.dc.b	230				
	.dc.b	86				
	.dc.b	174				
						
	.dc.b	112				
						
	.dc.b	230				
	.dc.b	121				
	.dc.b	160				
						
	.dc.b	144				
						
	.dc.b	230				
	.dc.b	156				
	.dc.b	148				
						
	.dc.b	16				
						
	.dc.b	230				
	.dc.b	191				
	.dc.b	136				
						
	.dc.b	208				
						
	.dc.b	230				
	.dc.b	226				
	.dc.b	126				
						
	.dc.b	240				
						
	.dc.b	231				
	.dc.b	5				
	.dc.b	118				
						
	.dc.b	80				
						
	.dc.b	231				
	.dc.b	40				
	.dc.b	111				
						
	.dc.b	16				
						
	.dc.b	231				
	.dc.b	75				
	.dc.b	105				
						
	.dc.b	48				
						
	.dc.b	231				
	.dc.b	110				
	.dc.b	100				
						
	.dc.b	144				
						
	.dc.b	231				
	.dc.b	145				
	.dc.b	97				
						
	.dc.b	80				
						
	.dc.b	231				
	.dc.b	180				
	.dc.b	95				
						
	.dc.b	80				
						
	.dc.b	231				
	.dc.b	215				
	.dc.b	94				
						
	.dc.b	176				
						
	.dc.b	231				
	.dc.b	250				
	.dc.b	95				
						
	.dc.b	80				
						
	.dc.b	232				
	.dc.b	29				
	.dc.b	97				
						
	.dc.b	80				
						
	.dc.b	232				
	.dc.b	64				
	.dc.b	100				
						
	.dc.b	176				
						
	.dc.b	232				
	.dc.b	99				
	.dc.b	105				
						
	.dc.b	80				
						
	.dc.b	232				
	.dc.b	134				
	.dc.b	111				
						
	.dc.b	80				
						
	.dc.b	232				
	.dc.b	169				
	.dc.b	118				
						
	.dc.b	144				
						
	.dc.b	232				
	.dc.b	204				
	.dc.b	127				
						
	.dc.b	16				
						
	.dc.b	232				
	.dc.b	239				
	.dc.b	137				
						
	.dc.b	16				
						
	.dc.b	233				
	.dc.b	18				
	.dc.b	148				
						
	.dc.b	80				
						
	.dc.b	233				
	.dc.b	53				
	.dc.b	160				
						
	.dc.b	208				
						
	.dc.b	233				
	.dc.b	88				
	.dc.b	174				
						
	.dc.b	176				
						
	.dc.b	233				
	.dc.b	123				
	.dc.b	189				
						
	.dc.b	208				
						
	.dc.b	233				
	.dc.b	158				
	.dc.b	206				
						
	.dc.b	80				
						
	.dc.b	233				
	.dc.b	193				
	.dc.b	224				
						
	.dc.b	48				
						
	.dc.b	233				
	.dc.b	228				
	.dc.b	243				
						
	.dc.b	80				
						
	.dc.b	234				
	.dc.b	8				
	.dc.b	7				
						
	.dc.b	208				
						
	.dc.b	234				
	.dc.b	43				
	.dc.b	29				
						
	.dc.b	144				
						
	.dc.b	234				
	.dc.b	78				
	.dc.b	52				
						
	.dc.b	144				
						
	.dc.b	234				
	.dc.b	113				
	.dc.b	76				
						
	.dc.b	240				
						
	.dc.b	234				
	.dc.b	148				
	.dc.b	102				
						
	.dc.b	176				
						
	.dc.b	234				
	.dc.b	183				
	.dc.b	129				
						
	.dc.b	176				
						
	.dc.b	234				
	.dc.b	218				
	.dc.b	158				
						
	.dc.b	16				
						
	.dc.b	234				
	.dc.b	253				
	.dc.b	187				
						
	.dc.b	176				
						
	.dc.b	235				
	.dc.b	32				
	.dc.b	218				
						
	.dc.b	176				
						
	.dc.b	235				
	.dc.b	67				
	.dc.b	250				
						
	.dc.b	240				
						
	.dc.b	235				
	.dc.b	103				
	.dc.b	28				
						
	.dc.b	112				
						
	.dc.b	235				
	.dc.b	138				
	.dc.b	63				
						
	.dc.b	80				
						
	.dc.b	235				
	.dc.b	173				
	.dc.b	99				
						
	.dc.b	144				
						
	.dc.b	235				
	.dc.b	208				
	.dc.b	137				
						
	.dc.b	16				
						
	.dc.b	235				
	.dc.b	243				
	.dc.b	175				
						
	.dc.b	240				
						
	.dc.b	236				
	.dc.b	22				
	.dc.b	216				
						
	.dc.b	16				
						
	.dc.b	236				
	.dc.b	58				
	.dc.b	1				
						
	.dc.b	112				
						
	.dc.b	236				
	.dc.b	93				
	.dc.b	44				
						
	.dc.b	48				
						
	.dc.b	236				
	.dc.b	128				
	.dc.b	88				
						
	.dc.b	48				
						
	.dc.b	236				
	.dc.b	163				
	.dc.b	133				
						
	.dc.b	144				
						
	.dc.b	236				
	.dc.b	198				
	.dc.b	180				
						
	.dc.b	80				
						
	.dc.b	236				
	.dc.b	233				
	.dc.b	228				
						
	.dc.b	80				
						
	.dc.b	237				
	.dc.b	13				
	.dc.b	21				
						
	.dc.b	144				
						
	.dc.b	237				
	.dc.b	48				
	.dc.b	72				
						
	.dc.b	16				
						
	.dc.b	237				
	.dc.b	83				
	.dc.b	124				
						
	.dc.b	16				
						
	.dc.b	237				
	.dc.b	118				
	.dc.b	177				
						
	.dc.b	48				
						
	.dc.b	237				
	.dc.b	153				
	.dc.b	231				
						
	.dc.b	176				
						
	.dc.b	237				
	.dc.b	189				
	.dc.b	31				
						
	.dc.b	144				
						
	.dc.b	237				
	.dc.b	224				
	.dc.b	88				
						
	.dc.b	176				
						
	.dc.b	238				
	.dc.b	3				
	.dc.b	147				
						
	.dc.b	16				
						
	.dc.b	238				
	.dc.b	38				
	.dc.b	206				
						
	.dc.b	208				
						
	.dc.b	238				
	.dc.b	74				
	.dc.b	11				
						
	.dc.b	208				
						
	.dc.b	238				
	.dc.b	109				
	.dc.b	74				
						
	.dc.b	48				
						
	.dc.b	238				
	.dc.b	144				
	.dc.b	137				
						
	.dc.b	208				
						
	.dc.b	238				
	.dc.b	179				
	.dc.b	202				
						
	.dc.b	176				
						
	.dc.b	238				
	.dc.b	215				
	.dc.b	12				
						
	.dc.b	240				
						
	.dc.b	238				
	.dc.b	250				
	.dc.b	80				
						
	.dc.b	112				
						
	.dc.b	239				
	.dc.b	29				
	.dc.b	149				
						
	.dc.b	80				
						
	.dc.b	239				
	.dc.b	64				
	.dc.b	219				
						
	.dc.b	112				
						
	.dc.b	239				
	.dc.b	100				
	.dc.b	34				
						
	.dc.b	240				
						
	.dc.b	239				
	.dc.b	135				
	.dc.b	107				
						
	.dc.b	176				
						
	.dc.b	239				
	.dc.b	170				
	.dc.b	181				
						
	.dc.b	176				
						
	.dc.b	239				
	.dc.b	206				
	.dc.b	1				
						
	.dc.b	16				
						
	.dc.b	239				
	.dc.b	241				
	.dc.b	77				
						
	.dc.b	176				
						
	.dc.b	240				
	.dc.b	20				
	.dc.b	155				
						
	.dc.b	144				
						
	.dc.b	240				
	.dc.b	55				
	.dc.b	234				
						
	.dc.b	208				
						
	.dc.b	240				
	.dc.b	91				
	.dc.b	59				
						
	.dc.b	80				
						
	.dc.b	240				
	.dc.b	126				
	.dc.b	141				
						
	.dc.b	48				
						
	.dc.b	240				
	.dc.b	161				
	.dc.b	224				
						
	.dc.b	80				
						
	.dc.b	240				
	.dc.b	197				
	.dc.b	52				
						
	.dc.b	176				
						
	.dc.b	240				
	.dc.b	232				
	.dc.b	138				
						
	.dc.b	112				
						
	.dc.b	241				
	.dc.b	11				
	.dc.b	225				
						
	.dc.b	112				
						
	.dc.b	241				
	.dc.b	47				
	.dc.b	57				
						
	.dc.b	208				
						
	.dc.b	241				
	.dc.b	82				
	.dc.b	147				
						
	.dc.b	80				
						
	.dc.b	241				
	.dc.b	117				
	.dc.b	238				
						
	.dc.b	80				
						
	.dc.b	241				
	.dc.b	153				
	.dc.b	74				
						
	.dc.b	112				
						
	.dc.b	241				
	.dc.b	188				
	.dc.b	167				
						
	.dc.b	240				
						
	.dc.b	241				
	.dc.b	224				
	.dc.b	6				
						
	.dc.b	176				
						
	.dc.b	242				
	.dc.b	3				
	.dc.b	102				
						
	.dc.b	208				
						
	.dc.b	242				
	.dc.b	38				
	.dc.b	200				
						
	.dc.b	48				
						
	.dc.b	242				
	.dc.b	74				
	.dc.b	42				
						
	.dc.b	208				
						
	.dc.b	242				
	.dc.b	109				
	.dc.b	142				
						
	.dc.b	208				
						
	.dc.b	242				
	.dc.b	144				
	.dc.b	244				
						
	.dc.b	16				
						
	.dc.b	242				
	.dc.b	180				
	.dc.b	90				
						
	.dc.b	144				
						
	.dc.b	242				
	.dc.b	215				
	.dc.b	194				
						
	.dc.b	112				
						
	.dc.b	242				
	.dc.b	251				
	.dc.b	43				
						
	.dc.b	144				
						
	.dc.b	243				
	.dc.b	30				
	.dc.b	149				
						
	.dc.b	240				
						
	.dc.b	243				
	.dc.b	66				
	.dc.b	1				
						
	.dc.b	144				
						
	.dc.b	243				
	.dc.b	101				
	.dc.b	110				
						
	.dc.b	144				
						
	.dc.b	243				
	.dc.b	136				
	.dc.b	220				
						
	.dc.b	240				
						
	.dc.b	243				
	.dc.b	172				
	.dc.b	76				
						
	.dc.b	112				
						
	.dc.b	243				
	.dc.b	207				
	.dc.b	189				
						
	.dc.b	80				
						
	.dc.b	243				
	.dc.b	243				
	.dc.b	47				
						
	.dc.b	112				
						
	.dc.b	244				
	.dc.b	22				
	.dc.b	162				
						
	.dc.b	208				
						
	.dc.b	244				
	.dc.b	58				
	.dc.b	23				
						
	.dc.b	144				
						
	.dc.b	244				
	.dc.b	93				
	.dc.b	141				
						
	.dc.b	144				
						
	.dc.b	244				
	.dc.b	129				
	.dc.b	4				
						
	.dc.b	240				
						
	.dc.b	244				
	.dc.b	164				
	.dc.b	125				
						
	.dc.b	112				
						
	.dc.b	244				
	.dc.b	199				
	.dc.b	247				
						
	.dc.b	80				
						
	.dc.b	244				
	.dc.b	235				
	.dc.b	114				
						
	.dc.b	112				
						
	.dc.b	245				
	.dc.b	14				
	.dc.b	238				
						
	.dc.b	240				
						
	.dc.b	245				
	.dc.b	50				
	.dc.b	108				
						
	.dc.b	144				
						
	.dc.b	245				
	.dc.b	85				
	.dc.b	235				
						
	.dc.b	144				
						
	.dc.b	245				
	.dc.b	121				
	.dc.b	107				
						
	.dc.b	240				
						
	.dc.b	245				
	.dc.b	156				
	.dc.b	237				
						
	.dc.b	112				
						
	.dc.b	245				
	.dc.b	192				
	.dc.b	112				
						
	.dc.b	80				
						
	.dc.b	245				
	.dc.b	227				
	.dc.b	244				
						
	.dc.b	112				
						
	.dc.b	246				
	.dc.b	7				
	.dc.b	121				
						
	.dc.b	240				
						
	.dc.b	246				
	.dc.b	43				
	.dc.b	0				
						
	.dc.b	144				
						
	.dc.b	246				
	.dc.b	78				
	.dc.b	136				
						
	.dc.b	144				
						
	.dc.b	246				
	.dc.b	114				
	.dc.b	17				
						
	.dc.b	208				
						
	.dc.b	246				
	.dc.b	149				
	.dc.b	156				
						
	.dc.b	112				
						
	.dc.b	246				
	.dc.b	185				
	.dc.b	40				
						
	.dc.b	48				
						
	.dc.b	246				
	.dc.b	220				
	.dc.b	181				
						
	.dc.b	80				
						
	.dc.b	247				
	.dc.b	0				
	.dc.b	67				
						
	.dc.b	176				
						
	.dc.b	247				
	.dc.b	35				
	.dc.b	211				
						
	.dc.b	112				
						
	.dc.b	247				
	.dc.b	71				
	.dc.b	100				
						
	.dc.b	80				
						
	.dc.b	247				
	.dc.b	106				
	.dc.b	246				
						
	.dc.b	144				
						
	.dc.b	247				
	.dc.b	142				
	.dc.b	138				
						
	.dc.b	16				
						
	.dc.b	247				
	.dc.b	178				
	.dc.b	30				
						
	.dc.b	208				
						
	.dc.b	247				
	.dc.b	213				
	.dc.b	180				
						
	.dc.b	240				
						
	.dc.b	247				
	.dc.b	249				
	.dc.b	76				
						
	.dc.b	48				
						
	.dc.b	248				
	.dc.b	28				
	.dc.b	228				
						
	.dc.b	208				
						
	.dc.b	248				
	.dc.b	64				
	.dc.b	126				
						
	.dc.b	176				
						
	.dc.b	248				
	.dc.b	100				
	.dc.b	25				
						
	.dc.b	240				
						
	.dc.b	248				
	.dc.b	135				
	.dc.b	182				
						
	.dc.b	80				
						
	.dc.b	248				
	.dc.b	171				
	.dc.b	84				
						
	.dc.b	16				
						
	.dc.b	248				
	.dc.b	206				
	.dc.b	243				
						
	.dc.b	16				
						
	.dc.b	248				
	.dc.b	242				
	.dc.b	147				
						
	.dc.b	80				
						
	.dc.b	249				
	.dc.b	22				
	.dc.b	52				
						
	.dc.b	240				
						
	.dc.b	249				
	.dc.b	57				
	.dc.b	215				
						
	.dc.b	176				
						
	.dc.b	249				
	.dc.b	93				
	.dc.b	123				
						
	.dc.b	208				
						
	.dc.b	249				
	.dc.b	129				
	.dc.b	33				
						
	.dc.b	48				
						
	.dc.b	249				
	.dc.b	164				
	.dc.b	199				
						
	.dc.b	208				
						
	.dc.b	249				
	.dc.b	200				
	.dc.b	111				
						
	.dc.b	176				
						
	.dc.b	249				
	.dc.b	236				
	.dc.b	24				
						
	.dc.b	240				
						
	.dc.b	250				
	.dc.b	15				
	.dc.b	195				
						
	.dc.b	112				
						
	.dc.b	250				
	.dc.b	51				
	.dc.b	111				
						
	.dc.b	48				
						
	.dc.b	250				
	.dc.b	87				
	.dc.b	28				
						
	.dc.b	48				
						
	.dc.b	250				
	.dc.b	122				
	.dc.b	202				
						
	.dc.b	112				
						
	.dc.b	250				
	.dc.b	158				
	.dc.b	121				
						
	.dc.b	240				
						
	.dc.b	250				
	.dc.b	194				
	.dc.b	42				
						
	.dc.b	208				
						
	.dc.b	250				
	.dc.b	229				
	.dc.b	220				
						
	.dc.b	208				
						
	.dc.b	251				
	.dc.b	9				
	.dc.b	144				
						
	.dc.b	48				
						
	.dc.b	251				
	.dc.b	45				
	.dc.b	68				
						
	.dc.b	208				
						
	.dc.b	251				
	.dc.b	80				
	.dc.b	250				
						
	.dc.b	176				
						
	.dc.b	251				
	.dc.b	116				
	.dc.b	177				
						
	.dc.b	240				
						
	.dc.b	251				
	.dc.b	152				
	.dc.b	106				
						
	.dc.b	80				
						
	.dc.b	251				
	.dc.b	188				
	.dc.b	36				
						
	.dc.b	16				
						
	.dc.b	251				
	.dc.b	223				
	.dc.b	222				
						
	.dc.b	240				
						
	.dc.b	252				
	.dc.b	3				
	.dc.b	155				
						
	.dc.b	48				
						
	.dc.b	252				
	.dc.b	39				
	.dc.b	88				
						
	.dc.b	176				
						
	.dc.b	252				
	.dc.b	75				
	.dc.b	23				
						
	.dc.b	144				
						
	.dc.b	252				
	.dc.b	110				
	.dc.b	215				
						
	.dc.b	144				
						
	.dc.b	252				
	.dc.b	146				
	.dc.b	152				
						
	.dc.b	208				
						
	.dc.b	252				
	.dc.b	182				
	.dc.b	91				
						
	.dc.b	112				
						
	.dc.b	252				
	.dc.b	218				
	.dc.b	31				
						
	.dc.b	48				
						
	.dc.b	252				
	.dc.b	253				
	.dc.b	228				
						
	.dc.b	80				
						
	.dc.b	253				
	.dc.b	33				
	.dc.b	170				
						
	.dc.b	176				
						
	.dc.b	253				
	.dc.b	69				
	.dc.b	114				
						
	.dc.b	80				
						
	.dc.b	253				
	.dc.b	105				
	.dc.b	59				
						
	.dc.b	48				
						
	.dc.b	253				
	.dc.b	141				
	.dc.b	5				
						
	.dc.b	80				
						
	.dc.b	253				
	.dc.b	176				
	.dc.b	208				
						
	.dc.b	208				
						
	.dc.b	253				
	.dc.b	212				
	.dc.b	157				
						
	.dc.b	112				
						
	.dc.b	253				
	.dc.b	248				
	.dc.b	107				
						
	.dc.b	112				
						
	.dc.b	254				
	.dc.b	28				
	.dc.b	58				
						
	.dc.b	144				
						
	.dc.b	254				
	.dc.b	64				
	.dc.b	11				
						
	.dc.b	16				
						
	.dc.b	254				
	.dc.b	99				
	.dc.b	220				
						
	.dc.b	208				
						
	.dc.b	254				
	.dc.b	135				
	.dc.b	175				
						
	.dc.b	208				
						
	.dc.b	254				
	.dc.b	171				
	.dc.b	132				
						
	.dc.b	16				
						
	.dc.b	254				
	.dc.b	207				
	.dc.b	89				
						
	.dc.b	144				
						
	.dc.b	254				
	.dc.b	243				
	.dc.b	48				
						
	.dc.b	80				
						
	.dc.b	255				
	.dc.b	23				
	.dc.b	8				
						
	.dc.b	80				
						
	.dc.b	255				
	.dc.b	58				
	.dc.b	225				
						
	.dc.b	144				
						
	.dc.b	255				
	.dc.b	94				
	.dc.b	188				
						
	.dc.b	48				
						
	.dc.b	255				
	.dc.b	130				
	.dc.b	151				
						
	.dc.b	240				
						
	.dc.b	255				
	.dc.b	166				
	.dc.b	117				
						
	.dc.b	16				
						
	.dc.b	255				
	.dc.b	202				
	.dc.b	83				
						
	.dc.b	80				
						
	.dc.b	255				
	.dc.b	238				
	.dc.b	50				
						
	.dc.b	240				
						
	.dc.b	128				
	.dc.b	9				
	.dc.b	9				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	26				
	.dc.b	250				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	44				
	.dc.b	236				
						
	.dc.b	145				
						
	.dc.b	128				
	.dc.b	62				
	.dc.b	222				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	80				
	.dc.b	209				
						
	.dc.b	209				
						
	.dc.b	128				
	.dc.b	98				
	.dc.b	197				
						
	.dc.b	113				
						
	.dc.b	128				
	.dc.b	116				
	.dc.b	185				
						
	.dc.b	145				
						
	.dc.b	128				
	.dc.b	134				
	.dc.b	174				
						
	.dc.b	113				
						
	.dc.b	128				
	.dc.b	152				
	.dc.b	163				
						
	.dc.b	209				
						
	.dc.b	128				
	.dc.b	170				
	.dc.b	153				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	188				
	.dc.b	144				
						
	.dc.b	145				
						
	.dc.b	128				
	.dc.b	206				
	.dc.b	135				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	224				
	.dc.b	127				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	242				
	.dc.b	120				
						
	.dc.b	113				
						
	.dc.b	129				
	.dc.b	4				
	.dc.b	113				
						
	.dc.b	177				
						
	.dc.b	129				
	.dc.b	22				
	.dc.b	107				
						
	.dc.b	113				
						
	.dc.b	129				
	.dc.b	40				
	.dc.b	101				
						
	.dc.b	241				
						
	.dc.b	129				
	.dc.b	58				
	.dc.b	97				
						
	.dc.b	17				
						
	.dc.b	129				
	.dc.b	76				
	.dc.b	92				
						
	.dc.b	177				
						
	.dc.b	129				
	.dc.b	94				
	.dc.b	89				
						
	.dc.b	17				
						
	.dc.b	129				
	.dc.b	112				
	.dc.b	86				
						
	.dc.b	17				
						
	.dc.b	129				
	.dc.b	130				
	.dc.b	83				
						
	.dc.b	145				
						
	.dc.b	129				
	.dc.b	148				
	.dc.b	81				
						
	.dc.b	209				
						
	.dc.b	129				
	.dc.b	166				
	.dc.b	80				
						
	.dc.b	145				
						
	.dc.b	129				
	.dc.b	184				
	.dc.b	80				
						
	.dc.b	17				
						
	.dc.b	129				
	.dc.b	202				
	.dc.b	80				
						
	.dc.b	49				
						
	.dc.b	129				
	.dc.b	220				
	.dc.b	80				
						
	.dc.b	209				
						
	.dc.b	129				
	.dc.b	238				
	.dc.b	82				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	0				
	.dc.b	84				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	18				
	.dc.b	86				
						
	.dc.b	177				
						
	.dc.b	130				
	.dc.b	36				
	.dc.b	89				
						
	.dc.b	241				
						
	.dc.b	130				
	.dc.b	54				
	.dc.b	93				
						
	.dc.b	177				
						
	.dc.b	130				
	.dc.b	72				
	.dc.b	98				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	90				
	.dc.b	103				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	108				
	.dc.b	108				
						
	.dc.b	241				
						
	.dc.b	130				
	.dc.b	126				
	.dc.b	115				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	144				
	.dc.b	122				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	162				
	.dc.b	129				
						
	.dc.b	177				
						
	.dc.b	130				
	.dc.b	180				
	.dc.b	137				
						
	.dc.b	241				
						
	.dc.b	130				
	.dc.b	198				
	.dc.b	146				
						
	.dc.b	177				
						
	.dc.b	130				
	.dc.b	216				
	.dc.b	156				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	234				
	.dc.b	166				
						
	.dc.b	49				
						
	.dc.b	130				
	.dc.b	252				
	.dc.b	176				
						
	.dc.b	209				
						
	.dc.b	131				
	.dc.b	14				
	.dc.b	188				
						
	.dc.b	49				
						
	.dc.b	131				
	.dc.b	32				
	.dc.b	200				
						
	.dc.b	17				
						
	.dc.b	131				
	.dc.b	50				
	.dc.b	212				
						
	.dc.b	145				
						
	.dc.b	131				
	.dc.b	68				
	.dc.b	225				
						
	.dc.b	177				
						
	.dc.b	131				
	.dc.b	86				
	.dc.b	239				
						
	.dc.b	113				
						
	.dc.b	131				
	.dc.b	104				
	.dc.b	253				
						
	.dc.b	241				
						
	.dc.b	131				
	.dc.b	123				
	.dc.b	12				
						
	.dc.b	241				
						
	.dc.b	131				
	.dc.b	141				
	.dc.b	28				
						
	.dc.b	145				
						
	.dc.b	131				
	.dc.b	159				
	.dc.b	44				
						
	.dc.b	209				
						
	.dc.b	131				
	.dc.b	177				
	.dc.b	61				
						
	.dc.b	177				
						
	.dc.b	131				
	.dc.b	195				
	.dc.b	79				
						
	.dc.b	49				
						
	.dc.b	131				
	.dc.b	213				
	.dc.b	97				
						
	.dc.b	81				
						
	.dc.b	131				
	.dc.b	231				
	.dc.b	115				
						
	.dc.b	241				
						
	.dc.b	131				
	.dc.b	249				
	.dc.b	135				
						
	.dc.b	81				
						
	.dc.b	132				
	.dc.b	11				
	.dc.b	155				
						
	.dc.b	81				
						
	.dc.b	132				
	.dc.b	29				
	.dc.b	175				
						
	.dc.b	241				
						
	.dc.b	132				
	.dc.b	47				
	.dc.b	197				
						
	.dc.b	17				
						
	.dc.b	132				
	.dc.b	65				
	.dc.b	218				
						
	.dc.b	241				
						
	.dc.b	132				
	.dc.b	83				
	.dc.b	241				
						
	.dc.b	81				
						
	.dc.b	132				
	.dc.b	102				
	.dc.b	8				
						
	.dc.b	113				
						
	.dc.b	132				
	.dc.b	120				
	.dc.b	32				
						
	.dc.b	17				
						
	.dc.b	132				
	.dc.b	138				
	.dc.b	56				
						
	.dc.b	113				
						
	.dc.b	132				
	.dc.b	156				
	.dc.b	81				
						
	.dc.b	81				
						
	.dc.b	132				
	.dc.b	174				
	.dc.b	106				
						
	.dc.b	209				
						
	.dc.b	132				
	.dc.b	192				
	.dc.b	133				
						
	.dc.b	17				
						
	.dc.b	132				
	.dc.b	210				
	.dc.b	159				
						
	.dc.b	209				
						
	.dc.b	132				
	.dc.b	228				
	.dc.b	187				
						
	.dc.b	49				
						
	.dc.b	132				
	.dc.b	246				
	.dc.b	215				
						
	.dc.b	49				
						
	.dc.b	133				
	.dc.b	8				
	.dc.b	243				
						
	.dc.b	209				
						
	.dc.b	133				
	.dc.b	27				
	.dc.b	17				
						
	.dc.b	17				
						
	.dc.b	133				
	.dc.b	45				
	.dc.b	46				
						
	.dc.b	209				
						
	.dc.b	133				
	.dc.b	63				
	.dc.b	77				
						
	.dc.b	81				
						
	.dc.b	133				
	.dc.b	81				
	.dc.b	108				
						
	.dc.b	113				
						
	.dc.b	133				
	.dc.b	99				
	.dc.b	140				
						
	.dc.b	17				
						
	.dc.b	133				
	.dc.b	117				
	.dc.b	172				
						
	.dc.b	113				
						
	.dc.b	133				
	.dc.b	135				
	.dc.b	205				
						
	.dc.b	81				
						
	.dc.b	133				
	.dc.b	153				
	.dc.b	238				
						
	.dc.b	241				
						
	.dc.b	133				
	.dc.b	172				
	.dc.b	17				
						
	.dc.b	17				
						
	.dc.b	133				
	.dc.b	190				
	.dc.b	51				
						
	.dc.b	209				
						
	.dc.b	133				
	.dc.b	208				
	.dc.b	87				
						
	.dc.b	49				
						
	.dc.b	133				
	.dc.b	226				
	.dc.b	123				
						
	.dc.b	49				
						
	.dc.b	133				
	.dc.b	244				
	.dc.b	159				
						
	.dc.b	209				
						
	.dc.b	134				
	.dc.b	6				
	.dc.b	197				
						
	.dc.b	17				
						
	.dc.b	134				
	.dc.b	24				
	.dc.b	234				
						
	.dc.b	241				
						
	.dc.b	134				
	.dc.b	43				
	.dc.b	17				
						
	.dc.b	113				
						
	.dc.b	134				
	.dc.b	61				
	.dc.b	56				
						
	.dc.b	113				
						
	.dc.b	134				
	.dc.b	79				
	.dc.b	96				
						
	.dc.b	49				
						
	.dc.b	134				
	.dc.b	97				
	.dc.b	136				
						
	.dc.b	113				
						
	.dc.b	134				
	.dc.b	115				
	.dc.b	177				
						
	.dc.b	81				
						
	.dc.b	134				
	.dc.b	133				
	.dc.b	218				
						
	.dc.b	241				
						
	.dc.b	134				
	.dc.b	152				
	.dc.b	5				
						
	.dc.b	17				
						
	.dc.b	134				
	.dc.b	170				
	.dc.b	47				
						
	.dc.b	209				
						
	.dc.b	134				
	.dc.b	188				
	.dc.b	91				
						
	.dc.b	49				
						
	.dc.b	134				
	.dc.b	206				
	.dc.b	135				
						
	.dc.b	49				
						
	.dc.b	134				
	.dc.b	224				
	.dc.b	179				
						
	.dc.b	209				
						
	.dc.b	134				
	.dc.b	242				
	.dc.b	224				
						
	.dc.b	241				
						
	.dc.b	135				
	.dc.b	5				
	.dc.b	14				
						
	.dc.b	209				
						
	.dc.b	135				
	.dc.b	23				
	.dc.b	61				
						
	.dc.b	49				
						
	.dc.b	135				
	.dc.b	41				
	.dc.b	108				
						
	.dc.b	49				
						
	.dc.b	135				
	.dc.b	59				
	.dc.b	155				
						
	.dc.b	241				
						
	.dc.b	135				
	.dc.b	77				
	.dc.b	204				
						
	.dc.b	49				
						
	.dc.b	135				
	.dc.b	95				
	.dc.b	253				
						
	.dc.b	17				
						
	.dc.b	135				
	.dc.b	114				
	.dc.b	46				
						
	.dc.b	145				
						
	.dc.b	135				
	.dc.b	132				
	.dc.b	96				
						
	.dc.b	177				
						
	.dc.b	135				
	.dc.b	150				
	.dc.b	147				
						
	.dc.b	81				
						
	.dc.b	135				
	.dc.b	168				
	.dc.b	198				
						
	.dc.b	177				
						
	.dc.b	135				
	.dc.b	186				
	.dc.b	250				
						
	.dc.b	145				
						
	.dc.b	135				
	.dc.b	205				
	.dc.b	47				
						
	.dc.b	49				
						
	.dc.b	135				
	.dc.b	223				
	.dc.b	100				
						
	.dc.b	81				
						
	.dc.b	135				
	.dc.b	241				
	.dc.b	154				
						
	.dc.b	17				
						
	.dc.b	136				
	.dc.b	3				
	.dc.b	208				
						
	.dc.b	113				
						
	.dc.b	136				
	.dc.b	22				
	.dc.b	7				
						
	.dc.b	113				
						
	.dc.b	136				
	.dc.b	40				
	.dc.b	62				
						
	.dc.b	241				
						
	.dc.b	136				
	.dc.b	58				
	.dc.b	119				
						
	.dc.b	49				
						
	.dc.b	136				
	.dc.b	76				
	.dc.b	176				
						
	.dc.b	17				
						
	.dc.b	136				
	.dc.b	94				
	.dc.b	233				
						
	.dc.b	113				
						
	.dc.b	136				
	.dc.b	113				
	.dc.b	35				
						
	.dc.b	113				
						
	.dc.b	136				
	.dc.b	131				
	.dc.b	94				
						
	.dc.b	17				
						
	.dc.b	136				
	.dc.b	149				
	.dc.b	153				
						
	.dc.b	81				
						
	.dc.b	136				
	.dc.b	167				
	.dc.b	213				
						
	.dc.b	49				
						
	.dc.b	136				
	.dc.b	186				
	.dc.b	17				
						
	.dc.b	177				
						
	.dc.b	136				
	.dc.b	204				
	.dc.b	78				
						
	.dc.b	177				
						
	.dc.b	136				
	.dc.b	222				
	.dc.b	140				
						
	.dc.b	113				
						
	.dc.b	136				
	.dc.b	240				
	.dc.b	202				
						
	.dc.b	177				
						
	.dc.b	137				
	.dc.b	3				
	.dc.b	9				
						
	.dc.b	145				
						
	.dc.b	137				
	.dc.b	21				
	.dc.b	73				
						
	.dc.b	17				
						
	.dc.b	137				
	.dc.b	39				
	.dc.b	137				
						
	.dc.b	49				
						
	.dc.b	137				
	.dc.b	57				
	.dc.b	201				
						
	.dc.b	241				
						
	.dc.b	137				
	.dc.b	76				
	.dc.b	11				
						
	.dc.b	49				
						
	.dc.b	137				
	.dc.b	94				
	.dc.b	77				
						
	.dc.b	49				
						
	.dc.b	137				
	.dc.b	112				
	.dc.b	143				
						
	.dc.b	177				
						
	.dc.b	137				
	.dc.b	130				
	.dc.b	210				
						
	.dc.b	209				
						
	.dc.b	137				
	.dc.b	149				
	.dc.b	22				
						
	.dc.b	145				
						
	.dc.b	137				
	.dc.b	167				
	.dc.b	90				
						
	.dc.b	241				
						
	.dc.b	137				
	.dc.b	185				
	.dc.b	159				
						
	.dc.b	241				
						
	.dc.b	137				
	.dc.b	203				
	.dc.b	229				
						
	.dc.b	113				
						
	.dc.b	137				
	.dc.b	222				
	.dc.b	43				
						
	.dc.b	177				
						
	.dc.b	137				
	.dc.b	240				
	.dc.b	114				
						
	.dc.b	113				
						
	.dc.b	138				
	.dc.b	2				
	.dc.b	185				
						
	.dc.b	209				
						
	.dc.b	138				
	.dc.b	21				
	.dc.b	1				
						
	.dc.b	209				
						
	.dc.b	138				
	.dc.b	39				
	.dc.b	74				
						
	.dc.b	113				
						
	.dc.b	138				
	.dc.b	57				
	.dc.b	147				
						
	.dc.b	145				
						
	.dc.b	138				
	.dc.b	75				
	.dc.b	221				
						
	.dc.b	113				
						
	.dc.b	138				
	.dc.b	94				
	.dc.b	39				
						
	.dc.b	209				
						
	.dc.b	138				
	.dc.b	112				
	.dc.b	114				
						
	.dc.b	209				
						
	.dc.b	138				
	.dc.b	130				
	.dc.b	190				
						
	.dc.b	113				
						
	.dc.b	138				
	.dc.b	149				
	.dc.b	10				
						
	.dc.b	177				
						
	.dc.b	138				
	.dc.b	167				
	.dc.b	87				
						
	.dc.b	113				
						
	.dc.b	138				
	.dc.b	185				
	.dc.b	164				
						
	.dc.b	241				
						
	.dc.b	138				
	.dc.b	203				
	.dc.b	242				
						
	.dc.b	241				
						
	.dc.b	138				
	.dc.b	222				
	.dc.b	65				
						
	.dc.b	145				
						
	.dc.b	138				
	.dc.b	240				
	.dc.b	144				
						
	.dc.b	209				
						
	.dc.b	139				
	.dc.b	2				
	.dc.b	224				
						
	.dc.b	177				
						
	.dc.b	139				
	.dc.b	21				
	.dc.b	49				
						
	.dc.b	49				
						
	.dc.b	139				
	.dc.b	39				
	.dc.b	130				
						
	.dc.b	49				
						
	.dc.b	139				
	.dc.b	57				
	.dc.b	211				
						
	.dc.b	209				
						
	.dc.b	139				
	.dc.b	76				
	.dc.b	38				
						
	.dc.b	17				
						
	.dc.b	139				
	.dc.b	94				
	.dc.b	120				
						
	.dc.b	241				
						
	.dc.b	139				
	.dc.b	112				
	.dc.b	204				
						
	.dc.b	113				
						
	.dc.b	139				
	.dc.b	131				
	.dc.b	32				
						
	.dc.b	113				
						
	.dc.b	139				
	.dc.b	149				
	.dc.b	117				
						
	.dc.b	49				
						
	.dc.b	139				
	.dc.b	167				
	.dc.b	202				
						
	.dc.b	113				
						
	.dc.b	139				
	.dc.b	186				
	.dc.b	32				
						
	.dc.b	81				
						
	.dc.b	139				
	.dc.b	204				
	.dc.b	118				
						
	.dc.b	209				
						
	.dc.b	139				
	.dc.b	222				
	.dc.b	205				
						
	.dc.b	209				
						
	.dc.b	139				
	.dc.b	241				
	.dc.b	37				
						
	.dc.b	113				
						
	.dc.b	140				
	.dc.b	3				
	.dc.b	125				
						
	.dc.b	209				
						
	.dc.b	140				
	.dc.b	21				
	.dc.b	214				
						
	.dc.b	177				
						
	.dc.b	140				
	.dc.b	40				
	.dc.b	48				
						
	.dc.b	17				
						
	.dc.b	140				
	.dc.b	58				
	.dc.b	138				
						
	.dc.b	49				
						
	.dc.b	140				
	.dc.b	76				
	.dc.b	228				
						
	.dc.b	241				
						
	.dc.b	140				
	.dc.b	95				
	.dc.b	64				
						
	.dc.b	49				
						
	.dc.b	140				
	.dc.b	113				
	.dc.b	156				
						
	.dc.b	17				
						
	.dc.b	140				
	.dc.b	131				
	.dc.b	248				
						
	.dc.b	145				
						
	.dc.b	140				
	.dc.b	150				
	.dc.b	85				
						
	.dc.b	145				
						
	.dc.b	140				
	.dc.b	168				
	.dc.b	179				
						
	.dc.b	81				
						
	.dc.b	140				
	.dc.b	187				
	.dc.b	17				
						
	.dc.b	145				
						
	.dc.b	140				
	.dc.b	205				
	.dc.b	112				
						
	.dc.b	113				
						
	.dc.b	140				
	.dc.b	223				
	.dc.b	207				
						
	.dc.b	241				
						
	.dc.b	140				
	.dc.b	242				
	.dc.b	47				
						
	.dc.b	241				
						
	.dc.b	141				
	.dc.b	4				
	.dc.b	144				
						
	.dc.b	177				
						
	.dc.b	141				
	.dc.b	22				
	.dc.b	241				
						
	.dc.b	241				
						
	.dc.b	141				
	.dc.b	41				
	.dc.b	83				
						
	.dc.b	209				
						
	.dc.b	141				
	.dc.b	59				
	.dc.b	182				
						
	.dc.b	81				
						
	.dc.b	141				
	.dc.b	78				
	.dc.b	25				
						
	.dc.b	81				
						
	.dc.b	141				
	.dc.b	96				
	.dc.b	124				
						
	.dc.b	241				
						
	.dc.b	141				
	.dc.b	114				
	.dc.b	225				
						
	.dc.b	81				
						
	.dc.b	141				
	.dc.b	133				
	.dc.b	70				
						
	.dc.b	49				
						
	.dc.b	141				
	.dc.b	151				
	.dc.b	171				
						
	.dc.b	145				
						
	.dc.b	141				
	.dc.b	170				
	.dc.b	17				
						
	.dc.b	177				
						
	.dc.b	141				
	.dc.b	188				
	.dc.b	120				
						
	.dc.b	81				
						
	.dc.b	141				
	.dc.b	206				
	.dc.b	223				
						
	.dc.b	145				
						
	.dc.b	141				
	.dc.b	225				
	.dc.b	71				
						
	.dc.b	113				
						
	.dc.b	141				
	.dc.b	243				
	.dc.b	175				
						
	.dc.b	209				
						
	.dc.b	142				
	.dc.b	6				
	.dc.b	24				
						
	.dc.b	241				
						
	.dc.b	142				
	.dc.b	24				
	.dc.b	130				
						
	.dc.b	145				
						
	.dc.b	142				
	.dc.b	42				
	.dc.b	236				
						
	.dc.b	209				
						
	.dc.b	142				
	.dc.b	61				
	.dc.b	87				
						
	.dc.b	145				
						
	.dc.b	142				
	.dc.b	79				
	.dc.b	195				
						
	.dc.b	17				
						
	.dc.b	142				
	.dc.b	98				
	.dc.b	47				
						
	.dc.b	17				
						
	.dc.b	142				
	.dc.b	116				
	.dc.b	155				
						
	.dc.b	177				
						
	.dc.b	142				
	.dc.b	135				
	.dc.b	8				
						
	.dc.b	241				
						
	.dc.b	142				
	.dc.b	153				
	.dc.b	118				
						
	.dc.b	177				
						
	.dc.b	142				
	.dc.b	171				
	.dc.b	229				
						
	.dc.b	49				
						
	.dc.b	142				
	.dc.b	190				
	.dc.b	84				
						
	.dc.b	49				
						
	.dc.b	142				
	.dc.b	208				
	.dc.b	195				
						
	.dc.b	177				
						
	.dc.b	142				
	.dc.b	227				
	.dc.b	51				
						
	.dc.b	241				
						
	.dc.b	142				
	.dc.b	245				
	.dc.b	164				
						
	.dc.b	177				
						
	.dc.b	143				
	.dc.b	8				
	.dc.b	22				
						
	.dc.b	17				
						
	.dc.b	143				
	.dc.b	26				
	.dc.b	136				
						
	.dc.b	17				
						
	.dc.b	143				
	.dc.b	44				
	.dc.b	250				
						
	.dc.b	177				
						
	.dc.b	143				
	.dc.b	63				
	.dc.b	109				
						
	.dc.b	209				
						
	.dc.b	143				
	.dc.b	81				
	.dc.b	225				
						
	.dc.b	145				
						
	.dc.b	143				
	.dc.b	100				
	.dc.b	85				
						
	.dc.b	241				
						
	.dc.b	143				
	.dc.b	118				
	.dc.b	202				
						
	.dc.b	241				
						
	.dc.b	143				
	.dc.b	137				
	.dc.b	64				
						
	.dc.b	113				
						
	.dc.b	143				
	.dc.b	155				
	.dc.b	182				
						
	.dc.b	145				
						
	.dc.b	143				
	.dc.b	174				
	.dc.b	45				
						
	.dc.b	81				
						
	.dc.b	143				
	.dc.b	192				
	.dc.b	164				
						
	.dc.b	145				
						
	.dc.b	143				
	.dc.b	211				
	.dc.b	28				
						
	.dc.b	145				
						
	.dc.b	143				
	.dc.b	229				
	.dc.b	149				
						
	.dc.b	17				
						
	.dc.b	143				
	.dc.b	248				
	.dc.b	14				
						
	.dc.b	49				
						
	.dc.b	144				
	.dc.b	10				
	.dc.b	135				
						
	.dc.b	209				
						
	.dc.b	144				
	.dc.b	29				
	.dc.b	2				
						
	.dc.b	49				
						
	.dc.b	144				
	.dc.b	47				
	.dc.b	125				
						
	.dc.b	17				
						
	.dc.b	144				
	.dc.b	65				
	.dc.b	248				
						
	.dc.b	113				
						
	.dc.b	144				
	.dc.b	84				
	.dc.b	116				
						
	.dc.b	145				
						
	.dc.b	144				
	.dc.b	102				
	.dc.b	241				
						
	.dc.b	49				
						
	.dc.b	144				
	.dc.b	121				
	.dc.b	110				
						
	.dc.b	113				
						
	.dc.b	144				
	.dc.b	139				
	.dc.b	236				
						
	.dc.b	81				
						
	.dc.b	144				
	.dc.b	158				
	.dc.b	106				
						
	.dc.b	177				
						
	.dc.b	144				
	.dc.b	176				
	.dc.b	233				
						
	.dc.b	177				
						
	.dc.b	144				
	.dc.b	195				
	.dc.b	105				
						
	.dc.b	81				
						
	.dc.b	144				
	.dc.b	213				
	.dc.b	233				
						
	.dc.b	145				
						
	.dc.b	144				
	.dc.b	232				
	.dc.b	106				
						
	.dc.b	81				
						
	.dc.b	144				
	.dc.b	250				
	.dc.b	235				
						
	.dc.b	177				
						
	.dc.b	145				
	.dc.b	13				
	.dc.b	109				
						
	.dc.b	177				
						
	.dc.b	145				
	.dc.b	31				
	.dc.b	240				
						
	.dc.b	81				
						
	.dc.b	145				
	.dc.b	50				
	.dc.b	115				
						
	.dc.b	113				
						
	.dc.b	145				
	.dc.b	68				
	.dc.b	247				
						
	.dc.b	49				
						
	.dc.b	145				
	.dc.b	87				
	.dc.b	123				
						
	.dc.b	145				
						
	.dc.b	145				
	.dc.b	106				
	.dc.b	0				
						
	.dc.b	113				
						
	.dc.b	145				
	.dc.b	124				
	.dc.b	133				
						
	.dc.b	241				
						
	.dc.b	145				
	.dc.b	143				
	.dc.b	12				
						
	.dc.b	17				
						
	.dc.b	145				
	.dc.b	161				
	.dc.b	146				
						
	.dc.b	209				
						
	.dc.b	145				
	.dc.b	180				
	.dc.b	26				
						
	.dc.b	17				
						
	.dc.b	145				
	.dc.b	198				
	.dc.b	161				
						
	.dc.b	241				
						
	.dc.b	145				
	.dc.b	217				
	.dc.b	42				
						
	.dc.b	113				
						
	.dc.b	145				
	.dc.b	235				
	.dc.b	179				
						
	.dc.b	113				
						
	.dc.b	145				
	.dc.b	254				
	.dc.b	61				
						
	.dc.b	17				
						
	.dc.b	146				
	.dc.b	16				
	.dc.b	199				
						
	.dc.b	81				
						
	.dc.b	146				
	.dc.b	35				
	.dc.b	82				
						
	.dc.b	49				
						
	.dc.b	146				
	.dc.b	53				
	.dc.b	221				
						
	.dc.b	145				
						
	.dc.b	146				
	.dc.b	72				
	.dc.b	105				
						
	.dc.b	145				
						
	.dc.b	146				
	.dc.b	90				
	.dc.b	246				
						
	.dc.b	17				
						
	.dc.b	146				
	.dc.b	109				
	.dc.b	131				
						
	.dc.b	81				
						
	.dc.b	146				
	.dc.b	128				
	.dc.b	17				
						
	.dc.b	17				
						
	.dc.b	146				
	.dc.b	146				
	.dc.b	159				
						
	.dc.b	113				
						
	.dc.b	146				
	.dc.b	165				
	.dc.b	46				
						
	.dc.b	81				
						
	.dc.b	146				
	.dc.b	183				
	.dc.b	189				
						
	.dc.b	209				
						
	.dc.b	146				
	.dc.b	202				
	.dc.b	77				
						
	.dc.b	241				
						
	.dc.b	146				
	.dc.b	220				
	.dc.b	222				
						
	.dc.b	177				
						
	.dc.b	146				
	.dc.b	239				
	.dc.b	111				
						
	.dc.b	241				
						
	.dc.b	147				
	.dc.b	2				
	.dc.b	1				
						
	.dc.b	209				
						
	.dc.b	147				
	.dc.b	20				
	.dc.b	148				
						
	.dc.b	49				
						
	.dc.b	147				
	.dc.b	39				
	.dc.b	39				
						
	.dc.b	81				
						
	.dc.b	147				
	.dc.b	57				
	.dc.b	186				
						
	.dc.b	241				
						
	.dc.b	147				
	.dc.b	76				
	.dc.b	79				
						
	.dc.b	17				
						
	.dc.b	147				
	.dc.b	94				
	.dc.b	227				
						
	.dc.b	241				
						
	.dc.b	147				
	.dc.b	113				
	.dc.b	121				
						
	.dc.b	81				
						
	.dc.b	147				
	.dc.b	132				
	.dc.b	15				
						
	.dc.b	81				
						
	.dc.b	147				
	.dc.b	150				
	.dc.b	165				
						
	.dc.b	209				
						
	.dc.b	147				
	.dc.b	169				
	.dc.b	60				
						
	.dc.b	241				
						
	.dc.b	147				
	.dc.b	187				
	.dc.b	212				
						
	.dc.b	177				
						
	.dc.b	147				
	.dc.b	206				
	.dc.b	108				
						
	.dc.b	241				
						
	.dc.b	147				
	.dc.b	225				
	.dc.b	5				
						
	.dc.b	241				
						
	.dc.b	147				
	.dc.b	243				
	.dc.b	159				
						
	.dc.b	81				
						
	.dc.b	148				
	.dc.b	6				
	.dc.b	57				
						
	.dc.b	113				
						
	.dc.b	148				
	.dc.b	24				
	.dc.b	212				
						
	.dc.b	17				
						
	.dc.b	148				
	.dc.b	43				
	.dc.b	111				
						
	.dc.b	81				
						
	.dc.b	148				
	.dc.b	62				
	.dc.b	11				
						
	.dc.b	49				
						
	.dc.b	148				
	.dc.b	80				
	.dc.b	167				
						
	.dc.b	145				
						
	.dc.b	148				
	.dc.b	99				
	.dc.b	68				
						
	.dc.b	145				
						
	.dc.b	148				
	.dc.b	117				
	.dc.b	226				
						
	.dc.b	17				
						
	.dc.b	148				
	.dc.b	136				
	.dc.b	128				
						
	.dc.b	49				
						
	.dc.b	148				
	.dc.b	155				
	.dc.b	30				
						
	.dc.b	241				
						
	.dc.b	148				
	.dc.b	173				
	.dc.b	190				
						
	.dc.b	81				
						
	.dc.b	148				
	.dc.b	192				
	.dc.b	94				
						
	.dc.b	49				
						
	.dc.b	148				
	.dc.b	210				
	.dc.b	254				
						
	.dc.b	177				
						
	.dc.b	148				
	.dc.b	229				
	.dc.b	159				
						
	.dc.b	209				
						
	.dc.b	148				
	.dc.b	248				
	.dc.b	65				
						
	.dc.b	113				
						
	.dc.b	149				
	.dc.b	10				
	.dc.b	227				
						
	.dc.b	177				
						
	.dc.b	149				
	.dc.b	29				
	.dc.b	134				
						
	.dc.b	113				
						
	.dc.b	149				
	.dc.b	48				
	.dc.b	41				
						
	.dc.b	209				
						
	.dc.b	149				
	.dc.b	66				
	.dc.b	205				
						
	.dc.b	209				
						
	.dc.b	149				
	.dc.b	85				
	.dc.b	114				
						
	.dc.b	113				
						
	.dc.b	149				
	.dc.b	104				
	.dc.b	23				
						
	.dc.b	145				
						
	.dc.b	149				
	.dc.b	122				
	.dc.b	189				
						
	.dc.b	81				
						
	.dc.b	149				
	.dc.b	141				
	.dc.b	99				
						
	.dc.b	145				
						
	.dc.b	149				
	.dc.b	160				
	.dc.b	10				
						
	.dc.b	113				
						
	.dc.b	149				
	.dc.b	178				
	.dc.b	177				
						
	.dc.b	241				
						
	.dc.b	149				
	.dc.b	197				
	.dc.b	90				
						
	.dc.b	17				
						
	.dc.b	149				
	.dc.b	216				
	.dc.b	2				
						
	.dc.b	177				
						
	.dc.b	149				
	.dc.b	234				
	.dc.b	171				
						
	.dc.b	209				
						
	.dc.b	149				
	.dc.b	253				
	.dc.b	85				
						
	.dc.b	177				
						
	.dc.b	150				
	.dc.b	16				
	.dc.b	0				
						
	.dc.b	17				
						
	.dc.b	150				
	.dc.b	34				
	.dc.b	170				
						
	.dc.b	241				
						
	.dc.b	150				
	.dc.b	53				
	.dc.b	86				
						
	.dc.b	145				
						
	.dc.b	150				
	.dc.b	72				
	.dc.b	2				
						
	.dc.b	177				
						
	.dc.b	150				
	.dc.b	90				
	.dc.b	175				
						
	.dc.b	81				
						
	.dc.b	150				
	.dc.b	109				
	.dc.b	92				
						
	.dc.b	145				
						
	.dc.b	150				
	.dc.b	128				
	.dc.b	10				
						
	.dc.b	113				
						
	.dc.b	150				
	.dc.b	146				
	.dc.b	184				
						
	.dc.b	241				
						
	.dc.b	150				
	.dc.b	165				
	.dc.b	103				
						
	.dc.b	241				
						
	.dc.b	150				
	.dc.b	184				
	.dc.b	23				
						
	.dc.b	145				
						
	.dc.b	150				
	.dc.b	202				
	.dc.b	199				
						
	.dc.b	177				
						
	.dc.b	150				
	.dc.b	221				
	.dc.b	120				
						
	.dc.b	113				
						
	.dc.b	150				
	.dc.b	240				
	.dc.b	41				
						
	.dc.b	209				
						
	.dc.b	151				
	.dc.b	2				
	.dc.b	219				
						
	.dc.b	177				
						
	.dc.b	151				
	.dc.b	21				
	.dc.b	142				
						
	.dc.b	49				
						
	.dc.b	151				
	.dc.b	40				
	.dc.b	65				
						
	.dc.b	81				
						
	.dc.b	151				
	.dc.b	58				
	.dc.b	244				
						
	.dc.b	241				
						
	.dc.b	151				
	.dc.b	77				
	.dc.b	169				
						
	.dc.b	49				
						
	.dc.b	151				
	.dc.b	96				
	.dc.b	93				
						
	.dc.b	241				
						
	.dc.b	151				
	.dc.b	115				
	.dc.b	19				
						
	.dc.b	81				
						
	.dc.b	151				
	.dc.b	133				
	.dc.b	201				
						
	.dc.b	81				
						
	.dc.b	151				
	.dc.b	152				
	.dc.b	127				
						
	.dc.b	209				
						
	.dc.b	151				
	.dc.b	171				
	.dc.b	54				
						
	.dc.b	241				
						
	.dc.b	151				
	.dc.b	189				
	.dc.b	238				
						
	.dc.b	145				
						
	.dc.b	151				
	.dc.b	208				
	.dc.b	166				
						
	.dc.b	241				
						
	.dc.b	151				
	.dc.b	227				
	.dc.b	95				
						
	.dc.b	177				
						
	.dc.b	151				
	.dc.b	246				
	.dc.b	25				
						
	.dc.b	49				
						
	.dc.b	152				
	.dc.b	8				
	.dc.b	211				
						
	.dc.b	49				
						
	.dc.b	152				
	.dc.b	27				
	.dc.b	141				
						
	.dc.b	177				
						
	.dc.b	152				
	.dc.b	46				
	.dc.b	72				
						
	.dc.b	241				
						
	.dc.b	152				
	.dc.b	65				
	.dc.b	4				
						
	.dc.b	145				
						
	.dc.b	152				
	.dc.b	83				
	.dc.b	192				
						
	.dc.b	241				
						
	.dc.b	152				
	.dc.b	102				
	.dc.b	125				
						
	.dc.b	209				
						
	.dc.b	152				
	.dc.b	121				
	.dc.b	59				
						
	.dc.b	81				
						
	.dc.b	152				
	.dc.b	139				
	.dc.b	249				
						
	.dc.b	81				
						
	.dc.b	152				
	.dc.b	158				
	.dc.b	183				
						
	.dc.b	241				
						
	.dc.b	152				
	.dc.b	177				
	.dc.b	119				
						
	.dc.b	17				
						
	.dc.b	152				
	.dc.b	196				
	.dc.b	54				
						
	.dc.b	209				
						
	.dc.b	152				
	.dc.b	214				
	.dc.b	247				
						
	.dc.b	49				
						
	.dc.b	152				
	.dc.b	233				
	.dc.b	184				
						
	.dc.b	17				
						
	.dc.b	152				
	.dc.b	252				
	.dc.b	121				
						
	.dc.b	145				
						
	.dc.b	153				
	.dc.b	15				
	.dc.b	59				
						
	.dc.b	177				
						
	.dc.b	153				
	.dc.b	33				
	.dc.b	254				
						
	.dc.b	81				
						
	.dc.b	153				
	.dc.b	52				
	.dc.b	193				
						
	.dc.b	145				
						
	.dc.b	153				
	.dc.b	71				
	.dc.b	133				
						
	.dc.b	81				
						
	.dc.b	153				
	.dc.b	90				
	.dc.b	73				
						
	.dc.b	177				
						
	.dc.b	153				
	.dc.b	109				
	.dc.b	14				
						
	.dc.b	145				
						
	.dc.b	153				
	.dc.b	127				
	.dc.b	212				
						
	.dc.b	17				
						
	.dc.b	153				
	.dc.b	146				
	.dc.b	154				
						
	.dc.b	49				
						
	.dc.b	153				
	.dc.b	165				
	.dc.b	96				
						
	.dc.b	209				
						
	.dc.b	153				
	.dc.b	184				
	.dc.b	40				
						
	.dc.b	17				
						
	.dc.b	153				
	.dc.b	202				
	.dc.b	239				
						
	.dc.b	241				
						
	.dc.b	153				
	.dc.b	221				
	.dc.b	184				
						
	.dc.b	81				
						
	.dc.b	153				
	.dc.b	240				
	.dc.b	129				
						
	.dc.b	49				
						
	.dc.b	154				
	.dc.b	3				
	.dc.b	74				
						
	.dc.b	177				
						
	.dc.b	154				
	.dc.b	22				
	.dc.b	20				
						
	.dc.b	209				
						
	.dc.b	154				
	.dc.b	40				
	.dc.b	223				
						
	.dc.b	113				
						
	.dc.b	154				
	.dc.b	59				
	.dc.b	170				
						
	.dc.b	177				
						
	.dc.b	154				
	.dc.b	78				
	.dc.b	118				
						
	.dc.b	145				
						
	.dc.b	154				
	.dc.b	97				
	.dc.b	66				
						
	.dc.b	241				
						
	.dc.b	154				
	.dc.b	116				
	.dc.b	15				
						
	.dc.b	241				
						
	.dc.b	154				
	.dc.b	134				
	.dc.b	221				
						
	.dc.b	113				
						
	.dc.b	154				
	.dc.b	153				
	.dc.b	171				
						
	.dc.b	145				
						
	.dc.b	154				
	.dc.b	172				
	.dc.b	122				
						
	.dc.b	49				
						
	.dc.b	154				
	.dc.b	191				
	.dc.b	73				
						
	.dc.b	113				
						
	.dc.b	154				
	.dc.b	210				
	.dc.b	25				
						
	.dc.b	81				
						
	.dc.b	154				
	.dc.b	228				
	.dc.b	233				
						
	.dc.b	177				
						
	.dc.b	154				
	.dc.b	247				
	.dc.b	186				
						
	.dc.b	177				
						
	.dc.b	155				
	.dc.b	10				
	.dc.b	140				
						
	.dc.b	49				
						
	.dc.b	155				
	.dc.b	29				
	.dc.b	94				
						
	.dc.b	81				
						
	.dc.b	155				
	.dc.b	48				
	.dc.b	48				
						
	.dc.b	241				
						
	.dc.b	155				
	.dc.b	67				
	.dc.b	4				
						
	.dc.b	49				
						
	.dc.b	155				
	.dc.b	85				
	.dc.b	216				
						
	.dc.b	17				
						
	.dc.b	155				
	.dc.b	104				
	.dc.b	172				
						
	.dc.b	113				
						
	.dc.b	155				
	.dc.b	123				
	.dc.b	129				
						
	.dc.b	81				
						
	.dc.b	155				
	.dc.b	142				
	.dc.b	86				
						
	.dc.b	241				
						
	.dc.b	155				
	.dc.b	161				
	.dc.b	44				
						
	.dc.b	241				
						
	.dc.b	155				
	.dc.b	180				
	.dc.b	3				
						
	.dc.b	177				
						
	.dc.b	155				
	.dc.b	198				
	.dc.b	218				
						
	.dc.b	241				
						
	.dc.b	155				
	.dc.b	217				
	.dc.b	178				
						
	.dc.b	177				
						
	.dc.b	155				
	.dc.b	236				
	.dc.b	139				
						
	.dc.b	17				
						
	.dc.b	155				
	.dc.b	255				
	.dc.b	100				
						
	.dc.b	17				
						
	.dc.b	156				
	.dc.b	18				
	.dc.b	61				
						
	.dc.b	145				
						
	.dc.b	156				
	.dc.b	37				
	.dc.b	23				
						
	.dc.b	145				
						
	.dc.b	156				
	.dc.b	55				
	.dc.b	242				
						
	.dc.b	81				
						
	.dc.b	156				
	.dc.b	74				
	.dc.b	205				
						
	.dc.b	113				
						
	.dc.b	156				
	.dc.b	93				
	.dc.b	169				
						
	.dc.b	81				
						
	.dc.b	156				
	.dc.b	112				
	.dc.b	133				
						
	.dc.b	177				
						
	.dc.b	156				
	.dc.b	131				
	.dc.b	98				
						
	.dc.b	145				
						
	.dc.b	156				
	.dc.b	150				
	.dc.b	64				
						
	.dc.b	17				
						
	.dc.b	156				
	.dc.b	169				
	.dc.b	30				
						
	.dc.b	49				
						
	.dc.b	156				
	.dc.b	187				
	.dc.b	252				
						
	.dc.b	209				
						
	.dc.b	156				
	.dc.b	206				
	.dc.b	219				
						
	.dc.b	241				
						
	.dc.b	156				
	.dc.b	225				
	.dc.b	187				
						
	.dc.b	209				
						
	.dc.b	156				
	.dc.b	244				
	.dc.b	156				
						
	.dc.b	17				
						
	.dc.b	157				
	.dc.b	7				
	.dc.b	124				
						
	.dc.b	241				
						
	.dc.b	157				
	.dc.b	26				
	.dc.b	94				
						
	.dc.b	113				
						
	.dc.b	157				
	.dc.b	45				
	.dc.b	64				
						
	.dc.b	145				
						
	.dc.b	157				
	.dc.b	64				
	.dc.b	35				
						
	.dc.b	17				
						
	.dc.b	157				
	.dc.b	83				
	.dc.b	6				
						
	.dc.b	81				
						
	.dc.b	157				
	.dc.b	101				
	.dc.b	234				
						
	.dc.b	17				
						
	.dc.b	157				
	.dc.b	120				
	.dc.b	206				
						
	.dc.b	81				
						
	.dc.b	157				
	.dc.b	139				
	.dc.b	179				
						
	.dc.b	49				
						
	.dc.b	157				
	.dc.b	158				
	.dc.b	152				
						
	.dc.b	177				
						
	.dc.b	157				
	.dc.b	177				
	.dc.b	126				
						
	.dc.b	177				
						
	.dc.b	157				
	.dc.b	196				
	.dc.b	101				
						
	.dc.b	49				
						
	.dc.b	157				
	.dc.b	215				
	.dc.b	76				
						
	.dc.b	113				
						
	.dc.b	157				
	.dc.b	234				
	.dc.b	52				
						
	.dc.b	17				
						
	.dc.b	157				
	.dc.b	253				
	.dc.b	28				
						
	.dc.b	81				
						
	.dc.b	158				
	.dc.b	16				
	.dc.b	5				
						
	.dc.b	49				
						
	.dc.b	158				
	.dc.b	34				
	.dc.b	238				
						
	.dc.b	145				
						
	.dc.b	158				
	.dc.b	53				
	.dc.b	216				
						
	.dc.b	145				
						
	.dc.b	158				
	.dc.b	72				
	.dc.b	195				
						
	.dc.b	17				
						
	.dc.b	158				
	.dc.b	91				
	.dc.b	174				
						
	.dc.b	49				
						
	.dc.b	158				
	.dc.b	110				
	.dc.b	153				
						
	.dc.b	241				
						
	.dc.b	158				
	.dc.b	129				
	.dc.b	134				
						
	.dc.b	17				
						
	.dc.b	158				
	.dc.b	148				
	.dc.b	114				
						
	.dc.b	241				
						
	.dc.b	158				
	.dc.b	167				
	.dc.b	96				
						
	.dc.b	81				
						
	.dc.b	158				
	.dc.b	186				
	.dc.b	78				
						
	.dc.b	49				
						
	.dc.b	158				
	.dc.b	205				
	.dc.b	60				
						
	.dc.b	177				
						
	.dc.b	158				
	.dc.b	224				
	.dc.b	43				
						
	.dc.b	177				
						
	.dc.b	158				
	.dc.b	243				
	.dc.b	27				
						
	.dc.b	81				
						
	.dc.b	159				
	.dc.b	6				
	.dc.b	11				
						
	.dc.b	145				
						
	.dc.b	159				
	.dc.b	24				
	.dc.b	252				
						
	.dc.b	81				
						
	.dc.b	159				
	.dc.b	43				
	.dc.b	237				
						
	.dc.b	145				
						
	.dc.b	159				
	.dc.b	62				
	.dc.b	223				
						
	.dc.b	113				
						
	.dc.b	159				
	.dc.b	81				
	.dc.b	209				
						
	.dc.b	241				
						
	.dc.b	159				
	.dc.b	100				
	.dc.b	196				
						
	.dc.b	241				
						
	.dc.b	159				
	.dc.b	119				
	.dc.b	184				
						
	.dc.b	113				
						
	.dc.b	159				
	.dc.b	138				
	.dc.b	172				
						
	.dc.b	145				
						
	.dc.b	159				
	.dc.b	157				
	.dc.b	161				
						
	.dc.b	81				
						
	.dc.b	159				
	.dc.b	176				
	.dc.b	150				
						
	.dc.b	145				
						
	.dc.b	159				
	.dc.b	195				
	.dc.b	140				
						
	.dc.b	81				
						
	.dc.b	159				
	.dc.b	214				
	.dc.b	130				
						
	.dc.b	177				
						
	.dc.b	159				
	.dc.b	233				
	.dc.b	121				
						
	.dc.b	177				
						
	.dc.b	159				
	.dc.b	252				
	.dc.b	113				
						
	.dc.b	49				
						
	.dc.b	160				
	.dc.b	15				
	.dc.b	105				
						
	.dc.b	49				
						
	.dc.b	160				
	.dc.b	34				
	.dc.b	97				
						
	.dc.b	209				
						
	.dc.b	160				
	.dc.b	53				
	.dc.b	91				
						
	.dc.b	17				
						
	.dc.b	160				
	.dc.b	72				
	.dc.b	84				
						
	.dc.b	209				
						
	.dc.b	160				
	.dc.b	91				
	.dc.b	79				
						
	.dc.b	17				
						
	.dc.b	160				
	.dc.b	110				
	.dc.b	73				
						
	.dc.b	241				
						
	.dc.b	160				
	.dc.b	129				
	.dc.b	69				
						
	.dc.b	113				
						
	.dc.b	160				
	.dc.b	148				
	.dc.b	65				
						
	.dc.b	113				
						
	.dc.b	160				
	.dc.b	167				
	.dc.b	61				
						
	.dc.b	241				
						
	.dc.b	160				
	.dc.b	186				
	.dc.b	59				
						
	.dc.b	17				
						
	.dc.b	160				
	.dc.b	205				
	.dc.b	56				
						
	.dc.b	177				
						
	.dc.b	160				
	.dc.b	224				
	.dc.b	54				
						
	.dc.b	241				
						
	.dc.b	160				
	.dc.b	243				
	.dc.b	53				
						
	.dc.b	209				
						
	.dc.b	161				
	.dc.b	6				
	.dc.b	53				
						
	.dc.b	49				
						
	.dc.b	161				
	.dc.b	25				
	.dc.b	53				
						
	.dc.b	17				
						
	.dc.b	161				
	.dc.b	44				
	.dc.b	53				
						
	.dc.b	145				
						
	.dc.b	161				
	.dc.b	63				
	.dc.b	54				
						
	.dc.b	145				
						
	.dc.b	161				
	.dc.b	82				
	.dc.b	56				
						
	.dc.b	49				
						
	.dc.b	161				
	.dc.b	101				
	.dc.b	58				
						
	.dc.b	81				
						
	.dc.b	161				
	.dc.b	120				
	.dc.b	61				
						
	.dc.b	17				
						
	.dc.b	161				
	.dc.b	139				
	.dc.b	64				
						
	.dc.b	81				
						
	.dc.b	161				
	.dc.b	158				
	.dc.b	68				
						
	.dc.b	49				
						
	.dc.b	161				
	.dc.b	177				
	.dc.b	72				
						
	.dc.b	145				
						
	.dc.b	161				
	.dc.b	196				
	.dc.b	77				
						
	.dc.b	145				
						
	.dc.b	161				
	.dc.b	215				
	.dc.b	83				
						
	.dc.b	17				
						
	.dc.b	161				
	.dc.b	234				
	.dc.b	89				
						
	.dc.b	49				
						
	.dc.b	161				
	.dc.b	253				
	.dc.b	95				
						
	.dc.b	209				
						
	.dc.b	162				
	.dc.b	16				
	.dc.b	102				
						
	.dc.b	241				
						
	.dc.b	162				
	.dc.b	35				
	.dc.b	110				
						
	.dc.b	177				
						
	.dc.b	162				
	.dc.b	54				
	.dc.b	119				
						
	.dc.b	17				
						
	.dc.b	162				
	.dc.b	73				
	.dc.b	127				
						
	.dc.b	241				
						
	.dc.b	162				
	.dc.b	92				
	.dc.b	137				
						
	.dc.b	81				
						
	.dc.b	162				
	.dc.b	111				
	.dc.b	147				
						
	.dc.b	81				
						
	.dc.b	162				
	.dc.b	130				
	.dc.b	157				
						
	.dc.b	209				
						
	.dc.b	162				
	.dc.b	149				
	.dc.b	168				
						
	.dc.b	241				
						
	.dc.b	162				
	.dc.b	168				
	.dc.b	180				
						
	.dc.b	177				
						
	.dc.b	162				
	.dc.b	187				
	.dc.b	192				
						
	.dc.b	209				
						
	.dc.b	162				
	.dc.b	206				
	.dc.b	205				
						
	.dc.b	177				
						
	.dc.b	162				
	.dc.b	225				
	.dc.b	218				
						
	.dc.b	241				
						
	.dc.b	162				
	.dc.b	244				
	.dc.b	232				
						
	.dc.b	209				
						
	.dc.b	163				
	.dc.b	7				
	.dc.b	247				
						
	.dc.b	81				
						
	.dc.b	163				
	.dc.b	27				
	.dc.b	6				
						
	.dc.b	81				
						
	.dc.b	163				
	.dc.b	46				
	.dc.b	21				
						
	.dc.b	209				
						
	.dc.b	163				
	.dc.b	65				
	.dc.b	37				
						
	.dc.b	241				
						
	.dc.b	163				
	.dc.b	84				
	.dc.b	54				
						
	.dc.b	177				
						
	.dc.b	163				
	.dc.b	103				
	.dc.b	71				
						
	.dc.b	241				
						
	.dc.b	163				
	.dc.b	122				
	.dc.b	89				
						
	.dc.b	177				
						
	.dc.b	163				
	.dc.b	141				
	.dc.b	108				
						
	.dc.b	17				
						
	.dc.b	163				
	.dc.b	160				
	.dc.b	126				
						
	.dc.b	241				
						
	.dc.b	163				
	.dc.b	179				
	.dc.b	146				
						
	.dc.b	81				
						
	.dc.b	163				
	.dc.b	198				
	.dc.b	166				
						
	.dc.b	81				
						
	.dc.b	163				
	.dc.b	217				
	.dc.b	186				
						
	.dc.b	241				
						
	.dc.b	163				
	.dc.b	236				
	.dc.b	208				
						
	.dc.b	17				
						
	.dc.b	163				
	.dc.b	255				
	.dc.b	229				
						
	.dc.b	177				
						
	.dc.b	164				
	.dc.b	18				
	.dc.b	251				
						
	.dc.b	241				
						
	.dc.b	164				
	.dc.b	38				
	.dc.b	18				
						
	.dc.b	177				
						
	.dc.b	164				
	.dc.b	57				
	.dc.b	42				
						
	.dc.b	17				
						
	.dc.b	164				
	.dc.b	76				
	.dc.b	65				
						
	.dc.b	241				
						
	.dc.b	164				
	.dc.b	95				
	.dc.b	90				
						
	.dc.b	113				
						
	.dc.b	164				
	.dc.b	114				
	.dc.b	115				
						
	.dc.b	113				
						
	.dc.b	164				
	.dc.b	133				
	.dc.b	141				
						
	.dc.b	17				
						
	.dc.b	164				
	.dc.b	152				
	.dc.b	167				
						
	.dc.b	17				
						
	.dc.b	164				
	.dc.b	171				
	.dc.b	193				
						
	.dc.b	209				
						
	.dc.b	164				
	.dc.b	190				
	.dc.b	221				
						
	.dc.b	17				
						
	.dc.b	164				
	.dc.b	209				
	.dc.b	248				
						
	.dc.b	209				
						
	.dc.b	164				
	.dc.b	229				
	.dc.b	21				
						
	.dc.b	49				
						
	.dc.b	164				
	.dc.b	248				
	.dc.b	50				
						
	.dc.b	17				
						
	.dc.b	165				
	.dc.b	11				
	.dc.b	79				
						
	.dc.b	113				
						
	.dc.b	165				
	.dc.b	30				
	.dc.b	109				
						
	.dc.b	113				
						
	.dc.b	165				
	.dc.b	49				
	.dc.b	139				
						
	.dc.b	241				
						
	.dc.b	165				
	.dc.b	68				
	.dc.b	171				
						
	.dc.b	17				
						
	.dc.b	165				
	.dc.b	87				
	.dc.b	202				
						
	.dc.b	177				
						
	.dc.b	165				
	.dc.b	106				
	.dc.b	234				
						
	.dc.b	241				
						
	.dc.b	165				
	.dc.b	126				
	.dc.b	11				
						
	.dc.b	177				
						
	.dc.b	165				
	.dc.b	145				
	.dc.b	45				
						
	.dc.b	17				
						
	.dc.b	165				
	.dc.b	164				
	.dc.b	78				
						
	.dc.b	241				
						
	.dc.b	165				
	.dc.b	183				
	.dc.b	113				
						
	.dc.b	81				
						
	.dc.b	165				
	.dc.b	202				
	.dc.b	148				
						
	.dc.b	81				
						
	.dc.b	165				
	.dc.b	221				
	.dc.b	183				
						
	.dc.b	209				
						
	.dc.b	165				
	.dc.b	240				
	.dc.b	219				
						
	.dc.b	209				
						
	.dc.b	166				
	.dc.b	4				
	.dc.b	0				
						
	.dc.b	113				
						
	.dc.b	166				
	.dc.b	23				
	.dc.b	37				
						
	.dc.b	177				
						
	.dc.b	166				
	.dc.b	42				
	.dc.b	75				
						
	.dc.b	113				
						
	.dc.b	166				
	.dc.b	61				
	.dc.b	113				
						
	.dc.b	177				
						
	.dc.b	166				
	.dc.b	80				
	.dc.b	152				
						
	.dc.b	145				
						
	.dc.b	166				
	.dc.b	99				
	.dc.b	191				
						
	.dc.b	241				
						
	.dc.b	166				
	.dc.b	118				
	.dc.b	231				
						
	.dc.b	209				
						
	.dc.b	166				
	.dc.b	138				
	.dc.b	16				
						
	.dc.b	81				
						
	.dc.b	166				
	.dc.b	157				
	.dc.b	57				
						
	.dc.b	81				
						
	.dc.b	166				
	.dc.b	176				
	.dc.b	98				
						
	.dc.b	241				
						
	.dc.b	166				
	.dc.b	195				
	.dc.b	141				
						
	.dc.b	17				
						
	.dc.b	166				
	.dc.b	214				
	.dc.b	183				
						
	.dc.b	209				
						
	.dc.b	166				
	.dc.b	233				
	.dc.b	226				
						
	.dc.b	241				
						
	.dc.b	166				
	.dc.b	253				
	.dc.b	14				
						
	.dc.b	209				
						
	.dc.b	167				
	.dc.b	16				
	.dc.b	59				
						
	.dc.b	49				
						
	.dc.b	167				
	.dc.b	35				
	.dc.b	104				
						
	.dc.b	17				
						
	.dc.b	167				
	.dc.b	54				
	.dc.b	149				
						
	.dc.b	113				
						
	.dc.b	167				
	.dc.b	73				
	.dc.b	195				
						
	.dc.b	113				
						
	.dc.b	167				
	.dc.b	92				
	.dc.b	241				
						
	.dc.b	241				
						
	.dc.b	167				
	.dc.b	112				
	.dc.b	33				
						
	.dc.b	17				
						
	.dc.b	167				
	.dc.b	131				
	.dc.b	80				
						
	.dc.b	177				
						
	.dc.b	167				
	.dc.b	150				
	.dc.b	128				
						
	.dc.b	241				
						
	.dc.b	167				
	.dc.b	169				
	.dc.b	177				
						
	.dc.b	177				
						
	.dc.b	167				
	.dc.b	188				
	.dc.b	226				
						
	.dc.b	241				
						
	.dc.b	167				
	.dc.b	208				
	.dc.b	20				
						
	.dc.b	209				
						
	.dc.b	167				
	.dc.b	227				
	.dc.b	71				
						
	.dc.b	49				
						
	.dc.b	167				
	.dc.b	246				
	.dc.b	122				
						
	.dc.b	17				
						
	.dc.b	168				
	.dc.b	9				
	.dc.b	173				
						
	.dc.b	145				
						
	.dc.b	168				
	.dc.b	28				
	.dc.b	225				
						
	.dc.b	145				
						
	.dc.b	168				
	.dc.b	48				
	.dc.b	22				
						
	.dc.b	49				
						
	.dc.b	168				
	.dc.b	67				
	.dc.b	75				
						
	.dc.b	81				
						
	.dc.b	168				
	.dc.b	86				
	.dc.b	128				
						
	.dc.b	241				
						
	.dc.b	168				
	.dc.b	105				
	.dc.b	183				
						
	.dc.b	49				
						
	.dc.b	168				
	.dc.b	124				
	.dc.b	237				
						
	.dc.b	241				
						
	.dc.b	168				
	.dc.b	144				
	.dc.b	37				
						
	.dc.b	81				
						
	.dc.b	168				
	.dc.b	163				
	.dc.b	93				
						
	.dc.b	49				
						
	.dc.b	168				
	.dc.b	182				
	.dc.b	149				
						
	.dc.b	145				
						
	.dc.b	168				
	.dc.b	201				
	.dc.b	206				
						
	.dc.b	145				
						
	.dc.b	168				
	.dc.b	221				
	.dc.b	8				
						
	.dc.b	17				
						
	.dc.b	168				
	.dc.b	240				
	.dc.b	66				
						
	.dc.b	49				
						
	.dc.b	169				
	.dc.b	3				
	.dc.b	124				
						
	.dc.b	177				
						
	.dc.b	169				
	.dc.b	22				
	.dc.b	183				
						
	.dc.b	241				
						
	.dc.b	169				
	.dc.b	41				
	.dc.b	243				
						
	.dc.b	145				
						
	.dc.b	169				
	.dc.b	61				
	.dc.b	47				
						
	.dc.b	209				
						
	.dc.b	169				
	.dc.b	80				
	.dc.b	108				
						
	.dc.b	145				
						
	.dc.b	169				
	.dc.b	99				
	.dc.b	169				
						
	.dc.b	241				
						
	.dc.b	169				
	.dc.b	118				
	.dc.b	231				
						
	.dc.b	209				
						
	.dc.b	169				
	.dc.b	138				
	.dc.b	38				
						
	.dc.b	81				
						
	.dc.b	169				
	.dc.b	157				
	.dc.b	101				
						
	.dc.b	81				
						
	.dc.b	169				
	.dc.b	176				
	.dc.b	164				
						
	.dc.b	209				
						
	.dc.b	169				
	.dc.b	195				
	.dc.b	228				
						
	.dc.b	209				
						
	.dc.b	169				
	.dc.b	215				
	.dc.b	37				
						
	.dc.b	113				
						
	.dc.b	169				
	.dc.b	234				
	.dc.b	102				
						
	.dc.b	145				
						
	.dc.b	169				
	.dc.b	253				
	.dc.b	168				
						
	.dc.b	81				
						
	.dc.b	170				
	.dc.b	16				
	.dc.b	234				
						
	.dc.b	145				
						
	.dc.b	170				
	.dc.b	36				
	.dc.b	45				
						
	.dc.b	113				
						
	.dc.b	170				
	.dc.b	55				
	.dc.b	112				
						
	.dc.b	177				
						
	.dc.b	170				
	.dc.b	74				
	.dc.b	180				
						
	.dc.b	145				
						
	.dc.b	170				
	.dc.b	93				
	.dc.b	249				
						
	.dc.b	17				
						
	.dc.b	170				
	.dc.b	113				
	.dc.b	62				
						
	.dc.b	17				
						
	.dc.b	170				
	.dc.b	132				
	.dc.b	131				
						
	.dc.b	145				
						
	.dc.b	170				
	.dc.b	151				
	.dc.b	201				
						
	.dc.b	145				
						
	.dc.b	170				
	.dc.b	171				
	.dc.b	16				
						
	.dc.b	49				
						
	.dc.b	170				
	.dc.b	190				
	.dc.b	87				
						
	.dc.b	81				
						
	.dc.b	170				
	.dc.b	209				
	.dc.b	159				
						
	.dc.b	17				
						
	.dc.b	170				
	.dc.b	228				
	.dc.b	231				
						
	.dc.b	81				
						
	.dc.b	170				
	.dc.b	248				
	.dc.b	48				
						
	.dc.b	17				
						
	.dc.b	171				
	.dc.b	11				
	.dc.b	121				
						
	.dc.b	113				
						
	.dc.b	171				
	.dc.b	30				
	.dc.b	195				
						
	.dc.b	81				
						
	.dc.b	171				
	.dc.b	50				
	.dc.b	13				
						
	.dc.b	177				
						
	.dc.b	171				
	.dc.b	69				
	.dc.b	88				
						
	.dc.b	177				
						
	.dc.b	171				
	.dc.b	88				
	.dc.b	164				
						
	.dc.b	49				
						
	.dc.b	171				
	.dc.b	107				
	.dc.b	240				
						
	.dc.b	49				
						
	.dc.b	171				
	.dc.b	127				
	.dc.b	60				
						
	.dc.b	209				
						
	.dc.b	171				
	.dc.b	146				
	.dc.b	137				
						
	.dc.b	241				
						
	.dc.b	171				
	.dc.b	165				
	.dc.b	215				
						
	.dc.b	177				
						
	.dc.b	171				
	.dc.b	185				
	.dc.b	37				
						
	.dc.b	209				
						
	.dc.b	171				
	.dc.b	204				
	.dc.b	116				
						
	.dc.b	177				
						
	.dc.b	171				
	.dc.b	223				
	.dc.b	195				
						
	.dc.b	241				
						
	.dc.b	171				
	.dc.b	243				
	.dc.b	19				
						
	.dc.b	209				
						
	.dc.b	172				
	.dc.b	6				
	.dc.b	100				
						
	.dc.b	49				
						
	.dc.b	172				
	.dc.b	25				
	.dc.b	181				
						
	.dc.b	17				
						
	.dc.b	172				
	.dc.b	45				
	.dc.b	6				
						
	.dc.b	145				
						
	.dc.b	172				
	.dc.b	64				
	.dc.b	88				
						
	.dc.b	145				
						
	.dc.b	172				
	.dc.b	83				
	.dc.b	171				
						
	.dc.b	49				
						
	.dc.b	172				
	.dc.b	102				
	.dc.b	254				
						
	.dc.b	81				
						
	.dc.b	172				
	.dc.b	122				
	.dc.b	81				
						
	.dc.b	241				
						
	.dc.b	172				
	.dc.b	141				
	.dc.b	166				
						
	.dc.b	17				
						
	.dc.b	172				
	.dc.b	160				
	.dc.b	250				
						
	.dc.b	209				
						
	.dc.b	172				
	.dc.b	180				
	.dc.b	80				
						
	.dc.b	17				
						
	.dc.b	172				
	.dc.b	199				
	.dc.b	165				
						
	.dc.b	241				
						
	.dc.b	172				
	.dc.b	218				
	.dc.b	252				
						
	.dc.b	49				
						
	.dc.b	172				
	.dc.b	238				
	.dc.b	83				
						
	.dc.b	17				
						
	.dc.b	173				
	.dc.b	1				
	.dc.b	170				
						
	.dc.b	145				
						
	.dc.b	173				
	.dc.b	21				
	.dc.b	2				
						
	.dc.b	145				
						
	.dc.b	173				
	.dc.b	40				
	.dc.b	91				
						
	.dc.b	17				
						
	.dc.b	173				
	.dc.b	59				
	.dc.b	180				
						
	.dc.b	17				
						
	.dc.b	173				
	.dc.b	79				
	.dc.b	13				
						
	.dc.b	177				
						
	.dc.b	173				
	.dc.b	98				
	.dc.b	103				
						
	.dc.b	209				
						
	.dc.b	173				
	.dc.b	117				
	.dc.b	194				
						
	.dc.b	113				
						
	.dc.b	173				
	.dc.b	137				
	.dc.b	29				
						
	.dc.b	177				
						
	.dc.b	173				
	.dc.b	156				
	.dc.b	121				
						
	.dc.b	113				
						
	.dc.b	173				
	.dc.b	175				
	.dc.b	213				
						
	.dc.b	177				
						
	.dc.b	173				
	.dc.b	195				
	.dc.b	50				
						
	.dc.b	145				
						
	.dc.b	173				
	.dc.b	214				
	.dc.b	143				
						
	.dc.b	241				
						
	.dc.b	173				
	.dc.b	233				
	.dc.b	237				
						
	.dc.b	209				
						
	.dc.b	173				
	.dc.b	253				
	.dc.b	76				
						
	.dc.b	81				
						
	.dc.b	174				
	.dc.b	16				
	.dc.b	171				
						
	.dc.b	81				
						
	.dc.b	174				
	.dc.b	36				
	.dc.b	10				
						
	.dc.b	209				
						
	.dc.b	174				
	.dc.b	55				
	.dc.b	106				
						
	.dc.b	209				
						
	.dc.b	174				
	.dc.b	74				
	.dc.b	203				
						
	.dc.b	113				
						
	.dc.b	174				
	.dc.b	94				
	.dc.b	44				
						
	.dc.b	145				
						
	.dc.b	174				
	.dc.b	113				
	.dc.b	142				
						
	.dc.b	81				
						
	.dc.b	174				
	.dc.b	132				
	.dc.b	240				
						
	.dc.b	145				
						
	.dc.b	174				
	.dc.b	152				
	.dc.b	83				
						
	.dc.b	81				
						
	.dc.b	174				
	.dc.b	171				
	.dc.b	182				
						
	.dc.b	145				
						
	.dc.b	174				
	.dc.b	191				
	.dc.b	26				
						
	.dc.b	113				
						
	.dc.b	174				
	.dc.b	210				
	.dc.b	126				
						
	.dc.b	209				
						
	.dc.b	174				
	.dc.b	229				
	.dc.b	227				
						
	.dc.b	177				
						
	.dc.b	174				
	.dc.b	249				
	.dc.b	73				
						
	.dc.b	49				
						
	.dc.b	175				
	.dc.b	12				
	.dc.b	175				
						
	.dc.b	17				
						
	.dc.b	175				
	.dc.b	32				
	.dc.b	21				
						
	.dc.b	177				
						
	.dc.b	175				
	.dc.b	51				
	.dc.b	124				
						
	.dc.b	177				
						
	.dc.b	175				
	.dc.b	70				
	.dc.b	228				
						
	.dc.b	81				
						
	.dc.b	175				
	.dc.b	90				
	.dc.b	76				
						
	.dc.b	113				
						
	.dc.b	175				
	.dc.b	109				
	.dc.b	181				
						
	.dc.b	17				
						
	.dc.b	175				
	.dc.b	129				
	.dc.b	30				
						
	.dc.b	81				
						
	.dc.b	175				
	.dc.b	148				
	.dc.b	136				
						
	.dc.b	17				
						
	.dc.b	175				
	.dc.b	167				
	.dc.b	242				
						
	.dc.b	81				
						
	.dc.b	175				
	.dc.b	187				
	.dc.b	93				
						
	.dc.b	49				
						
	.dc.b	175				
	.dc.b	206				
	.dc.b	200				
						
	.dc.b	145				
						
	.dc.b	175				
	.dc.b	226				
	.dc.b	52				
						
	.dc.b	113				
						
	.dc.b	175				
	.dc.b	245				
	.dc.b	160				
						
	.dc.b	209				
						
	.dc.b	176				
	.dc.b	9				
	.dc.b	13				
						
	.dc.b	209				
						
	.dc.b	176				
	.dc.b	28				
	.dc.b	123				
						
	.dc.b	81				
						
	.dc.b	176				
	.dc.b	47				
	.dc.b	233				
						
	.dc.b	81				
						
	.dc.b	176				
	.dc.b	67				
	.dc.b	87				
						
	.dc.b	241				
						
	.dc.b	176				
	.dc.b	86				
	.dc.b	199				
						
	.dc.b	17				
						
	.dc.b	176				
	.dc.b	106				
	.dc.b	54				
						
	.dc.b	177				
						
	.dc.b	176				
	.dc.b	125				
	.dc.b	166				
						
	.dc.b	209				
						
	.dc.b	176				
	.dc.b	145				
	.dc.b	23				
						
	.dc.b	145				
						
	.dc.b	176				
	.dc.b	164				
	.dc.b	136				
						
	.dc.b	209				
						
	.dc.b	176				
	.dc.b	183				
	.dc.b	250				
						
	.dc.b	145				
						
	.dc.b	176				
	.dc.b	203				
	.dc.b	108				
						
	.dc.b	241				
						
	.dc.b	176				
	.dc.b	222				
	.dc.b	223				
						
	.dc.b	177				
						
	.dc.b	176				
	.dc.b	242				
	.dc.b	83				
						
	.dc.b	17				
						
	.dc.b	177				
	.dc.b	5				
	.dc.b	199				
						
	.dc.b	17				
						
	.dc.b	177				
	.dc.b	25				
	.dc.b	59				
						
	.dc.b	145				
						
	.dc.b	177				
	.dc.b	44				
	.dc.b	176				
						
	.dc.b	113				
						
	.dc.b	177				
	.dc.b	64				
	.dc.b	38				
						
	.dc.b	17				
						
	.dc.b	177				
	.dc.b	83				
	.dc.b	156				
						
	.dc.b	17				
						
	.dc.b	177				
	.dc.b	103				
	.dc.b	18				
						
	.dc.b	177				
						
	.dc.b	177				
	.dc.b	122				
	.dc.b	137				
						
	.dc.b	209				
						
	.dc.b	177				
	.dc.b	142				
	.dc.b	1				
						
	.dc.b	113				
						
	.dc.b	177				
	.dc.b	161				
	.dc.b	121				
						
	.dc.b	177				
						
	.dc.b	177				
	.dc.b	180				
	.dc.b	242				
						
	.dc.b	113				
						
	.dc.b	177				
	.dc.b	200				
	.dc.b	107				
						
	.dc.b	177				
						
	.dc.b	177				
	.dc.b	219				
	.dc.b	229				
						
	.dc.b	113				
						
	.dc.b	177				
	.dc.b	239				
	.dc.b	95				
						
	.dc.b	209				
						
	.dc.b	178				
	.dc.b	2				
	.dc.b	218				
						
	.dc.b	177				
						
	.dc.b	178				
	.dc.b	22				
	.dc.b	86				
						
	.dc.b	17				
						
	.dc.b	178				
	.dc.b	41				
	.dc.b	209				
						
	.dc.b	241				
						
	.dc.b	178				
	.dc.b	61				
	.dc.b	78				
						
	.dc.b	113				
						
	.dc.b	178				
	.dc.b	80				
	.dc.b	203				
						
	.dc.b	113				
						
	.dc.b	178				
	.dc.b	100				
	.dc.b	72				
						
	.dc.b	241				
						
	.dc.b	178				
	.dc.b	119				
	.dc.b	198				
						
	.dc.b	241				
						
	.dc.b	178				
	.dc.b	139				
	.dc.b	69				
						
	.dc.b	145				
						
	.dc.b	178				
	.dc.b	158				
	.dc.b	196				
						
	.dc.b	177				
						
	.dc.b	178				
	.dc.b	178				
	.dc.b	68				
						
	.dc.b	81				
						
	.dc.b	178				
	.dc.b	197				
	.dc.b	196				
						
	.dc.b	145				
						
	.dc.b	178				
	.dc.b	217				
	.dc.b	69				
						
	.dc.b	81				
						
	.dc.b	178				
	.dc.b	236				
	.dc.b	198				
						
	.dc.b	145				
						
	.dc.b	179				
	.dc.b	0				
	.dc.b	72				
						
	.dc.b	81				
						
	.dc.b	179				
	.dc.b	19				
	.dc.b	202				
						
	.dc.b	145				
						
	.dc.b	179				
	.dc.b	39				
	.dc.b	77				
						
	.dc.b	113				
						
	.dc.b	179				
	.dc.b	58				
	.dc.b	208				
						
	.dc.b	209				
						
	.dc.b	179				
	.dc.b	78				
	.dc.b	84				
						
	.dc.b	177				
						
	.dc.b	179				
	.dc.b	97				
	.dc.b	217				
						
	.dc.b	49				
						
	.dc.b	179				
	.dc.b	117				
	.dc.b	94				
						
	.dc.b	49				
						
	.dc.b	179				
	.dc.b	136				
	.dc.b	227				
						
	.dc.b	177				
						
	.dc.b	179				
	.dc.b	156				
	.dc.b	105				
						
	.dc.b	177				
						
	.dc.b	179				
	.dc.b	175				
	.dc.b	240				
						
	.dc.b	49				
						
	.dc.b	179				
	.dc.b	195				
	.dc.b	119				
						
	.dc.b	81				
						
	.dc.b	179				
	.dc.b	214				
	.dc.b	254				
						
	.dc.b	241				
						
	.dc.b	179				
	.dc.b	234				
	.dc.b	135				
						
	.dc.b	17				
						
	.dc.b	179				
	.dc.b	254				
	.dc.b	15				
						
	.dc.b	209				
						
	.dc.b	180				
	.dc.b	17				
	.dc.b	152				
						
	.dc.b	241				
						
	.dc.b	180				
	.dc.b	37				
	.dc.b	34				
						
	.dc.b	177				
						
	.dc.b	180				
	.dc.b	56				
	.dc.b	172				
						
	.dc.b	241				
						
	.dc.b	180				
	.dc.b	76				
	.dc.b	55				
						
	.dc.b	209				
						
	.dc.b	180				
	.dc.b	95				
	.dc.b	195				
						
	.dc.b	17				
						
	.dc.b	180				
	.dc.b	115				
	.dc.b	78				
						
	.dc.b	241				
						
	.dc.b	180				
	.dc.b	134				
	.dc.b	219				
						
	.dc.b	81				
						
	.dc.b	180				
	.dc.b	154				
	.dc.b	104				
						
	.dc.b	81				
						
	.dc.b	180				
	.dc.b	173				
	.dc.b	245				
						
	.dc.b	177				
						
	.dc.b	180				
	.dc.b	193				
	.dc.b	131				
						
	.dc.b	177				
						
	.dc.b	180				
	.dc.b	213				
	.dc.b	18				
						
	.dc.b	49				
						
	.dc.b	180				
	.dc.b	232				
	.dc.b	161				
						
	.dc.b	81				
						
	.dc.b	180				
	.dc.b	252				
	.dc.b	48				
						
	.dc.b	209				
						
	.dc.b	181				
	.dc.b	15				
	.dc.b	192				
						
	.dc.b	241				
						
	.dc.b	181				
	.dc.b	35				
	.dc.b	81				
						
	.dc.b	145				
						
	.dc.b	181				
	.dc.b	54				
	.dc.b	226				
						
	.dc.b	177				
						
	.dc.b	181				
	.dc.b	74				
	.dc.b	116				
						
	.dc.b	81				
						
	.dc.b	181				
	.dc.b	94				
	.dc.b	6				
						
	.dc.b	145				
						
	.dc.b	181				
	.dc.b	113				
	.dc.b	153				
						
	.dc.b	81				
						
	.dc.b	181				
	.dc.b	133				
	.dc.b	44				
						
	.dc.b	145				
						
	.dc.b	181				
	.dc.b	152				
	.dc.b	192				
						
	.dc.b	81				
						
	.dc.b	181				
	.dc.b	172				
	.dc.b	84				
						
	.dc.b	177				
						
	.dc.b	181				
	.dc.b	191				
	.dc.b	233				
						
	.dc.b	145				
						
	.dc.b	181				
	.dc.b	211				
	.dc.b	126				
						
	.dc.b	241				
						
	.dc.b	181				
	.dc.b	231				
	.dc.b	20				
						
	.dc.b	209				
						
	.dc.b	181				
	.dc.b	250				
	.dc.b	171				
						
	.dc.b	49				
						
	.dc.b	182				
	.dc.b	14				
	.dc.b	66				
						
	.dc.b	49				
						
	.dc.b	182				
	.dc.b	33				
	.dc.b	217				
						
	.dc.b	177				
						
	.dc.b	182				
	.dc.b	53				
	.dc.b	113				
						
	.dc.b	177				
						
	.dc.b	182				
	.dc.b	73				
	.dc.b	10				
						
	.dc.b	49				
						
	.dc.b	182				
	.dc.b	92				
	.dc.b	163				
						
	.dc.b	81				
						
	.dc.b	182				
	.dc.b	112				
	.dc.b	60				
						
	.dc.b	209				
						
	.dc.b	182				
	.dc.b	131				
	.dc.b	214				
						
	.dc.b	241				
						
	.dc.b	182				
	.dc.b	151				
	.dc.b	113				
						
	.dc.b	145				
						
	.dc.b	182				
	.dc.b	171				
	.dc.b	12				
						
	.dc.b	209				
						
	.dc.b	182				
	.dc.b	190				
	.dc.b	168				
						
	.dc.b	113				
						
	.dc.b	182				
	.dc.b	210				
	.dc.b	68				
						
	.dc.b	177				
						
	.dc.b	182				
	.dc.b	229				
	.dc.b	225				
						
	.dc.b	113				
						
	.dc.b	182				
	.dc.b	249				
	.dc.b	126				
						
	.dc.b	177				
						
	.dc.b	183				
	.dc.b	13				
	.dc.b	28				
						
	.dc.b	113				
						
	.dc.b	183				
	.dc.b	32				
	.dc.b	186				
						
	.dc.b	209				
						
	.dc.b	183				
	.dc.b	52				
	.dc.b	89				
						
	.dc.b	177				
						
	.dc.b	183				
	.dc.b	71				
	.dc.b	249				
						
	.dc.b	17				
						
	.dc.b	183				
	.dc.b	91				
	.dc.b	152				
						
	.dc.b	241				
						
	.dc.b	183				
	.dc.b	111				
	.dc.b	57				
						
	.dc.b	81				
						
	.dc.b	183				
	.dc.b	130				
	.dc.b	218				
						
	.dc.b	81				
						
	.dc.b	183				
	.dc.b	150				
	.dc.b	123				
						
	.dc.b	209				
						
	.dc.b	183				
	.dc.b	170				
	.dc.b	29				
						
	.dc.b	209				
						
	.dc.b	183				
	.dc.b	189				
	.dc.b	192				
						
	.dc.b	81				
						
	.dc.b	183				
	.dc.b	209				
	.dc.b	99				
						
	.dc.b	81				
						
	.dc.b	183				
	.dc.b	229				
	.dc.b	6				
						
	.dc.b	241				
						
	.dc.b	183				
	.dc.b	248				
	.dc.b	171				
						
	.dc.b	17				
						
	.dc.b	184				
	.dc.b	12				
	.dc.b	79				
						
	.dc.b	177				
						
	.dc.b	184				
	.dc.b	31				
	.dc.b	244				
						
	.dc.b	209				
						
	.dc.b	184				
	.dc.b	51				
	.dc.b	154				
						
	.dc.b	113				
						
	.dc.b	184				
	.dc.b	71				
	.dc.b	64				
						
	.dc.b	177				
						
	.dc.b	184				
	.dc.b	90				
	.dc.b	231				
						
	.dc.b	81				
						
	.dc.b	184				
	.dc.b	110				
	.dc.b	142				
						
	.dc.b	145				
						
	.dc.b	184				
	.dc.b	130				
	.dc.b	54				
						
	.dc.b	81				
						
	.dc.b	184				
	.dc.b	149				
	.dc.b	222				
						
	.dc.b	177				
						
	.dc.b	184				
	.dc.b	169				
	.dc.b	135				
						
	.dc.b	113				
						
	.dc.b	184				
	.dc.b	189				
	.dc.b	48				
						
	.dc.b	209				
						
	.dc.b	184				
	.dc.b	208				
	.dc.b	218				
						
	.dc.b	177				
						
	.dc.b	184				
	.dc.b	228				
	.dc.b	133				
						
	.dc.b	17				
						
	.dc.b	184				
	.dc.b	248				
	.dc.b	47				
						
	.dc.b	241				
						
	.dc.b	185				
	.dc.b	11				
	.dc.b	219				
						
	.dc.b	81				
						
	.dc.b	185				
	.dc.b	31				
	.dc.b	135				
						
	.dc.b	81				
						
	.dc.b	185				
	.dc.b	51				
	.dc.b	51				
						
	.dc.b	209				
						
	.dc.b	185				
	.dc.b	70				
	.dc.b	224				
						
	.dc.b	209				
						
	.dc.b	185				
	.dc.b	90				
	.dc.b	142				
						
	.dc.b	81				
						
	.dc.b	185				
	.dc.b	110				
	.dc.b	60				
						
	.dc.b	81				
						
	.dc.b	185				
	.dc.b	129				
	.dc.b	234				
						
	.dc.b	241				
						
	.dc.b	185				
	.dc.b	149				
	.dc.b	153				
						
	.dc.b	241				
						
	.dc.b	185				
	.dc.b	169				
	.dc.b	73				
						
	.dc.b	145				
						
	.dc.b	185				
	.dc.b	188				
	.dc.b	249				
						
	.dc.b	177				
						
	.dc.b	185				
	.dc.b	208				
	.dc.b	170				
						
	.dc.b	81				
						
	.dc.b	185				
	.dc.b	228				
	.dc.b	91				
						
	.dc.b	145				
						
	.dc.b	185				
	.dc.b	248				
	.dc.b	13				
						
	.dc.b	49				
						
	.dc.b	186				
	.dc.b	11				
	.dc.b	191				
						
	.dc.b	113				
						
	.dc.b	186				
	.dc.b	31				
	.dc.b	114				
						
	.dc.b	49				
						
	.dc.b	186				
	.dc.b	51				
	.dc.b	37				
						
	.dc.b	113				
						
	.dc.b	186				
	.dc.b	70				
	.dc.b	217				
						
	.dc.b	49				
						
	.dc.b	186				
	.dc.b	90				
	.dc.b	141				
						
	.dc.b	145				
						
	.dc.b	186				
	.dc.b	110				
	.dc.b	66				
						
	.dc.b	81				
						
	.dc.b	186				
	.dc.b	129				
	.dc.b	247				
						
	.dc.b	177				
						
	.dc.b	186				
	.dc.b	149				
	.dc.b	173				
						
	.dc.b	145				
						
	.dc.b	186				
	.dc.b	169				
	.dc.b	99				
						
	.dc.b	241				
						
	.dc.b	186				
	.dc.b	189				
	.dc.b	26				
						
	.dc.b	209				
						
	.dc.b	186				
	.dc.b	208				
	.dc.b	210				
						
	.dc.b	49				
						
	.dc.b	186				
	.dc.b	228				
	.dc.b	138				
						
	.dc.b	49				
						
	.dc.b	186				
	.dc.b	248				
	.dc.b	66				
						
	.dc.b	177				
						
	.dc.b	187				
	.dc.b	11				
	.dc.b	251				
						
	.dc.b	145				
						
	.dc.b	187				
	.dc.b	31				
	.dc.b	181				
						
	.dc.b	17				
						
	.dc.b	187				
	.dc.b	51				
	.dc.b	111				
						
	.dc.b	49				
						
	.dc.b	187				
	.dc.b	71				
	.dc.b	41				
						
	.dc.b	177				
						
	.dc.b	187				
	.dc.b	90				
	.dc.b	228				
						
	.dc.b	209				
						
	.dc.b	187				
	.dc.b	110				
	.dc.b	160				
						
	.dc.b	81				
						
	.dc.b	187				
	.dc.b	130				
	.dc.b	92				
						
	.dc.b	113				
						
	.dc.b	187				
	.dc.b	150				
	.dc.b	25				
						
	.dc.b	17				
						
	.dc.b	187				
	.dc.b	169				
	.dc.b	214				
						
	.dc.b	49				
						
	.dc.b	187				
	.dc.b	189				
	.dc.b	147				
						
	.dc.b	209				
						
	.dc.b	187				
	.dc.b	209				
	.dc.b	82				
						
	.dc.b	17				
						
	.dc.b	187				
	.dc.b	229				
	.dc.b	16				
						
	.dc.b	177				
						
	.dc.b	187				
	.dc.b	248				
	.dc.b	207				
						
	.dc.b	241				
						
	.dc.b	188				
	.dc.b	12				
	.dc.b	143				
						
	.dc.b	177				
						
	.dc.b	188				
	.dc.b	32				
	.dc.b	79				
						
	.dc.b	241				
						
	.dc.b	188				
	.dc.b	52				
	.dc.b	16				
						
	.dc.b	177				
						
	.dc.b	188				
	.dc.b	71				
	.dc.b	209				
						
	.dc.b	241				
						
	.dc.b	188				
	.dc.b	91				
	.dc.b	147				
						
	.dc.b	209				
						
	.dc.b	188				
	.dc.b	111				
	.dc.b	86				
						
	.dc.b	17				
						
	.dc.b	188				
	.dc.b	131				
	.dc.b	24				
						
	.dc.b	241				
						
	.dc.b	188				
	.dc.b	150				
	.dc.b	220				
						
	.dc.b	81				
						
	.dc.b	188				
	.dc.b	170				
	.dc.b	160				
						
	.dc.b	49				
						
	.dc.b	188				
	.dc.b	190				
	.dc.b	100				
						
	.dc.b	145				
						
	.dc.b	188				
	.dc.b	210				
	.dc.b	41				
						
	.dc.b	145				
						
	.dc.b	188				
	.dc.b	229				
	.dc.b	238				
						
	.dc.b	241				
						
	.dc.b	188				
	.dc.b	249				
	.dc.b	180				
						
	.dc.b	241				
						
	.dc.b	189				
	.dc.b	13				
	.dc.b	123				
						
	.dc.b	81				
						
	.dc.b	189				
	.dc.b	33				
	.dc.b	66				
						
	.dc.b	81				
						
	.dc.b	189				
	.dc.b	53				
	.dc.b	9				
						
	.dc.b	209				
						
	.dc.b	189				
	.dc.b	72				
	.dc.b	209				
						
	.dc.b	209				
						
	.dc.b	189				
	.dc.b	92				
	.dc.b	154				
						
	.dc.b	113				
						
	.dc.b	189				
	.dc.b	112				
	.dc.b	99				
						
	.dc.b	113				
						
	.dc.b	189				
	.dc.b	132				
	.dc.b	45				
						
	.dc.b	17				
						
	.dc.b	189				
	.dc.b	151				
	.dc.b	247				
						
	.dc.b	17				
						
	.dc.b	189				
	.dc.b	171				
	.dc.b	193				
						
	.dc.b	177				
						
	.dc.b	189				
	.dc.b	191				
	.dc.b	140				
						
	.dc.b	209				
						
	.dc.b	189				
	.dc.b	211				
	.dc.b	88				
						
	.dc.b	113				
						
	.dc.b	189				
	.dc.b	231				
	.dc.b	36				
						
	.dc.b	145				
						
	.dc.b	189				
	.dc.b	250				
	.dc.b	241				
						
	.dc.b	81				
						
	.dc.b	190				
	.dc.b	14				
	.dc.b	190				
						
	.dc.b	113				
						
	.dc.b	190				
	.dc.b	34				
	.dc.b	140				
						
	.dc.b	49				
						
	.dc.b	190				
	.dc.b	54				
	.dc.b	90				
						
	.dc.b	113				
						
	.dc.b	190				
	.dc.b	74				
	.dc.b	41				
						
	.dc.b	17				
						
	.dc.b	190				
	.dc.b	93				
	.dc.b	248				
						
	.dc.b	81				
						
	.dc.b	190				
	.dc.b	113				
	.dc.b	200				
						
	.dc.b	17				
						
	.dc.b	190				
	.dc.b	133				
	.dc.b	152				
						
	.dc.b	113				
						
	.dc.b	190				
	.dc.b	153				
	.dc.b	105				
						
	.dc.b	49				
						
	.dc.b	190				
	.dc.b	173				
	.dc.b	58				
						
	.dc.b	113				
						
	.dc.b	190				
	.dc.b	193				
	.dc.b	12				
						
	.dc.b	81				
						
	.dc.b	190				
	.dc.b	212				
	.dc.b	222				
						
	.dc.b	177				
						
	.dc.b	190				
	.dc.b	232				
	.dc.b	177				
						
	.dc.b	113				
						
	.dc.b	190				
	.dc.b	252				
	.dc.b	132				
						
	.dc.b	209				
						
	.dc.b	191				
	.dc.b	16				
	.dc.b	88				
						
	.dc.b	177				
						
	.dc.b	191				
	.dc.b	36				
	.dc.b	45				
						
	.dc.b	49				
						
	.dc.b	191				
	.dc.b	56				
	.dc.b	2				
						
	.dc.b	17				
						
	.dc.b	191				
	.dc.b	75				
	.dc.b	215				
						
	.dc.b	113				
						
	.dc.b	191				
	.dc.b	95				
	.dc.b	173				
						
	.dc.b	113				
						
	.dc.b	191				
	.dc.b	115				
	.dc.b	131				
						
	.dc.b	209				
						
	.dc.b	191				
	.dc.b	135				
	.dc.b	90				
						
	.dc.b	209				
						
	.dc.b	191				
	.dc.b	155				
	.dc.b	50				
						
	.dc.b	81				
						
	.dc.b	191				
	.dc.b	175				
	.dc.b	10				
						
	.dc.b	81				
						
	.dc.b	191				
	.dc.b	194				
	.dc.b	226				
						
	.dc.b	209				
						
	.dc.b	191				
	.dc.b	214				
	.dc.b	187				
						
	.dc.b	209				
						
	.dc.b	191				
	.dc.b	234				
	.dc.b	149				
						
	.dc.b	81				
						
	.dc.b	191				
	.dc.b	254				
	.dc.b	111				
						
	.dc.b	113				
						
	.dc.b	192				
	.dc.b	18				
	.dc.b	73				
						
	.dc.b	241				
						
	.dc.b	192				
	.dc.b	38				
	.dc.b	37				
						
	.dc.b	17				
						
	.dc.b	192				
	.dc.b	58				
	.dc.b	0				
						
	.dc.b	145				
						
	.dc.b	192				
	.dc.b	77				
	.dc.b	220				
						
	.dc.b	177				
						
	.dc.b	192				
	.dc.b	97				
	.dc.b	185				
						
	.dc.b	81				
						
	.dc.b	192				
	.dc.b	117				
	.dc.b	150				
						
	.dc.b	113				
						
	.dc.b	192				
	.dc.b	137				
	.dc.b	116				
						
	.dc.b	17				
						
	.dc.b	192				
	.dc.b	157				
	.dc.b	82				
						
	.dc.b	49				
						
	.dc.b	192				
	.dc.b	177				
	.dc.b	48				
						
	.dc.b	241				
						
	.dc.b	192				
	.dc.b	197				
	.dc.b	16				
						
	.dc.b	17				
						
	.dc.b	192				
	.dc.b	216				
	.dc.b	239				
						
	.dc.b	177				
						
	.dc.b	192				
	.dc.b	236				
	.dc.b	207				
						
	.dc.b	241				
						
	.dc.b	193				
	.dc.b	0				
	.dc.b	176				
						
	.dc.b	177				
						
	.dc.b	193				
	.dc.b	20				
	.dc.b	145				
						
	.dc.b	241				
						
	.dc.b	193				
	.dc.b	40				
	.dc.b	115				
						
	.dc.b	145				
						
	.dc.b	193				
	.dc.b	60				
	.dc.b	85				
						
	.dc.b	209				
						
	.dc.b	193				
	.dc.b	80				
	.dc.b	56				
						
	.dc.b	145				
						
	.dc.b	193				
	.dc.b	100				
	.dc.b	27				
						
	.dc.b	241				
						
	.dc.b	193				
	.dc.b	119				
	.dc.b	255				
						
	.dc.b	177				
						
	.dc.b	193				
	.dc.b	139				
	.dc.b	227				
						
	.dc.b	241				
						
	.dc.b	193				
	.dc.b	159				
	.dc.b	200				
						
	.dc.b	209				
						
	.dc.b	193				
	.dc.b	179				
	.dc.b	174				
						
	.dc.b	17				
						
	.dc.b	193				
	.dc.b	199				
	.dc.b	147				
						
	.dc.b	241				
						
	.dc.b	193				
	.dc.b	219				
	.dc.b	122				
						
	.dc.b	49				
						
	.dc.b	193				
	.dc.b	239				
	.dc.b	97				
						
	.dc.b	17				
						
	.dc.b	194				
	.dc.b	3				
	.dc.b	72				
						
	.dc.b	113				
						
	.dc.b	194				
	.dc.b	23				
	.dc.b	48				
						
	.dc.b	81				
						
	.dc.b	194				
	.dc.b	43				
	.dc.b	24				
						
	.dc.b	177				
						
	.dc.b	194				
	.dc.b	63				
	.dc.b	1				
						
	.dc.b	145				
						
	.dc.b	194				
	.dc.b	82				
	.dc.b	234				
						
	.dc.b	241				
						
	.dc.b	194				
	.dc.b	102				
	.dc.b	212				
						
	.dc.b	209				
						
	.dc.b	194				
	.dc.b	122				
	.dc.b	191				
						
	.dc.b	81				
						
	.dc.b	194				
	.dc.b	142				
	.dc.b	170				
						
	.dc.b	49				
						
	.dc.b	194				
	.dc.b	162				
	.dc.b	149				
						
	.dc.b	177				
						
	.dc.b	194				
	.dc.b	182				
	.dc.b	129				
						
	.dc.b	145				
						
	.dc.b	194				
	.dc.b	202				
	.dc.b	110				
						
	.dc.b	17				
						
	.dc.b	194				
	.dc.b	222				
	.dc.b	91				
						
	.dc.b	17				
						
	.dc.b	194				
	.dc.b	242				
	.dc.b	72				
						
	.dc.b	113				
						
	.dc.b	195				
	.dc.b	6				
	.dc.b	54				
						
	.dc.b	113				
						
	.dc.b	195				
	.dc.b	26				
	.dc.b	36				
						
	.dc.b	241				
						
	.dc.b	195				
	.dc.b	46				
	.dc.b	19				
						
	.dc.b	241				
						
	.dc.b	195				
	.dc.b	66				
	.dc.b	3				
						
	.dc.b	113				
						
	.dc.b	195				
	.dc.b	85				
	.dc.b	243				
						
	.dc.b	145				
						
	.dc.b	195				
	.dc.b	105				
	.dc.b	228				
						
	.dc.b	17				
						
	.dc.b	195				
	.dc.b	125				
	.dc.b	213				
						
	.dc.b	17				
						
	.dc.b	195				
	.dc.b	145				
	.dc.b	198				
						
	.dc.b	145				
						
	.dc.b	195				
	.dc.b	165				
	.dc.b	184				
						
	.dc.b	177				
						
	.dc.b	195				
	.dc.b	185				
	.dc.b	171				
						
	.dc.b	49				
						
	.dc.b	195				
	.dc.b	205				
	.dc.b	158				
						
	.dc.b	81				
						
	.dc.b	195				
	.dc.b	225				
	.dc.b	145				
						
	.dc.b	241				
						
	.dc.b	195				
	.dc.b	245				
	.dc.b	133				
						
	.dc.b	241				
						
	.dc.b	196				
	.dc.b	9				
	.dc.b	122				
						
	.dc.b	145				
						
	.dc.b	196				
	.dc.b	29				
	.dc.b	111				
						
	.dc.b	177				
						
	.dc.b	196				
	.dc.b	49				
	.dc.b	101				
						
	.dc.b	81				
						
	.dc.b	196				
	.dc.b	69				
	.dc.b	91				
						
	.dc.b	113				
						
	.dc.b	196				
	.dc.b	89				
	.dc.b	82				
						
	.dc.b	17				
						
	.dc.b	196				
	.dc.b	109				
	.dc.b	73				
						
	.dc.b	49				
						
	.dc.b	196				
	.dc.b	129				
	.dc.b	64				
						
	.dc.b	209				
						
	.dc.b	196				
	.dc.b	149				
	.dc.b	56				
						
	.dc.b	241				
						
	.dc.b	196				
	.dc.b	169				
	.dc.b	49				
						
	.dc.b	177				
						
	.dc.b	196				
	.dc.b	189				
	.dc.b	42				
						
	.dc.b	209				
						
	.dc.b	196				
	.dc.b	209				
	.dc.b	36				
						
	.dc.b	113				
						
	.dc.b	196				
	.dc.b	229				
	.dc.b	30				
						
	.dc.b	177				
						
	.dc.b	196				
	.dc.b	249				
	.dc.b	25				
						
	.dc.b	81				
						
	.dc.b	197				
	.dc.b	13				
	.dc.b	20				
						
	.dc.b	145				
						
	.dc.b	197				
	.dc.b	33				
	.dc.b	16				
						
	.dc.b	49				
						
	.dc.b	197				
	.dc.b	53				
	.dc.b	12				
						
	.dc.b	113				
						
	.dc.b	197				
	.dc.b	73				
	.dc.b	9				
						
	.dc.b	49				
						
	.dc.b	197				
	.dc.b	93				
	.dc.b	6				
						
	.dc.b	81				
						
	.dc.b	197				
	.dc.b	113				
	.dc.b	4				
						
	.dc.b	17				
						
	.dc.b	197				
	.dc.b	133				
	.dc.b	2				
						
	.dc.b	81				
						
	.dc.b	197				
	.dc.b	153				
	.dc.b	1				
						
	.dc.b	17				
						
	.dc.b	197				
	.dc.b	173				
	.dc.b	0				
						
	.dc.b	81				
						
	.dc.b	197				
	.dc.b	193				
	.dc.b	0				
						
	.dc.b	17				
						
	.dc.b	197				
	.dc.b	213				
	.dc.b	0				
						
	.dc.b	81				
						
	.dc.b	197				
	.dc.b	233				
	.dc.b	1				
						
	.dc.b	17				
						
	.dc.b	197				
	.dc.b	253				
	.dc.b	2				
						
	.dc.b	81				
						
	.dc.b	198				
	.dc.b	17				
	.dc.b	4				
						
	.dc.b	17				
						
	.dc.b	198				
	.dc.b	37				
	.dc.b	6				
						
	.dc.b	81				
						
	.dc.b	198				
	.dc.b	57				
	.dc.b	9				
						
	.dc.b	49				
						
	.dc.b	198				
	.dc.b	77				
	.dc.b	12				
						
	.dc.b	113				
						
	.dc.b	198				
	.dc.b	97				
	.dc.b	16				
						
	.dc.b	49				
						
	.dc.b	198				
	.dc.b	117				
	.dc.b	20				
						
	.dc.b	113				
						
	.dc.b	198				
	.dc.b	137				
	.dc.b	25				
						
	.dc.b	81				
						
	.dc.b	198				
	.dc.b	157				
	.dc.b	30				
						
	.dc.b	145				
						
	.dc.b	198				
	.dc.b	177				
	.dc.b	36				
						
	.dc.b	113				
						
	.dc.b	198				
	.dc.b	197				
	.dc.b	42				
						
	.dc.b	177				
						
	.dc.b	198				
	.dc.b	217				
	.dc.b	49				
						
	.dc.b	145				
						
	.dc.b	198				
	.dc.b	237				
	.dc.b	56				
						
	.dc.b	209				
						
	.dc.b	199				
	.dc.b	1				
	.dc.b	64				
						
	.dc.b	177				
						
	.dc.b	199				
	.dc.b	21				
	.dc.b	73				
						
	.dc.b	17				
						
	.dc.b	199				
	.dc.b	41				
	.dc.b	81				
						
	.dc.b	209				
						
	.dc.b	199				
	.dc.b	61				
	.dc.b	91				
						
	.dc.b	49				
						
	.dc.b	199				
	.dc.b	81				
	.dc.b	101				
						
	.dc.b	17				
						
	.dc.b	199				
	.dc.b	101				
	.dc.b	111				
						
	.dc.b	113				
						
	.dc.b	199				
	.dc.b	121				
	.dc.b	122				
						
	.dc.b	49				
						
	.dc.b	199				
	.dc.b	141				
	.dc.b	133				
						
	.dc.b	145				
						
	.dc.b	199				
	.dc.b	161				
	.dc.b	145				
						
	.dc.b	113				
						
	.dc.b	199				
	.dc.b	181				
	.dc.b	157				
						
	.dc.b	209				
						
	.dc.b	199				
	.dc.b	201				
	.dc.b	170				
						
	.dc.b	177				
						
	.dc.b	199				
	.dc.b	221				
	.dc.b	184				
						
	.dc.b	17				
						
	.dc.b	199				
	.dc.b	241				
	.dc.b	197				
						
	.dc.b	241				
						
	.dc.b	200				
	.dc.b	5				
	.dc.b	212				
						
	.dc.b	81				
						
	.dc.b	200				
	.dc.b	25				
	.dc.b	227				
						
	.dc.b	49				
						
	.dc.b	200				
	.dc.b	45				
	.dc.b	242				
						
	.dc.b	145				
						
	.dc.b	200				
	.dc.b	66				
	.dc.b	2				
						
	.dc.b	113				
						
	.dc.b	200				
	.dc.b	86				
	.dc.b	18				
						
	.dc.b	209				
						
	.dc.b	200				
	.dc.b	106				
	.dc.b	35				
						
	.dc.b	177				
						
	.dc.b	200				
	.dc.b	126				
	.dc.b	53				
						
	.dc.b	17				
						
	.dc.b	200				
	.dc.b	146				
	.dc.b	70				
						
	.dc.b	241				
						
	.dc.b	200				
	.dc.b	166				
	.dc.b	89				
						
	.dc.b	81				
						
	.dc.b	200				
	.dc.b	186				
	.dc.b	108				
						
	.dc.b	49				
						
	.dc.b	200				
	.dc.b	206				
	.dc.b	127				
						
	.dc.b	145				
						
	.dc.b	200				
	.dc.b	226				
	.dc.b	147				
						
	.dc.b	145				
						
	.dc.b	200				
	.dc.b	246				
	.dc.b	167				
						
	.dc.b	241				
						
	.dc.b	201				
	.dc.b	10				
	.dc.b	188				
						
	.dc.b	209				
						
	.dc.b	201				
	.dc.b	30				
	.dc.b	210				
						
	.dc.b	49				
						
	.dc.b	201				
	.dc.b	50				
	.dc.b	232				
						
	.dc.b	17				
						
	.dc.b	201				
	.dc.b	70				
	.dc.b	254				
						
	.dc.b	145				
						
	.dc.b	201				
	.dc.b	91				
	.dc.b	21				
						
	.dc.b	113				
						
	.dc.b	201				
	.dc.b	111				
	.dc.b	44				
						
	.dc.b	209				
						
	.dc.b	201				
	.dc.b	131				
	.dc.b	68				
						
	.dc.b	177				
						
	.dc.b	201				
	.dc.b	151				
	.dc.b	93				
						
	.dc.b	49				
						
	.dc.b	201				
	.dc.b	171				
	.dc.b	118				
						
	.dc.b	17				
						
	.dc.b	201				
	.dc.b	191				
	.dc.b	143				
						
	.dc.b	113				
						
	.dc.b	201				
	.dc.b	211				
	.dc.b	169				
						
	.dc.b	113				
						
	.dc.b	201				
	.dc.b	231				
	.dc.b	195				
						
	.dc.b	209				
						
	.dc.b	201				
	.dc.b	251				
	.dc.b	222				
						
	.dc.b	177				
						
	.dc.b	202				
	.dc.b	15				
	.dc.b	250				
						
	.dc.b	17				
						
	.dc.b	202				
	.dc.b	36				
	.dc.b	22				
						
	.dc.b	17				
						
	.dc.b	202				
	.dc.b	56				
	.dc.b	50				
						
	.dc.b	113				
						
	.dc.b	202				
	.dc.b	76				
	.dc.b	79				
						
	.dc.b	81				
						
	.dc.b	202				
	.dc.b	96				
	.dc.b	108				
						
	.dc.b	209				
						
	.dc.b	202				
	.dc.b	116				
	.dc.b	138				
						
	.dc.b	177				
						
	.dc.b	202				
	.dc.b	136				
	.dc.b	169				
						
	.dc.b	17				
						
	.dc.b	202				
	.dc.b	156				
	.dc.b	200				
						
	.dc.b	17				
						
	.dc.b	202				
	.dc.b	176				
	.dc.b	231				
						
	.dc.b	113				
						
	.dc.b	202				
	.dc.b	197				
	.dc.b	7				
						
	.dc.b	81				
						
	.dc.b	202				
	.dc.b	217				
	.dc.b	39				
						
	.dc.b	177				
						
	.dc.b	202				
	.dc.b	237				
	.dc.b	72				
						
	.dc.b	177				
						
	.dc.b	203				
	.dc.b	1				
	.dc.b	106				
						
	.dc.b	17				
						
	.dc.b	203				
	.dc.b	21				
	.dc.b	139				
						
	.dc.b	241				
						
	.dc.b	203				
	.dc.b	41				
	.dc.b	174				
						
	.dc.b	113				
						
	.dc.b	203				
	.dc.b	61				
	.dc.b	209				
						
	.dc.b	81				
						
	.dc.b	203				
	.dc.b	81				
	.dc.b	244				
						
	.dc.b	177				
						
	.dc.b	203				
	.dc.b	102				
	.dc.b	24				
						
	.dc.b	145				
						
	.dc.b	203				
	.dc.b	122				
	.dc.b	60				
						
	.dc.b	241				
						
	.dc.b	203				
	.dc.b	142				
	.dc.b	97				
						
	.dc.b	241				
						
	.dc.b	203				
	.dc.b	162				
	.dc.b	135				
						
	.dc.b	81				
						
	.dc.b	203				
	.dc.b	182				
	.dc.b	173				
						
	.dc.b	49				
						
	.dc.b	203				
	.dc.b	202				
	.dc.b	211				
						
	.dc.b	145				
						
	.dc.b	203				
	.dc.b	222				
	.dc.b	250				
						
	.dc.b	113				
						
	.dc.b	203				
	.dc.b	243				
	.dc.b	33				
						
	.dc.b	209				
						
	.dc.b	204				
	.dc.b	7				
	.dc.b	73				
						
	.dc.b	209				
						
	.dc.b	204				
	.dc.b	27				
	.dc.b	114				
						
	.dc.b	49				
						
	.dc.b	204				
	.dc.b	47				
	.dc.b	155				
						
	.dc.b	17				
						
	.dc.b	204				
	.dc.b	67				
	.dc.b	196				
						
	.dc.b	113				
						
	.dc.b	204				
	.dc.b	87				
	.dc.b	238				
						
	.dc.b	81				
						
	.dc.b	204				
	.dc.b	108				
	.dc.b	24				
						
	.dc.b	177				
						
	.dc.b	204				
	.dc.b	128				
	.dc.b	67				
						
	.dc.b	145				
						
	.dc.b	204				
	.dc.b	148				
	.dc.b	110				
						
	.dc.b	241				
						
	.dc.b	204				
	.dc.b	168				
	.dc.b	154				
						
	.dc.b	209				
						
	.dc.b	204				
	.dc.b	188				
	.dc.b	199				
						
	.dc.b	49				
						
	.dc.b	204				
	.dc.b	208				
	.dc.b	244				
						
	.dc.b	17				
						
	.dc.b	204				
	.dc.b	229				
	.dc.b	33				
						
	.dc.b	113				
						
	.dc.b	204				
	.dc.b	249				
	.dc.b	79				
						
	.dc.b	49				
						
	.dc.b	205				
	.dc.b	13				
	.dc.b	125				
						
	.dc.b	145				
						
	.dc.b	205				
	.dc.b	33				
	.dc.b	172				
						
	.dc.b	113				
						
	.dc.b	205				
	.dc.b	53				
	.dc.b	219				
						
	.dc.b	209				
						
	.dc.b	205				
	.dc.b	74				
	.dc.b	11				
						
	.dc.b	177				
						
	.dc.b	205				
	.dc.b	94				
	.dc.b	59				
						
	.dc.b	241				
						
	.dc.b	205				
	.dc.b	114				
	.dc.b	108				
						
	.dc.b	209				
						
	.dc.b	205				
	.dc.b	134				
	.dc.b	158				
						
	.dc.b	49				
						
	.dc.b	205				
	.dc.b	154				
	.dc.b	207				
						
	.dc.b	241				
						
	.dc.b	205				
	.dc.b	175				
	.dc.b	2				
						
	.dc.b	81				
						
	.dc.b	205				
	.dc.b	195				
	.dc.b	53				
						
	.dc.b	49				
						
	.dc.b	205				
	.dc.b	215				
	.dc.b	104				
						
	.dc.b	113				
						
	.dc.b	205				
	.dc.b	235				
	.dc.b	156				
						
	.dc.b	81				
						
	.dc.b	205				
	.dc.b	255				
	.dc.b	208				
						
	.dc.b	145				
						
	.dc.b	206				
	.dc.b	20				
	.dc.b	5				
						
	.dc.b	81				
						
	.dc.b	206				
	.dc.b	40				
	.dc.b	58				
						
	.dc.b	177				
						
	.dc.b	206				
	.dc.b	60				
	.dc.b	112				
						
	.dc.b	113				
						
	.dc.b	206				
	.dc.b	80				
	.dc.b	166				
						
	.dc.b	177				
						
	.dc.b	206				
	.dc.b	100				
	.dc.b	221				
						
	.dc.b	145				
						
	.dc.b	206				
	.dc.b	121				
	.dc.b	20				
						
	.dc.b	209				
						
	.dc.b	206				
	.dc.b	141				
	.dc.b	76				
						
	.dc.b	145				
						
	.dc.b	206				
	.dc.b	161				
	.dc.b	132				
						
	.dc.b	209				
						
	.dc.b	206				
	.dc.b	181				
	.dc.b	189				
						
	.dc.b	145				
						
	.dc.b	206				
	.dc.b	201				
	.dc.b	246				
						
	.dc.b	209				
						
	.dc.b	206				
	.dc.b	222				
	.dc.b	48				
						
	.dc.b	145				
						
	.dc.b	206				
	.dc.b	242				
	.dc.b	106				
						
	.dc.b	209				
						
	.dc.b	207				
	.dc.b	6				
	.dc.b	165				
						
	.dc.b	145				
						
	.dc.b	207				
	.dc.b	26				
	.dc.b	224				
						
	.dc.b	209				
						
	.dc.b	207				
	.dc.b	47				
	.dc.b	28				
						
	.dc.b	145				
						
	.dc.b	207				
	.dc.b	67				
	.dc.b	88				
						
	.dc.b	209				
						
	.dc.b	207				
	.dc.b	87				
	.dc.b	149				
						
	.dc.b	145				
						
	.dc.b	207				
	.dc.b	107				
	.dc.b	210				
						
	.dc.b	177				
						
	.dc.b	207				
	.dc.b	128				
	.dc.b	16				
						
	.dc.b	113				
						
	.dc.b	207				
	.dc.b	148				
	.dc.b	78				
						
	.dc.b	177				
						
	.dc.b	207				
	.dc.b	168				
	.dc.b	141				
						
	.dc.b	81				
						
	.dc.b	207				
	.dc.b	188				
	.dc.b	204				
						
	.dc.b	145				
						
	.dc.b	207				
	.dc.b	209				
	.dc.b	12				
						
	.dc.b	49				
						
	.dc.b	207				
	.dc.b	229				
	.dc.b	76				
						
	.dc.b	81				
						
	.dc.b	207				
	.dc.b	249				
	.dc.b	141				
						
	.dc.b	17				
						
	.dc.b	208				
	.dc.b	13				
	.dc.b	206				
						
	.dc.b	49				
						
	.dc.b	208				
	.dc.b	34				
	.dc.b	15				
						
	.dc.b	209				
						
	.dc.b	208				
	.dc.b	54				
	.dc.b	81				
						
	.dc.b	241				
						
	.dc.b	208				
	.dc.b	74				
	.dc.b	148				
						
	.dc.b	145				
						
	.dc.b	208				
	.dc.b	94				
	.dc.b	215				
						
	.dc.b	177				
						
	.dc.b	208				
	.dc.b	115				
	.dc.b	27				
						
	.dc.b	81				
						
	.dc.b	208				
	.dc.b	135				
	.dc.b	95				
						
	.dc.b	113				
						
	.dc.b	208				
	.dc.b	155				
	.dc.b	164				
						
	.dc.b	17				
						
	.dc.b	208				
	.dc.b	175				
	.dc.b	233				
						
	.dc.b	49				
						
	.dc.b	208				
	.dc.b	196				
	.dc.b	46				
						
	.dc.b	209				
						
	.dc.b	208				
	.dc.b	216				
	.dc.b	116				
						
	.dc.b	209				
						
	.dc.b	208				
	.dc.b	236				
	.dc.b	187				
						
	.dc.b	113				
						
	.dc.b	209				
	.dc.b	1				
	.dc.b	2				
						
	.dc.b	145				
						
	.dc.b	209				
	.dc.b	21				
	.dc.b	74				
						
	.dc.b	17				
						
	.dc.b	209				
	.dc.b	41				
	.dc.b	146				
						
	.dc.b	17				
						
	.dc.b	209				
	.dc.b	61				
	.dc.b	218				
						
	.dc.b	177				
						
	.dc.b	209				
	.dc.b	82				
	.dc.b	35				
						
	.dc.b	177				
						
	.dc.b	209				
	.dc.b	102				
	.dc.b	109				
						
	.dc.b	49				
						
	.dc.b	209				
	.dc.b	122				
	.dc.b	183				
						
	.dc.b	49				
						
	.dc.b	209				
	.dc.b	143				
	.dc.b	1				
						
	.dc.b	209				
						
	.dc.b	209				
	.dc.b	163				
	.dc.b	76				
						
	.dc.b	209				
						
	.dc.b	209				
	.dc.b	183				
	.dc.b	152				
						
	.dc.b	49				
						
	.dc.b	209				
	.dc.b	203				
	.dc.b	228				
						
	.dc.b	49				
						
	.dc.b	209				
	.dc.b	224				
	.dc.b	48				
						
	.dc.b	177				
						
	.dc.b	209				
	.dc.b	244				
	.dc.b	125				
						
	.dc.b	177				
						
	.dc.b	210				
	.dc.b	8				
	.dc.b	203				
						
	.dc.b	17				
						
	.dc.b	210				
	.dc.b	29				
	.dc.b	25				
						
	.dc.b	17				
						
	.dc.b	210				
	.dc.b	49				
	.dc.b	103				
						
	.dc.b	145				
						
	.dc.b	210				
	.dc.b	69				
	.dc.b	182				
						
	.dc.b	113				
						
	.dc.b	210				
	.dc.b	90				
	.dc.b	5				
						
	.dc.b	209				
						
	.dc.b	210				
	.dc.b	110				
	.dc.b	85				
						
	.dc.b	209				
						
	.dc.b	210				
	.dc.b	130				
	.dc.b	166				
						
	.dc.b	49				
						
	.dc.b	210				
	.dc.b	150				
	.dc.b	247				
						
	.dc.b	17				
						
	.dc.b	210				
	.dc.b	171				
	.dc.b	72				
						
	.dc.b	113				
						
	.dc.b	210				
	.dc.b	191				
	.dc.b	154				
						
	.dc.b	81				
						
	.dc.b	210				
	.dc.b	211				
	.dc.b	236				
						
	.dc.b	177				
						
	.dc.b	210				
	.dc.b	232				
	.dc.b	63				
						
	.dc.b	113				
						
	.dc.b	210				
	.dc.b	252				
	.dc.b	146				
						
	.dc.b	209				
						
	.dc.b	211				
	.dc.b	16				
	.dc.b	230				
						
	.dc.b	177				
						
	.dc.b	211				
	.dc.b	37				
	.dc.b	58				
						
	.dc.b	241				
						
	.dc.b	211				
	.dc.b	57				
	.dc.b	143				
						
	.dc.b	209				
						
	.dc.b	211				
	.dc.b	77				
	.dc.b	229				
						
	.dc.b	17				
						
	.dc.b	211				
	.dc.b	98				
	.dc.b	58				
						
	.dc.b	209				
						
	.dc.b	211				
	.dc.b	118				
	.dc.b	145				
						
	.dc.b	49				
						
	.dc.b	211				
	.dc.b	138				
	.dc.b	231				
						
	.dc.b	241				
						
	.dc.b	211				
	.dc.b	159				
	.dc.b	63				
						
	.dc.b	49				
						
	.dc.b	211				
	.dc.b	179				
	.dc.b	150				
						
	.dc.b	241				
						
	.dc.b	211				
	.dc.b	199				
	.dc.b	239				
						
	.dc.b	17				
						
	.dc.b	211				
	.dc.b	220				
	.dc.b	71				
						
	.dc.b	209				
						
	.dc.b	211				
	.dc.b	240				
	.dc.b	161				
						
	.dc.b	17				
						
	.dc.b	212				
	.dc.b	4				
	.dc.b	250				
						
	.dc.b	177				
						
	.dc.b	212				
	.dc.b	25				
	.dc.b	84				
						
	.dc.b	241				
						
	.dc.b	212				
	.dc.b	45				
	.dc.b	175				
						
	.dc.b	145				
						
	.dc.b	212				
	.dc.b	66				
	.dc.b	10				
						
	.dc.b	177				
						
	.dc.b	212				
	.dc.b	86				
	.dc.b	102				
						
	.dc.b	113				
						
	.dc.b	212				
	.dc.b	106				
	.dc.b	194				
						
	.dc.b	145				
						
	.dc.b	212				
	.dc.b	127				
	.dc.b	31				
						
	.dc.b	49				
						
	.dc.b	212				
	.dc.b	147				
	.dc.b	124				
						
	.dc.b	81				
						
	.dc.b	212				
	.dc.b	167				
	.dc.b	217				
						
	.dc.b	209				
						
	.dc.b	212				
	.dc.b	188				
	.dc.b	55				
						
	.dc.b	241				
						
	.dc.b	212				
	.dc.b	208				
	.dc.b	150				
						
	.dc.b	145				
						
	.dc.b	212				
	.dc.b	228				
	.dc.b	245				
						
	.dc.b	145				
						
	.dc.b	212				
	.dc.b	249				
	.dc.b	85				
						
	.dc.b	49				
						
	.dc.b	213				
	.dc.b	13				
	.dc.b	181				
						
	.dc.b	49				
						
	.dc.b	213				
	.dc.b	34				
	.dc.b	21				
						
	.dc.b	177				
						
	.dc.b	213				
	.dc.b	54				
	.dc.b	118				
						
	.dc.b	177				
						
	.dc.b	213				
	.dc.b	74				
	.dc.b	216				
						
	.dc.b	49				
						
	.dc.b	213				
	.dc.b	95				
	.dc.b	58				
						
	.dc.b	49				
						
	.dc.b	213				
	.dc.b	115				
	.dc.b	156				
						
	.dc.b	177				
						
	.dc.b	213				
	.dc.b	135				
	.dc.b	255				
						
	.dc.b	145				
						
	.dc.b	213				
	.dc.b	156				
	.dc.b	99				
						
	.dc.b	17				
						
	.dc.b	213				
	.dc.b	176				
	.dc.b	198				
						
	.dc.b	241				
						
	.dc.b	213				
	.dc.b	197				
	.dc.b	43				
						
	.dc.b	113				
						
	.dc.b	213				
	.dc.b	217				
	.dc.b	144				
						
	.dc.b	81				
						
	.dc.b	213				
	.dc.b	237				
	.dc.b	245				
						
	.dc.b	177				
						
	.dc.b	214				
	.dc.b	2				
	.dc.b	91				
						
	.dc.b	145				
						
	.dc.b	214				
	.dc.b	22				
	.dc.b	193				
						
	.dc.b	241				
						
	.dc.b	214				
	.dc.b	43				
	.dc.b	40				
						
	.dc.b	209				
						
	.dc.b	214				
	.dc.b	63				
	.dc.b	144				
						
	.dc.b	49				
						
	.dc.b	214				
	.dc.b	83				
	.dc.b	247				
						
	.dc.b	241				
						
	.dc.b	214				
	.dc.b	104				
	.dc.b	96				
						
	.dc.b	81				
						
	.dc.b	214				
	.dc.b	124				
	.dc.b	201				
						
	.dc.b	17				
						
	.dc.b	214				
	.dc.b	145				
	.dc.b	50				
						
	.dc.b	81				
						
	.dc.b	214				
	.dc.b	165				
	.dc.b	156				
						
	.dc.b	17				
						
	.dc.b	214				
	.dc.b	186				
	.dc.b	6				
						
	.dc.b	81				
						
	.dc.b	214				
	.dc.b	206				
	.dc.b	113				
						
	.dc.b	17				
						
	.dc.b	214				
	.dc.b	226				
	.dc.b	220				
						
	.dc.b	81				
						
	.dc.b	214				
	.dc.b	247				
	.dc.b	71				
						
	.dc.b	241				
						
	.dc.b	215				
	.dc.b	11				
	.dc.b	180				
						
	.dc.b	49				
						
	.dc.b	215				
	.dc.b	32				
	.dc.b	32				
						
	.dc.b	209				
						
	.dc.b	215				
	.dc.b	52				
	.dc.b	142				
						
	.dc.b	17				
						
	.dc.b	215				
	.dc.b	72				
	.dc.b	251				
						
	.dc.b	177				
						
	.dc.b	215				
	.dc.b	93				
	.dc.b	105				
						
	.dc.b	209				
						
	.dc.b	215				
	.dc.b	113				
	.dc.b	216				
						
	.dc.b	113				
						
	.dc.b	215				
	.dc.b	134				
	.dc.b	71				
						
	.dc.b	113				
						
	.dc.b	215				
	.dc.b	154				
	.dc.b	183				
						
	.dc.b	17				
						
	.dc.b	215				
	.dc.b	175				
	.dc.b	39				
						
	.dc.b	49				
						
	.dc.b	215				
	.dc.b	195				
	.dc.b	151				
						
	.dc.b	177				
						
	.dc.b	215				
	.dc.b	216				
	.dc.b	8				
						
	.dc.b	177				
						
	.dc.b	215				
	.dc.b	236				
	.dc.b	122				
						
	.dc.b	49				
						
	.dc.b	216				
	.dc.b	0				
	.dc.b	236				
						
	.dc.b	49				
						
	.dc.b	216				
	.dc.b	21				
	.dc.b	94				
						
	.dc.b	177				
						
	.dc.b	216				
	.dc.b	41				
	.dc.b	209				
						
	.dc.b	177				
						
	.dc.b	216				
	.dc.b	62				
	.dc.b	69				
						
	.dc.b	49				
						
	.dc.b	216				
	.dc.b	82				
	.dc.b	185				
						
	.dc.b	17				
						
	.dc.b	216				
	.dc.b	103				
	.dc.b	45				
						
	.dc.b	145				
						
	.dc.b	216				
	.dc.b	123				
	.dc.b	162				
						
	.dc.b	113				
						
	.dc.b	216				
	.dc.b	144				
	.dc.b	23				
						
	.dc.b	209				
						
	.dc.b	216				
	.dc.b	164				
	.dc.b	141				
						
	.dc.b	177				
						
	.dc.b	216				
	.dc.b	185				
	.dc.b	4				
						
	.dc.b	17				
						
	.dc.b	216				
	.dc.b	205				
	.dc.b	122				
						
	.dc.b	209				
						
	.dc.b	216				
	.dc.b	225				
	.dc.b	242				
						
	.dc.b	49				
						
	.dc.b	216				
	.dc.b	246				
	.dc.b	105				
						
	.dc.b	241				
						
	.dc.b	217				
	.dc.b	10				
	.dc.b	226				
						
	.dc.b	81				
						
	.dc.b	217				
	.dc.b	31				
	.dc.b	91				
						
	.dc.b	17				
						
	.dc.b	217				
	.dc.b	51				
	.dc.b	212				
						
	.dc.b	81				
						
	.dc.b	217				
	.dc.b	72				
	.dc.b	78				
						
	.dc.b	17				
						
	.dc.b	217				
	.dc.b	92				
	.dc.b	200				
						
	.dc.b	49				
						
	.dc.b	217				
	.dc.b	113				
	.dc.b	66				
						
	.dc.b	241				
						
	.dc.b	217				
	.dc.b	133				
	.dc.b	190				
						
	.dc.b	17				
						
	.dc.b	217				
	.dc.b	154				
	.dc.b	57				
						
	.dc.b	209				
						
	.dc.b	217				
	.dc.b	174				
	.dc.b	181				
						
	.dc.b	241				
						
	.dc.b	217				
	.dc.b	195				
	.dc.b	50				
						
	.dc.b	145				
						
	.dc.b	217				
	.dc.b	215				
	.dc.b	175				
						
	.dc.b	177				
						
	.dc.b	217				
	.dc.b	236				
	.dc.b	45				
						
	.dc.b	49				
						
	.dc.b	218				
	.dc.b	0				
	.dc.b	171				
						
	.dc.b	81				
						
	.dc.b	218				
	.dc.b	21				
	.dc.b	41				
						
	.dc.b	209				
						
	.dc.b	218				
	.dc.b	41				
	.dc.b	168				
						
	.dc.b	241				
						
	.dc.b	218				
	.dc.b	62				
	.dc.b	40				
						
	.dc.b	113				
						
	.dc.b	218				
	.dc.b	82				
	.dc.b	168				
						
	.dc.b	113				
						
	.dc.b	218				
	.dc.b	103				
	.dc.b	40				
						
	.dc.b	241				
						
	.dc.b	218				
	.dc.b	123				
	.dc.b	169				
						
	.dc.b	209				
						
	.dc.b	218				
	.dc.b	144				
	.dc.b	43				
						
	.dc.b	81				
						
	.dc.b	218				
	.dc.b	164				
	.dc.b	173				
						
	.dc.b	49				
						
	.dc.b	218				
	.dc.b	185				
	.dc.b	47				
						
	.dc.b	145				
						
	.dc.b	218				
	.dc.b	205				
	.dc.b	178				
						
	.dc.b	113				
						
	.dc.b	218				
	.dc.b	226				
	.dc.b	53				
						
	.dc.b	209				
						
	.dc.b	218				
	.dc.b	246				
	.dc.b	185				
						
	.dc.b	177				
						
	.dc.b	219				
	.dc.b	11				
	.dc.b	62				
						
	.dc.b	17				
						
	.dc.b	219				
	.dc.b	31				
	.dc.b	194				
						
	.dc.b	209				
						
	.dc.b	219				
	.dc.b	52				
	.dc.b	72				
						
	.dc.b	17				
						
	.dc.b	219				
	.dc.b	72				
	.dc.b	205				
						
	.dc.b	241				
						
	.dc.b	219				
	.dc.b	93				
	.dc.b	84				
						
	.dc.b	49				
						
	.dc.b	219				
	.dc.b	113				
	.dc.b	218				
						
	.dc.b	209				
						
	.dc.b	219				
	.dc.b	134				
	.dc.b	98				
						
	.dc.b	17				
						
	.dc.b	219				
	.dc.b	154				
	.dc.b	233				
						
	.dc.b	177				
						
	.dc.b	219				
	.dc.b	175				
	.dc.b	113				
						
	.dc.b	241				
						
	.dc.b	219				
	.dc.b	195				
	.dc.b	250				
						
	.dc.b	145				
						
	.dc.b	219				
	.dc.b	216				
	.dc.b	131				
						
	.dc.b	177				
						
	.dc.b	219				
	.dc.b	237				
	.dc.b	13				
						
	.dc.b	81				
						
	.dc.b	220				
	.dc.b	1				
	.dc.b	151				
						
	.dc.b	113				
						
	.dc.b	220				
	.dc.b	22				
	.dc.b	33				
						
	.dc.b	241				
						
	.dc.b	220				
	.dc.b	42				
	.dc.b	172				
						
	.dc.b	241				
						
	.dc.b	220				
	.dc.b	63				
	.dc.b	56				
						
	.dc.b	145				
						
	.dc.b	220				
	.dc.b	83				
	.dc.b	196				
						
	.dc.b	145				
						
	.dc.b	220				
	.dc.b	104				
	.dc.b	80				
						
	.dc.b	241				
						
	.dc.b	220				
	.dc.b	124				
	.dc.b	221				
						
	.dc.b	241				
						
	.dc.b	220				
	.dc.b	145				
	.dc.b	107				
						
	.dc.b	113				
						
	.dc.b	220				
	.dc.b	165				
	.dc.b	249				
						
	.dc.b	81				
						
	.dc.b	220				
	.dc.b	186				
	.dc.b	135				
						
	.dc.b	177				
						
	.dc.b	220				
	.dc.b	207				
	.dc.b	22				
						
	.dc.b	145				
						
	.dc.b	220				
	.dc.b	227				
	.dc.b	165				
						
	.dc.b	241				
						
	.dc.b	220				
	.dc.b	248				
	.dc.b	53				
						
	.dc.b	209				
						
	.dc.b	221				
	.dc.b	12				
	.dc.b	198				
						
	.dc.b	17				
						
	.dc.b	221				
	.dc.b	33				
	.dc.b	86				
						
	.dc.b	241				
						
	.dc.b	221				
	.dc.b	53				
	.dc.b	232				
						
	.dc.b	49				
						
	.dc.b	221				
	.dc.b	74				
	.dc.b	121				
						
	.dc.b	241				
						
	.dc.b	221				
	.dc.b	95				
	.dc.b	12				
						
	.dc.b	17				
						
	.dc.b	221				
	.dc.b	115				
	.dc.b	158				
						
	.dc.b	209				
						
	.dc.b	221				
	.dc.b	136				
	.dc.b	49				
						
	.dc.b	241				
						
	.dc.b	221				
	.dc.b	156				
	.dc.b	197				
						
	.dc.b	177				
						
	.dc.b	221				
	.dc.b	177				
	.dc.b	89				
						
	.dc.b	209				
						
	.dc.b	221				
	.dc.b	197				
	.dc.b	238				
						
	.dc.b	113				
						
	.dc.b	221				
	.dc.b	218				
	.dc.b	131				
						
	.dc.b	113				
						
	.dc.b	221				
	.dc.b	239				
	.dc.b	25				
						
	.dc.b	17				
						
	.dc.b	222				
	.dc.b	3				
	.dc.b	175				
						
	.dc.b	17				
						
	.dc.b	222				
	.dc.b	24				
	.dc.b	69				
						
	.dc.b	145				
						
	.dc.b	222				
	.dc.b	44				
	.dc.b	220				
						
	.dc.b	145				
						
	.dc.b	222				
	.dc.b	65				
	.dc.b	116				
						
	.dc.b	17				
						
	.dc.b	222				
	.dc.b	86				
	.dc.b	12				
						
	.dc.b	17				
						
	.dc.b	222				
	.dc.b	106				
	.dc.b	164				
						
	.dc.b	113				
						
	.dc.b	222				
	.dc.b	127				
	.dc.b	61				
						
	.dc.b	113				
						
	.dc.b	222				
	.dc.b	147				
	.dc.b	214				
						
	.dc.b	209				
						
	.dc.b	222				
	.dc.b	168				
	.dc.b	112				
						
	.dc.b	177				
						
	.dc.b	222				
	.dc.b	189				
	.dc.b	10				
						
	.dc.b	241				
						
	.dc.b	222				
	.dc.b	209				
	.dc.b	165				
						
	.dc.b	209				
						
	.dc.b	222				
	.dc.b	230				
	.dc.b	65				
						
	.dc.b	17				
						
	.dc.b	222				
	.dc.b	250				
	.dc.b	220				
						
	.dc.b	209				
						
	.dc.b	223				
	.dc.b	15				
	.dc.b	121				
						
	.dc.b	17				
						
	.dc.b	223				
	.dc.b	36				
	.dc.b	21				
						
	.dc.b	209				
						
	.dc.b	223				
	.dc.b	56				
	.dc.b	178				
						
	.dc.b	241				
						
	.dc.b	223				
	.dc.b	77				
	.dc.b	80				
						
	.dc.b	177				
						
	.dc.b	223				
	.dc.b	97				
	.dc.b	238				
						
	.dc.b	209				
						
	.dc.b	223				
	.dc.b	118				
	.dc.b	141				
						
	.dc.b	113				
						
	.dc.b	223				
	.dc.b	139				
	.dc.b	44				
						
	.dc.b	145				
						
	.dc.b	223				
	.dc.b	159				
	.dc.b	204				
						
	.dc.b	17				
						
	.dc.b	223				
	.dc.b	180				
	.dc.b	108				
						
	.dc.b	49				
						
	.dc.b	223				
	.dc.b	201				
	.dc.b	12				
						
	.dc.b	177				
						
	.dc.b	223				
	.dc.b	221				
	.dc.b	173				
						
	.dc.b	177				
						
	.dc.b	223				
	.dc.b	242				
	.dc.b	79				
						
	.dc.b	49				
						
	.dc.b	224				
	.dc.b	6				
	.dc.b	241				
						
	.dc.b	17				
						
	.dc.b	224				
	.dc.b	27				
	.dc.b	147				
						
	.dc.b	145				
						
	.dc.b	224				
	.dc.b	48				
	.dc.b	54				
						
	.dc.b	113				
						
	.dc.b	224				
	.dc.b	68				
	.dc.b	217				
						
	.dc.b	209				
						
	.dc.b	224				
	.dc.b	89				
	.dc.b	125				
						
	.dc.b	177				
						
	.dc.b	224				
	.dc.b	110				
	.dc.b	33				
						
	.dc.b	241				
						
	.dc.b	224				
	.dc.b	130				
	.dc.b	198				
						
	.dc.b	209				
						
	.dc.b	224				
	.dc.b	151				
	.dc.b	108				
						
	.dc.b	17				
						
	.dc.b	224				
	.dc.b	172				
	.dc.b	17				
						
	.dc.b	209				
						
	.dc.b	224				
	.dc.b	192				
	.dc.b	184				
						
	.dc.b	17				
						
	.dc.b	224				
	.dc.b	213				
	.dc.b	94				
						
	.dc.b	177				
						
	.dc.b	224				
	.dc.b	234				
	.dc.b	5				
						
	.dc.b	241				
						
	.dc.b	224				
	.dc.b	254				
	.dc.b	173				
						
	.dc.b	145				
						
	.dc.b	225				
	.dc.b	19				
	.dc.b	85				
						
	.dc.b	177				
						
	.dc.b	225				
	.dc.b	39				
	.dc.b	254				
						
	.dc.b	81				
						
	.dc.b	225				
	.dc.b	60				
	.dc.b	167				
						
	.dc.b	81				
						
	.dc.b	225				
	.dc.b	81				
	.dc.b	80				
						
	.dc.b	209				
						
	.dc.b	225				
	.dc.b	101				
	.dc.b	250				
						
	.dc.b	241				
						
	.dc.b	225				
	.dc.b	122				
	.dc.b	165				
						
	.dc.b	81				
						
	.dc.b	225				
	.dc.b	143				
	.dc.b	80				
						
	.dc.b	81				
						
	.dc.b	225				
	.dc.b	163				
	.dc.b	251				
						
	.dc.b	209				
						
	.dc.b	225				
	.dc.b	184				
	.dc.b	167				
						
	.dc.b	177				
						
	.dc.b	225				
	.dc.b	205				
	.dc.b	84				
						
	.dc.b	17				
						
	.dc.b	225				
	.dc.b	226				
	.dc.b	0				
						
	.dc.b	241				
						
	.dc.b	225				
	.dc.b	246				
	.dc.b	174				
						
	.dc.b	49				
						
	.dc.b	226				
	.dc.b	11				
	.dc.b	92				
						
	.dc.b	17				
						
	.dc.b	226				
	.dc.b	32				
	.dc.b	10				
						
	.dc.b	81				
						
	.dc.b	226				
	.dc.b	52				
	.dc.b	185				
						
	.dc.b	17				
						
	.dc.b	226				
	.dc.b	73				
	.dc.b	104				
						
	.dc.b	81				
						
	.dc.b	226				
	.dc.b	94				
	.dc.b	23				
						
	.dc.b	241				
						
	.dc.b	226				
	.dc.b	114				
	.dc.b	200				
						
	.dc.b	49				
						
	.dc.b	226				
	.dc.b	135				
	.dc.b	120				
						
	.dc.b	209				
						
	.dc.b	226				
	.dc.b	156				
	.dc.b	41				
						
	.dc.b	241				
						
	.dc.b	226				
	.dc.b	176				
	.dc.b	219				
						
	.dc.b	113				
						
	.dc.b	226				
	.dc.b	197				
	.dc.b	141				
						
	.dc.b	145				
						
	.dc.b	226				
	.dc.b	218				
	.dc.b	64				
						
	.dc.b	17				
						
	.dc.b	226				
	.dc.b	238				
	.dc.b	243				
						
	.dc.b	17				
						
	.dc.b	227				
	.dc.b	3				
	.dc.b	166				
						
	.dc.b	145				
						
	.dc.b	227				
	.dc.b	24				
	.dc.b	90				
						
	.dc.b	113				
						
	.dc.b	227				
	.dc.b	45				
	.dc.b	14				
						
	.dc.b	241				
						
	.dc.b	227				
	.dc.b	65				
	.dc.b	195				
						
	.dc.b	209				
						
	.dc.b	227				
	.dc.b	86				
	.dc.b	121				
						
	.dc.b	49				
						
	.dc.b	227				
	.dc.b	107				
	.dc.b	46				
						
	.dc.b	241				
						
	.dc.b	227				
	.dc.b	127				
	.dc.b	229				
						
	.dc.b	81				
						
	.dc.b	227				
	.dc.b	148				
	.dc.b	156				
						
	.dc.b	17				
						
	.dc.b	227				
	.dc.b	169				
	.dc.b	83				
						
	.dc.b	81				
						
	.dc.b	227				
	.dc.b	190				
	.dc.b	11				
						
	.dc.b	17				
						
	.dc.b	227				
	.dc.b	210				
	.dc.b	195				
						
	.dc.b	49				
						
	.dc.b	227				
	.dc.b	231				
	.dc.b	123				
						
	.dc.b	209				
						
	.dc.b	227				
	.dc.b	252				
	.dc.b	53				
						
	.dc.b	17				
						
	.dc.b	228				
	.dc.b	16				
	.dc.b	238				
						
	.dc.b	145				
						
	.dc.b	228				
	.dc.b	37				
	.dc.b	168				
						
	.dc.b	177				
						
	.dc.b	228				
	.dc.b	58				
	.dc.b	99				
						
	.dc.b	49				
						
	.dc.b	228				
	.dc.b	79				
	.dc.b	30				
						
	.dc.b	49				
						
	.dc.b	228				
	.dc.b	99				
	.dc.b	217				
						
	.dc.b	177				
						
	.dc.b	228				
	.dc.b	120				
	.dc.b	149				
						
	.dc.b	177				
						
	.dc.b	228				
	.dc.b	141				
	.dc.b	82				
						
	.dc.b	17				
						
	.dc.b	228				
	.dc.b	162				
	.dc.b	14				
						
	.dc.b	241				
						
	.dc.b	228				
	.dc.b	182				
	.dc.b	204				
						
	.dc.b	81				
						
	.dc.b	228				
	.dc.b	203				
	.dc.b	138				
						
	.dc.b	49				
						
	.dc.b	228				
	.dc.b	224				
	.dc.b	72				
						
	.dc.b	145				
						
	.dc.b	228				
	.dc.b	245				
	.dc.b	7				
						
	.dc.b	81				
						
	.dc.b	229				
	.dc.b	9				
	.dc.b	198				
						
	.dc.b	145				
						
	.dc.b	229				
	.dc.b	30				
	.dc.b	134				
						
	.dc.b	49				
						
	.dc.b	229				
	.dc.b	51				
	.dc.b	70				
						
	.dc.b	113				
						
	.dc.b	229				
	.dc.b	72				
	.dc.b	7				
						
	.dc.b	17				
						
	.dc.b	229				
	.dc.b	92				
	.dc.b	200				
						
	.dc.b	49				
						
	.dc.b	229				
	.dc.b	113				
	.dc.b	137				
						
	.dc.b	209				
						
	.dc.b	229				
	.dc.b	134				
	.dc.b	75				
						
	.dc.b	209				
						
	.dc.b	229				
	.dc.b	155				
	.dc.b	14				
						
	.dc.b	113				
						
	.dc.b	229				
	.dc.b	175				
	.dc.b	209				
						
	.dc.b	113				
						
	.dc.b	229				
	.dc.b	196				
	.dc.b	148				
						
	.dc.b	241				
						
	.dc.b	229				
	.dc.b	217				
	.dc.b	88				
						
	.dc.b	209				
						
	.dc.b	229				
	.dc.b	238				
	.dc.b	29				
						
	.dc.b	49				
						
	.dc.b	230				
	.dc.b	2				
	.dc.b	226				
						
	.dc.b	17				
						
	.dc.b	230				
	.dc.b	23				
	.dc.b	167				
						
	.dc.b	113				
						
	.dc.b	230				
	.dc.b	44				
	.dc.b	109				
						
	.dc.b	81				
						
	.dc.b	230				
	.dc.b	65				
	.dc.b	51				
						
	.dc.b	145				
						
	.dc.b	230				
	.dc.b	85				
	.dc.b	250				
						
	.dc.b	81				
						
	.dc.b	230				
	.dc.b	106				
	.dc.b	193				
						
	.dc.b	145				
						
	.dc.b	230				
	.dc.b	127				
	.dc.b	137				
						
	.dc.b	49				
						
	.dc.b	230				
	.dc.b	148				
	.dc.b	81				
						
	.dc.b	113				
						
	.dc.b	230				
	.dc.b	169				
	.dc.b	26				
						
	.dc.b	17				
						
	.dc.b	230				
	.dc.b	189				
	.dc.b	227				
						
	.dc.b	17				
						
	.dc.b	230				
	.dc.b	210				
	.dc.b	172				
						
	.dc.b	177				
						
	.dc.b	230				
	.dc.b	231				
	.dc.b	118				
						
	.dc.b	177				
						
	.dc.b	230				
	.dc.b	252				
	.dc.b	65				
						
	.dc.b	49				
						
	.dc.b	231				
	.dc.b	17				
	.dc.b	12				
						
	.dc.b	49				
						
	.dc.b	231				
	.dc.b	37				
	.dc.b	215				
						
	.dc.b	145				
						
	.dc.b	231				
	.dc.b	58				
	.dc.b	163				
						
	.dc.b	145				
						
	.dc.b	231				
	.dc.b	79				
	.dc.b	111				
						
	.dc.b	241				
						
	.dc.b	231				
	.dc.b	100				
	.dc.b	60				
						
	.dc.b	177				
						
	.dc.b	231				
	.dc.b	121				
	.dc.b	10				
						
	.dc.b	17				
						
	.dc.b	231				
	.dc.b	141				
	.dc.b	215				
						
	.dc.b	209				
						
	.dc.b	231				
	.dc.b	162				
	.dc.b	166				
						
	.dc.b	17				
						
	.dc.b	231				
	.dc.b	183				
	.dc.b	116				
						
	.dc.b	209				
						
	.dc.b	231				
	.dc.b	204				
	.dc.b	67				
						
	.dc.b	241				
						
	.dc.b	231				
	.dc.b	225				
	.dc.b	19				
						
	.dc.b	145				
						
	.dc.b	231				
	.dc.b	245				
	.dc.b	227				
						
	.dc.b	177				
						
	.dc.b	232				
	.dc.b	10				
	.dc.b	180				
						
	.dc.b	81				
						
	.dc.b	232				
	.dc.b	31				
	.dc.b	133				
						
	.dc.b	81				
						
	.dc.b	232				
	.dc.b	52				
	.dc.b	86				
						
	.dc.b	209				
						
	.dc.b	232				
	.dc.b	73				
	.dc.b	40				
						
	.dc.b	209				
						
	.dc.b	232				
	.dc.b	93				
	.dc.b	251				
						
	.dc.b	49				
						
	.dc.b	232				
	.dc.b	114				
	.dc.b	206				
						
	.dc.b	49				
						
	.dc.b	232				
	.dc.b	135				
	.dc.b	161				
						
	.dc.b	145				
						
	.dc.b	232				
	.dc.b	156				
	.dc.b	117				
						
	.dc.b	81				
						
	.dc.b	232				
	.dc.b	177				
	.dc.b	73				
						
	.dc.b	177				
						
	.dc.b	232				
	.dc.b	198				
	.dc.b	30				
						
	.dc.b	113				
						
	.dc.b	232				
	.dc.b	218				
	.dc.b	243				
						
	.dc.b	177				
						
	.dc.b	232				
	.dc.b	239				
	.dc.b	201				
						
	.dc.b	113				
						
	.dc.b	233				
	.dc.b	4				
	.dc.b	159				
						
	.dc.b	145				
						
	.dc.b	233				
	.dc.b	25				
	.dc.b	118				
						
	.dc.b	49				
						
	.dc.b	233				
	.dc.b	46				
	.dc.b	77				
						
	.dc.b	81				
						
	.dc.b	233				
	.dc.b	67				
	.dc.b	36				
						
	.dc.b	241				
						
	.dc.b	233				
	.dc.b	87				
	.dc.b	252				
						
	.dc.b	241				
						
	.dc.b	233				
	.dc.b	108				
	.dc.b	213				
						
	.dc.b	113				
						
	.dc.b	233				
	.dc.b	129				
	.dc.b	174				
						
	.dc.b	113				
						
	.dc.b	233				
	.dc.b	150				
	.dc.b	135				
						
	.dc.b	209				
						
	.dc.b	233				
	.dc.b	171				
	.dc.b	97				
						
	.dc.b	177				
						
	.dc.b	233				
	.dc.b	192				
	.dc.b	60				
						
	.dc.b	17				
						
	.dc.b	233				
	.dc.b	213				
	.dc.b	22				
						
	.dc.b	241				
						
	.dc.b	233				
	.dc.b	233				
	.dc.b	242				
						
	.dc.b	49				
						
	.dc.b	233				
	.dc.b	254				
	.dc.b	205				
						
	.dc.b	241				
						
	.dc.b	234				
	.dc.b	19				
	.dc.b	170				
						
	.dc.b	49				
						
	.dc.b	234				
	.dc.b	40				
	.dc.b	134				
						
	.dc.b	241				
						
	.dc.b	234				
	.dc.b	61				
	.dc.b	100				
						
	.dc.b	17				
						
	.dc.b	234				
	.dc.b	82				
	.dc.b	65				
						
	.dc.b	177				
						
	.dc.b	234				
	.dc.b	103				
	.dc.b	31				
						
	.dc.b	177				
						
	.dc.b	234				
	.dc.b	123				
	.dc.b	254				
						
	.dc.b	81				
						
	.dc.b	234				
	.dc.b	144				
	.dc.b	221				
						
	.dc.b	81				
						
	.dc.b	234				
	.dc.b	165				
	.dc.b	188				
						
	.dc.b	209				
						
	.dc.b	234				
	.dc.b	186				
	.dc.b	156				
						
	.dc.b	177				
						
	.dc.b	234				
	.dc.b	207				
	.dc.b	125				
						
	.dc.b	17				
						
	.dc.b	234				
	.dc.b	228				
	.dc.b	93				
						
	.dc.b	241				
						
	.dc.b	234				
	.dc.b	249				
	.dc.b	63				
						
	.dc.b	81				
						
	.dc.b	235				
	.dc.b	14				
	.dc.b	33				
						
	.dc.b	17				
						
	.dc.b	235				
	.dc.b	35				
	.dc.b	3				
						
	.dc.b	81				
						
	.dc.b	235				
	.dc.b	55				
	.dc.b	230				
						
	.dc.b	17				
						
	.dc.b	235				
	.dc.b	76				
	.dc.b	201				
						
	.dc.b	81				
						
	.dc.b	235				
	.dc.b	97				
	.dc.b	172				
						
	.dc.b	241				
						
	.dc.b	235				
	.dc.b	118				
	.dc.b	145				
						
	.dc.b	17				
						
	.dc.b	235				
	.dc.b	139				
	.dc.b	117				
						
	.dc.b	145				
						
	.dc.b	235				
	.dc.b	160				
	.dc.b	90				
						
	.dc.b	177				
						
	.dc.b	235				
	.dc.b	181				
	.dc.b	64				
						
	.dc.b	49				
						
	.dc.b	235				
	.dc.b	202				
	.dc.b	38				
						
	.dc.b	17				
						
	.dc.b	235				
	.dc.b	223				
	.dc.b	12				
						
	.dc.b	145				
						
	.dc.b	235				
	.dc.b	243				
	.dc.b	243				
						
	.dc.b	113				
						
	.dc.b	236				
	.dc.b	8				
	.dc.b	218				
						
	.dc.b	209				
						
	.dc.b	236				
	.dc.b	29				
	.dc.b	194				
						
	.dc.b	145				
						
	.dc.b	236				
	.dc.b	50				
	.dc.b	170				
						
	.dc.b	241				
						
	.dc.b	236				
	.dc.b	71				
	.dc.b	147				
						
	.dc.b	177				
						
	.dc.b	236				
	.dc.b	92				
	.dc.b	124				
						
	.dc.b	209				
						
	.dc.b	236				
	.dc.b	113				
	.dc.b	102				
						
	.dc.b	145				
						
	.dc.b	236				
	.dc.b	134				
	.dc.b	80				
						
	.dc.b	177				
						
	.dc.b	236				
	.dc.b	155				
	.dc.b	59				
						
	.dc.b	49				
						
	.dc.b	236				
	.dc.b	176				
	.dc.b	38				
						
	.dc.b	81				
						
	.dc.b	236				
	.dc.b	197				
	.dc.b	17				
						
	.dc.b	209				
						
	.dc.b	236				
	.dc.b	217				
	.dc.b	253				
						
	.dc.b	209				
						
	.dc.b	236				
	.dc.b	238				
	.dc.b	234				
						
	.dc.b	49				
						
	.dc.b	237				
	.dc.b	3				
	.dc.b	215				
						
	.dc.b	49				
						
	.dc.b	237				
	.dc.b	24				
	.dc.b	196				
						
	.dc.b	145				
						
	.dc.b	237				
	.dc.b	45				
	.dc.b	178				
						
	.dc.b	81				
						
	.dc.b	237				
	.dc.b	66				
	.dc.b	160				
						
	.dc.b	177				
						
	.dc.b	237				
	.dc.b	87				
	.dc.b	143				
						
	.dc.b	113				
						
	.dc.b	237				
	.dc.b	108				
	.dc.b	126				
						
	.dc.b	145				
						
	.dc.b	237				
	.dc.b	129				
	.dc.b	110				
						
	.dc.b	81				
						
	.dc.b	237				
	.dc.b	150				
	.dc.b	94				
						
	.dc.b	113				
						
	.dc.b	237				
	.dc.b	171				
	.dc.b	79				
						
	.dc.b	17				
						
	.dc.b	237				
	.dc.b	192				
	.dc.b	64				
						
	.dc.b	17				
						
	.dc.b	237				
	.dc.b	213				
	.dc.b	49				
						
	.dc.b	145				
						
	.dc.b	237				
	.dc.b	234				
	.dc.b	35				
						
	.dc.b	145				
						
	.dc.b	237				
	.dc.b	255				
	.dc.b	22				
						
	.dc.b	17				
						
	.dc.b	238				
	.dc.b	20				
	.dc.b	8				
						
	.dc.b	241				
						
	.dc.b	238				
	.dc.b	40				
	.dc.b	252				
						
	.dc.b	81				
						
	.dc.b	238				
	.dc.b	61				
	.dc.b	240				
						
	.dc.b	17				
						
	.dc.b	238				
	.dc.b	82				
	.dc.b	228				
						
	.dc.b	113				
						
	.dc.b	238				
	.dc.b	103				
	.dc.b	217				
						
	.dc.b	49				
						
	.dc.b	238				
	.dc.b	124				
	.dc.b	206				
						
	.dc.b	81				
						
	.dc.b	238				
	.dc.b	145				
	.dc.b	196				
						
	.dc.b	17				
						
	.dc.b	238				
	.dc.b	166				
	.dc.b	186				
						
	.dc.b	49				
						
	.dc.b	238				
	.dc.b	187				
	.dc.b	176				
						
	.dc.b	177				
						
	.dc.b	238				
	.dc.b	208				
	.dc.b	167				
						
	.dc.b	209				
						
	.dc.b	238				
	.dc.b	229				
	.dc.b	159				
						
	.dc.b	81				
						
	.dc.b	238				
	.dc.b	250				
	.dc.b	151				
						
	.dc.b	81				
						
	.dc.b	239				
	.dc.b	15				
	.dc.b	143				
						
	.dc.b	177				
						
	.dc.b	239				
	.dc.b	36				
	.dc.b	136				
						
	.dc.b	145				
						
	.dc.b	239				
	.dc.b	57				
	.dc.b	129				
						
	.dc.b	241				
						
	.dc.b	239				
	.dc.b	78				
	.dc.b	123				
						
	.dc.b	177				
						
	.dc.b	239				
	.dc.b	99				
	.dc.b	117				
						
	.dc.b	241				
						
	.dc.b	239				
	.dc.b	120				
	.dc.b	112				
						
	.dc.b	177				
						
	.dc.b	239				
	.dc.b	141				
	.dc.b	107				
						
	.dc.b	241				
						
	.dc.b	239				
	.dc.b	162				
	.dc.b	103				
						
	.dc.b	145				
						
	.dc.b	239				
	.dc.b	183				
	.dc.b	99				
						
	.dc.b	177				
						
	.dc.b	239				
	.dc.b	204				
	.dc.b	96				
						
	.dc.b	49				
						
	.dc.b	239				
	.dc.b	225				
	.dc.b	93				
						
	.dc.b	49				
						
	.dc.b	239				
	.dc.b	246				
	.dc.b	90				
						
	.dc.b	177				
						
	.dc.b	240				
	.dc.b	11				
	.dc.b	88				
						
	.dc.b	177				
						
	.dc.b	240				
	.dc.b	32				
	.dc.b	87				
						
	.dc.b	17				
						
	.dc.b	240				
	.dc.b	53				
	.dc.b	85				
						
	.dc.b	241				
						
	.dc.b	240				
	.dc.b	74				
	.dc.b	85				
						
	.dc.b	81				
						
	.dc.b	240				
	.dc.b	95				
	.dc.b	85				
						
	.dc.b	17				
						
	.dc.b	240				
	.dc.b	116				
	.dc.b	85				
						
	.dc.b	81				
						
	.dc.b	240				
	.dc.b	137				
	.dc.b	85				
						
	.dc.b	241				
						
	.dc.b	240				
	.dc.b	158				
	.dc.b	87				
						
	.dc.b	17				
						
	.dc.b	240				
	.dc.b	179				
	.dc.b	88				
						
	.dc.b	177				
						
	.dc.b	240				
	.dc.b	200				
	.dc.b	90				
						
	.dc.b	209				
						
	.dc.b	240				
	.dc.b	221				
	.dc.b	93				
						
	.dc.b	81				
						
	.dc.b	240				
	.dc.b	242				
	.dc.b	96				
						
	.dc.b	81				
						
	.dc.b	241				
	.dc.b	7				
	.dc.b	99				
						
	.dc.b	209				
						
	.dc.b	241				
	.dc.b	28				
	.dc.b	103				
						
	.dc.b	177				
						
	.dc.b	241				
	.dc.b	49				
	.dc.b	108				
						
	.dc.b	17				
						
	.dc.b	241				
	.dc.b	70				
	.dc.b	112				
						
	.dc.b	209				
						
	.dc.b	241				
	.dc.b	91				
	.dc.b	118				
						
	.dc.b	17				
						
	.dc.b	241				
	.dc.b	112				
	.dc.b	123				
						
	.dc.b	209				
						
	.dc.b	241				
	.dc.b	133				
	.dc.b	130				
						
	.dc.b	17				
						
	.dc.b	241				
	.dc.b	154				
	.dc.b	136				
						
	.dc.b	177				
						
	.dc.b	241				
	.dc.b	175				
	.dc.b	143				
						
	.dc.b	209				
						
	.dc.b	241				
	.dc.b	196				
	.dc.b	151				
						
	.dc.b	81				
						
	.dc.b	241				
	.dc.b	217				
	.dc.b	159				
						
	.dc.b	113				
						
	.dc.b	241				
	.dc.b	238				
	.dc.b	167				
						
	.dc.b	209				
						
	.dc.b	242				
	.dc.b	3				
	.dc.b	176				
						
	.dc.b	209				
						
	.dc.b	242				
	.dc.b	24				
	.dc.b	186				
						
	.dc.b	49				
						
	.dc.b	242				
	.dc.b	45				
	.dc.b	196				
						
	.dc.b	17				
						
	.dc.b	242				
	.dc.b	66				
	.dc.b	206				
						
	.dc.b	81				
						
	.dc.b	242				
	.dc.b	87				
	.dc.b	217				
						
	.dc.b	17				
						
	.dc.b	242				
	.dc.b	108				
	.dc.b	228				
						
	.dc.b	81				
						
	.dc.b	242				
	.dc.b	129				
	.dc.b	240				
						
	.dc.b	17				
						
	.dc.b	242				
	.dc.b	150				
	.dc.b	252				
						
	.dc.b	49				
						
	.dc.b	242				
	.dc.b	172				
	.dc.b	8				
						
	.dc.b	177				
						
	.dc.b	242				
	.dc.b	193				
	.dc.b	21				
						
	.dc.b	209				
						
	.dc.b	242				
	.dc.b	214				
	.dc.b	35				
						
	.dc.b	81				
						
	.dc.b	242				
	.dc.b	235				
	.dc.b	49				
						
	.dc.b	81				
						
	.dc.b	243				
	.dc.b	0				
	.dc.b	63				
						
	.dc.b	177				
						
	.dc.b	243				
	.dc.b	21				
	.dc.b	78				
						
	.dc.b	145				
						
	.dc.b	243				
	.dc.b	42				
	.dc.b	93				
						
	.dc.b	209				
						
	.dc.b	243				
	.dc.b	63				
	.dc.b	109				
						
	.dc.b	177				
						
	.dc.b	243				
	.dc.b	84				
	.dc.b	125				
						
	.dc.b	241				
						
	.dc.b	243				
	.dc.b	105				
	.dc.b	142				
						
	.dc.b	145				
						
	.dc.b	243				
	.dc.b	126				
	.dc.b	159				
						
	.dc.b	177				
						
	.dc.b	243				
	.dc.b	147				
	.dc.b	177				
						
	.dc.b	81				
						
	.dc.b	243				
	.dc.b	168				
	.dc.b	195				
						
	.dc.b	113				
						
	.dc.b	243				
	.dc.b	189				
	.dc.b	213				
						
	.dc.b	241				
						
	.dc.b	243				
	.dc.b	210				
	.dc.b	232				
						
	.dc.b	241				
						
	.dc.b	243				
	.dc.b	231				
	.dc.b	252				
						
	.dc.b	81				
						
	.dc.b	243				
	.dc.b	253				
	.dc.b	16				
						
	.dc.b	49				
						
	.dc.b	244				
	.dc.b	18				
	.dc.b	36				
						
	.dc.b	145				
						
	.dc.b	244				
	.dc.b	39				
	.dc.b	57				
						
	.dc.b	81				
						
	.dc.b	244				
	.dc.b	60				
	.dc.b	78				
						
	.dc.b	145				
						
	.dc.b	244				
	.dc.b	81				
	.dc.b	100				
						
	.dc.b	81				
						
	.dc.b	244				
	.dc.b	102				
	.dc.b	122				
						
	.dc.b	113				
						
	.dc.b	244				
	.dc.b	123				
	.dc.b	145				
						
	.dc.b	17				
						
	.dc.b	244				
	.dc.b	144				
	.dc.b	168				
						
	.dc.b	49				
						
	.dc.b	244				
	.dc.b	165				
	.dc.b	191				
						
	.dc.b	177				
						
	.dc.b	244				
	.dc.b	186				
	.dc.b	215				
						
	.dc.b	177				
						
	.dc.b	244				
	.dc.b	207				
	.dc.b	240				
						
	.dc.b	17				
						
	.dc.b	244				
	.dc.b	229				
	.dc.b	8				
						
	.dc.b	241				
						
	.dc.b	244				
	.dc.b	250				
	.dc.b	34				
						
	.dc.b	81				
						
	.dc.b	245				
	.dc.b	15				
	.dc.b	60				
						
	.dc.b	49				
						
	.dc.b	245				
	.dc.b	36				
	.dc.b	86				
						
	.dc.b	113				
						
	.dc.b	245				
	.dc.b	57				
	.dc.b	113				
						
	.dc.b	17				
						
	.dc.b	245				
	.dc.b	78				
	.dc.b	140				
						
	.dc.b	81				
						
	.dc.b	245				
	.dc.b	99				
	.dc.b	167				
						
	.dc.b	209				
						
	.dc.b	245				
	.dc.b	120				
	.dc.b	195				
						
	.dc.b	241				
						
	.dc.b	245				
	.dc.b	141				
	.dc.b	224				
						
	.dc.b	113				
						
	.dc.b	245				
	.dc.b	162				
	.dc.b	253				
						
	.dc.b	113				
						
	.dc.b	245				
	.dc.b	184				
	.dc.b	26				
						
	.dc.b	209				
						
	.dc.b	245				
	.dc.b	205				
	.dc.b	56				
						
	.dc.b	209				
						
	.dc.b	245				
	.dc.b	226				
	.dc.b	87				
						
	.dc.b	17				
						
	.dc.b	245				
	.dc.b	247				
	.dc.b	117				
						
	.dc.b	241				
						
	.dc.b	246				
	.dc.b	12				
	.dc.b	149				
						
	.dc.b	17				
						
	.dc.b	246				
	.dc.b	33				
	.dc.b	180				
						
	.dc.b	209				
						
	.dc.b	246				
	.dc.b	54				
	.dc.b	212				
						
	.dc.b	241				
						
	.dc.b	246				
	.dc.b	75				
	.dc.b	245				
						
	.dc.b	145				
						
	.dc.b	246				
	.dc.b	97				
	.dc.b	22				
						
	.dc.b	177				
						
	.dc.b	246				
	.dc.b	118				
	.dc.b	56				
						
	.dc.b	49				
						
	.dc.b	246				
	.dc.b	139				
	.dc.b	90				
						
	.dc.b	17				
						
	.dc.b	246				
	.dc.b	160				
	.dc.b	124				
						
	.dc.b	145				
						
	.dc.b	246				
	.dc.b	181				
	.dc.b	159				
						
	.dc.b	113				
						
	.dc.b	246				
	.dc.b	202				
	.dc.b	194				
						
	.dc.b	177				
						
	.dc.b	246				
	.dc.b	223				
	.dc.b	230				
						
	.dc.b	113				
						
	.dc.b	246				
	.dc.b	245				
	.dc.b	10				
						
	.dc.b	177				
						
	.dc.b	247				
	.dc.b	10				
	.dc.b	47				
						
	.dc.b	113				
						
	.dc.b	247				
	.dc.b	31				
	.dc.b	84				
						
	.dc.b	145				
						
	.dc.b	247				
	.dc.b	52				
	.dc.b	122				
						
	.dc.b	17				
						
	.dc.b	247				
	.dc.b	73				
	.dc.b	160				
						
	.dc.b	49				
						
	.dc.b	247				
	.dc.b	94				
	.dc.b	198				
						
	.dc.b	177				
						
	.dc.b	247				
	.dc.b	115				
	.dc.b	237				
						
	.dc.b	145				
						
	.dc.b	247				
	.dc.b	137				
	.dc.b	20				
						
	.dc.b	241				
						
	.dc.b	247				
	.dc.b	158				
	.dc.b	60				
						
	.dc.b	209				
						
	.dc.b	247				
	.dc.b	179				
	.dc.b	101				
						
	.dc.b	17				
						
	.dc.b	247				
	.dc.b	200				
	.dc.b	141				
						
	.dc.b	209				
						
	.dc.b	247				
	.dc.b	221				
	.dc.b	183				
						
	.dc.b	17				
						
	.dc.b	247				
	.dc.b	242				
	.dc.b	224				
						
	.dc.b	177				
						
	.dc.b	248				
	.dc.b	8				
	.dc.b	10				
						
	.dc.b	209				
						
	.dc.b	248				
	.dc.b	29				
	.dc.b	53				
						
	.dc.b	81				
						
	.dc.b	248				
	.dc.b	50				
	.dc.b	96				
						
	.dc.b	81				
						
	.dc.b	248				
	.dc.b	71				
	.dc.b	139				
						
	.dc.b	209				
						
	.dc.b	248				
	.dc.b	92				
	.dc.b	183				
						
	.dc.b	177				
						
	.dc.b	248				
	.dc.b	113				
	.dc.b	228				
						
	.dc.b	17				
						
	.dc.b	248				
	.dc.b	135				
	.dc.b	16				
						
	.dc.b	241				
						
	.dc.b	248				
	.dc.b	156				
	.dc.b	62				
						
	.dc.b	49				
						
	.dc.b	248				
	.dc.b	177				
	.dc.b	107				
						
	.dc.b	241				
						
	.dc.b	248				
	.dc.b	198				
	.dc.b	154				
						
	.dc.b	17				
						
	.dc.b	248				
	.dc.b	219				
	.dc.b	200				
						
	.dc.b	177				
						
	.dc.b	248				
	.dc.b	240				
	.dc.b	247				
						
	.dc.b	177				
						
	.dc.b	249				
	.dc.b	6				
	.dc.b	39				
						
	.dc.b	49				
						
	.dc.b	249				
	.dc.b	27				
	.dc.b	87				
						
	.dc.b	49				
						
	.dc.b	249				
	.dc.b	48				
	.dc.b	135				
						
	.dc.b	145				
						
	.dc.b	249				
	.dc.b	69				
	.dc.b	184				
						
	.dc.b	113				
						
	.dc.b	249				
	.dc.b	90				
	.dc.b	233				
						
	.dc.b	209				
						
	.dc.b	249				
	.dc.b	112				
	.dc.b	27				
						
	.dc.b	145				
						
	.dc.b	249				
	.dc.b	133				
	.dc.b	77				
						
	.dc.b	209				
						
	.dc.b	249				
	.dc.b	154				
	.dc.b	128				
						
	.dc.b	113				
						
	.dc.b	249				
	.dc.b	175				
	.dc.b	179				
						
	.dc.b	145				
						
	.dc.b	249				
	.dc.b	196				
	.dc.b	231				
						
	.dc.b	49				
						
	.dc.b	249				
	.dc.b	218				
	.dc.b	27				
						
	.dc.b	49				
						
	.dc.b	249				
	.dc.b	239				
	.dc.b	79				
						
	.dc.b	177				
						
	.dc.b	250				
	.dc.b	4				
	.dc.b	132				
						
	.dc.b	145				
						
	.dc.b	250				
	.dc.b	25				
	.dc.b	185				
						
	.dc.b	241				
						
	.dc.b	250				
	.dc.b	46				
	.dc.b	239				
						
	.dc.b	209				
						
	.dc.b	250				
	.dc.b	68				
	.dc.b	38				
						
	.dc.b	17				
						
	.dc.b	250				
	.dc.b	89				
	.dc.b	92				
						
	.dc.b	177				
						
	.dc.b	250				
	.dc.b	110				
	.dc.b	147				
						
	.dc.b	241				
						
	.dc.b	250				
	.dc.b	131				
	.dc.b	203				
						
	.dc.b	145				
						
	.dc.b	250				
	.dc.b	153				
	.dc.b	3				
						
	.dc.b	145				
						
	.dc.b	250				
	.dc.b	174				
	.dc.b	60				
						
	.dc.b	17				
						
	.dc.b	250				
	.dc.b	195				
	.dc.b	117				
						
	.dc.b	17				
						
	.dc.b	250				
	.dc.b	216				
	.dc.b	174				
						
	.dc.b	113				
						
	.dc.b	250				
	.dc.b	237				
	.dc.b	232				
						
	.dc.b	81				
						
	.dc.b	251				
	.dc.b	3				
	.dc.b	34				
						
	.dc.b	177				
						
	.dc.b	251				
	.dc.b	24				
	.dc.b	93				
						
	.dc.b	113				
						
	.dc.b	251				
	.dc.b	45				
	.dc.b	152				
						
	.dc.b	145				
						
	.dc.b	251				
	.dc.b	66				
	.dc.b	212				
						
	.dc.b	81				
						
	.dc.b	251				
	.dc.b	88				
	.dc.b	16				
						
	.dc.b	113				
						
	.dc.b	251				
	.dc.b	109				
	.dc.b	76				
						
	.dc.b	241				
						
	.dc.b	251				
	.dc.b	130				
	.dc.b	137				
						
	.dc.b	241				
						
	.dc.b	251				
	.dc.b	151				
	.dc.b	199				
						
	.dc.b	113				
						
	.dc.b	251				
	.dc.b	173				
	.dc.b	5				
						
	.dc.b	81				
						
	.dc.b	251				
	.dc.b	194				
	.dc.b	67				
						
	.dc.b	177				
						
	.dc.b	251				
	.dc.b	215				
	.dc.b	130				
						
	.dc.b	113				
						
	.dc.b	251				
	.dc.b	236				
	.dc.b	193				
						
	.dc.b	177				
						
	.dc.b	252				
	.dc.b	2				
	.dc.b	1				
						
	.dc.b	81				
						
	.dc.b	252				
	.dc.b	23				
	.dc.b	65				
						
	.dc.b	145				
						
	.dc.b	252				
	.dc.b	44				
	.dc.b	130				
						
	.dc.b	17				
						
	.dc.b	252				
	.dc.b	65				
	.dc.b	195				
						
	.dc.b	49				
						
	.dc.b	252				
	.dc.b	87				
	.dc.b	4				
						
	.dc.b	145				
						
	.dc.b	252				
	.dc.b	108				
	.dc.b	70				
						
	.dc.b	145				
						
	.dc.b	252				
	.dc.b	129				
	.dc.b	136				
						
	.dc.b	241				
						
	.dc.b	252				
	.dc.b	150				
	.dc.b	203				
						
	.dc.b	209				
						
	.dc.b	252				
	.dc.b	172				
	.dc.b	15				
						
	.dc.b	17				
						
	.dc.b	252				
	.dc.b	193				
	.dc.b	82				
						
	.dc.b	177				
						
	.dc.b	252				
	.dc.b	214				
	.dc.b	150				
						
	.dc.b	241				
						
	.dc.b	252				
	.dc.b	235				
	.dc.b	219				
						
	.dc.b	145				
						
	.dc.b	253				
	.dc.b	1				
	.dc.b	32				
						
	.dc.b	145				
						
	.dc.b	253				
	.dc.b	22				
	.dc.b	102				
						
	.dc.b	17				
						
	.dc.b	253				
	.dc.b	43				
	.dc.b	172				
						
	.dc.b	17				
						
	.dc.b	253				
	.dc.b	64				
	.dc.b	242				
						
	.dc.b	113				
						
	.dc.b	253				
	.dc.b	86				
	.dc.b	57				
						
	.dc.b	81				
						
	.dc.b	253				
	.dc.b	107				
	.dc.b	128				
						
	.dc.b	145				
						
	.dc.b	253				
	.dc.b	128				
	.dc.b	200				
						
	.dc.b	81				
						
	.dc.b	253				
	.dc.b	150				
	.dc.b	16				
						
	.dc.b	145				
						
	.dc.b	253				
	.dc.b	171				
	.dc.b	89				
						
	.dc.b	49				
						
	.dc.b	253				
	.dc.b	192				
	.dc.b	162				
						
	.dc.b	81				
						
	.dc.b	253				
	.dc.b	213				
	.dc.b	235				
						
	.dc.b	209				
						
	.dc.b	253				
	.dc.b	235				
	.dc.b	53				
						
	.dc.b	209				
						
	.dc.b	254				
	.dc.b	0				
	.dc.b	128				
						
	.dc.b	49				
						
	.dc.b	254				
	.dc.b	21				
	.dc.b	203				
						
	.dc.b	17				
						
	.dc.b	254				
	.dc.b	43				
	.dc.b	22				
						
	.dc.b	113				
						
	.dc.b	254				
	.dc.b	64				
	.dc.b	98				
						
	.dc.b	49				
						
	.dc.b	254				
	.dc.b	85				
	.dc.b	174				
						
	.dc.b	81				
						
	.dc.b	254				
	.dc.b	106				
	.dc.b	251				
						
	.dc.b	17				
						
	.dc.b	254				
	.dc.b	128				
	.dc.b	72				
						
	.dc.b	17				
						
	.dc.b	254				
	.dc.b	149				
	.dc.b	149				
						
	.dc.b	177				
						
	.dc.b	254				
	.dc.b	170				
	.dc.b	227				
						
	.dc.b	177				
						
	.dc.b	254				
	.dc.b	192				
	.dc.b	50				
						
	.dc.b	17				
						
	.dc.b	254				
	.dc.b	213				
	.dc.b	128				
						
	.dc.b	241				
						
	.dc.b	254				
	.dc.b	234				
	.dc.b	208				
						
	.dc.b	81				
						
	.dc.b	255				
	.dc.b	0				
	.dc.b	32				
						
	.dc.b	17				
						
	.dc.b	255				
	.dc.b	21				
	.dc.b	112				
						
	.dc.b	81				
						
	.dc.b	255				
	.dc.b	42				
	.dc.b	192				
						
	.dc.b	241				
						
	.dc.b	255				
	.dc.b	64				
	.dc.b	18				
						
	.dc.b	17				
						
	.dc.b	255				
	.dc.b	85				
	.dc.b	99				
						
	.dc.b	145				
						
	.dc.b	255				
	.dc.b	106				
	.dc.b	181				
						
	.dc.b	145				
						
	.dc.b	255				
	.dc.b	128				
	.dc.b	8				
						
	.dc.b	17				
						
	.dc.b	255				
	.dc.b	149				
	.dc.b	90				
						
	.dc.b	241				
						
	.dc.b	255				
	.dc.b	170				
	.dc.b	174				
						
	.dc.b	81				
						
	.dc.b	255				
	.dc.b	192				
	.dc.b	2				
						
	.dc.b	17				
						
	.dc.b	255				
	.dc.b	213				
	.dc.b	86				
						
	.dc.b	81				
						
	.dc.b	255				
	.dc.b	234				
	.dc.b	170				
						
	.dc.b	241				
						
	.dc.b	128				
	.dc.b	0				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	10				
	.dc.b	170				
						
	.dc.b	210				
						
	.dc.b	128				
	.dc.b	21				
	.dc.b	85				
						
	.dc.b	210				
						
	.dc.b	128				
	.dc.b	32				
	.dc.b	1				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	42				
	.dc.b	172				
						
	.dc.b	114				
						
	.dc.b	128				
	.dc.b	53				
	.dc.b	88				
						
	.dc.b	50				
						
	.dc.b	128				
	.dc.b	64				
	.dc.b	4				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	74				
	.dc.b	176				
						
	.dc.b	50				
						
	.dc.b	128				
	.dc.b	85				
	.dc.b	92				
						
	.dc.b	114				
						
	.dc.b	128				
	.dc.b	96				
	.dc.b	9				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	106				
	.dc.b	181				
						
	.dc.b	210				
						
	.dc.b	128				
	.dc.b	117				
	.dc.b	98				
						
	.dc.b	210				
						
	.dc.b	128				
	.dc.b	128				
	.dc.b	16				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	138				
	.dc.b	189				
						
	.dc.b	114				
						
	.dc.b	128				
	.dc.b	149				
	.dc.b	107				
						
	.dc.b	50				
						
	.dc.b	128				
	.dc.b	160				
	.dc.b	25				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	170				
	.dc.b	199				
						
	.dc.b	18				
						
	.dc.b	128				
	.dc.b	181				
	.dc.b	117				
						
	.dc.b	114				
						
	.dc.b	128				
	.dc.b	192				
	.dc.b	35				
						
	.dc.b	242				
						
	.dc.b	128				
	.dc.b	202				
	.dc.b	210				
						
	.dc.b	210				
						
	.dc.b	128				
	.dc.b	213				
	.dc.b	129				
						
	.dc.b	210				
						
	.dc.b	128				
	.dc.b	224				
	.dc.b	48				
						
	.dc.b	242				
						
	.dc.b	128				
	.dc.b	234				
	.dc.b	224				
						
	.dc.b	114				
						
	.dc.b	128				
	.dc.b	245				
	.dc.b	144				
						
	.dc.b	18				
						
	.dc.b	129				
	.dc.b	0				
	.dc.b	63				
						
	.dc.b	242				
						
	.dc.b	129				
	.dc.b	10				
	.dc.b	240				
						
	.dc.b	18				
						
	.dc.b	129				
	.dc.b	21				
	.dc.b	160				
						
	.dc.b	82				
						
	.dc.b	129				
	.dc.b	32				
	.dc.b	80				
						
	.dc.b	242				
						
	.dc.b	129				
	.dc.b	43				
	.dc.b	1				
						
	.dc.b	178				
						
	.dc.b	129				
	.dc.b	53				
	.dc.b	178				
						
	.dc.b	178				
						
	.dc.b	129				
	.dc.b	64				
	.dc.b	99				
						
	.dc.b	210				
						
	.dc.b	129				
	.dc.b	75				
	.dc.b	21				
						
	.dc.b	82				
						
	.dc.b	129				
	.dc.b	85				
	.dc.b	198				
						
	.dc.b	242				
						
	.dc.b	129				
	.dc.b	96				
	.dc.b	120				
						
	.dc.b	210				
						
	.dc.b	129				
	.dc.b	107				
	.dc.b	42				
						
	.dc.b	242				
						
	.dc.b	129				
	.dc.b	117				
	.dc.b	221				
						
	.dc.b	50				
						
	.dc.b	129				
	.dc.b	128				
	.dc.b	143				
						
	.dc.b	210				
						
	.dc.b	129				
	.dc.b	139				
	.dc.b	66				
						
	.dc.b	146				
						
	.dc.b	129				
	.dc.b	149				
	.dc.b	245				
						
	.dc.b	114				
						
	.dc.b	129				
	.dc.b	160				
	.dc.b	168				
						
	.dc.b	178				
						
	.dc.b	129				
	.dc.b	171				
	.dc.b	92				
						
	.dc.b	18				
						
	.dc.b	129				
	.dc.b	182				
	.dc.b	15				
						
	.dc.b	178				
						
	.dc.b	129				
	.dc.b	192				
	.dc.b	195				
						
	.dc.b	146				
						
	.dc.b	129				
	.dc.b	203				
	.dc.b	119				
						
	.dc.b	178				
						
	.dc.b	129				
	.dc.b	214				
	.dc.b	43				
						
	.dc.b	242				
						
	.dc.b	129				
	.dc.b	224				
	.dc.b	224				
						
	.dc.b	114				
						
	.dc.b	129				
	.dc.b	235				
	.dc.b	149				
						
	.dc.b	50				
						
	.dc.b	129				
	.dc.b	246				
	.dc.b	74				
						
	.dc.b	50				
						
	.dc.b	130				
	.dc.b	0				
	.dc.b	255				
						
	.dc.b	82				
						
	.dc.b	130				
	.dc.b	11				
	.dc.b	180				
						
	.dc.b	210				
						
	.dc.b	130				
	.dc.b	22				
	.dc.b	106				
						
	.dc.b	114				
						
	.dc.b	130				
	.dc.b	33				
	.dc.b	32				
						
	.dc.b	50				
						
	.dc.b	130				
	.dc.b	43				
	.dc.b	214				
						
	.dc.b	82				
						
	.dc.b	130				
	.dc.b	54				
	.dc.b	140				
						
	.dc.b	146				
						
	.dc.b	130				
	.dc.b	65				
	.dc.b	67				
						
	.dc.b	18				
						
	.dc.b	130				
	.dc.b	75				
	.dc.b	249				
						
	.dc.b	210				
						
	.dc.b	130				
	.dc.b	86				
	.dc.b	176				
						
	.dc.b	210				
						
	.dc.b	130				
	.dc.b	97				
	.dc.b	103				
						
	.dc.b	242				
						
	.dc.b	130				
	.dc.b	108				
	.dc.b	31				
						
	.dc.b	82				
						
	.dc.b	130				
	.dc.b	118				
	.dc.b	214				
						
	.dc.b	242				
						
	.dc.b	130				
	.dc.b	129				
	.dc.b	142				
						
	.dc.b	178				
						
	.dc.b	130				
	.dc.b	140				
	.dc.b	70				
						
	.dc.b	210				
						
	.dc.b	130				
	.dc.b	150				
	.dc.b	255				
						
	.dc.b	18				
						
	.dc.b	130				
	.dc.b	161				
	.dc.b	183				
						
	.dc.b	146				
						
	.dc.b	130				
	.dc.b	172				
	.dc.b	112				
						
	.dc.b	50				
						
	.dc.b	130				
	.dc.b	183				
	.dc.b	41				
						
	.dc.b	50				
						
	.dc.b	130				
	.dc.b	193				
	.dc.b	226				
						
	.dc.b	82				
						
	.dc.b	130				
	.dc.b	204				
	.dc.b	155				
						
	.dc.b	178				
						
	.dc.b	130				
	.dc.b	215				
	.dc.b	85				
						
	.dc.b	82				
						
	.dc.b	130				
	.dc.b	226				
	.dc.b	15				
						
	.dc.b	18				
						
	.dc.b	130				
	.dc.b	236				
	.dc.b	201				
						
	.dc.b	18				
						
	.dc.b	130				
	.dc.b	247				
	.dc.b	131				
						
	.dc.b	82				
						
	.dc.b	131				
	.dc.b	2				
	.dc.b	61				
						
	.dc.b	210				
						
	.dc.b	131				
	.dc.b	12				
	.dc.b	248				
						
	.dc.b	114				
						
	.dc.b	131				
	.dc.b	23				
	.dc.b	179				
						
	.dc.b	114				
						
	.dc.b	131				
	.dc.b	34				
	.dc.b	110				
						
	.dc.b	146				
						
	.dc.b	131				
	.dc.b	45				
	.dc.b	41				
						
	.dc.b	210				
						
	.dc.b	131				
	.dc.b	55				
	.dc.b	229				
						
	.dc.b	114				
						
	.dc.b	131				
	.dc.b	66				
	.dc.b	161				
						
	.dc.b	50				
						
	.dc.b	131				
	.dc.b	77				
	.dc.b	93				
						
	.dc.b	50				
						
	.dc.b	131				
	.dc.b	88				
	.dc.b	25				
						
	.dc.b	114				
						
	.dc.b	131				
	.dc.b	98				
	.dc.b	213				
						
	.dc.b	210				
						
	.dc.b	131				
	.dc.b	109				
	.dc.b	146				
						
	.dc.b	146				
						
	.dc.b	131				
	.dc.b	120				
	.dc.b	79				
						
	.dc.b	114				
						
	.dc.b	131				
	.dc.b	131				
	.dc.b	12				
						
	.dc.b	114				
						
	.dc.b	131				
	.dc.b	141				
	.dc.b	201				
						
	.dc.b	210				
						
	.dc.b	131				
	.dc.b	152				
	.dc.b	135				
						
	.dc.b	82				
						
	.dc.b	131				
	.dc.b	163				
	.dc.b	69				
						
	.dc.b	18				
						
	.dc.b	131				
	.dc.b	174				
	.dc.b	3				
						
	.dc.b	18				
						
	.dc.b	131				
	.dc.b	184				
	.dc.b	193				
						
	.dc.b	82				
						
	.dc.b	131				
	.dc.b	195				
	.dc.b	127				
						
	.dc.b	178				
						
	.dc.b	131				
	.dc.b	206				
	.dc.b	62				
						
	.dc.b	82				
						
	.dc.b	131				
	.dc.b	216				
	.dc.b	253				
						
	.dc.b	50				
						
	.dc.b	131				
	.dc.b	227				
	.dc.b	188				
						
	.dc.b	50				
						
	.dc.b	131				
	.dc.b	238				
	.dc.b	123				
						
	.dc.b	146				
						
	.dc.b	131				
	.dc.b	249				
	.dc.b	59				
						
	.dc.b	18				
						
	.dc.b	132				
	.dc.b	3				
	.dc.b	250				
						
	.dc.b	178				
						
	.dc.b	132				
	.dc.b	14				
	.dc.b	186				
						
	.dc.b	178				
						
	.dc.b	132				
	.dc.b	25				
	.dc.b	122				
						
	.dc.b	210				
						
	.dc.b	132				
	.dc.b	36				
	.dc.b	59				
						
	.dc.b	50				
						
	.dc.b	132				
	.dc.b	46				
	.dc.b	251				
						
	.dc.b	210				
						
	.dc.b	132				
	.dc.b	57				
	.dc.b	188				
						
	.dc.b	178				
						
	.dc.b	132				
	.dc.b	68				
	.dc.b	125				
						
	.dc.b	178				
						
	.dc.b	132				
	.dc.b	79				
	.dc.b	62				
						
	.dc.b	242				
						
	.dc.b	132				
	.dc.b	90				
	.dc.b	0				
						
	.dc.b	114				
						
	.dc.b	132				
	.dc.b	100				
	.dc.b	194				
						
	.dc.b	50				
						
	.dc.b	132				
	.dc.b	111				
	.dc.b	132				
						
	.dc.b	18				
						
	.dc.b	132				
	.dc.b	122				
	.dc.b	70				
						
	.dc.b	50				
						
	.dc.b	132				
	.dc.b	133				
	.dc.b	8				
						
	.dc.b	146				
						
	.dc.b	132				
	.dc.b	143				
	.dc.b	203				
						
	.dc.b	18				
						
	.dc.b	132				
	.dc.b	154				
	.dc.b	141				
						
	.dc.b	210				
						
	.dc.b	132				
	.dc.b	165				
	.dc.b	80				
						
	.dc.b	242				
						
	.dc.b	132				
	.dc.b	176				
	.dc.b	20				
						
	.dc.b	18				
						
	.dc.b	132				
	.dc.b	186				
	.dc.b	215				
						
	.dc.b	146				
						
	.dc.b	132				
	.dc.b	197				
	.dc.b	155				
						
	.dc.b	50				
						
	.dc.b	132				
	.dc.b	208				
	.dc.b	95				
						
	.dc.b	18				
						
	.dc.b	132				
	.dc.b	219				
	.dc.b	35				
						
	.dc.b	50				
						
	.dc.b	132				
	.dc.b	229				
	.dc.b	231				
						
	.dc.b	114				
						
	.dc.b	132				
	.dc.b	240				
	.dc.b	172				
						
	.dc.b	18				
						
	.dc.b	132				
	.dc.b	251				
	.dc.b	112				
						
	.dc.b	210				
						
	.dc.b	133				
	.dc.b	6				
	.dc.b	53				
						
	.dc.b	178				
						
	.dc.b	133				
	.dc.b	16				
	.dc.b	250				
						
	.dc.b	242				
						
	.dc.b	133				
	.dc.b	27				
	.dc.b	192				
						
	.dc.b	82				
						
	.dc.b	133				
	.dc.b	38				
	.dc.b	133				
						
	.dc.b	242				
						
	.dc.b	133				
	.dc.b	49				
	.dc.b	75				
						
	.dc.b	210				
						
	.dc.b	133				
	.dc.b	60				
	.dc.b	17				
						
	.dc.b	210				
						
	.dc.b	133				
	.dc.b	70				
	.dc.b	216				
						
	.dc.b	18				
						
	.dc.b	133				
	.dc.b	81				
	.dc.b	158				
						
	.dc.b	146				
						
	.dc.b	133				
	.dc.b	92				
	.dc.b	101				
						
	.dc.b	82				
						
	.dc.b	133				
	.dc.b	103				
	.dc.b	44				
						
	.dc.b	82				
						
	.dc.b	133				
	.dc.b	113				
	.dc.b	243				
						
	.dc.b	114				
						
	.dc.b	133				
	.dc.b	124				
	.dc.b	186				
						
	.dc.b	210				
						
	.dc.b	133				
	.dc.b	135				
	.dc.b	130				
						
	.dc.b	82				
						
	.dc.b	133				
	.dc.b	146				
	.dc.b	74				
						
	.dc.b	50				
						
	.dc.b	133				
	.dc.b	157				
	.dc.b	18				
						
	.dc.b	50				
						
	.dc.b	133				
	.dc.b	167				
	.dc.b	218				
						
	.dc.b	114				
						
	.dc.b	133				
	.dc.b	178				
	.dc.b	162				
						
	.dc.b	210				
						
	.dc.b	133				
	.dc.b	189				
	.dc.b	107				
						
	.dc.b	146				
						
	.dc.b	133				
	.dc.b	200				
	.dc.b	52				
						
	.dc.b	114				
						
	.dc.b	133				
	.dc.b	210				
	.dc.b	253				
						
	.dc.b	146				
						
	.dc.b	133				
	.dc.b	221				
	.dc.b	198				
						
	.dc.b	210				
						
	.dc.b	133				
	.dc.b	232				
	.dc.b	144				
						
	.dc.b	82				
						
	.dc.b	133				
	.dc.b	243				
	.dc.b	90				
						
	.dc.b	50				
						
	.dc.b	133				
	.dc.b	254				
	.dc.b	36				
						
	.dc.b	18				
						
	.dc.b	134				
	.dc.b	8				
	.dc.b	238				
						
	.dc.b	82				
						
	.dc.b	134				
	.dc.b	19				
	.dc.b	184				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	30				
	.dc.b	131				
						
	.dc.b	82				
						
	.dc.b	134				
	.dc.b	41				
	.dc.b	78				
						
	.dc.b	50				
						
	.dc.b	134				
	.dc.b	52				
	.dc.b	25				
						
	.dc.b	50				
						
	.dc.b	134				
	.dc.b	62				
	.dc.b	228				
						
	.dc.b	114				
						
	.dc.b	134				
	.dc.b	73				
	.dc.b	175				
						
	.dc.b	242				
						
	.dc.b	134				
	.dc.b	84				
	.dc.b	123				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	95				
	.dc.b	71				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	106				
	.dc.b	19				
						
	.dc.b	210				
						
	.dc.b	134				
	.dc.b	116				
	.dc.b	224				
						
	.dc.b	50				
						
	.dc.b	134				
	.dc.b	127				
	.dc.b	172				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	138				
	.dc.b	121				
						
	.dc.b	146				
						
	.dc.b	134				
	.dc.b	149				
	.dc.b	70				
						
	.dc.b	146				
						
	.dc.b	134				
	.dc.b	160				
	.dc.b	19				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	170				
	.dc.b	225				
						
	.dc.b	50				
						
	.dc.b	134				
	.dc.b	181				
	.dc.b	174				
						
	.dc.b	210				
						
	.dc.b	134				
	.dc.b	192				
	.dc.b	124				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	203				
	.dc.b	74				
						
	.dc.b	210				
						
	.dc.b	134				
	.dc.b	214				
	.dc.b	25				
						
	.dc.b	50				
						
	.dc.b	134				
	.dc.b	224				
	.dc.b	231				
						
	.dc.b	178				
						
	.dc.b	134				
	.dc.b	235				
	.dc.b	182				
						
	.dc.b	114				
						
	.dc.b	134				
	.dc.b	246				
	.dc.b	133				
						
	.dc.b	82				
						
	.dc.b	135				
	.dc.b	1				
	.dc.b	84				
						
	.dc.b	146				
						
	.dc.b	135				
	.dc.b	12				
	.dc.b	35				
						
	.dc.b	242				
						
	.dc.b	135				
	.dc.b	22				
	.dc.b	243				
						
	.dc.b	146				
						
	.dc.b	135				
	.dc.b	33				
	.dc.b	195				
						
	.dc.b	82				
						
	.dc.b	135				
	.dc.b	44				
	.dc.b	147				
						
	.dc.b	114				
						
	.dc.b	135				
	.dc.b	55				
	.dc.b	99				
						
	.dc.b	178				
						
	.dc.b	135				
	.dc.b	66				
	.dc.b	52				
						
	.dc.b	50				
						
	.dc.b	135				
	.dc.b	77				
	.dc.b	4				
						
	.dc.b	210				
						
	.dc.b	135				
	.dc.b	87				
	.dc.b	213				
						
	.dc.b	178				
						
	.dc.b	135				
	.dc.b	98				
	.dc.b	166				
						
	.dc.b	210				
						
	.dc.b	135				
	.dc.b	109				
	.dc.b	120				
						
	.dc.b	50				
						
	.dc.b	135				
	.dc.b	120				
	.dc.b	73				
						
	.dc.b	178				
						
	.dc.b	135				
	.dc.b	131				
	.dc.b	27				
						
	.dc.b	146				
						
	.dc.b	135				
	.dc.b	141				
	.dc.b	237				
						
	.dc.b	146				
						
	.dc.b	135				
	.dc.b	152				
	.dc.b	191				
						
	.dc.b	178				
						
	.dc.b	135				
	.dc.b	163				
	.dc.b	146				
						
	.dc.b	50				
						
	.dc.b	135				
	.dc.b	174				
	.dc.b	100				
						
	.dc.b	210				
						
	.dc.b	135				
	.dc.b	185				
	.dc.b	55				
						
	.dc.b	146				
						
	.dc.b	135				
	.dc.b	196				
	.dc.b	10				
						
	.dc.b	178				
						
	.dc.b	135				
	.dc.b	206				
	.dc.b	221				
						
	.dc.b	242				
						
	.dc.b	135				
	.dc.b	217				
	.dc.b	177				
						
	.dc.b	114				
						
	.dc.b	135				
	.dc.b	228				
	.dc.b	133				
						
	.dc.b	50				
						
	.dc.b	135				
	.dc.b	239				
	.dc.b	89				
						
	.dc.b	18				
						
	.dc.b	135				
	.dc.b	250				
	.dc.b	45				
						
	.dc.b	50				
						
	.dc.b	136				
	.dc.b	5				
	.dc.b	1				
						
	.dc.b	146				
						
	.dc.b	136				
	.dc.b	15				
	.dc.b	214				
						
	.dc.b	50				
						
	.dc.b	136				
	.dc.b	26				
	.dc.b	170				
						
	.dc.b	242				
						
	.dc.b	136				
	.dc.b	37				
	.dc.b	127				
						
	.dc.b	242				
						
	.dc.b	136				
	.dc.b	48				
	.dc.b	85				
						
	.dc.b	50				
						
	.dc.b	136				
	.dc.b	59				
	.dc.b	42				
						
	.dc.b	178				
						
	.dc.b	136				
	.dc.b	70				
	.dc.b	0				
						
	.dc.b	82				
						
	.dc.b	136				
	.dc.b	80				
	.dc.b	214				
						
	.dc.b	50				
						
	.dc.b	136				
	.dc.b	91				
	.dc.b	172				
						
	.dc.b	50				
						
	.dc.b	136				
	.dc.b	102				
	.dc.b	130				
						
	.dc.b	146				
						
	.dc.b	136				
	.dc.b	113				
	.dc.b	89				
						
	.dc.b	18				
						
	.dc.b	136				
	.dc.b	124				
	.dc.b	47				
						
	.dc.b	210				
						
	.dc.b	136				
	.dc.b	135				
	.dc.b	6				
						
	.dc.b	178				
						
	.dc.b	136				
	.dc.b	145				
	.dc.b	221				
						
	.dc.b	242				
						
	.dc.b	136				
	.dc.b	156				
	.dc.b	181				
						
	.dc.b	82				
						
	.dc.b	136				
	.dc.b	167				
	.dc.b	140				
						
	.dc.b	210				
						
	.dc.b	136				
	.dc.b	178				
	.dc.b	100				
						
	.dc.b	178				
						
	.dc.b	136				
	.dc.b	189				
	.dc.b	60				
						
	.dc.b	178				
						
	.dc.b	136				
	.dc.b	200				
	.dc.b	20				
						
	.dc.b	242				
						
	.dc.b	136				
	.dc.b	210				
	.dc.b	237				
						
	.dc.b	82				
						
	.dc.b	136				
	.dc.b	221				
	.dc.b	198				
						
	.dc.b	18				
						
	.dc.b	136				
	.dc.b	232				
	.dc.b	158				
						
	.dc.b	242				
						
	.dc.b	136				
	.dc.b	243				
	.dc.b	120				
						
	.dc.b	18				
						
	.dc.b	136				
	.dc.b	254				
	.dc.b	81				
						
	.dc.b	82				
						
	.dc.b	137				
	.dc.b	9				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	137				
	.dc.b	20				
	.dc.b	4				
						
	.dc.b	146				
						
	.dc.b	137				
	.dc.b	30				
	.dc.b	222				
						
	.dc.b	146				
						
	.dc.b	137				
	.dc.b	41				
	.dc.b	184				
						
	.dc.b	178				
						
	.dc.b	137				
	.dc.b	52				
	.dc.b	147				
						
	.dc.b	18				
						
	.dc.b	137				
	.dc.b	63				
	.dc.b	109				
						
	.dc.b	178				
						
	.dc.b	137				
	.dc.b	74				
	.dc.b	72				
						
	.dc.b	114				
						
	.dc.b	137				
	.dc.b	85				
	.dc.b	35				
						
	.dc.b	146				
						
	.dc.b	137				
	.dc.b	95				
	.dc.b	254				
						
	.dc.b	210				
						
	.dc.b	137				
	.dc.b	106				
	.dc.b	218				
						
	.dc.b	50				
						
	.dc.b	137				
	.dc.b	117				
	.dc.b	181				
						
	.dc.b	242				
						
	.dc.b	137				
	.dc.b	128				
	.dc.b	145				
						
	.dc.b	210				
						
	.dc.b	137				
	.dc.b	139				
	.dc.b	109				
						
	.dc.b	242				
						
	.dc.b	137				
	.dc.b	150				
	.dc.b	74				
						
	.dc.b	50				
						
	.dc.b	137				
	.dc.b	161				
	.dc.b	38				
						
	.dc.b	178				
						
	.dc.b	137				
	.dc.b	172				
	.dc.b	3				
						
	.dc.b	114				
						
	.dc.b	137				
	.dc.b	182				
	.dc.b	224				
						
	.dc.b	114				
						
	.dc.b	137				
	.dc.b	193				
	.dc.b	189				
						
	.dc.b	146				
						
	.dc.b	137				
	.dc.b	204				
	.dc.b	154				
						
	.dc.b	242				
						
	.dc.b	137				
	.dc.b	215				
	.dc.b	120				
						
	.dc.b	146				
						
	.dc.b	137				
	.dc.b	226				
	.dc.b	86				
						
	.dc.b	114				
						
	.dc.b	137				
	.dc.b	237				
	.dc.b	52				
						
	.dc.b	114				
						
	.dc.b	137				
	.dc.b	248				
	.dc.b	18				
						
	.dc.b	178				
						
	.dc.b	138				
	.dc.b	2				
	.dc.b	241				
						
	.dc.b	18				
						
	.dc.b	138				
	.dc.b	13				
	.dc.b	207				
						
	.dc.b	210				
						
	.dc.b	138				
	.dc.b	24				
	.dc.b	174				
						
	.dc.b	178				
						
	.dc.b	138				
	.dc.b	35				
	.dc.b	141				
						
	.dc.b	210				
						
	.dc.b	138				
	.dc.b	46				
	.dc.b	109				
						
	.dc.b	18				
						
	.dc.b	138				
	.dc.b	57				
	.dc.b	76				
						
	.dc.b	146				
						
	.dc.b	138				
	.dc.b	68				
	.dc.b	44				
						
	.dc.b	82				
						
	.dc.b	138				
	.dc.b	79				
	.dc.b	12				
						
	.dc.b	82				
						
	.dc.b	138				
	.dc.b	89				
	.dc.b	236				
						
	.dc.b	114				
						
	.dc.b	138				
	.dc.b	100				
	.dc.b	204				
						
	.dc.b	210				
						
	.dc.b	138				
	.dc.b	111				
	.dc.b	173				
						
	.dc.b	114				
						
	.dc.b	138				
	.dc.b	122				
	.dc.b	142				
						
	.dc.b	82				
						
	.dc.b	138				
	.dc.b	133				
	.dc.b	111				
						
	.dc.b	82				
						
	.dc.b	138				
	.dc.b	144				
	.dc.b	80				
						
	.dc.b	146				
						
	.dc.b	138				
	.dc.b	155				
	.dc.b	49				
						
	.dc.b	242				
						
	.dc.b	138				
	.dc.b	166				
	.dc.b	19				
						
	.dc.b	146				
						
	.dc.b	138				
	.dc.b	176				
	.dc.b	245				
						
	.dc.b	114				
						
	.dc.b	138				
	.dc.b	187				
	.dc.b	215				
						
	.dc.b	146				
						
	.dc.b	138				
	.dc.b	198				
	.dc.b	185				
						
	.dc.b	242				
						
	.dc.b	138				
	.dc.b	209				
	.dc.b	156				
						
	.dc.b	114				
						
	.dc.b	138				
	.dc.b	220				
	.dc.b	127				
						
	.dc.b	50				
						
	.dc.b	138				
	.dc.b	231				
	.dc.b	98				
						
	.dc.b	18				
						
	.dc.b	138				
	.dc.b	242				
	.dc.b	69				
						
	.dc.b	50				
						
	.dc.b	138				
	.dc.b	253				
	.dc.b	40				
						
	.dc.b	146				
						
	.dc.b	139				
	.dc.b	8				
	.dc.b	12				
						
	.dc.b	50				
						
	.dc.b	139				
	.dc.b	18				
	.dc.b	239				
						
	.dc.b	242				
						
	.dc.b	139				
	.dc.b	29				
	.dc.b	211				
						
	.dc.b	242				
						
	.dc.b	139				
	.dc.b	40				
	.dc.b	184				
						
	.dc.b	50				
						
	.dc.b	139				
	.dc.b	51				
	.dc.b	156				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	62				
	.dc.b	129				
						
	.dc.b	82				
						
	.dc.b	139				
	.dc.b	73				
	.dc.b	102				
						
	.dc.b	50				
						
	.dc.b	139				
	.dc.b	84				
	.dc.b	75				
						
	.dc.b	50				
						
	.dc.b	139				
	.dc.b	95				
	.dc.b	48				
						
	.dc.b	146				
						
	.dc.b	139				
	.dc.b	106				
	.dc.b	22				
						
	.dc.b	18				
						
	.dc.b	139				
	.dc.b	116				
	.dc.b	251				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	127				
	.dc.b	225				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	138				
	.dc.b	199				
						
	.dc.b	210				
						
	.dc.b	139				
	.dc.b	149				
	.dc.b	174				
						
	.dc.b	50				
						
	.dc.b	139				
	.dc.b	160				
	.dc.b	148				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	171				
	.dc.b	123				
						
	.dc.b	146				
						
	.dc.b	139				
	.dc.b	182				
	.dc.b	98				
						
	.dc.b	114				
						
	.dc.b	139				
	.dc.b	193				
	.dc.b	73				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	204				
	.dc.b	49				
						
	.dc.b	18				
						
	.dc.b	139				
	.dc.b	215				
	.dc.b	24				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	226				
	.dc.b	0				
						
	.dc.b	146				
						
	.dc.b	139				
	.dc.b	236				
	.dc.b	232				
						
	.dc.b	178				
						
	.dc.b	139				
	.dc.b	247				
	.dc.b	208				
						
	.dc.b	242				
						
	.dc.b	140				
	.dc.b	2				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	140				
	.dc.b	13				
	.dc.b	162				
						
	.dc.b	18				
						
	.dc.b	140				
	.dc.b	24				
	.dc.b	138				
						
	.dc.b	242				
						
	.dc.b	140				
	.dc.b	35				
	.dc.b	116				
						
	.dc.b	18				
						
	.dc.b	140				
	.dc.b	46				
	.dc.b	93				
						
	.dc.b	114				
						
	.dc.b	140				
	.dc.b	57				
	.dc.b	70				
						
	.dc.b	242				
						
	.dc.b	140				
	.dc.b	68				
	.dc.b	48				
						
	.dc.b	178				
						
	.dc.b	140				
	.dc.b	79				
	.dc.b	26				
						
	.dc.b	178				
						
	.dc.b	140				
	.dc.b	90				
	.dc.b	4				
						
	.dc.b	210				
						
	.dc.b	140				
	.dc.b	100				
	.dc.b	239				
						
	.dc.b	82				
						
	.dc.b	140				
	.dc.b	111				
	.dc.b	217				
						
	.dc.b	210				
						
	.dc.b	140				
	.dc.b	122				
	.dc.b	196				
						
	.dc.b	178				
						
	.dc.b	140				
	.dc.b	133				
	.dc.b	175				
						
	.dc.b	178				
						
	.dc.b	140				
	.dc.b	144				
	.dc.b	154				
						
	.dc.b	242				
						
	.dc.b	140				
	.dc.b	155				
	.dc.b	134				
						
	.dc.b	114				
						
	.dc.b	140				
	.dc.b	166				
	.dc.b	114				
						
	.dc.b	18				
						
	.dc.b	140				
	.dc.b	177				
	.dc.b	93				
						
	.dc.b	242				
						
	.dc.b	140				
	.dc.b	188				
	.dc.b	74				
						
	.dc.b	18				
						
	.dc.b	140				
	.dc.b	199				
	.dc.b	54				
						
	.dc.b	82				
						
	.dc.b	140				
	.dc.b	210				
	.dc.b	34				
						
	.dc.b	210				
						
	.dc.b	140				
	.dc.b	221				
	.dc.b	15				
						
	.dc.b	146				
						
	.dc.b	140				
	.dc.b	231				
	.dc.b	252				
						
	.dc.b	114				
						
	.dc.b	140				
	.dc.b	242				
	.dc.b	233				
						
	.dc.b	178				
						
	.dc.b	140				
	.dc.b	253				
	.dc.b	214				
						
	.dc.b	242				
						
	.dc.b	141				
	.dc.b	8				
	.dc.b	196				
						
	.dc.b	146				
						
	.dc.b	141				
	.dc.b	19				
	.dc.b	178				
						
	.dc.b	82				
						
	.dc.b	141				
	.dc.b	30				
	.dc.b	160				
						
	.dc.b	82				
						
	.dc.b	141				
	.dc.b	41				
	.dc.b	142				
						
	.dc.b	146				
						
	.dc.b	141				
	.dc.b	52				
	.dc.b	124				
						
	.dc.b	242				
						
	.dc.b	141				
	.dc.b	63				
	.dc.b	107				
						
	.dc.b	146				
						
	.dc.b	141				
	.dc.b	74				
	.dc.b	90				
						
	.dc.b	114				
						
	.dc.b	141				
	.dc.b	85				
	.dc.b	73				
						
	.dc.b	114				
						
	.dc.b	141				
	.dc.b	96				
	.dc.b	56				
						
	.dc.b	178				
						
	.dc.b	141				
	.dc.b	107				
	.dc.b	40				
						
	.dc.b	50				
						
	.dc.b	141				
	.dc.b	118				
	.dc.b	23				
						
	.dc.b	242				
						
	.dc.b	141				
	.dc.b	129				
	.dc.b	7				
						
	.dc.b	210				
						
	.dc.b	141				
	.dc.b	139				
	.dc.b	247				
						
	.dc.b	242				
						
	.dc.b	141				
	.dc.b	150				
	.dc.b	232				
						
	.dc.b	50				
						
	.dc.b	141				
	.dc.b	161				
	.dc.b	216				
						
	.dc.b	178				
						
	.dc.b	141				
	.dc.b	172				
	.dc.b	201				
						
	.dc.b	114				
						
	.dc.b	141				
	.dc.b	183				
	.dc.b	186				
						
	.dc.b	114				
						
	.dc.b	141				
	.dc.b	194				
	.dc.b	171				
						
	.dc.b	146				
						
	.dc.b	141				
	.dc.b	205				
	.dc.b	156				
						
	.dc.b	242				
						
	.dc.b	141				
	.dc.b	216				
	.dc.b	142				
						
	.dc.b	146				
						
	.dc.b	141				
	.dc.b	227				
	.dc.b	128				
						
	.dc.b	82				
						
	.dc.b	141				
	.dc.b	238				
	.dc.b	114				
						
	.dc.b	82				
						
	.dc.b	141				
	.dc.b	249				
	.dc.b	100				
						
	.dc.b	146				
						
	.dc.b	142				
	.dc.b	4				
	.dc.b	87				
						
	.dc.b	18				
						
	.dc.b	142				
	.dc.b	15				
	.dc.b	73				
						
	.dc.b	178				
						
	.dc.b	142				
	.dc.b	26				
	.dc.b	60				
						
	.dc.b	146				
						
	.dc.b	142				
	.dc.b	37				
	.dc.b	47				
						
	.dc.b	146				
						
	.dc.b	142				
	.dc.b	48				
	.dc.b	34				
						
	.dc.b	210				
						
	.dc.b	142				
	.dc.b	59				
	.dc.b	22				
						
	.dc.b	82				
						
	.dc.b	142				
	.dc.b	70				
	.dc.b	10				
						
	.dc.b	18				
						
	.dc.b	142				
	.dc.b	80				
	.dc.b	253				
						
	.dc.b	242				
						
	.dc.b	142				
	.dc.b	91				
	.dc.b	242				
						
	.dc.b	18				
						
	.dc.b	142				
	.dc.b	102				
	.dc.b	230				
						
	.dc.b	114				
						
	.dc.b	142				
	.dc.b	113				
	.dc.b	218				
						
	.dc.b	242				
						
	.dc.b	142				
	.dc.b	124				
	.dc.b	207				
						
	.dc.b	178				
						
	.dc.b	142				
	.dc.b	135				
	.dc.b	196				
						
	.dc.b	178				
						
	.dc.b	142				
	.dc.b	146				
	.dc.b	185				
						
	.dc.b	210				
						
	.dc.b	142				
	.dc.b	157				
	.dc.b	175				
						
	.dc.b	50				
						
	.dc.b	142				
	.dc.b	168				
	.dc.b	164				
						
	.dc.b	210				
						
	.dc.b	142				
	.dc.b	179				
	.dc.b	154				
						
	.dc.b	146				
						
	.dc.b	142				
	.dc.b	190				
	.dc.b	144				
						
	.dc.b	146				
						
	.dc.b	142				
	.dc.b	201				
	.dc.b	134				
						
	.dc.b	210				
						
	.dc.b	142				
	.dc.b	212				
	.dc.b	125				
						
	.dc.b	82				
						
	.dc.b	142				
	.dc.b	223				
	.dc.b	115				
						
	.dc.b	242				
						
	.dc.b	142				
	.dc.b	234				
	.dc.b	106				
						
	.dc.b	210				
						
	.dc.b	142				
	.dc.b	245				
	.dc.b	97				
						
	.dc.b	210				
						
	.dc.b	143				
	.dc.b	0				
	.dc.b	89				
						
	.dc.b	18				
						
	.dc.b	143				
	.dc.b	11				
	.dc.b	80				
						
	.dc.b	146				
						
	.dc.b	143				
	.dc.b	22				
	.dc.b	72				
						
	.dc.b	82				
						
	.dc.b	143				
	.dc.b	33				
	.dc.b	64				
						
	.dc.b	50				
						
	.dc.b	143				
	.dc.b	44				
	.dc.b	56				
						
	.dc.b	82				
						
	.dc.b	143				
	.dc.b	55				
	.dc.b	48				
						
	.dc.b	146				
						
	.dc.b	143				
	.dc.b	66				
	.dc.b	41				
						
	.dc.b	50				
						
	.dc.b	143				
	.dc.b	77				
	.dc.b	33				
						
	.dc.b	242				
						
	.dc.b	143				
	.dc.b	88				
	.dc.b	26				
						
	.dc.b	210				
						
	.dc.b	143				
	.dc.b	99				
	.dc.b	20				
						
	.dc.b	18				
						
	.dc.b	143				
	.dc.b	110				
	.dc.b	13				
						
	.dc.b	114				
						
	.dc.b	143				
	.dc.b	121				
	.dc.b	6				
						
	.dc.b	242				
						
	.dc.b	143				
	.dc.b	132				
	.dc.b	0				
						
	.dc.b	210				
						
	.dc.b	143				
	.dc.b	142				
	.dc.b	250				
						
	.dc.b	210				
						
	.dc.b	143				
	.dc.b	153				
	.dc.b	245				
						
	.dc.b	18				
						
	.dc.b	143				
	.dc.b	164				
	.dc.b	239				
						
	.dc.b	114				
						
	.dc.b	143				
	.dc.b	175				
	.dc.b	234				
						
	.dc.b	18				
						
	.dc.b	143				
	.dc.b	186				
	.dc.b	228				
						
	.dc.b	242				
						
	.dc.b	143				
	.dc.b	197				
	.dc.b	223				
						
	.dc.b	242				
						
	.dc.b	143				
	.dc.b	208				
	.dc.b	219				
						
	.dc.b	50				
						
	.dc.b	143				
	.dc.b	219				
	.dc.b	214				
						
	.dc.b	178				
						
	.dc.b	143				
	.dc.b	230				
	.dc.b	210				
						
	.dc.b	114				
						
	.dc.b	143				
	.dc.b	241				
	.dc.b	206				
						
	.dc.b	82				
						
	.dc.b	143				
	.dc.b	252				
	.dc.b	202				
						
	.dc.b	114				
						
	.dc.b	144				
	.dc.b	7				
	.dc.b	198				
						
	.dc.b	178				
						
	.dc.b	144				
	.dc.b	18				
	.dc.b	195				
						
	.dc.b	50				
						
	.dc.b	144				
	.dc.b	29				
	.dc.b	191				
						
	.dc.b	242				
						
	.dc.b	144				
	.dc.b	40				
	.dc.b	188				
						
	.dc.b	242				
						
	.dc.b	144				
	.dc.b	51				
	.dc.b	186				
						
	.dc.b	18				
						
	.dc.b	144				
	.dc.b	62				
	.dc.b	183				
						
	.dc.b	114				
						
	.dc.b	144				
	.dc.b	73				
	.dc.b	180				
						
	.dc.b	242				
						
	.dc.b	144				
	.dc.b	84				
	.dc.b	178				
						
	.dc.b	178				
						
	.dc.b	144				
	.dc.b	95				
	.dc.b	176				
						
	.dc.b	178				
						
	.dc.b	144				
	.dc.b	106				
	.dc.b	174				
						
	.dc.b	242				
						
	.dc.b	144				
	.dc.b	117				
	.dc.b	173				
						
	.dc.b	82				
						
	.dc.b	144				
	.dc.b	128				
	.dc.b	171				
						
	.dc.b	242				
						
	.dc.b	144				
	.dc.b	139				
	.dc.b	170				
						
	.dc.b	210				
						
	.dc.b	144				
	.dc.b	150				
	.dc.b	169				
						
	.dc.b	210				
						
	.dc.b	144				
	.dc.b	161				
	.dc.b	169				
						
	.dc.b	18				
						
	.dc.b	144				
	.dc.b	172				
	.dc.b	168				
						
	.dc.b	146				
						
	.dc.b	144				
	.dc.b	183				
	.dc.b	168				
						
	.dc.b	50				
						
	.dc.b	144				
	.dc.b	194				
	.dc.b	168				
						
	.dc.b	18				
						
	.dc.b	144				
	.dc.b	205				
	.dc.b	168				
						
	.dc.b	18				
						
	.dc.b	144				
	.dc.b	216				
	.dc.b	168				
						
	.dc.b	114				
						
	.dc.b	144				
	.dc.b	227				
	.dc.b	168				
						
	.dc.b	242				
						
	.dc.b	144				
	.dc.b	238				
	.dc.b	169				
						
	.dc.b	146				
						
	.dc.b	144				
	.dc.b	249				
	.dc.b	170				
						
	.dc.b	146				
						
	.dc.b	145				
	.dc.b	4				
	.dc.b	171				
						
	.dc.b	178				
						
	.dc.b	145				
	.dc.b	15				
	.dc.b	172				
						
	.dc.b	242				
						
	.dc.b	145				
	.dc.b	26				
	.dc.b	174				
						
	.dc.b	146				
						
	.dc.b	145				
	.dc.b	37				
	.dc.b	176				
						
	.dc.b	82				
						
	.dc.b	145				
	.dc.b	48				
	.dc.b	178				
						
	.dc.b	50				
						
	.dc.b	145				
	.dc.b	59				
	.dc.b	180				
						
	.dc.b	114				
						
	.dc.b	145				
	.dc.b	70				
	.dc.b	182				
						
	.dc.b	210				
						
	.dc.b	145				
	.dc.b	81				
	.dc.b	185				
						
	.dc.b	82				
						
	.dc.b	145				
	.dc.b	92				
	.dc.b	188				
						
	.dc.b	50				
						
	.dc.b	145				
	.dc.b	103				
	.dc.b	191				
						
	.dc.b	50				
						
	.dc.b	145				
	.dc.b	114				
	.dc.b	194				
						
	.dc.b	82				
						
	.dc.b	145				
	.dc.b	125				
	.dc.b	197				
						
	.dc.b	210				
						
	.dc.b	145				
	.dc.b	136				
	.dc.b	201				
						
	.dc.b	114				
						
	.dc.b	145				
	.dc.b	147				
	.dc.b	205				
						
	.dc.b	50				
						
	.dc.b	145				
	.dc.b	158				
	.dc.b	209				
						
	.dc.b	82				
						
	.dc.b	145				
	.dc.b	169				
	.dc.b	213				
						
	.dc.b	146				
						
	.dc.b	145				
	.dc.b	180				
	.dc.b	217				
						
	.dc.b	242				
						
	.dc.b	145				
	.dc.b	191				
	.dc.b	222				
						
	.dc.b	178				
						
	.dc.b	145				
	.dc.b	202				
	.dc.b	227				
						
	.dc.b	146				
						
	.dc.b	145				
	.dc.b	213				
	.dc.b	232				
						
	.dc.b	146				
						
	.dc.b	145				
	.dc.b	224				
	.dc.b	237				
						
	.dc.b	242				
						
	.dc.b	145				
	.dc.b	235				
	.dc.b	243				
						
	.dc.b	114				
						
	.dc.b	145				
	.dc.b	246				
	.dc.b	249				
						
	.dc.b	18				
						
	.dc.b	146				
	.dc.b	1				
	.dc.b	255				
						
	.dc.b	18				
						
	.dc.b	146				
	.dc.b	13				
	.dc.b	5				
						
	.dc.b	50				
						
	.dc.b	146				
	.dc.b	24				
	.dc.b	11				
						
	.dc.b	114				
						
	.dc.b	146				
	.dc.b	35				
	.dc.b	18				
						
	.dc.b	18				
						
	.dc.b	146				
	.dc.b	46				
	.dc.b	24				
						
	.dc.b	210				
						
	.dc.b	146				
	.dc.b	57				
	.dc.b	31				
						
	.dc.b	178				
						
	.dc.b	146				
	.dc.b	68				
	.dc.b	38				
						
	.dc.b	242				
						
	.dc.b	146				
	.dc.b	79				
	.dc.b	46				
						
	.dc.b	82				
						
	.dc.b	146				
	.dc.b	90				
	.dc.b	53				
						
	.dc.b	210				
						
	.dc.b	146				
	.dc.b	101				
	.dc.b	61				
						
	.dc.b	178				
						
	.dc.b	146				
	.dc.b	112				
	.dc.b	69				
						
	.dc.b	146				
						
	.dc.b	146				
	.dc.b	123				
	.dc.b	77				
						
	.dc.b	210				
						
	.dc.b	146				
	.dc.b	134				
	.dc.b	86				
						
	.dc.b	50				
						
	.dc.b	146				
	.dc.b	145				
	.dc.b	94				
						
	.dc.b	210				
						
	.dc.b	146				
	.dc.b	156				
	.dc.b	103				
						
	.dc.b	178				
						
	.dc.b	146				
	.dc.b	167				
	.dc.b	112				
						
	.dc.b	178				
						
	.dc.b	146				
	.dc.b	178				
	.dc.b	121				
						
	.dc.b	242				
						
	.dc.b	146				
	.dc.b	189				
	.dc.b	131				
						
	.dc.b	114				
						
	.dc.b	146				
	.dc.b	200				
	.dc.b	141				
						
	.dc.b	18				
						
	.dc.b	146				
	.dc.b	211				
	.dc.b	150				
						
	.dc.b	242				
						
	.dc.b	146				
	.dc.b	222				
	.dc.b	161				
						
	.dc.b	18				
						
	.dc.b	146				
	.dc.b	233				
	.dc.b	171				
						
	.dc.b	82				
						
	.dc.b	146				
	.dc.b	244				
	.dc.b	181				
						
	.dc.b	210				
						
	.dc.b	146				
	.dc.b	255				
	.dc.b	192				
						
	.dc.b	114				
						
	.dc.b	147				
	.dc.b	10				
	.dc.b	203				
						
	.dc.b	82				
						
	.dc.b	147				
	.dc.b	21				
	.dc.b	214				
						
	.dc.b	114				
						
	.dc.b	147				
	.dc.b	32				
	.dc.b	225				
						
	.dc.b	210				
						
	.dc.b	147				
	.dc.b	43				
	.dc.b	237				
						
	.dc.b	82				
						
	.dc.b	147				
	.dc.b	54				
	.dc.b	249				
						
	.dc.b	18				
						
	.dc.b	147				
	.dc.b	66				
	.dc.b	4				
						
	.dc.b	242				
						
	.dc.b	147				
	.dc.b	77				
	.dc.b	17				
						
	.dc.b	50				
						
	.dc.b	147				
	.dc.b	88				
	.dc.b	29				
						
	.dc.b	114				
						
	.dc.b	147				
	.dc.b	99				
	.dc.b	42				
						
	.dc.b	18				
						
	.dc.b	147				
	.dc.b	110				
	.dc.b	54				
						
	.dc.b	210				
						
	.dc.b	147				
	.dc.b	121				
	.dc.b	67				
						
	.dc.b	210				
						
	.dc.b	147				
	.dc.b	132				
	.dc.b	80				
						
	.dc.b	242				
						
	.dc.b	147				
	.dc.b	143				
	.dc.b	94				
						
	.dc.b	82				
						
	.dc.b	147				
	.dc.b	154				
	.dc.b	107				
						
	.dc.b	242				
						
	.dc.b	147				
	.dc.b	165				
	.dc.b	121				
						
	.dc.b	210				
						
	.dc.b	147				
	.dc.b	176				
	.dc.b	135				
						
	.dc.b	210				
						
	.dc.b	147				
	.dc.b	187				
	.dc.b	149				
						
	.dc.b	242				
						
	.dc.b	147				
	.dc.b	198				
	.dc.b	164				
						
	.dc.b	114				
						
	.dc.b	147				
	.dc.b	209				
	.dc.b	179				
						
	.dc.b	18				
						
	.dc.b	147				
	.dc.b	220				
	.dc.b	193				
						
	.dc.b	210				
						
	.dc.b	147				
	.dc.b	231				
	.dc.b	208				
						
	.dc.b	242				
						
	.dc.b	147				
	.dc.b	242				
	.dc.b	224				
						
	.dc.b	50				
						
	.dc.b	147				
	.dc.b	253				
	.dc.b	239				
						
	.dc.b	146				
						
	.dc.b	148				
	.dc.b	8				
	.dc.b	255				
						
	.dc.b	82				
						
	.dc.b	148				
	.dc.b	20				
	.dc.b	15				
						
	.dc.b	50				
						
	.dc.b	148				
	.dc.b	31				
	.dc.b	31				
						
	.dc.b	50				
						
	.dc.b	148				
	.dc.b	42				
	.dc.b	47				
						
	.dc.b	146				
						
	.dc.b	148				
	.dc.b	53				
	.dc.b	63				
						
	.dc.b	242				
						
	.dc.b	148				
	.dc.b	64				
	.dc.b	80				
						
	.dc.b	178				
						
	.dc.b	148				
	.dc.b	75				
	.dc.b	97				
						
	.dc.b	146				
						
	.dc.b	148				
	.dc.b	86				
	.dc.b	114				
						
	.dc.b	178				
						
	.dc.b	148				
	.dc.b	97				
	.dc.b	132				
						
	.dc.b	18				
						
	.dc.b	148				
	.dc.b	108				
	.dc.b	149				
						
	.dc.b	146				
						
	.dc.b	148				
	.dc.b	119				
	.dc.b	167				
						
	.dc.b	82				
						
	.dc.b	148				
	.dc.b	130				
	.dc.b	185				
						
	.dc.b	50				
						
	.dc.b	148				
	.dc.b	141				
	.dc.b	203				
						
	.dc.b	82				
						
	.dc.b	148				
	.dc.b	152				
	.dc.b	221				
						
	.dc.b	178				
						
	.dc.b	148				
	.dc.b	163				
	.dc.b	240				
						
	.dc.b	50				
						
	.dc.b	148				
	.dc.b	175				
	.dc.b	3				
						
	.dc.b	18				
						
	.dc.b	148				
	.dc.b	186				
	.dc.b	21				
						
	.dc.b	242				
						
	.dc.b	148				
	.dc.b	197				
	.dc.b	41				
						
	.dc.b	50				
						
	.dc.b	148				
	.dc.b	208				
	.dc.b	60				
						
	.dc.b	146				
						
	.dc.b	148				
	.dc.b	219				
	.dc.b	80				
						
	.dc.b	18				
						
	.dc.b	148				
	.dc.b	230				
	.dc.b	99				
						
	.dc.b	242				
						
	.dc.b	148				
	.dc.b	241				
	.dc.b	119				
						
	.dc.b	242				
						
	.dc.b	148				
	.dc.b	252				
	.dc.b	140				
						
	.dc.b	18				
						
	.dc.b	149				
	.dc.b	7				
	.dc.b	160				
						
	.dc.b	114				
						
	.dc.b	149				
	.dc.b	18				
	.dc.b	181				
						
	.dc.b	18				
						
	.dc.b	149				
	.dc.b	29				
	.dc.b	201				
						
	.dc.b	242				
						
	.dc.b	149				
	.dc.b	40				
	.dc.b	222				
						
	.dc.b	242				
						
	.dc.b	149				
	.dc.b	51				
	.dc.b	244				
						
	.dc.b	50				
						
	.dc.b	149				
	.dc.b	63				
	.dc.b	9				
						
	.dc.b	146				
						
	.dc.b	149				
	.dc.b	74				
	.dc.b	31				
						
	.dc.b	82				
						
	.dc.b	149				
	.dc.b	85				
	.dc.b	53				
						
	.dc.b	18				
						
	.dc.b	149				
	.dc.b	96				
	.dc.b	75				
						
	.dc.b	50				
						
	.dc.b	149				
	.dc.b	107				
	.dc.b	97				
						
	.dc.b	114				
						
	.dc.b	149				
	.dc.b	118				
	.dc.b	119				
						
	.dc.b	242				
						
	.dc.b	149				
	.dc.b	129				
	.dc.b	142				
						
	.dc.b	146				
						
	.dc.b	149				
	.dc.b	140				
	.dc.b	165				
						
	.dc.b	114				
						
	.dc.b	149				
	.dc.b	151				
	.dc.b	188				
						
	.dc.b	146				
						
	.dc.b	149				
	.dc.b	162				
	.dc.b	211				
						
	.dc.b	210				
						
	.dc.b	149				
	.dc.b	173				
	.dc.b	235				
						
	.dc.b	82				
						
	.dc.b	149				
	.dc.b	185				
	.dc.b	3				
						
	.dc.b	18				
						
	.dc.b	149				
	.dc.b	196				
	.dc.b	26				
						
	.dc.b	242				
						
	.dc.b	149				
	.dc.b	207				
	.dc.b	51				
						
	.dc.b	18				
						
	.dc.b	149				
	.dc.b	218				
	.dc.b	75				
						
	.dc.b	82				
						
	.dc.b	149				
	.dc.b	229				
	.dc.b	99				
						
	.dc.b	210				
						
	.dc.b	149				
	.dc.b	240				
	.dc.b	124				
						
	.dc.b	146				
						
	.dc.b	149				
	.dc.b	251				
	.dc.b	149				
						
	.dc.b	146				
						
	.dc.b	150				
	.dc.b	6				
	.dc.b	174				
						
	.dc.b	178				
						
	.dc.b	150				
	.dc.b	17				
	.dc.b	200				
						
	.dc.b	18				
						
	.dc.b	150				
	.dc.b	28				
	.dc.b	225				
						
	.dc.b	146				
						
	.dc.b	150				
	.dc.b	39				
	.dc.b	251				
						
	.dc.b	82				
						
	.dc.b	150				
	.dc.b	51				
	.dc.b	21				
						
	.dc.b	82				
						
	.dc.b	150				
	.dc.b	62				
	.dc.b	47				
						
	.dc.b	114				
						
	.dc.b	150				
	.dc.b	73				
	.dc.b	73				
						
	.dc.b	210				
						
	.dc.b	150				
	.dc.b	84				
	.dc.b	100				
						
	.dc.b	82				
						
	.dc.b	150				
	.dc.b	95				
	.dc.b	127				
						
	.dc.b	50				
						
	.dc.b	150				
	.dc.b	106				
	.dc.b	154				
						
	.dc.b	50				
						
	.dc.b	150				
	.dc.b	117				
	.dc.b	181				
						
	.dc.b	82				
						
	.dc.b	150				
	.dc.b	128				
	.dc.b	208				
						
	.dc.b	178				
						
	.dc.b	150				
	.dc.b	139				
	.dc.b	236				
						
	.dc.b	82				
						
	.dc.b	150				
	.dc.b	151				
	.dc.b	8				
						
	.dc.b	18				
						
	.dc.b	150				
	.dc.b	162				
	.dc.b	36				
						
	.dc.b	18				
						
	.dc.b	150				
	.dc.b	173				
	.dc.b	64				
						
	.dc.b	82				
						
	.dc.b	150				
	.dc.b	184				
	.dc.b	92				
						
	.dc.b	210				
						
	.dc.b	150				
	.dc.b	195				
	.dc.b	121				
						
	.dc.b	114				
						
	.dc.b	150				
	.dc.b	206				
	.dc.b	150				
						
	.dc.b	50				
						
	.dc.b	150				
	.dc.b	217				
	.dc.b	179				
						
	.dc.b	50				
						
	.dc.b	150				
	.dc.b	228				
	.dc.b	208				
						
	.dc.b	114				
						
	.dc.b	150				
	.dc.b	239				
	.dc.b	237				
						
	.dc.b	242				
						
	.dc.b	150				
	.dc.b	251				
	.dc.b	11				
						
	.dc.b	146				
						
	.dc.b	151				
	.dc.b	6				
	.dc.b	41				
						
	.dc.b	114				
						
	.dc.b	151				
	.dc.b	17				
	.dc.b	71				
						
	.dc.b	114				
						
	.dc.b	151				
	.dc.b	28				
	.dc.b	101				
						
	.dc.b	178				
						
	.dc.b	151				
	.dc.b	39				
	.dc.b	132				
						
	.dc.b	50				
						
	.dc.b	151				
	.dc.b	50				
	.dc.b	162				
						
	.dc.b	210				
						
	.dc.b	151				
	.dc.b	61				
	.dc.b	193				
						
	.dc.b	178				
						
	.dc.b	151				
	.dc.b	72				
	.dc.b	224				
						
	.dc.b	210				
						
	.dc.b	151				
	.dc.b	84				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	151				
	.dc.b	95				
	.dc.b	31				
						
	.dc.b	146				
						
	.dc.b	151				
	.dc.b	106				
	.dc.b	63				
						
	.dc.b	82				
						
	.dc.b	151				
	.dc.b	117				
	.dc.b	95				
						
	.dc.b	50				
						
	.dc.b	151				
	.dc.b	128				
	.dc.b	127				
						
	.dc.b	82				
						
	.dc.b	151				
	.dc.b	139				
	.dc.b	159				
						
	.dc.b	146				
						
	.dc.b	151				
	.dc.b	150				
	.dc.b	192				
						
	.dc.b	18				
						
	.dc.b	151				
	.dc.b	161				
	.dc.b	224				
						
	.dc.b	210				
						
	.dc.b	151				
	.dc.b	173				
	.dc.b	1				
						
	.dc.b	178				
						
	.dc.b	151				
	.dc.b	184				
	.dc.b	34				
						
	.dc.b	210				
						
	.dc.b	151				
	.dc.b	195				
	.dc.b	68				
						
	.dc.b	50				
						
	.dc.b	151				
	.dc.b	206				
	.dc.b	101				
						
	.dc.b	178				
						
	.dc.b	151				
	.dc.b	217				
	.dc.b	135				
						
	.dc.b	114				
						
	.dc.b	151				
	.dc.b	228				
	.dc.b	169				
						
	.dc.b	82				
						
	.dc.b	151				
	.dc.b	239				
	.dc.b	203				
						
	.dc.b	114				
						
	.dc.b	151				
	.dc.b	250				
	.dc.b	237				
						
	.dc.b	210				
						
	.dc.b	152				
	.dc.b	6				
	.dc.b	16				
						
	.dc.b	114				
						
	.dc.b	152				
	.dc.b	17				
	.dc.b	51				
						
	.dc.b	50				
						
	.dc.b	152				
	.dc.b	28				
	.dc.b	86				
						
	.dc.b	18				
						
	.dc.b	152				
	.dc.b	39				
	.dc.b	121				
						
	.dc.b	82				
						
	.dc.b	152				
	.dc.b	50				
	.dc.b	156				
						
	.dc.b	146				
						
	.dc.b	152				
	.dc.b	61				
	.dc.b	192				
						
	.dc.b	50				
						
	.dc.b	152				
	.dc.b	72				
	.dc.b	227				
						
	.dc.b	242				
						
	.dc.b	152				
	.dc.b	84				
	.dc.b	7				
						
	.dc.b	242				
						
	.dc.b	152				
	.dc.b	95				
	.dc.b	44				
						
	.dc.b	18				
						
	.dc.b	152				
	.dc.b	106				
	.dc.b	80				
						
	.dc.b	114				
						
	.dc.b	152				
	.dc.b	117				
	.dc.b	117				
						
	.dc.b	18				
						
	.dc.b	152				
	.dc.b	128				
	.dc.b	153				
						
	.dc.b	210				
						
	.dc.b	152				
	.dc.b	139				
	.dc.b	190				
						
	.dc.b	210				
						
	.dc.b	152				
	.dc.b	150				
	.dc.b	228				
						
	.dc.b	18				
						
	.dc.b	152				
	.dc.b	162				
	.dc.b	9				
						
	.dc.b	114				
						
	.dc.b	152				
	.dc.b	173				
	.dc.b	47				
						
	.dc.b	18				
						
	.dc.b	152				
	.dc.b	184				
	.dc.b	84				
						
	.dc.b	242				
						
	.dc.b	152				
	.dc.b	195				
	.dc.b	122				
						
	.dc.b	242				
						
	.dc.b	152				
	.dc.b	206				
	.dc.b	161				
						
	.dc.b	18				
						
	.dc.b	152				
	.dc.b	217				
	.dc.b	199				
						
	.dc.b	146				
						
	.dc.b	152				
	.dc.b	228				
	.dc.b	238				
						
	.dc.b	50				
						
	.dc.b	152				
	.dc.b	240				
	.dc.b	20				
						
	.dc.b	242				
						
	.dc.b	152				
	.dc.b	251				
	.dc.b	59				
						
	.dc.b	242				
						
	.dc.b	153				
	.dc.b	6				
	.dc.b	99				
						
	.dc.b	50				
						
	.dc.b	153				
	.dc.b	17				
	.dc.b	138				
						
	.dc.b	178				
						
	.dc.b	153				
	.dc.b	28				
	.dc.b	178				
						
	.dc.b	82				
						
	.dc.b	153				
	.dc.b	39				
	.dc.b	218				
						
	.dc.b	50				
						
	.dc.b	153				
	.dc.b	51				
	.dc.b	2				
						
	.dc.b	50				
						
	.dc.b	153				
	.dc.b	62				
	.dc.b	42				
						
	.dc.b	114				
						
	.dc.b	153				
	.dc.b	73				
	.dc.b	82				
						
	.dc.b	242				
						
	.dc.b	153				
	.dc.b	84				
	.dc.b	123				
						
	.dc.b	146				
						
	.dc.b	153				
	.dc.b	95				
	.dc.b	164				
						
	.dc.b	114				
						
	.dc.b	153				
	.dc.b	106				
	.dc.b	205				
						
	.dc.b	114				
						
	.dc.b	153				
	.dc.b	117				
	.dc.b	246				
						
	.dc.b	178				
						
	.dc.b	153				
	.dc.b	129				
	.dc.b	32				
						
	.dc.b	50				
						
	.dc.b	153				
	.dc.b	140				
	.dc.b	73				
						
	.dc.b	210				
						
	.dc.b	153				
	.dc.b	151				
	.dc.b	115				
						
	.dc.b	178				
						
	.dc.b	153				
	.dc.b	162				
	.dc.b	157				
						
	.dc.b	210				
						
	.dc.b	153				
	.dc.b	173				
	.dc.b	200				
						
	.dc.b	18				
						
	.dc.b	153				
	.dc.b	184				
	.dc.b	242				
						
	.dc.b	146				
						
	.dc.b	153				
	.dc.b	196				
	.dc.b	29				
						
	.dc.b	50				
						
	.dc.b	153				
	.dc.b	207				
	.dc.b	72				
						
	.dc.b	18				
						
	.dc.b	153				
	.dc.b	218				
	.dc.b	115				
						
	.dc.b	50				
						
	.dc.b	153				
	.dc.b	229				
	.dc.b	158				
						
	.dc.b	114				
						
	.dc.b	153				
	.dc.b	240				
	.dc.b	201				
						
	.dc.b	242				
						
	.dc.b	153				
	.dc.b	251				
	.dc.b	245				
						
	.dc.b	178				
						
	.dc.b	154				
	.dc.b	7				
	.dc.b	33				
						
	.dc.b	146				
						
	.dc.b	154				
	.dc.b	18				
	.dc.b	77				
						
	.dc.b	178				
						
	.dc.b	154				
	.dc.b	29				
	.dc.b	121				
						
	.dc.b	242				
						
	.dc.b	154				
	.dc.b	40				
	.dc.b	166				
						
	.dc.b	114				
						
	.dc.b	154				
	.dc.b	51				
	.dc.b	211				
						
	.dc.b	50				
						
	.dc.b	154				
	.dc.b	63				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	154				
	.dc.b	74				
	.dc.b	45				
						
	.dc.b	50				
						
	.dc.b	154				
	.dc.b	85				
	.dc.b	90				
						
	.dc.b	146				
						
	.dc.b	154				
	.dc.b	96				
	.dc.b	136				
						
	.dc.b	18				
						
	.dc.b	154				
	.dc.b	107				
	.dc.b	181				
						
	.dc.b	210				
						
	.dc.b	154				
	.dc.b	118				
	.dc.b	227				
						
	.dc.b	178				
						
	.dc.b	154				
	.dc.b	130				
	.dc.b	17				
						
	.dc.b	210				
						
	.dc.b	154				
	.dc.b	141				
	.dc.b	64				
						
	.dc.b	50				
						
	.dc.b	154				
	.dc.b	152				
	.dc.b	110				
						
	.dc.b	178				
						
	.dc.b	154				
	.dc.b	163				
	.dc.b	157				
						
	.dc.b	114				
						
	.dc.b	154				
	.dc.b	174				
	.dc.b	204				
						
	.dc.b	82				
						
	.dc.b	154				
	.dc.b	185				
	.dc.b	251				
						
	.dc.b	114				
						
	.dc.b	154				
	.dc.b	197				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	154				
	.dc.b	208				
	.dc.b	90				
						
	.dc.b	82				
						
	.dc.b	154				
	.dc.b	219				
	.dc.b	138				
						
	.dc.b	18				
						
	.dc.b	154				
	.dc.b	230				
	.dc.b	186				
						
	.dc.b	18				
						
	.dc.b	154				
	.dc.b	241				
	.dc.b	234				
						
	.dc.b	50				
						
	.dc.b	154				
	.dc.b	253				
	.dc.b	26				
						
	.dc.b	146				
						
	.dc.b	155				
	.dc.b	8				
	.dc.b	75				
						
	.dc.b	18				
						
	.dc.b	155				
	.dc.b	19				
	.dc.b	123				
						
	.dc.b	210				
						
	.dc.b	155				
	.dc.b	30				
	.dc.b	172				
						
	.dc.b	210				
						
	.dc.b	155				
	.dc.b	41				
	.dc.b	221				
						
	.dc.b	242				
						
	.dc.b	155				
	.dc.b	53				
	.dc.b	15				
						
	.dc.b	82				
						
	.dc.b	155				
	.dc.b	64				
	.dc.b	64				
						
	.dc.b	242				
						
	.dc.b	155				
	.dc.b	75				
	.dc.b	114				
						
	.dc.b	178				
						
	.dc.b	155				
	.dc.b	86				
	.dc.b	164				
						
	.dc.b	146				
						
	.dc.b	155				
	.dc.b	97				
	.dc.b	214				
						
	.dc.b	210				
						
	.dc.b	155				
	.dc.b	109				
	.dc.b	9				
						
	.dc.b	50				
						
	.dc.b	155				
	.dc.b	120				
	.dc.b	59				
						
	.dc.b	178				
						
	.dc.b	155				
	.dc.b	131				
	.dc.b	110				
						
	.dc.b	114				
						
	.dc.b	155				
	.dc.b	142				
	.dc.b	161				
						
	.dc.b	114				
						
	.dc.b	155				
	.dc.b	153				
	.dc.b	212				
						
	.dc.b	178				
						
	.dc.b	155				
	.dc.b	165				
	.dc.b	8				
						
	.dc.b	18				
						
	.dc.b	155				
	.dc.b	176				
	.dc.b	59				
						
	.dc.b	146				
						
	.dc.b	155				
	.dc.b	187				
	.dc.b	111				
						
	.dc.b	82				
						
	.dc.b	155				
	.dc.b	198				
	.dc.b	163				
						
	.dc.b	82				
						
	.dc.b	155				
	.dc.b	209				
	.dc.b	215				
						
	.dc.b	146				
						
	.dc.b	155				
	.dc.b	221				
	.dc.b	11				
						
	.dc.b	242				
						
	.dc.b	155				
	.dc.b	232				
	.dc.b	64				
						
	.dc.b	114				
						
	.dc.b	155				
	.dc.b	243				
	.dc.b	117				
						
	.dc.b	82				
						
	.dc.b	155				
	.dc.b	254				
	.dc.b	170				
						
	.dc.b	82				
						
	.dc.b	156				
	.dc.b	9				
	.dc.b	223				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	21				
	.dc.b	20				
						
	.dc.b	210				
						
	.dc.b	156				
	.dc.b	32				
	.dc.b	74				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	43				
	.dc.b	128				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	54				
	.dc.b	182				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	65				
	.dc.b	236				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	77				
	.dc.b	34				
						
	.dc.b	210				
						
	.dc.b	156				
	.dc.b	88				
	.dc.b	89				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	99				
	.dc.b	144				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	110				
	.dc.b	199				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	121				
	.dc.b	254				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	133				
	.dc.b	53				
						
	.dc.b	210				
						
	.dc.b	156				
	.dc.b	144				
	.dc.b	109				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	155				
	.dc.b	165				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	166				
	.dc.b	221				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	178				
	.dc.b	21				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	189				
	.dc.b	77				
						
	.dc.b	210				
						
	.dc.b	156				
	.dc.b	200				
	.dc.b	134				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	211				
	.dc.b	191				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	222				
	.dc.b	248				
						
	.dc.b	50				
						
	.dc.b	156				
	.dc.b	234				
	.dc.b	49				
						
	.dc.b	114				
						
	.dc.b	156				
	.dc.b	245				
	.dc.b	106				
						
	.dc.b	210				
						
	.dc.b	157				
	.dc.b	0				
	.dc.b	164				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	11				
	.dc.b	222				
						
	.dc.b	82				
						
	.dc.b	157				
	.dc.b	23				
	.dc.b	24				
						
	.dc.b	82				
						
	.dc.b	157				
	.dc.b	34				
	.dc.b	82				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	45				
	.dc.b	140				
						
	.dc.b	242				
						
	.dc.b	157				
	.dc.b	56				
	.dc.b	199				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	68				
	.dc.b	2				
						
	.dc.b	82				
						
	.dc.b	157				
	.dc.b	79				
	.dc.b	61				
						
	.dc.b	82				
						
	.dc.b	157				
	.dc.b	90				
	.dc.b	120				
						
	.dc.b	146				
						
	.dc.b	157				
	.dc.b	101				
	.dc.b	179				
						
	.dc.b	242				
						
	.dc.b	157				
	.dc.b	112				
	.dc.b	239				
						
	.dc.b	146				
						
	.dc.b	157				
	.dc.b	124				
	.dc.b	43				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	135				
	.dc.b	103				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	146				
	.dc.b	163				
						
	.dc.b	146				
						
	.dc.b	157				
	.dc.b	157				
	.dc.b	224				
						
	.dc.b	18				
						
	.dc.b	157				
	.dc.b	169				
	.dc.b	28				
						
	.dc.b	178				
						
	.dc.b	157				
	.dc.b	180				
	.dc.b	89				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	191				
	.dc.b	150				
						
	.dc.b	114				
						
	.dc.b	157				
	.dc.b	202				
	.dc.b	211				
						
	.dc.b	178				
						
	.dc.b	157				
	.dc.b	214				
	.dc.b	17				
						
	.dc.b	18				
						
	.dc.b	157				
	.dc.b	225				
	.dc.b	78				
						
	.dc.b	178				
						
	.dc.b	157				
	.dc.b	236				
	.dc.b	140				
						
	.dc.b	146				
						
	.dc.b	157				
	.dc.b	247				
	.dc.b	202				
						
	.dc.b	146				
						
	.dc.b	158				
	.dc.b	3				
	.dc.b	8				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	14				
	.dc.b	71				
						
	.dc.b	50				
						
	.dc.b	158				
	.dc.b	25				
	.dc.b	133				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	36				
	.dc.b	196				
						
	.dc.b	146				
						
	.dc.b	158				
	.dc.b	48				
	.dc.b	3				
						
	.dc.b	178				
						
	.dc.b	158				
	.dc.b	59				
	.dc.b	66				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	70				
	.dc.b	130				
						
	.dc.b	82				
						
	.dc.b	158				
	.dc.b	81				
	.dc.b	193				
						
	.dc.b	242				
						
	.dc.b	158				
	.dc.b	93				
	.dc.b	1				
						
	.dc.b	178				
						
	.dc.b	158				
	.dc.b	104				
	.dc.b	65				
						
	.dc.b	178				
						
	.dc.b	158				
	.dc.b	115				
	.dc.b	129				
						
	.dc.b	242				
						
	.dc.b	158				
	.dc.b	126				
	.dc.b	194				
						
	.dc.b	82				
						
	.dc.b	158				
	.dc.b	138				
	.dc.b	2				
						
	.dc.b	242				
						
	.dc.b	158				
	.dc.b	149				
	.dc.b	67				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	160				
	.dc.b	132				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	171				
	.dc.b	198				
						
	.dc.b	18				
						
	.dc.b	158				
	.dc.b	183				
	.dc.b	7				
						
	.dc.b	114				
						
	.dc.b	158				
	.dc.b	194				
	.dc.b	73				
						
	.dc.b	18				
						
	.dc.b	158				
	.dc.b	205				
	.dc.b	138				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	216				
	.dc.b	204				
						
	.dc.b	210				
						
	.dc.b	158				
	.dc.b	228				
	.dc.b	15				
						
	.dc.b	18				
						
	.dc.b	158				
	.dc.b	239				
	.dc.b	81				
						
	.dc.b	114				
						
	.dc.b	158				
	.dc.b	250				
	.dc.b	148				
						
	.dc.b	18				
						
	.dc.b	159				
	.dc.b	5				
	.dc.b	214				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	17				
	.dc.b	25				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	28				
	.dc.b	93				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	39				
	.dc.b	160				
						
	.dc.b	146				
						
	.dc.b	159				
	.dc.b	50				
	.dc.b	228				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	62				
	.dc.b	39				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	73				
	.dc.b	107				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	84				
	.dc.b	176				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	95				
	.dc.b	244				
						
	.dc.b	146				
						
	.dc.b	159				
	.dc.b	107				
	.dc.b	57				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	118				
	.dc.b	125				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	129				
	.dc.b	194				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	141				
	.dc.b	8				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	152				
	.dc.b	77				
						
	.dc.b	146				
						
	.dc.b	159				
	.dc.b	163				
	.dc.b	147				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	174				
	.dc.b	216				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	186				
	.dc.b	30				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	197				
	.dc.b	101				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	208				
	.dc.b	171				
						
	.dc.b	146				
						
	.dc.b	159				
	.dc.b	219				
	.dc.b	242				
						
	.dc.b	50				
						
	.dc.b	159				
	.dc.b	231				
	.dc.b	56				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	242				
	.dc.b	127				
						
	.dc.b	242				
						
	.dc.b	159				
	.dc.b	253				
	.dc.b	199				
						
	.dc.b	18				
						
	.dc.b	160				
	.dc.b	9				
	.dc.b	14				
						
	.dc.b	146				
						
	.dc.b	160				
	.dc.b	20				
	.dc.b	86				
						
	.dc.b	18				
						
	.dc.b	160				
	.dc.b	31				
	.dc.b	157				
						
	.dc.b	242				
						
	.dc.b	160				
	.dc.b	42				
	.dc.b	229				
						
	.dc.b	210				
						
	.dc.b	160				
	.dc.b	54				
	.dc.b	46				
						
	.dc.b	18				
						
	.dc.b	160				
	.dc.b	65				
	.dc.b	118				
						
	.dc.b	114				
						
	.dc.b	160				
	.dc.b	76				
	.dc.b	191				
						
	.dc.b	18				
						
	.dc.b	160				
	.dc.b	88				
	.dc.b	7				
						
	.dc.b	210				
						
	.dc.b	160				
	.dc.b	99				
	.dc.b	80				
						
	.dc.b	210				
						
	.dc.b	160				
	.dc.b	110				
	.dc.b	153				
						
	.dc.b	242				
						
	.dc.b	160				
	.dc.b	121				
	.dc.b	227				
						
	.dc.b	82				
						
	.dc.b	160				
	.dc.b	133				
	.dc.b	44				
						
	.dc.b	242				
						
	.dc.b	160				
	.dc.b	144				
	.dc.b	118				
						
	.dc.b	178				
						
	.dc.b	160				
	.dc.b	155				
	.dc.b	192				
						
	.dc.b	178				
						
	.dc.b	160				
	.dc.b	167				
	.dc.b	10				
						
	.dc.b	210				
						
	.dc.b	160				
	.dc.b	178				
	.dc.b	85				
						
	.dc.b	50				
						
	.dc.b	160				
	.dc.b	189				
	.dc.b	159				
						
	.dc.b	178				
						
	.dc.b	160				
	.dc.b	200				
	.dc.b	234				
						
	.dc.b	146				
						
	.dc.b	160				
	.dc.b	212				
	.dc.b	53				
						
	.dc.b	114				
						
	.dc.b	160				
	.dc.b	223				
	.dc.b	128				
						
	.dc.b	146				
						
	.dc.b	160				
	.dc.b	234				
	.dc.b	203				
						
	.dc.b	242				
						
	.dc.b	160				
	.dc.b	246				
	.dc.b	23				
						
	.dc.b	146				
						
	.dc.b	161				
	.dc.b	1				
	.dc.b	99				
						
	.dc.b	82				
						
	.dc.b	161				
	.dc.b	12				
	.dc.b	175				
						
	.dc.b	50				
						
	.dc.b	161				
	.dc.b	23				
	.dc.b	251				
						
	.dc.b	114				
						
	.dc.b	161				
	.dc.b	35				
	.dc.b	71				
						
	.dc.b	178				
						
	.dc.b	161				
	.dc.b	46				
	.dc.b	148				
						
	.dc.b	82				
						
	.dc.b	161				
	.dc.b	57				
	.dc.b	225				
						
	.dc.b	18				
						
	.dc.b	161				
	.dc.b	69				
	.dc.b	45				
						
	.dc.b	242				
						
	.dc.b	161				
	.dc.b	80				
	.dc.b	123				
						
	.dc.b	18				
						
	.dc.b	161				
	.dc.b	91				
	.dc.b	200				
						
	.dc.b	114				
						
	.dc.b	161				
	.dc.b	103				
	.dc.b	21				
						
	.dc.b	242				
						
	.dc.b	161				
	.dc.b	114				
	.dc.b	99				
						
	.dc.b	178				
						
	.dc.b	161				
	.dc.b	125				
	.dc.b	177				
						
	.dc.b	178				
						
	.dc.b	161				
	.dc.b	136				
	.dc.b	255				
						
	.dc.b	210				
						
	.dc.b	161				
	.dc.b	148				
	.dc.b	78				
						
	.dc.b	50				
						
	.dc.b	161				
	.dc.b	159				
	.dc.b	156				
						
	.dc.b	178				
						
	.dc.b	161				
	.dc.b	170				
	.dc.b	235				
						
	.dc.b	114				
						
	.dc.b	161				
	.dc.b	182				
	.dc.b	58				
						
	.dc.b	82				
						
	.dc.b	161				
	.dc.b	193				
	.dc.b	137				
						
	.dc.b	114				
						
	.dc.b	161				
	.dc.b	204				
	.dc.b	216				
						
	.dc.b	178				
						
	.dc.b	161				
	.dc.b	216				
	.dc.b	40				
						
	.dc.b	50				
						
	.dc.b	161				
	.dc.b	227				
	.dc.b	119				
						
	.dc.b	242				
						
	.dc.b	161				
	.dc.b	238				
	.dc.b	199				
						
	.dc.b	210				
						
	.dc.b	161				
	.dc.b	250				
	.dc.b	23				
						
	.dc.b	242				
						
	.dc.b	162				
	.dc.b	5				
	.dc.b	104				
						
	.dc.b	82				
						
	.dc.b	162				
	.dc.b	16				
	.dc.b	184				
						
	.dc.b	210				
						
	.dc.b	162				
	.dc.b	28				
	.dc.b	9				
						
	.dc.b	114				
						
	.dc.b	162				
	.dc.b	39				
	.dc.b	90				
						
	.dc.b	114				
						
	.dc.b	162				
	.dc.b	50				
	.dc.b	171				
						
	.dc.b	114				
						
	.dc.b	162				
	.dc.b	61				
	.dc.b	252				
						
	.dc.b	210				
						
	.dc.b	162				
	.dc.b	73				
	.dc.b	78				
						
	.dc.b	82				
						
	.dc.b	162				
	.dc.b	84				
	.dc.b	159				
						
	.dc.b	242				
						
	.dc.b	162				
	.dc.b	95				
	.dc.b	241				
						
	.dc.b	210				
						
	.dc.b	162				
	.dc.b	107				
	.dc.b	67				
						
	.dc.b	242				
						
	.dc.b	162				
	.dc.b	118				
	.dc.b	150				
						
	.dc.b	50				
						
	.dc.b	162				
	.dc.b	129				
	.dc.b	232				
						
	.dc.b	178				
						
	.dc.b	162				
	.dc.b	141				
	.dc.b	59				
						
	.dc.b	82				
						
	.dc.b	162				
	.dc.b	152				
	.dc.b	142				
						
	.dc.b	50				
						
	.dc.b	162				
	.dc.b	163				
	.dc.b	225				
						
	.dc.b	82				
						
	.dc.b	162				
	.dc.b	175				
	.dc.b	52				
						
	.dc.b	146				
						
	.dc.b	162				
	.dc.b	186				
	.dc.b	136				
						
	.dc.b	18				
						
	.dc.b	162				
	.dc.b	197				
	.dc.b	219				
						
	.dc.b	178				
						
	.dc.b	162				
	.dc.b	209				
	.dc.b	47				
						
	.dc.b	146				
						
	.dc.b	162				
	.dc.b	220				
	.dc.b	131				
						
	.dc.b	146				
						
	.dc.b	162				
	.dc.b	231				
	.dc.b	215				
						
	.dc.b	210				
						
	.dc.b	162				
	.dc.b	243				
	.dc.b	44				
						
	.dc.b	82				
						
	.dc.b	162				
	.dc.b	254				
	.dc.b	128				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	9				
	.dc.b	213				
						
	.dc.b	210				
						
	.dc.b	163				
	.dc.b	21				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	163				
	.dc.b	32				
	.dc.b	128				
						
	.dc.b	18				
						
	.dc.b	163				
	.dc.b	43				
	.dc.b	213				
						
	.dc.b	114				
						
	.dc.b	163				
	.dc.b	55				
	.dc.b	43				
						
	.dc.b	18				
						
	.dc.b	163				
	.dc.b	66				
	.dc.b	128				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	77				
	.dc.b	214				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	89				
	.dc.b	45				
						
	.dc.b	50				
						
	.dc.b	163				
	.dc.b	100				
	.dc.b	131				
						
	.dc.b	146				
						
	.dc.b	163				
	.dc.b	111				
	.dc.b	218				
						
	.dc.b	50				
						
	.dc.b	163				
	.dc.b	123				
	.dc.b	48				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	134				
	.dc.b	136				
						
	.dc.b	18				
						
	.dc.b	163				
	.dc.b	145				
	.dc.b	223				
						
	.dc.b	50				
						
	.dc.b	163				
	.dc.b	157				
	.dc.b	54				
						
	.dc.b	146				
						
	.dc.b	163				
	.dc.b	168				
	.dc.b	142				
						
	.dc.b	50				
						
	.dc.b	163				
	.dc.b	179				
	.dc.b	229				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	191				
	.dc.b	61				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	202				
	.dc.b	150				
						
	.dc.b	50				
						
	.dc.b	163				
	.dc.b	213				
	.dc.b	238				
						
	.dc.b	146				
						
	.dc.b	163				
	.dc.b	225				
	.dc.b	71				
						
	.dc.b	18				
						
	.dc.b	163				
	.dc.b	236				
	.dc.b	159				
						
	.dc.b	242				
						
	.dc.b	163				
	.dc.b	247				
	.dc.b	248				
						
	.dc.b	210				
						
	.dc.b	164				
	.dc.b	3				
	.dc.b	82				
						
	.dc.b	18				
						
	.dc.b	164				
	.dc.b	14				
	.dc.b	171				
						
	.dc.b	114				
						
	.dc.b	164				
	.dc.b	26				
	.dc.b	4				
						
	.dc.b	242				
						
	.dc.b	164				
	.dc.b	37				
	.dc.b	94				
						
	.dc.b	178				
						
	.dc.b	164				
	.dc.b	48				
	.dc.b	184				
						
	.dc.b	178				
						
	.dc.b	164				
	.dc.b	60				
	.dc.b	18				
						
	.dc.b	210				
						
	.dc.b	164				
	.dc.b	71				
	.dc.b	109				
						
	.dc.b	50				
						
	.dc.b	164				
	.dc.b	82				
	.dc.b	199				
						
	.dc.b	178				
						
	.dc.b	164				
	.dc.b	94				
	.dc.b	34				
						
	.dc.b	114				
						
	.dc.b	164				
	.dc.b	105				
	.dc.b	125				
						
	.dc.b	82				
						
	.dc.b	164				
	.dc.b	116				
	.dc.b	216				
						
	.dc.b	114				
						
	.dc.b	164				
	.dc.b	128				
	.dc.b	51				
						
	.dc.b	210				
						
	.dc.b	164				
	.dc.b	139				
	.dc.b	143				
						
	.dc.b	82				
						
	.dc.b	164				
	.dc.b	150				
	.dc.b	235				
						
	.dc.b	18				
						
	.dc.b	164				
	.dc.b	162				
	.dc.b	70				
						
	.dc.b	242				
						
	.dc.b	164				
	.dc.b	173				
	.dc.b	163				
						
	.dc.b	18				
						
	.dc.b	164				
	.dc.b	184				
	.dc.b	255				
						
	.dc.b	114				
						
	.dc.b	164				
	.dc.b	196				
	.dc.b	91				
						
	.dc.b	242				
						
	.dc.b	164				
	.dc.b	207				
	.dc.b	184				
						
	.dc.b	146				
						
	.dc.b	164				
	.dc.b	219				
	.dc.b	21				
						
	.dc.b	114				
						
	.dc.b	164				
	.dc.b	230				
	.dc.b	114				
						
	.dc.b	146				
						
	.dc.b	164				
	.dc.b	241				
	.dc.b	207				
						
	.dc.b	210				
						
	.dc.b	164				
	.dc.b	253				
	.dc.b	45				
						
	.dc.b	82				
						
	.dc.b	165				
	.dc.b	8				
	.dc.b	138				
						
	.dc.b	242				
						
	.dc.b	165				
	.dc.b	19				
	.dc.b	232				
						
	.dc.b	210				
						
	.dc.b	165				
	.dc.b	31				
	.dc.b	70				
						
	.dc.b	242				
						
	.dc.b	165				
	.dc.b	42				
	.dc.b	165				
						
	.dc.b	50				
						
	.dc.b	165				
	.dc.b	54				
	.dc.b	3				
						
	.dc.b	178				
						
	.dc.b	165				
	.dc.b	65				
	.dc.b	98				
						
	.dc.b	82				
						
	.dc.b	165				
	.dc.b	76				
	.dc.b	193				
						
	.dc.b	50				
						
	.dc.b	165				
	.dc.b	88				
	.dc.b	32				
						
	.dc.b	50				
						
	.dc.b	165				
	.dc.b	99				
	.dc.b	127				
						
	.dc.b	114				
						
	.dc.b	165				
	.dc.b	110				
	.dc.b	222				
						
	.dc.b	242				
						
	.dc.b	165				
	.dc.b	122				
	.dc.b	62				
						
	.dc.b	146				
						
	.dc.b	165				
	.dc.b	133				
	.dc.b	158				
						
	.dc.b	82				
						
	.dc.b	165				
	.dc.b	144				
	.dc.b	254				
						
	.dc.b	82				
						
	.dc.b	165				
	.dc.b	156				
	.dc.b	94				
						
	.dc.b	146				
						
	.dc.b	165				
	.dc.b	167				
	.dc.b	190				
						
	.dc.b	242				
						
	.dc.b	165				
	.dc.b	179				
	.dc.b	31				
						
	.dc.b	146				
						
	.dc.b	165				
	.dc.b	190				
	.dc.b	128				
						
	.dc.b	114				
						
	.dc.b	165				
	.dc.b	201				
	.dc.b	225				
						
	.dc.b	114				
						
	.dc.b	165				
	.dc.b	213				
	.dc.b	66				
						
	.dc.b	146				
						
	.dc.b	165				
	.dc.b	224				
	.dc.b	163				
						
	.dc.b	242				
						
	.dc.b	165				
	.dc.b	236				
	.dc.b	5				
						
	.dc.b	146				
						
	.dc.b	165				
	.dc.b	247				
	.dc.b	103				
						
	.dc.b	82				
						
	.dc.b	166				
	.dc.b	2				
	.dc.b	201				
						
	.dc.b	82				
						
	.dc.b	166				
	.dc.b	14				
	.dc.b	43				
						
	.dc.b	114				
						
	.dc.b	166				
	.dc.b	25				
	.dc.b	141				
						
	.dc.b	210				
						
	.dc.b	166				
	.dc.b	36				
	.dc.b	240				
						
	.dc.b	114				
						
	.dc.b	166				
	.dc.b	48				
	.dc.b	83				
						
	.dc.b	50				
						
	.dc.b	166				
	.dc.b	59				
	.dc.b	182				
						
	.dc.b	18				
						
	.dc.b	166				
	.dc.b	71				
	.dc.b	25				
						
	.dc.b	82				
						
	.dc.b	166				
	.dc.b	82				
	.dc.b	124				
						
	.dc.b	146				
						
	.dc.b	166				
	.dc.b	93				
	.dc.b	224				
						
	.dc.b	50				
						
	.dc.b	166				
	.dc.b	105				
	.dc.b	67				
						
	.dc.b	210				
						
	.dc.b	166				
	.dc.b	116				
	.dc.b	167				
						
	.dc.b	210				
						
	.dc.b	166				
	.dc.b	128				
	.dc.b	11				
						
	.dc.b	242				
						
	.dc.b	166				
	.dc.b	139				
	.dc.b	112				
						
	.dc.b	50				
						
	.dc.b	166				
	.dc.b	150				
	.dc.b	212				
						
	.dc.b	178				
						
	.dc.b	166				
	.dc.b	162				
	.dc.b	57				
						
	.dc.b	114				
						
	.dc.b	166				
	.dc.b	173				
	.dc.b	158				
						
	.dc.b	82				
						
	.dc.b	166				
	.dc.b	185				
	.dc.b	3				
						
	.dc.b	114				
						
	.dc.b	166				
	.dc.b	196				
	.dc.b	104				
						
	.dc.b	178				
						
	.dc.b	166				
	.dc.b	207				
	.dc.b	206				
						
	.dc.b	50				
						
	.dc.b	166				
	.dc.b	219				
	.dc.b	51				
						
	.dc.b	242				
						
	.dc.b	166				
	.dc.b	230				
	.dc.b	153				
						
	.dc.b	210				
						
	.dc.b	166				
	.dc.b	241				
	.dc.b	255				
						
	.dc.b	210				
						
	.dc.b	166				
	.dc.b	253				
	.dc.b	102				
						
	.dc.b	18				
						
	.dc.b	167				
	.dc.b	8				
	.dc.b	204				
						
	.dc.b	146				
						
	.dc.b	167				
	.dc.b	20				
	.dc.b	51				
						
	.dc.b	50				
						
	.dc.b	167				
	.dc.b	31				
	.dc.b	154				
						
	.dc.b	18				
						
	.dc.b	167				
	.dc.b	43				
	.dc.b	1				
						
	.dc.b	18				
						
	.dc.b	167				
	.dc.b	54				
	.dc.b	104				
						
	.dc.b	82				
						
	.dc.b	167				
	.dc.b	65				
	.dc.b	207				
						
	.dc.b	178				
						
	.dc.b	167				
	.dc.b	77				
	.dc.b	55				
						
	.dc.b	82				
						
	.dc.b	167				
	.dc.b	88				
	.dc.b	159				
						
	.dc.b	50				
						
	.dc.b	167				
	.dc.b	100				
	.dc.b	7				
						
	.dc.b	50				
						
	.dc.b	167				
	.dc.b	111				
	.dc.b	111				
						
	.dc.b	114				
						
	.dc.b	167				
	.dc.b	122				
	.dc.b	215				
						
	.dc.b	210				
						
	.dc.b	167				
	.dc.b	134				
	.dc.b	64				
						
	.dc.b	114				
						
	.dc.b	167				
	.dc.b	145				
	.dc.b	169				
						
	.dc.b	50				
						
	.dc.b	167				
	.dc.b	157				
	.dc.b	18				
						
	.dc.b	50				
						
	.dc.b	167				
	.dc.b	168				
	.dc.b	123				
						
	.dc.b	82				
						
	.dc.b	167				
	.dc.b	179				
	.dc.b	228				
						
	.dc.b	178				
						
	.dc.b	167				
	.dc.b	191				
	.dc.b	78				
						
	.dc.b	82				
						
	.dc.b	167				
	.dc.b	202				
	.dc.b	184				
						
	.dc.b	18				
						
	.dc.b	167				
	.dc.b	214				
	.dc.b	33				
						
	.dc.b	242				
						
	.dc.b	167				
	.dc.b	225				
	.dc.b	140				
						
	.dc.b	50				
						
	.dc.b	167				
	.dc.b	236				
	.dc.b	246				
						
	.dc.b	114				
						
	.dc.b	167				
	.dc.b	248				
	.dc.b	97				
						
	.dc.b	18				
						
	.dc.b	168				
	.dc.b	3				
	.dc.b	203				
						
	.dc.b	210				
						
	.dc.b	168				
	.dc.b	15				
	.dc.b	54				
						
	.dc.b	178				
						
	.dc.b	168				
	.dc.b	26				
	.dc.b	161				
						
	.dc.b	210				
						
	.dc.b	168				
	.dc.b	38				
	.dc.b	13				
						
	.dc.b	18				
						
	.dc.b	168				
	.dc.b	49				
	.dc.b	120				
						
	.dc.b	146				
						
	.dc.b	168				
	.dc.b	60				
	.dc.b	228				
						
	.dc.b	82				
						
	.dc.b	168				
	.dc.b	72				
	.dc.b	80				
						
	.dc.b	50				
						
	.dc.b	168				
	.dc.b	83				
	.dc.b	188				
						
	.dc.b	82				
						
	.dc.b	168				
	.dc.b	95				
	.dc.b	40				
						
	.dc.b	146				
						
	.dc.b	168				
	.dc.b	106				
	.dc.b	149				
						
	.dc.b	18				
						
	.dc.b	168				
	.dc.b	118				
	.dc.b	1				
						
	.dc.b	178				
						
	.dc.b	168				
	.dc.b	129				
	.dc.b	110				
						
	.dc.b	146				
						
	.dc.b	168				
	.dc.b	140				
	.dc.b	219				
						
	.dc.b	178				
						
	.dc.b	168				
	.dc.b	152				
	.dc.b	72				
						
	.dc.b	242				
						
	.dc.b	168				
	.dc.b	163				
	.dc.b	182				
						
	.dc.b	82				
						
	.dc.b	168				
	.dc.b	175				
	.dc.b	35				
						
	.dc.b	242				
						
	.dc.b	168				
	.dc.b	186				
	.dc.b	145				
						
	.dc.b	210				
						
	.dc.b	168				
	.dc.b	197				
	.dc.b	255				
						
	.dc.b	210				
						
	.dc.b	168				
	.dc.b	209				
	.dc.b	110				
						
	.dc.b	18				
						
	.dc.b	168				
	.dc.b	220				
	.dc.b	220				
						
	.dc.b	114				
						
	.dc.b	168				
	.dc.b	232				
	.dc.b	75				
						
	.dc.b	18				
						
	.dc.b	168				
	.dc.b	243				
	.dc.b	185				
						
	.dc.b	210				
						
	.dc.b	168				
	.dc.b	255				
	.dc.b	40				
						
	.dc.b	210				
						
	.dc.b	169				
	.dc.b	10				
	.dc.b	152				
						
	.dc.b	18				
						
	.dc.b	169				
	.dc.b	22				
	.dc.b	7				
						
	.dc.b	114				
						
	.dc.b	169				
	.dc.b	33				
	.dc.b	118				
						
	.dc.b	242				
						
	.dc.b	169				
	.dc.b	44				
	.dc.b	230				
						
	.dc.b	178				
						
	.dc.b	169				
	.dc.b	56				
	.dc.b	86				
						
	.dc.b	178				
						
	.dc.b	169				
	.dc.b	67				
	.dc.b	198				
						
	.dc.b	210				
						
	.dc.b	169				
	.dc.b	79				
	.dc.b	55				
						
	.dc.b	50				
						
	.dc.b	169				
	.dc.b	90				
	.dc.b	167				
						
	.dc.b	178				
						
	.dc.b	169				
	.dc.b	102				
	.dc.b	24				
						
	.dc.b	114				
						
	.dc.b	169				
	.dc.b	113				
	.dc.b	137				
						
	.dc.b	114				
						
	.dc.b	169				
	.dc.b	124				
	.dc.b	250				
						
	.dc.b	146				
						
	.dc.b	169				
	.dc.b	136				
	.dc.b	107				
						
	.dc.b	210				
						
	.dc.b	169				
	.dc.b	147				
	.dc.b	221				
						
	.dc.b	82				
						
	.dc.b	169				
	.dc.b	159				
	.dc.b	79				
						
	.dc.b	18				
						
	.dc.b	169				
	.dc.b	170				
	.dc.b	192				
						
	.dc.b	242				
						
	.dc.b	169				
	.dc.b	182				
	.dc.b	50				
						
	.dc.b	242				
						
	.dc.b	169				
	.dc.b	193				
	.dc.b	165				
						
	.dc.b	82				
						
	.dc.b	169				
	.dc.b	205				
	.dc.b	23				
						
	.dc.b	178				
						
	.dc.b	169				
	.dc.b	216				
	.dc.b	138				
						
	.dc.b	114				
						
	.dc.b	169				
	.dc.b	227				
	.dc.b	253				
						
	.dc.b	50				
						
	.dc.b	169				
	.dc.b	239				
	.dc.b	112				
						
	.dc.b	82				
						
	.dc.b	169				
	.dc.b	250				
	.dc.b	227				
						
	.dc.b	146				
						
	.dc.b	170				
	.dc.b	6				
	.dc.b	86				
						
	.dc.b	242				
						
	.dc.b	170				
	.dc.b	17				
	.dc.b	202				
						
	.dc.b	146				
						
	.dc.b	170				
	.dc.b	29				
	.dc.b	62				
						
	.dc.b	114				
						
	.dc.b	170				
	.dc.b	40				
	.dc.b	178				
						
	.dc.b	114				
						
	.dc.b	170				
	.dc.b	52				
	.dc.b	38				
						
	.dc.b	146				
						
	.dc.b	170				
	.dc.b	63				
	.dc.b	155				
						
	.dc.b	18				
						
	.dc.b	170				
	.dc.b	75				
	.dc.b	15				
						
	.dc.b	146				
						
	.dc.b	170				
	.dc.b	86				
	.dc.b	132				
						
	.dc.b	114				
						
	.dc.b	170				
	.dc.b	97				
	.dc.b	249				
						
	.dc.b	82				
						
	.dc.b	170				
	.dc.b	109				
	.dc.b	110				
						
	.dc.b	146				
						
	.dc.b	170				
	.dc.b	120				
	.dc.b	227				
						
	.dc.b	242				
						
	.dc.b	170				
	.dc.b	132				
	.dc.b	89				
						
	.dc.b	114				
						
	.dc.b	170				
	.dc.b	143				
	.dc.b	207				
						
	.dc.b	50				
						
	.dc.b	170				
	.dc.b	155				
	.dc.b	69				
						
	.dc.b	50				
						
	.dc.b	170				
	.dc.b	166				
	.dc.b	187				
						
	.dc.b	82				
						
	.dc.b	170				
	.dc.b	178				
	.dc.b	49				
						
	.dc.b	146				
						
	.dc.b	170				
	.dc.b	189				
	.dc.b	168				
						
	.dc.b	18				
						
	.dc.b	170				
	.dc.b	201				
	.dc.b	30				
						
	.dc.b	210				
						
	.dc.b	170				
	.dc.b	212				
	.dc.b	149				
						
	.dc.b	178				
						
	.dc.b	170				
	.dc.b	224				
	.dc.b	12				
						
	.dc.b	210				
						
	.dc.b	170				
	.dc.b	235				
	.dc.b	132				
						
	.dc.b	18				
						
	.dc.b	170				
	.dc.b	246				
	.dc.b	251				
						
	.dc.b	146				
						
	.dc.b	171				
	.dc.b	2				
	.dc.b	115				
						
	.dc.b	50				
						
	.dc.b	171				
	.dc.b	13				
	.dc.b	235				
						
	.dc.b	18				
						
	.dc.b	171				
	.dc.b	25				
	.dc.b	99				
						
	.dc.b	50				
						
	.dc.b	171				
	.dc.b	36				
	.dc.b	219				
						
	.dc.b	114				
						
	.dc.b	171				
	.dc.b	48				
	.dc.b	83				
						
	.dc.b	210				
						
	.dc.b	171				
	.dc.b	59				
	.dc.b	204				
						
	.dc.b	114				
						
	.dc.b	171				
	.dc.b	71				
	.dc.b	69				
						
	.dc.b	82				
						
	.dc.b	171				
	.dc.b	82				
	.dc.b	190				
						
	.dc.b	82				
						
	.dc.b	171				
	.dc.b	94				
	.dc.b	55				
						
	.dc.b	114				
						
	.dc.b	171				
	.dc.b	105				
	.dc.b	176				
						
	.dc.b	242				
						
	.dc.b	171				
	.dc.b	117				
	.dc.b	42				
						
	.dc.b	114				
						
	.dc.b	171				
	.dc.b	128				
	.dc.b	164				
						
	.dc.b	82				
						
	.dc.b	171				
	.dc.b	140				
	.dc.b	30				
						
	.dc.b	50				
						
	.dc.b	171				
	.dc.b	151				
	.dc.b	152				
						
	.dc.b	114				
						
	.dc.b	171				
	.dc.b	163				
	.dc.b	18				
						
	.dc.b	210				
						
	.dc.b	171				
	.dc.b	174				
	.dc.b	141				
						
	.dc.b	82				
						
	.dc.b	171				
	.dc.b	186				
	.dc.b	8				
						
	.dc.b	18				
						
	.dc.b	171				
	.dc.b	197				
	.dc.b	130				
						
	.dc.b	242				
						
	.dc.b	171				
	.dc.b	208				
	.dc.b	254				
						
	.dc.b	18				
						
	.dc.b	171				
	.dc.b	220				
	.dc.b	121				
						
	.dc.b	114				
						
	.dc.b	171				
	.dc.b	231				
	.dc.b	244				
						
	.dc.b	242				
						
	.dc.b	171				
	.dc.b	243				
	.dc.b	112				
						
	.dc.b	178				
						
	.dc.b	171				
	.dc.b	254				
	.dc.b	236				
						
	.dc.b	146				
						
	.dc.b	172				
	.dc.b	10				
	.dc.b	104				
						
	.dc.b	146				
						
	.dc.b	172				
	.dc.b	21				
	.dc.b	228				
						
	.dc.b	242				
						
	.dc.b	172				
	.dc.b	33				
	.dc.b	97				
						
	.dc.b	82				
						
	.dc.b	172				
	.dc.b	44				
	.dc.b	222				
						
	.dc.b	18				
						
	.dc.b	172				
	.dc.b	56				
	.dc.b	90				
						
	.dc.b	242				
						
	.dc.b	172				
	.dc.b	67				
	.dc.b	215				
						
	.dc.b	242				
						
	.dc.b	172				
	.dc.b	79				
	.dc.b	85				
						
	.dc.b	50				
						
	.dc.b	172				
	.dc.b	90				
	.dc.b	210				
						
	.dc.b	146				
						
	.dc.b	172				
	.dc.b	102				
	.dc.b	80				
						
	.dc.b	50				
						
	.dc.b	172				
	.dc.b	113				
	.dc.b	206				
						
	.dc.b	18				
						
	.dc.b	172				
	.dc.b	125				
	.dc.b	76				
						
	.dc.b	18				
						
	.dc.b	172				
	.dc.b	136				
	.dc.b	202				
						
	.dc.b	50				
						
	.dc.b	172				
	.dc.b	148				
	.dc.b	72				
						
	.dc.b	146				
						
	.dc.b	172				
	.dc.b	159				
	.dc.b	199				
						
	.dc.b	50				
						
	.dc.b	172				
	.dc.b	171				
	.dc.b	69				
						
	.dc.b	242				
						
	.dc.b	172				
	.dc.b	182				
	.dc.b	196				
						
	.dc.b	242				
						
	.dc.b	172				
	.dc.b	194				
	.dc.b	68				
						
	.dc.b	18				
						
	.dc.b	172				
	.dc.b	205				
	.dc.b	195				
						
	.dc.b	82				
						
	.dc.b	172				
	.dc.b	217				
	.dc.b	66				
						
	.dc.b	242				
						
	.dc.b	172				
	.dc.b	228				
	.dc.b	194				
						
	.dc.b	146				
						
	.dc.b	172				
	.dc.b	240				
	.dc.b	66				
						
	.dc.b	146				
						
	.dc.b	172				
	.dc.b	251				
	.dc.b	194				
						
	.dc.b	178				
						
	.dc.b	173				
	.dc.b	7				
	.dc.b	66				
						
	.dc.b	242				
						
	.dc.b	173				
	.dc.b	18				
	.dc.b	195				
						
	.dc.b	114				
						
	.dc.b	173				
	.dc.b	30				
	.dc.b	68				
						
	.dc.b	18				
						
	.dc.b	173				
	.dc.b	41				
	.dc.b	196				
						
	.dc.b	242				
						
	.dc.b	173				
	.dc.b	53				
	.dc.b	70				
						
	.dc.b	18				
						
	.dc.b	173				
	.dc.b	64				
	.dc.b	199				
						
	.dc.b	82				
						
	.dc.b	173				
	.dc.b	76				
	.dc.b	72				
						
	.dc.b	178				
						
	.dc.b	173				
	.dc.b	87				
	.dc.b	202				
						
	.dc.b	82				
						
	.dc.b	173				
	.dc.b	99				
	.dc.b	76				
						
	.dc.b	50				
						
	.dc.b	173				
	.dc.b	110				
	.dc.b	206				
						
	.dc.b	50				
						
	.dc.b	173				
	.dc.b	122				
	.dc.b	80				
						
	.dc.b	114				
						
	.dc.b	173				
	.dc.b	133				
	.dc.b	210				
						
	.dc.b	210				
						
	.dc.b	173				
	.dc.b	145				
	.dc.b	85				
						
	.dc.b	114				
						
	.dc.b	173				
	.dc.b	156				
	.dc.b	216				
						
	.dc.b	50				
						
	.dc.b	173				
	.dc.b	168				
	.dc.b	91				
						
	.dc.b	50				
						
	.dc.b	173				
	.dc.b	179				
	.dc.b	222				
						
	.dc.b	82				
						
	.dc.b	173				
	.dc.b	191				
	.dc.b	97				
						
	.dc.b	178				
						
	.dc.b	173				
	.dc.b	202				
	.dc.b	229				
						
	.dc.b	50				
						
	.dc.b	173				
	.dc.b	214				
	.dc.b	104				
						
	.dc.b	242				
						
	.dc.b	173				
	.dc.b	225				
	.dc.b	236				
						
	.dc.b	210				
						
	.dc.b	173				
	.dc.b	237				
	.dc.b	112				
						
	.dc.b	242				
						
	.dc.b	173				
	.dc.b	248				
	.dc.b	245				
						
	.dc.b	82				
						
	.dc.b	174				
	.dc.b	4				
	.dc.b	121				
						
	.dc.b	178				
						
	.dc.b	174				
	.dc.b	15				
	.dc.b	254				
						
	.dc.b	114				
						
	.dc.b	174				
	.dc.b	27				
	.dc.b	131				
						
	.dc.b	82				
						
	.dc.b	174				
	.dc.b	39				
	.dc.b	8				
						
	.dc.b	114				
						
	.dc.b	174				
	.dc.b	50				
	.dc.b	141				
						
	.dc.b	178				
						
	.dc.b	174				
	.dc.b	62				
	.dc.b	19				
						
	.dc.b	18				
						
	.dc.b	174				
	.dc.b	73				
	.dc.b	152				
						
	.dc.b	178				
						
	.dc.b	174				
	.dc.b	85				
	.dc.b	30				
						
	.dc.b	146				
						
	.dc.b	174				
	.dc.b	96				
	.dc.b	164				
						
	.dc.b	146				
						
	.dc.b	174				
	.dc.b	108				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	174				
	.dc.b	119				
	.dc.b	177				
						
	.dc.b	50				
						
	.dc.b	174				
	.dc.b	131				
	.dc.b	55				
						
	.dc.b	210				
						
	.dc.b	174				
	.dc.b	142				
	.dc.b	190				
						
	.dc.b	146				
						
	.dc.b	174				
	.dc.b	154				
	.dc.b	69				
						
	.dc.b	146				
						
	.dc.b	174				
	.dc.b	165				
	.dc.b	204				
						
	.dc.b	178				
						
	.dc.b	174				
	.dc.b	177				
	.dc.b	84				
						
	.dc.b	18				
						
	.dc.b	174				
	.dc.b	188				
	.dc.b	219				
						
	.dc.b	146				
						
	.dc.b	174				
	.dc.b	200				
	.dc.b	99				
						
	.dc.b	82				
						
	.dc.b	174				
	.dc.b	211				
	.dc.b	235				
						
	.dc.b	50				
						
	.dc.b	174				
	.dc.b	223				
	.dc.b	115				
						
	.dc.b	82				
						
	.dc.b	174				
	.dc.b	234				
	.dc.b	251				
						
	.dc.b	178				
						
	.dc.b	174				
	.dc.b	246				
	.dc.b	132				
						
	.dc.b	50				
						
	.dc.b	175				
	.dc.b	2				
	.dc.b	12				
						
	.dc.b	210				
						
	.dc.b	175				
	.dc.b	13				
	.dc.b	149				
						
	.dc.b	178				
						
	.dc.b	175				
	.dc.b	25				
	.dc.b	30				
						
	.dc.b	178				
						
	.dc.b	175				
	.dc.b	36				
	.dc.b	167				
						
	.dc.b	242				
						
	.dc.b	175				
	.dc.b	48				
	.dc.b	49				
						
	.dc.b	114				
						
	.dc.b	175				
	.dc.b	59				
	.dc.b	187				
						
	.dc.b	18				
						
	.dc.b	175				
	.dc.b	71				
	.dc.b	68				
						
	.dc.b	242				
						
	.dc.b	175				
	.dc.b	82				
	.dc.b	206				
						
	.dc.b	242				
						
	.dc.b	175				
	.dc.b	94				
	.dc.b	89				
						
	.dc.b	18				
						
	.dc.b	175				
	.dc.b	105				
	.dc.b	227				
						
	.dc.b	146				
						
	.dc.b	175				
	.dc.b	117				
	.dc.b	110				
						
	.dc.b	18				
						
	.dc.b	175				
	.dc.b	128				
	.dc.b	248				
						
	.dc.b	210				
						
	.dc.b	175				
	.dc.b	140				
	.dc.b	131				
						
	.dc.b	210				
						
	.dc.b	175				
	.dc.b	152				
	.dc.b	14				
						
	.dc.b	242				
						
	.dc.b	175				
	.dc.b	163				
	.dc.b	154				
						
	.dc.b	82				
						
	.dc.b	175				
	.dc.b	175				
	.dc.b	37				
						
	.dc.b	210				
						
	.dc.b	175				
	.dc.b	186				
	.dc.b	177				
						
	.dc.b	146				
						
	.dc.b	175				
	.dc.b	198				
	.dc.b	61				
						
	.dc.b	114				
						
	.dc.b	175				
	.dc.b	209				
	.dc.b	201				
						
	.dc.b	146				
						
	.dc.b	175				
	.dc.b	221				
	.dc.b	85				
						
	.dc.b	210				
						
	.dc.b	175				
	.dc.b	232				
	.dc.b	226				
						
	.dc.b	82				
						
	.dc.b	175				
	.dc.b	244				
	.dc.b	111				
						
	.dc.b	18				
						
	.dc.b	175				
	.dc.b	255				
	.dc.b	251				
						
	.dc.b	210				
						
	.dc.b	176				
	.dc.b	11				
	.dc.b	136				
						
	.dc.b	242				
						
	.dc.b	176				
	.dc.b	23				
	.dc.b	22				
						
	.dc.b	50				
						
	.dc.b	176				
	.dc.b	34				
	.dc.b	163				
						
	.dc.b	146				
						
	.dc.b	176				
	.dc.b	46				
	.dc.b	49				
						
	.dc.b	50				
						
	.dc.b	176				
	.dc.b	57				
	.dc.b	190				
						
	.dc.b	242				
						
	.dc.b	176				
	.dc.b	69				
	.dc.b	76				
						
	.dc.b	242				
						
	.dc.b	176				
	.dc.b	80				
	.dc.b	219				
						
	.dc.b	50				
						
	.dc.b	176				
	.dc.b	92				
	.dc.b	105				
						
	.dc.b	146				
						
	.dc.b	176				
	.dc.b	103				
	.dc.b	248				
						
	.dc.b	18				
						
	.dc.b	176				
	.dc.b	115				
	.dc.b	134				
						
	.dc.b	210				
						
	.dc.b	176				
	.dc.b	127				
	.dc.b	21				
						
	.dc.b	210				
						
	.dc.b	176				
	.dc.b	138				
	.dc.b	164				
						
	.dc.b	242				
						
	.dc.b	176				
	.dc.b	150				
	.dc.b	52				
						
	.dc.b	50				
						
	.dc.b	176				
	.dc.b	161				
	.dc.b	195				
						
	.dc.b	210				
						
	.dc.b	176				
	.dc.b	173				
	.dc.b	83				
						
	.dc.b	114				
						
	.dc.b	176				
	.dc.b	184				
	.dc.b	227				
						
	.dc.b	82				
						
	.dc.b	176				
	.dc.b	196				
	.dc.b	115				
						
	.dc.b	114				
						
	.dc.b	176				
	.dc.b	208				
	.dc.b	3				
						
	.dc.b	178				
						
	.dc.b	176				
	.dc.b	219				
	.dc.b	148				
						
	.dc.b	50				
						
	.dc.b	176				
	.dc.b	231				
	.dc.b	36				
						
	.dc.b	210				
						
	.dc.b	176				
	.dc.b	242				
	.dc.b	181				
						
	.dc.b	146				
						
	.dc.b	176				
	.dc.b	254				
	.dc.b	70				
						
	.dc.b	178				
						
	.dc.b	177				
	.dc.b	9				
	.dc.b	215				
						
	.dc.b	210				
						
	.dc.b	177				
	.dc.b	21				
	.dc.b	105				
						
	.dc.b	50				
						
	.dc.b	177				
	.dc.b	32				
	.dc.b	250				
						
	.dc.b	210				
						
	.dc.b	177				
	.dc.b	44				
	.dc.b	140				
						
	.dc.b	146				
						
	.dc.b	177				
	.dc.b	56				
	.dc.b	30				
						
	.dc.b	146				
						
	.dc.b	177				
	.dc.b	67				
	.dc.b	176				
						
	.dc.b	178				
						
	.dc.b	177				
	.dc.b	79				
	.dc.b	67				
						
	.dc.b	18				
						
	.dc.b	177				
	.dc.b	90				
	.dc.b	213				
						
	.dc.b	146				
						
	.dc.b	177				
	.dc.b	102				
	.dc.b	104				
						
	.dc.b	82				
						
	.dc.b	177				
	.dc.b	113				
	.dc.b	251				
						
	.dc.b	50				
						
	.dc.b	177				
	.dc.b	125				
	.dc.b	142				
						
	.dc.b	82				
						
	.dc.b	177				
	.dc.b	137				
	.dc.b	33				
						
	.dc.b	146				
						
	.dc.b	177				
	.dc.b	148				
	.dc.b	181				
						
	.dc.b	18				
						
	.dc.b	177				
	.dc.b	160				
	.dc.b	72				
						
	.dc.b	210				
						
	.dc.b	177				
	.dc.b	171				
	.dc.b	220				
						
	.dc.b	146				
						
	.dc.b	177				
	.dc.b	183				
	.dc.b	112				
						
	.dc.b	178				
						
	.dc.b	177				
	.dc.b	195				
	.dc.b	4				
						
	.dc.b	242				
						
	.dc.b	177				
	.dc.b	206				
	.dc.b	153				
						
	.dc.b	82				
						
	.dc.b	177				
	.dc.b	218				
	.dc.b	45				
						
	.dc.b	242				
						
	.dc.b	177				
	.dc.b	229				
	.dc.b	194				
						
	.dc.b	178				
						
	.dc.b	177				
	.dc.b	241				
	.dc.b	87				
						
	.dc.b	178				
						
	.dc.b	177				
	.dc.b	252				
	.dc.b	236				
						
	.dc.b	210				
						
	.dc.b	178				
	.dc.b	8				
	.dc.b	130				
						
	.dc.b	50				
						
	.dc.b	178				
	.dc.b	20				
	.dc.b	23				
						
	.dc.b	210				
						
	.dc.b	178				
	.dc.b	31				
	.dc.b	173				
						
	.dc.b	146				
						
	.dc.b	178				
	.dc.b	43				
	.dc.b	67				
						
	.dc.b	114				
						
	.dc.b	178				
	.dc.b	54				
	.dc.b	217				
						
	.dc.b	146				
						
	.dc.b	178				
	.dc.b	66				
	.dc.b	111				
						
	.dc.b	210				
						
	.dc.b	178				
	.dc.b	78				
	.dc.b	6				
						
	.dc.b	82				
						
	.dc.b	178				
	.dc.b	89				
	.dc.b	157				
						
	.dc.b	18				
						
	.dc.b	178				
	.dc.b	101				
	.dc.b	51				
						
	.dc.b	242				
						
	.dc.b	178				
	.dc.b	112				
	.dc.b	202				
						
	.dc.b	242				
						
	.dc.b	178				
	.dc.b	124				
	.dc.b	98				
						
	.dc.b	50				
						
	.dc.b	178				
	.dc.b	135				
	.dc.b	249				
						
	.dc.b	178				
						
	.dc.b	178				
	.dc.b	147				
	.dc.b	145				
						
	.dc.b	82				
						
	.dc.b	178				
	.dc.b	159				
	.dc.b	41				
						
	.dc.b	18				
						
	.dc.b	178				
	.dc.b	170				
	.dc.b	193				
						
	.dc.b	18				
						
	.dc.b	178				
	.dc.b	182				
	.dc.b	89				
						
	.dc.b	82				
						
	.dc.b	178				
	.dc.b	193				
	.dc.b	241				
						
	.dc.b	146				
						
	.dc.b	178				
	.dc.b	205				
	.dc.b	138				
						
	.dc.b	50				
						
	.dc.b	178				
	.dc.b	217				
	.dc.b	34				
						
	.dc.b	242				
						
	.dc.b	178				
	.dc.b	228				
	.dc.b	187				
						
	.dc.b	210				
						
	.dc.b	178				
	.dc.b	240				
	.dc.b	84				
						
	.dc.b	242				
						
	.dc.b	178				
	.dc.b	251				
	.dc.b	238				
						
	.dc.b	82				
						
	.dc.b	179				
	.dc.b	7				
	.dc.b	135				
						
	.dc.b	210				
						
	.dc.b	179				
	.dc.b	19				
	.dc.b	33				
						
	.dc.b	146				
						
	.dc.b	179				
	.dc.b	30				
	.dc.b	187				
						
	.dc.b	114				
						
	.dc.b	179				
	.dc.b	42				
	.dc.b	85				
						
	.dc.b	114				
						
	.dc.b	179				
	.dc.b	53				
	.dc.b	239				
						
	.dc.b	178				
						
	.dc.b	179				
	.dc.b	65				
	.dc.b	138				
						
	.dc.b	50				
						
	.dc.b	179				
	.dc.b	77				
	.dc.b	36				
						
	.dc.b	210				
						
	.dc.b	179				
	.dc.b	88				
	.dc.b	191				
						
	.dc.b	146				
						
	.dc.b	179				
	.dc.b	100				
	.dc.b	90				
						
	.dc.b	146				
						
	.dc.b	179				
	.dc.b	111				
	.dc.b	245				
						
	.dc.b	210				
						
	.dc.b	179				
	.dc.b	123				
	.dc.b	145				
						
	.dc.b	50				
						
	.dc.b	179				
	.dc.b	135				
	.dc.b	44				
						
	.dc.b	178				
						
	.dc.b	179				
	.dc.b	146				
	.dc.b	200				
						
	.dc.b	114				
						
	.dc.b	179				
	.dc.b	158				
	.dc.b	100				
						
	.dc.b	114				
						
	.dc.b	179				
	.dc.b	170				
	.dc.b	0				
						
	.dc.b	146				
						
	.dc.b	179				
	.dc.b	181				
	.dc.b	156				
						
	.dc.b	210				
						
	.dc.b	179				
	.dc.b	193				
	.dc.b	57				
						
	.dc.b	114				
						
	.dc.b	179				
	.dc.b	204				
	.dc.b	214				
						
	.dc.b	18				
						
	.dc.b	179				
	.dc.b	216				
	.dc.b	114				
						
	.dc.b	242				
						
	.dc.b	179				
	.dc.b	228				
	.dc.b	16				
						
	.dc.b	18				
						
	.dc.b	179				
	.dc.b	239				
	.dc.b	173				
						
	.dc.b	82				
						
	.dc.b	179				
	.dc.b	251				
	.dc.b	74				
						
	.dc.b	178				
						
	.dc.b	180				
	.dc.b	6				
	.dc.b	232				
						
	.dc.b	82				
						
	.dc.b	180				
	.dc.b	18				
	.dc.b	134				
						
	.dc.b	50				
						
	.dc.b	180				
	.dc.b	30				
	.dc.b	36				
						
	.dc.b	50				
						
	.dc.b	180				
	.dc.b	41				
	.dc.b	194				
						
	.dc.b	82				
						
	.dc.b	180				
	.dc.b	53				
	.dc.b	96				
						
	.dc.b	178				
						
	.dc.b	180				
	.dc.b	64				
	.dc.b	255				
						
	.dc.b	82				
						
	.dc.b	180				
	.dc.b	76				
	.dc.b	158				
						
	.dc.b	18				
						
	.dc.b	180				
	.dc.b	88				
	.dc.b	60				
						
	.dc.b	242				
						
	.dc.b	180				
	.dc.b	99				
	.dc.b	220				
						
	.dc.b	50				
						
	.dc.b	180				
	.dc.b	111				
	.dc.b	123				
						
	.dc.b	114				
						
	.dc.b	180				
	.dc.b	123				
	.dc.b	26				
						
	.dc.b	242				
						
	.dc.b	180				
	.dc.b	134				
	.dc.b	186				
						
	.dc.b	178				
						
	.dc.b	180				
	.dc.b	146				
	.dc.b	90				
						
	.dc.b	146				
						
	.dc.b	180				
	.dc.b	157				
	.dc.b	250				
						
	.dc.b	146				
						
	.dc.b	180				
	.dc.b	169				
	.dc.b	154				
						
	.dc.b	210				
						
	.dc.b	180				
	.dc.b	181				
	.dc.b	59				
						
	.dc.b	82				
						
	.dc.b	180				
	.dc.b	192				
	.dc.b	219				
						
	.dc.b	242				
						
	.dc.b	180				
	.dc.b	204				
	.dc.b	124				
						
	.dc.b	178				
						
	.dc.b	180				
	.dc.b	216				
	.dc.b	29				
						
	.dc.b	178				
						
	.dc.b	180				
	.dc.b	227				
	.dc.b	190				
						
	.dc.b	242				
						
	.dc.b	180				
	.dc.b	239				
	.dc.b	96				
						
	.dc.b	82				
						
	.dc.b	180				
	.dc.b	251				
	.dc.b	1				
						
	.dc.b	210				
						
	.dc.b	181				
	.dc.b	6				
	.dc.b	163				
						
	.dc.b	146				
						
	.dc.b	181				
	.dc.b	18				
	.dc.b	69				
						
	.dc.b	146				
						
	.dc.b	181				
	.dc.b	29				
	.dc.b	231				
						
	.dc.b	146				
						
	.dc.b	181				
	.dc.b	41				
	.dc.b	137				
						
	.dc.b	242				
						
	.dc.b	181				
	.dc.b	53				
	.dc.b	44				
						
	.dc.b	114				
						
	.dc.b	181				
	.dc.b	64				
	.dc.b	207				
						
	.dc.b	18				
						
	.dc.b	181				
	.dc.b	76				
	.dc.b	113				
						
	.dc.b	242				
						
	.dc.b	181				
	.dc.b	88				
	.dc.b	21				
						
	.dc.b	18				
						
	.dc.b	181				
	.dc.b	99				
	.dc.b	184				
						
	.dc.b	82				
						
	.dc.b	181				
	.dc.b	111				
	.dc.b	91				
						
	.dc.b	178				
						
	.dc.b	181				
	.dc.b	122				
	.dc.b	255				
						
	.dc.b	82				
						
	.dc.b	181				
	.dc.b	134				
	.dc.b	163				
						
	.dc.b	18				
						
	.dc.b	181				
	.dc.b	146				
	.dc.b	71				
						
	.dc.b	18				
						
	.dc.b	181				
	.dc.b	157				
	.dc.b	235				
						
	.dc.b	82				
						
	.dc.b	181				
	.dc.b	169				
	.dc.b	143				
						
	.dc.b	178				
						
	.dc.b	181				
	.dc.b	181				
	.dc.b	52				
						
	.dc.b	50				
						
	.dc.b	181				
	.dc.b	192				
	.dc.b	216				
						
	.dc.b	242				
						
	.dc.b	181				
	.dc.b	204				
	.dc.b	125				
						
	.dc.b	210				
						
	.dc.b	181				
	.dc.b	216				
	.dc.b	34				
						
	.dc.b	242				
						
	.dc.b	181				
	.dc.b	227				
	.dc.b	200				
						
	.dc.b	50				
						
	.dc.b	181				
	.dc.b	239				
	.dc.b	109				
						
	.dc.b	178				
						
	.dc.b	181				
	.dc.b	251				
	.dc.b	19				
						
	.dc.b	114				
						
	.dc.b	182				
	.dc.b	6				
	.dc.b	185				
						
	.dc.b	50				
						
	.dc.b	182				
	.dc.b	18				
	.dc.b	95				
						
	.dc.b	82				
						
	.dc.b	182				
	.dc.b	30				
	.dc.b	5				
						
	.dc.b	114				
						
	.dc.b	182				
	.dc.b	41				
	.dc.b	171				
						
	.dc.b	242				
						
	.dc.b	182				
	.dc.b	53				
	.dc.b	82				
						
	.dc.b	146				
						
	.dc.b	182				
	.dc.b	64				
	.dc.b	249				
						
	.dc.b	82				
						
	.dc.b	182				
	.dc.b	76				
	.dc.b	160				
						
	.dc.b	82				
						
	.dc.b	182				
	.dc.b	88				
	.dc.b	71				
						
	.dc.b	114				
						
	.dc.b	182				
	.dc.b	99				
	.dc.b	238				
						
	.dc.b	210				
						
	.dc.b	182				
	.dc.b	111				
	.dc.b	150				
						
	.dc.b	82				
						
	.dc.b	182				
	.dc.b	123				
	.dc.b	62				
						
	.dc.b	18				
						
	.dc.b	182				
	.dc.b	134				
	.dc.b	229				
						
	.dc.b	242				
						
	.dc.b	182				
	.dc.b	146				
	.dc.b	141				
						
	.dc.b	242				
						
	.dc.b	182				
	.dc.b	158				
	.dc.b	54				
						
	.dc.b	82				
						
	.dc.b	182				
	.dc.b	169				
	.dc.b	222				
						
	.dc.b	178				
						
	.dc.b	182				
	.dc.b	181				
	.dc.b	135				
						
	.dc.b	82				
						
	.dc.b	182				
	.dc.b	193				
	.dc.b	48				
						
	.dc.b	50				
						
	.dc.b	182				
	.dc.b	204				
	.dc.b	217				
						
	.dc.b	50				
						
	.dc.b	182				
	.dc.b	216				
	.dc.b	130				
						
	.dc.b	114				
						
	.dc.b	182				
	.dc.b	228				
	.dc.b	43				
						
	.dc.b	210				
						
	.dc.b	182				
	.dc.b	239				
	.dc.b	213				
						
	.dc.b	114				
						
	.dc.b	182				
	.dc.b	251				
	.dc.b	127				
						
	.dc.b	50				
						
	.dc.b	183				
	.dc.b	7				
	.dc.b	41				
						
	.dc.b	18				
						
	.dc.b	183				
	.dc.b	18				
	.dc.b	211				
						
	.dc.b	50				
						
	.dc.b	183				
	.dc.b	30				
	.dc.b	125				
						
	.dc.b	146				
						
	.dc.b	183				
	.dc.b	42				
	.dc.b	40				
						
	.dc.b	18				
						
	.dc.b	183				
	.dc.b	53				
	.dc.b	210				
						
	.dc.b	178				
						
	.dc.b	183				
	.dc.b	65				
	.dc.b	125				
						
	.dc.b	146				
						
	.dc.b	183				
	.dc.b	77				
	.dc.b	40				
						
	.dc.b	178				
						
	.dc.b	183				
	.dc.b	88				
	.dc.b	211				
						
	.dc.b	242				
						
	.dc.b	183				
	.dc.b	100				
	.dc.b	127				
						
	.dc.b	82				
						
	.dc.b	183				
	.dc.b	112				
	.dc.b	42				
						
	.dc.b	242				
						
	.dc.b	183				
	.dc.b	123				
	.dc.b	214				
						
	.dc.b	210				
						
	.dc.b	183				
	.dc.b	135				
	.dc.b	130				
						
	.dc.b	210				
						
	.dc.b	183				
	.dc.b	147				
	.dc.b	46				
						
	.dc.b	242				
						
	.dc.b	183				
	.dc.b	158				
	.dc.b	219				
						
	.dc.b	82				
						
	.dc.b	183				
	.dc.b	170				
	.dc.b	135				
						
	.dc.b	210				
						
	.dc.b	183				
	.dc.b	182				
	.dc.b	52				
						
	.dc.b	146				
						
	.dc.b	183				
	.dc.b	193				
	.dc.b	225				
						
	.dc.b	114				
						
	.dc.b	183				
	.dc.b	205				
	.dc.b	142				
						
	.dc.b	146				
						
	.dc.b	183				
	.dc.b	217				
	.dc.b	59				
						
	.dc.b	242				
						
	.dc.b	183				
	.dc.b	228				
	.dc.b	233				
						
	.dc.b	82				
						
	.dc.b	183				
	.dc.b	240				
	.dc.b	151				
						
	.dc.b	18				
						
	.dc.b	183				
	.dc.b	252				
	.dc.b	68				
						
	.dc.b	210				
						
	.dc.b	184				
	.dc.b	7				
	.dc.b	242				
						
	.dc.b	242				
						
	.dc.b	184				
	.dc.b	19				
	.dc.b	161				
						
	.dc.b	18				
						
	.dc.b	184				
	.dc.b	31				
	.dc.b	79				
						
	.dc.b	146				
						
	.dc.b	184				
	.dc.b	42				
	.dc.b	254				
						
	.dc.b	18				
						
	.dc.b	184				
	.dc.b	54				
	.dc.b	172				
						
	.dc.b	210				
						
	.dc.b	184				
	.dc.b	66				
	.dc.b	91				
						
	.dc.b	210				
						
	.dc.b	184				
	.dc.b	78				
	.dc.b	10				
						
	.dc.b	242				
						
	.dc.b	184				
	.dc.b	89				
	.dc.b	186				
						
	.dc.b	82				
						
	.dc.b	184				
	.dc.b	101				
	.dc.b	105				
						
	.dc.b	210				
						
	.dc.b	184				
	.dc.b	113				
	.dc.b	25				
						
	.dc.b	114				
						
	.dc.b	184				
	.dc.b	124				
	.dc.b	201				
						
	.dc.b	114				
						
	.dc.b	184				
	.dc.b	136				
	.dc.b	121				
						
	.dc.b	114				
						
	.dc.b	184				
	.dc.b	148				
	.dc.b	41				
						
	.dc.b	178				
						
	.dc.b	184				
	.dc.b	159				
	.dc.b	218				
						
	.dc.b	50				
						
	.dc.b	184				
	.dc.b	171				
	.dc.b	138				
						
	.dc.b	210				
						
	.dc.b	184				
	.dc.b	183				
	.dc.b	59				
						
	.dc.b	146				
						
	.dc.b	184				
	.dc.b	194				
	.dc.b	236				
						
	.dc.b	146				
						
	.dc.b	184				
	.dc.b	206				
	.dc.b	157				
						
	.dc.b	178				
						
	.dc.b	184				
	.dc.b	218				
	.dc.b	79				
						
	.dc.b	18				
						
	.dc.b	184				
	.dc.b	230				
	.dc.b	0				
						
	.dc.b	178				
						
	.dc.b	184				
	.dc.b	241				
	.dc.b	178				
						
	.dc.b	114				
						
	.dc.b	184				
	.dc.b	253				
	.dc.b	100				
						
	.dc.b	82				
						
	.dc.b	185				
	.dc.b	9				
	.dc.b	22				
						
	.dc.b	114				
						
	.dc.b	185				
	.dc.b	20				
	.dc.b	200				
						
	.dc.b	178				
						
	.dc.b	185				
	.dc.b	32				
	.dc.b	123				
						
	.dc.b	50				
						
	.dc.b	185				
	.dc.b	44				
	.dc.b	45				
						
	.dc.b	210				
						
	.dc.b	185				
	.dc.b	55				
	.dc.b	224				
						
	.dc.b	178				
						
	.dc.b	185				
	.dc.b	67				
	.dc.b	147				
						
	.dc.b	178				
						
	.dc.b	185				
	.dc.b	79				
	.dc.b	70				
						
	.dc.b	242				
						
	.dc.b	185				
	.dc.b	90				
	.dc.b	250				
						
	.dc.b	82				
						
	.dc.b	185				
	.dc.b	102				
	.dc.b	173				
						
	.dc.b	210				
						
	.dc.b	185				
	.dc.b	114				
	.dc.b	97				
						
	.dc.b	178				
						
	.dc.b	185				
	.dc.b	126				
	.dc.b	21				
						
	.dc.b	146				
						
	.dc.b	185				
	.dc.b	137				
	.dc.b	201				
						
	.dc.b	178				
						
	.dc.b	185				
	.dc.b	149				
	.dc.b	126				
						
	.dc.b	18				
						
	.dc.b	185				
	.dc.b	161				
	.dc.b	50				
						
	.dc.b	146				
						
	.dc.b	185				
	.dc.b	172				
	.dc.b	231				
						
	.dc.b	50				
						
	.dc.b	185				
	.dc.b	184				
	.dc.b	156				
						
	.dc.b	18				
						
	.dc.b	185				
	.dc.b	196				
	.dc.b	81				
						
	.dc.b	50				
						
	.dc.b	185				
	.dc.b	208				
	.dc.b	6				
						
	.dc.b	114				
						
	.dc.b	185				
	.dc.b	219				
	.dc.b	187				
						
	.dc.b	210				
						
	.dc.b	185				
	.dc.b	231				
	.dc.b	113				
						
	.dc.b	114				
						
	.dc.b	185				
	.dc.b	243				
	.dc.b	39				
						
	.dc.b	50				
						
	.dc.b	185				
	.dc.b	254				
	.dc.b	221				
						
	.dc.b	50				
						
	.dc.b	186				
	.dc.b	10				
	.dc.b	147				
						
	.dc.b	82				
						
	.dc.b	186				
	.dc.b	22				
	.dc.b	73				
						
	.dc.b	178				
						
	.dc.b	186				
	.dc.b	34				
	.dc.b	0				
						
	.dc.b	50				
						
	.dc.b	186				
	.dc.b	45				
	.dc.b	182				
						
	.dc.b	242				
						
	.dc.b	186				
	.dc.b	57				
	.dc.b	109				
						
	.dc.b	210				
						
	.dc.b	186				
	.dc.b	69				
	.dc.b	36				
						
	.dc.b	242				
						
	.dc.b	186				
	.dc.b	80				
	.dc.b	220				
						
	.dc.b	50				
						
	.dc.b	186				
	.dc.b	92				
	.dc.b	147				
						
	.dc.b	178				
						
	.dc.b	186				
	.dc.b	104				
	.dc.b	75				
						
	.dc.b	82				
						
	.dc.b	186				
	.dc.b	116				
	.dc.b	3				
						
	.dc.b	18				
						
	.dc.b	186				
	.dc.b	127				
	.dc.b	187				
						
	.dc.b	18				
						
	.dc.b	186				
	.dc.b	139				
	.dc.b	115				
						
	.dc.b	82				
						
	.dc.b	186				
	.dc.b	151				
	.dc.b	43				
						
	.dc.b	178				
						
	.dc.b	186				
	.dc.b	162				
	.dc.b	228				
						
	.dc.b	50				
						
	.dc.b	186				
	.dc.b	174				
	.dc.b	156				
						
	.dc.b	242				
						
	.dc.b	186				
	.dc.b	186				
	.dc.b	85				
						
	.dc.b	242				
						
	.dc.b	186				
	.dc.b	198				
	.dc.b	15				
						
	.dc.b	18				
						
	.dc.b	186				
	.dc.b	209				
	.dc.b	200				
						
	.dc.b	82				
						
	.dc.b	186				
	.dc.b	221				
	.dc.b	129				
						
	.dc.b	210				
						
	.dc.b	186				
	.dc.b	233				
	.dc.b	59				
						
	.dc.b	114				
						
	.dc.b	186				
	.dc.b	244				
	.dc.b	245				
						
	.dc.b	82				
						
	.dc.b	187				
	.dc.b	0				
	.dc.b	175				
						
	.dc.b	82				
						
	.dc.b	187				
	.dc.b	12				
	.dc.b	105				
						
	.dc.b	146				
						
	.dc.b	187				
	.dc.b	24				
	.dc.b	35				
						
	.dc.b	242				
						
	.dc.b	187				
	.dc.b	35				
	.dc.b	222				
						
	.dc.b	146				
						
	.dc.b	187				
	.dc.b	47				
	.dc.b	153				
						
	.dc.b	82				
						
	.dc.b	187				
	.dc.b	59				
	.dc.b	84				
						
	.dc.b	50				
						
	.dc.b	187				
	.dc.b	71				
	.dc.b	15				
						
	.dc.b	82				
						
	.dc.b	187				
	.dc.b	82				
	.dc.b	202				
						
	.dc.b	178				
						
	.dc.b	187				
	.dc.b	94				
	.dc.b	134				
						
	.dc.b	50				
						
	.dc.b	187				
	.dc.b	106				
	.dc.b	65				
						
	.dc.b	210				
						
	.dc.b	187				
	.dc.b	117				
	.dc.b	253				
						
	.dc.b	178				
						
	.dc.b	187				
	.dc.b	129				
	.dc.b	185				
						
	.dc.b	210				
						
	.dc.b	187				
	.dc.b	141				
	.dc.b	117				
						
	.dc.b	242				
						
	.dc.b	187				
	.dc.b	153				
	.dc.b	50				
						
	.dc.b	114				
						
	.dc.b	187				
	.dc.b	164				
	.dc.b	239				
						
	.dc.b	18				
						
	.dc.b	187				
	.dc.b	176				
	.dc.b	171				
						
	.dc.b	210				
						
	.dc.b	187				
	.dc.b	188				
	.dc.b	104				
						
	.dc.b	210				
						
	.dc.b	187				
	.dc.b	200				
	.dc.b	37				
						
	.dc.b	242				
						
	.dc.b	187				
	.dc.b	211				
	.dc.b	227				
						
	.dc.b	82				
						
	.dc.b	187				
	.dc.b	223				
	.dc.b	160				
						
	.dc.b	210				
						
	.dc.b	187				
	.dc.b	235				
	.dc.b	94				
						
	.dc.b	114				
						
	.dc.b	187				
	.dc.b	247				
	.dc.b	28				
						
	.dc.b	82				
						
	.dc.b	188				
	.dc.b	2				
	.dc.b	218				
						
	.dc.b	114				
						
	.dc.b	188				
	.dc.b	14				
	.dc.b	152				
						
	.dc.b	178				
						
	.dc.b	188				
	.dc.b	26				
	.dc.b	87				
						
	.dc.b	18				
						
	.dc.b	188				
	.dc.b	38				
	.dc.b	21				
						
	.dc.b	178				
						
	.dc.b	188				
	.dc.b	49				
	.dc.b	212				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	61				
	.dc.b	147				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	73				
	.dc.b	82				
						
	.dc.b	178				
						
	.dc.b	188				
	.dc.b	85				
	.dc.b	18				
						
	.dc.b	18				
						
	.dc.b	188				
	.dc.b	96				
	.dc.b	209				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	108				
	.dc.b	145				
						
	.dc.b	82				
						
	.dc.b	188				
	.dc.b	120				
	.dc.b	81				
						
	.dc.b	50				
						
	.dc.b	188				
	.dc.b	132				
	.dc.b	17				
						
	.dc.b	82				
						
	.dc.b	188				
	.dc.b	143				
	.dc.b	209				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	155				
	.dc.b	145				
						
	.dc.b	242				
						
	.dc.b	188				
	.dc.b	167				
	.dc.b	82				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	179				
	.dc.b	19				
						
	.dc.b	114				
						
	.dc.b	188				
	.dc.b	190				
	.dc.b	212				
						
	.dc.b	114				
						
	.dc.b	188				
	.dc.b	202				
	.dc.b	149				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	214				
	.dc.b	86				
						
	.dc.b	242				
						
	.dc.b	188				
	.dc.b	226				
	.dc.b	24				
						
	.dc.b	146				
						
	.dc.b	188				
	.dc.b	237				
	.dc.b	218				
						
	.dc.b	82				
						
	.dc.b	188				
	.dc.b	249				
	.dc.b	156				
						
	.dc.b	50				
						
	.dc.b	189				
	.dc.b	5				
	.dc.b	94				
						
	.dc.b	82				
						
	.dc.b	189				
	.dc.b	17				
	.dc.b	32				
						
	.dc.b	146				
						
	.dc.b	189				
	.dc.b	28				
	.dc.b	227				
						
	.dc.b	18				
						
	.dc.b	189				
	.dc.b	40				
	.dc.b	165				
						
	.dc.b	178				
						
	.dc.b	189				
	.dc.b	52				
	.dc.b	104				
						
	.dc.b	114				
						
	.dc.b	189				
	.dc.b	64				
	.dc.b	43				
						
	.dc.b	146				
						
	.dc.b	189				
	.dc.b	75				
	.dc.b	238				
						
	.dc.b	178				
						
	.dc.b	189				
	.dc.b	87				
	.dc.b	178				
						
	.dc.b	18				
						
	.dc.b	189				
	.dc.b	99				
	.dc.b	117				
						
	.dc.b	178				
						
	.dc.b	189				
	.dc.b	111				
	.dc.b	57				
						
	.dc.b	114				
						
	.dc.b	189				
	.dc.b	122				
	.dc.b	253				
						
	.dc.b	82				
						
	.dc.b	189				
	.dc.b	134				
	.dc.b	193				
						
	.dc.b	114				
						
	.dc.b	189				
	.dc.b	146				
	.dc.b	133				
						
	.dc.b	178				
						
	.dc.b	189				
	.dc.b	158				
	.dc.b	74				
						
	.dc.b	50				
						
	.dc.b	189				
	.dc.b	170				
	.dc.b	14				
						
	.dc.b	210				
						
	.dc.b	189				
	.dc.b	181				
	.dc.b	211				
						
	.dc.b	178				
						
	.dc.b	189				
	.dc.b	193				
	.dc.b	152				
						
	.dc.b	178				
						
	.dc.b	189				
	.dc.b	205				
	.dc.b	93				
						
	.dc.b	242				
						
	.dc.b	189				
	.dc.b	217				
	.dc.b	35				
						
	.dc.b	82				
						
	.dc.b	189				
	.dc.b	228				
	.dc.b	232				
						
	.dc.b	210				
						
	.dc.b	189				
	.dc.b	240				
	.dc.b	174				
						
	.dc.b	146				
						
	.dc.b	189				
	.dc.b	252				
	.dc.b	116				
						
	.dc.b	146				
						
	.dc.b	190				
	.dc.b	8				
	.dc.b	58				
						
	.dc.b	178				
						
	.dc.b	190				
	.dc.b	20				
	.dc.b	0				
						
	.dc.b	242				
						
	.dc.b	190				
	.dc.b	31				
	.dc.b	199				
						
	.dc.b	114				
						
	.dc.b	190				
	.dc.b	43				
	.dc.b	142				
						
	.dc.b	18				
						
	.dc.b	190				
	.dc.b	55				
	.dc.b	84				
						
	.dc.b	242				
						
	.dc.b	190				
	.dc.b	67				
	.dc.b	27				
						
	.dc.b	242				
						
	.dc.b	190				
	.dc.b	78				
	.dc.b	227				
						
	.dc.b	50				
						
	.dc.b	190				
	.dc.b	90				
	.dc.b	170				
						
	.dc.b	146				
						
	.dc.b	190				
	.dc.b	102				
	.dc.b	114				
						
	.dc.b	18				
						
	.dc.b	190				
	.dc.b	114				
	.dc.b	57				
						
	.dc.b	242				
						
	.dc.b	190				
	.dc.b	126				
	.dc.b	1				
						
	.dc.b	210				
						
	.dc.b	190				
	.dc.b	137				
	.dc.b	201				
						
	.dc.b	242				
						
	.dc.b	190				
	.dc.b	149				
	.dc.b	146				
						
	.dc.b	50				
						
	.dc.b	190				
	.dc.b	161				
	.dc.b	90				
						
	.dc.b	178				
						
	.dc.b	190				
	.dc.b	173				
	.dc.b	35				
						
	.dc.b	114				
						
	.dc.b	190				
	.dc.b	184				
	.dc.b	236				
						
	.dc.b	50				
						
	.dc.b	190				
	.dc.b	196				
	.dc.b	181				
						
	.dc.b	82				
						
	.dc.b	190				
	.dc.b	208				
	.dc.b	126				
						
	.dc.b	114				
						
	.dc.b	190				
	.dc.b	220				
	.dc.b	71				
						
	.dc.b	242				
						
	.dc.b	190				
	.dc.b	232				
	.dc.b	17				
						
	.dc.b	114				
						
	.dc.b	190				
	.dc.b	243				
	.dc.b	219				
						
	.dc.b	50				
						
	.dc.b	190				
	.dc.b	255				
	.dc.b	165				
						
	.dc.b	50				
						
	.dc.b	191				
	.dc.b	11				
	.dc.b	111				
						
	.dc.b	82				
						
	.dc.b	191				
	.dc.b	23				
	.dc.b	57				
						
	.dc.b	146				
						
	.dc.b	191				
	.dc.b	35				
	.dc.b	4				
						
	.dc.b	18				
						
	.dc.b	191				
	.dc.b	46				
	.dc.b	206				
						
	.dc.b	178				
						
	.dc.b	191				
	.dc.b	58				
	.dc.b	153				
						
	.dc.b	146				
						
	.dc.b	191				
	.dc.b	70				
	.dc.b	100				
						
	.dc.b	146				
						
	.dc.b	191				
	.dc.b	82				
	.dc.b	47				
						
	.dc.b	210				
						
	.dc.b	191				
	.dc.b	93				
	.dc.b	251				
						
	.dc.b	50				
						
	.dc.b	191				
	.dc.b	105				
	.dc.b	198				
						
	.dc.b	210				
						
	.dc.b	191				
	.dc.b	117				
	.dc.b	146				
						
	.dc.b	146				
						
	.dc.b	191				
	.dc.b	129				
	.dc.b	94				
						
	.dc.b	114				
						
	.dc.b	191				
	.dc.b	141				
	.dc.b	42				
						
	.dc.b	146				
						
	.dc.b	191				
	.dc.b	152				
	.dc.b	246				
						
	.dc.b	242				
						
	.dc.b	191				
	.dc.b	164				
	.dc.b	195				
						
	.dc.b	114				
						
	.dc.b	191				
	.dc.b	176				
	.dc.b	144				
						
	.dc.b	18				
						
	.dc.b	191				
	.dc.b	188				
	.dc.b	92				
						
	.dc.b	242				
						
	.dc.b	191				
	.dc.b	200				
	.dc.b	41				
						
	.dc.b	242				
						
	.dc.b	191				
	.dc.b	211				
	.dc.b	247				
						
	.dc.b	50				
						
	.dc.b	191				
	.dc.b	223				
	.dc.b	196				
						
	.dc.b	146				
						
	.dc.b	191				
	.dc.b	235				
	.dc.b	146				
						
	.dc.b	50				
						
	.dc.b	191				
	.dc.b	247				
	.dc.b	95				
						
	.dc.b	242				
						
	.dc.b	192				
	.dc.b	3				
	.dc.b	45				
						
	.dc.b	210				
						
	.dc.b	192				
	.dc.b	14				
	.dc.b	251				
						
	.dc.b	242				
						
	.dc.b	192				
	.dc.b	26				
	.dc.b	202				
						
	.dc.b	50				
						
	.dc.b	192				
	.dc.b	38				
	.dc.b	152				
						
	.dc.b	178				
						
	.dc.b	192				
	.dc.b	50				
	.dc.b	103				
						
	.dc.b	114				
						
	.dc.b	192				
	.dc.b	62				
	.dc.b	54				
						
	.dc.b	50				
						
	.dc.b	192				
	.dc.b	74				
	.dc.b	5				
						
	.dc.b	82				
						
	.dc.b	192				
	.dc.b	85				
	.dc.b	212				
						
	.dc.b	114				
						
	.dc.b	192				
	.dc.b	97				
	.dc.b	163				
						
	.dc.b	210				
						
	.dc.b	192				
	.dc.b	109				
	.dc.b	115				
						
	.dc.b	114				
						
	.dc.b	192				
	.dc.b	121				
	.dc.b	67				
						
	.dc.b	50				
						
	.dc.b	192				
	.dc.b	133				
	.dc.b	19				
						
	.dc.b	18				
						
	.dc.b	192				
	.dc.b	144				
	.dc.b	227				
						
	.dc.b	50				
						
	.dc.b	192				
	.dc.b	156				
	.dc.b	179				
						
	.dc.b	146				
						
	.dc.b	192				
	.dc.b	168				
	.dc.b	131				
						
	.dc.b	242				
						
	.dc.b	192				
	.dc.b	180				
	.dc.b	84				
						
	.dc.b	178				
						
	.dc.b	192				
	.dc.b	192				
	.dc.b	37				
						
	.dc.b	114				
						
	.dc.b	192				
	.dc.b	203				
	.dc.b	246				
						
	.dc.b	146				
						
	.dc.b	192				
	.dc.b	215				
	.dc.b	199				
						
	.dc.b	178				
						
	.dc.b	192				
	.dc.b	227				
	.dc.b	153				
						
	.dc.b	18				
						
	.dc.b	192				
	.dc.b	239				
	.dc.b	106				
						
	.dc.b	178				
						
	.dc.b	192				
	.dc.b	251				
	.dc.b	60				
						
	.dc.b	114				
						
	.dc.b	193				
	.dc.b	7				
	.dc.b	14				
						
	.dc.b	82				
						
	.dc.b	193				
	.dc.b	18				
	.dc.b	224				
						
	.dc.b	114				
						
	.dc.b	193				
	.dc.b	30				
	.dc.b	178				
						
	.dc.b	178				
						
	.dc.b	193				
	.dc.b	42				
	.dc.b	133				
						
	.dc.b	50				
						
	.dc.b	193				
	.dc.b	54				
	.dc.b	87				
						
	.dc.b	210				
						
	.dc.b	193				
	.dc.b	66				
	.dc.b	42				
						
	.dc.b	178				
						
	.dc.b	193				
	.dc.b	77				
	.dc.b	253				
						
	.dc.b	178				
						
	.dc.b	193				
	.dc.b	89				
	.dc.b	208				
						
	.dc.b	210				
						
	.dc.b	193				
	.dc.b	101				
	.dc.b	164				
						
	.dc.b	50				
						
	.dc.b	193				
	.dc.b	113				
	.dc.b	119				
						
	.dc.b	210				
						
	.dc.b	193				
	.dc.b	125				
	.dc.b	75				
						
	.dc.b	146				
						
	.dc.b	193				
	.dc.b	137				
	.dc.b	31				
						
	.dc.b	114				
						
	.dc.b	193				
	.dc.b	148				
	.dc.b	243				
						
	.dc.b	146				
						
	.dc.b	193				
	.dc.b	160				
	.dc.b	199				
						
	.dc.b	210				
						
	.dc.b	193				
	.dc.b	172				
	.dc.b	156				
						
	.dc.b	50				
						
	.dc.b	193				
	.dc.b	184				
	.dc.b	112				
						
	.dc.b	242				
						
	.dc.b	193				
	.dc.b	196				
	.dc.b	69				
						
	.dc.b	178				
						
	.dc.b	193				
	.dc.b	208				
	.dc.b	26				
						
	.dc.b	178				
						
	.dc.b	193				
	.dc.b	219				
	.dc.b	239				
						
	.dc.b	242				
						
	.dc.b	193				
	.dc.b	231				
	.dc.b	197				
						
	.dc.b	50				
						
	.dc.b	193				
	.dc.b	243				
	.dc.b	154				
						
	.dc.b	210				
						
	.dc.b	193				
	.dc.b	255				
	.dc.b	112				
						
	.dc.b	114				
						
	.dc.b	194				
	.dc.b	11				
	.dc.b	70				
						
	.dc.b	114				
						
	.dc.b	194				
	.dc.b	23				
	.dc.b	28				
						
	.dc.b	114				
						
	.dc.b	194				
	.dc.b	34				
	.dc.b	242				
						
	.dc.b	178				
						
	.dc.b	194				
	.dc.b	46				
	.dc.b	201				
						
	.dc.b	50				
						
	.dc.b	194				
	.dc.b	58				
	.dc.b	159				
						
	.dc.b	210				
						
	.dc.b	194				
	.dc.b	70				
	.dc.b	118				
						
	.dc.b	146				
						
	.dc.b	194				
	.dc.b	82				
	.dc.b	77				
						
	.dc.b	146				
						
	.dc.b	194				
	.dc.b	94				
	.dc.b	36				
						
	.dc.b	178				
						
	.dc.b	194				
	.dc.b	105				
	.dc.b	252				
						
	.dc.b	18				
						
	.dc.b	194				
	.dc.b	117				
	.dc.b	211				
						
	.dc.b	146				
						
	.dc.b	194				
	.dc.b	129				
	.dc.b	171				
						
	.dc.b	82				
						
	.dc.b	194				
	.dc.b	141				
	.dc.b	131				
						
	.dc.b	50				
						
	.dc.b	194				
	.dc.b	153				
	.dc.b	91				
						
	.dc.b	82				
						
	.dc.b	194				
	.dc.b	165				
	.dc.b	51				
						
	.dc.b	146				
						
	.dc.b	194				
	.dc.b	177				
	.dc.b	11				
						
	.dc.b	242				
						
	.dc.b	194				
	.dc.b	188				
	.dc.b	228				
						
	.dc.b	146				
						
	.dc.b	194				
	.dc.b	200				
	.dc.b	189				
						
	.dc.b	82				
						
	.dc.b	194				
	.dc.b	212				
	.dc.b	150				
						
	.dc.b	82				
						
	.dc.b	194				
	.dc.b	224				
	.dc.b	111				
						
	.dc.b	114				
						
	.dc.b	194				
	.dc.b	236				
	.dc.b	72				
						
	.dc.b	210				
						
	.dc.b	194				
	.dc.b	248				
	.dc.b	34				
						
	.dc.b	82				
						
	.dc.b	195				
	.dc.b	3				
	.dc.b	251				
						
	.dc.b	242				
						
	.dc.b	195				
	.dc.b	15				
	.dc.b	213				
						
	.dc.b	210				
						
	.dc.b	195				
	.dc.b	27				
	.dc.b	175				
						
	.dc.b	210				
						
	.dc.b	195				
	.dc.b	39				
	.dc.b	138				
						
	.dc.b	18				
						
	.dc.b	195				
	.dc.b	51				
	.dc.b	100				
						
	.dc.b	146				
						
	.dc.b	195				
	.dc.b	63				
	.dc.b	63				
						
	.dc.b	18				
						
	.dc.b	195				
	.dc.b	75				
	.dc.b	25				
						
	.dc.b	210				
						
	.dc.b	195				
	.dc.b	86				
	.dc.b	244				
						
	.dc.b	210				
						
	.dc.b	195				
	.dc.b	98				
	.dc.b	207				
						
	.dc.b	242				
						
	.dc.b	195				
	.dc.b	110				
	.dc.b	171				
						
	.dc.b	50				
						
	.dc.b	195				
	.dc.b	122				
	.dc.b	134				
						
	.dc.b	178				
						
	.dc.b	195				
	.dc.b	134				
	.dc.b	98				
						
	.dc.b	114				
						
	.dc.b	195				
	.dc.b	146				
	.dc.b	62				
						
	.dc.b	50				
						
	.dc.b	195				
	.dc.b	158				
	.dc.b	26				
						
	.dc.b	82				
						
	.dc.b	195				
	.dc.b	169				
	.dc.b	246				
						
	.dc.b	114				
						
	.dc.b	195				
	.dc.b	181				
	.dc.b	210				
						
	.dc.b	210				
						
	.dc.b	195				
	.dc.b	193				
	.dc.b	175				
						
	.dc.b	114				
						
	.dc.b	195				
	.dc.b	205				
	.dc.b	140				
						
	.dc.b	50				
						
	.dc.b	195				
	.dc.b	217				
	.dc.b	105				
						
	.dc.b	18				
						
	.dc.b	195				
	.dc.b	229				
	.dc.b	70				
						
	.dc.b	50				
						
	.dc.b	195				
	.dc.b	241				
	.dc.b	35				
						
	.dc.b	114				
						
	.dc.b	195				
	.dc.b	253				
	.dc.b	0				
						
	.dc.b	242				
						
	.dc.b	196				
	.dc.b	8				
	.dc.b	222				
						
	.dc.b	146				
						
	.dc.b	196				
	.dc.b	20				
	.dc.b	188				
						
	.dc.b	114				
						
	.dc.b	196				
	.dc.b	32				
	.dc.b	154				
						
	.dc.b	114				
						
	.dc.b	196				
	.dc.b	44				
	.dc.b	120				
						
	.dc.b	146				
						
	.dc.b	196				
	.dc.b	56				
	.dc.b	86				
						
	.dc.b	242				
						
	.dc.b	196				
	.dc.b	68				
	.dc.b	53				
						
	.dc.b	114				
						
	.dc.b	196				
	.dc.b	80				
	.dc.b	20				
						
	.dc.b	50				
						
	.dc.b	196				
	.dc.b	91				
	.dc.b	243				
						
	.dc.b	18				
						
	.dc.b	196				
	.dc.b	103				
	.dc.b	210				
						
	.dc.b	50				
						
	.dc.b	196				
	.dc.b	115				
	.dc.b	177				
						
	.dc.b	114				
						
	.dc.b	196				
	.dc.b	127				
	.dc.b	144				
						
	.dc.b	210				
						
	.dc.b	196				
	.dc.b	139				
	.dc.b	112				
						
	.dc.b	114				
						
	.dc.b	196				
	.dc.b	151				
	.dc.b	80				
						
	.dc.b	82				
						
	.dc.b	196				
	.dc.b	163				
	.dc.b	48				
						
	.dc.b	50				
						
	.dc.b	196				
	.dc.b	175				
	.dc.b	16				
						
	.dc.b	114				
						
	.dc.b	196				
	.dc.b	186				
	.dc.b	240				
						
	.dc.b	178				
						
	.dc.b	196				
	.dc.b	198				
	.dc.b	209				
						
	.dc.b	50				
						
	.dc.b	196				
	.dc.b	210				
	.dc.b	177				
						
	.dc.b	242				
						
	.dc.b	196				
	.dc.b	222				
	.dc.b	146				
						
	.dc.b	210				
						
	.dc.b	196				
	.dc.b	234				
	.dc.b	115				
						
	.dc.b	210				
						
	.dc.b	196				
	.dc.b	246				
	.dc.b	85				
						
	.dc.b	18				
						
	.dc.b	197				
	.dc.b	2				
	.dc.b	54				
						
	.dc.b	114				
						
	.dc.b	197				
	.dc.b	14				
	.dc.b	24				
						
	.dc.b	18				
						
	.dc.b	197				
	.dc.b	25				
	.dc.b	249				
						
	.dc.b	210				
						
	.dc.b	197				
	.dc.b	37				
	.dc.b	219				
						
	.dc.b	210				
						
	.dc.b	197				
	.dc.b	49				
	.dc.b	189				
						
	.dc.b	242				
						
	.dc.b	197				
	.dc.b	61				
	.dc.b	160				
						
	.dc.b	50				
						
	.dc.b	197				
	.dc.b	73				
	.dc.b	130				
						
	.dc.b	178				
						
	.dc.b	197				
	.dc.b	85				
	.dc.b	101				
						
	.dc.b	82				
						
	.dc.b	197				
	.dc.b	97				
	.dc.b	72				
						
	.dc.b	50				
						
	.dc.b	197				
	.dc.b	109				
	.dc.b	43				
						
	.dc.b	50				
						
	.dc.b	197				
	.dc.b	121				
	.dc.b	14				
						
	.dc.b	114				
						
	.dc.b	197				
	.dc.b	132				
	.dc.b	241				
						
	.dc.b	210				
						
	.dc.b	197				
	.dc.b	144				
	.dc.b	213				
						
	.dc.b	82				
						
	.dc.b	197				
	.dc.b	156				
	.dc.b	185				
						
	.dc.b	18				
						
	.dc.b	197				
	.dc.b	168				
	.dc.b	157				
						
	.dc.b	18				
						
	.dc.b	197				
	.dc.b	180				
	.dc.b	129				
						
	.dc.b	18				
						
	.dc.b	197				
	.dc.b	192				
	.dc.b	101				
						
	.dc.b	82				
						
	.dc.b	197				
	.dc.b	204				
	.dc.b	73				
						
	.dc.b	210				
						
	.dc.b	197				
	.dc.b	216				
	.dc.b	46				
						
	.dc.b	114				
						
	.dc.b	197				
	.dc.b	228				
	.dc.b	19				
						
	.dc.b	82				
						
	.dc.b	197				
	.dc.b	239				
	.dc.b	248				
						
	.dc.b	50				
						
	.dc.b	197				
	.dc.b	251				
	.dc.b	221				
						
	.dc.b	114				
						
	.dc.b	198				
	.dc.b	7				
	.dc.b	194				
						
	.dc.b	210				
						
	.dc.b	198				
	.dc.b	19				
	.dc.b	168				
						
	.dc.b	82				
						
	.dc.b	198				
	.dc.b	31				
	.dc.b	141				
						
	.dc.b	242				
						
	.dc.b	198				
	.dc.b	43				
	.dc.b	115				
						
	.dc.b	210				
						
	.dc.b	198				
	.dc.b	55				
	.dc.b	89				
						
	.dc.b	242				
						
	.dc.b	198				
	.dc.b	67				
	.dc.b	64				
						
	.dc.b	50				
						
	.dc.b	198				
	.dc.b	79				
	.dc.b	38				
						
	.dc.b	146				
						
	.dc.b	198				
	.dc.b	91				
	.dc.b	13				
						
	.dc.b	50				
						
	.dc.b	198				
	.dc.b	102				
	.dc.b	243				
						
	.dc.b	242				
						
	.dc.b	198				
	.dc.b	114				
	.dc.b	218				
						
	.dc.b	242				
						
	.dc.b	198				
	.dc.b	126				
	.dc.b	194				
						
	.dc.b	18				
						
	.dc.b	198				
	.dc.b	138				
	.dc.b	169				
						
	.dc.b	82				
						
	.dc.b	198				
	.dc.b	150				
	.dc.b	144				
						
	.dc.b	210				
						
	.dc.b	198				
	.dc.b	162				
	.dc.b	120				
						
	.dc.b	114				
						
	.dc.b	198				
	.dc.b	174				
	.dc.b	96				
						
	.dc.b	82				
						
	.dc.b	198				
	.dc.b	186				
	.dc.b	72				
						
	.dc.b	82				
						
	.dc.b	198				
	.dc.b	198				
	.dc.b	48				
						
	.dc.b	146				
						
	.dc.b	198				
	.dc.b	210				
	.dc.b	24				
						
	.dc.b	242				
						
	.dc.b	198				
	.dc.b	222				
	.dc.b	1				
						
	.dc.b	114				
						
	.dc.b	198				
	.dc.b	233				
	.dc.b	234				
						
	.dc.b	50				
						
	.dc.b	198				
	.dc.b	245				
	.dc.b	211				
						
	.dc.b	50				
						
	.dc.b	199				
	.dc.b	1				
	.dc.b	188				
						
	.dc.b	50				
						
	.dc.b	199				
	.dc.b	13				
	.dc.b	165				
						
	.dc.b	114				
						
	.dc.b	199				
	.dc.b	25				
	.dc.b	142				
						
	.dc.b	242				
						
	.dc.b	199				
	.dc.b	37				
	.dc.b	120				
						
	.dc.b	146				
						
	.dc.b	199				
	.dc.b	49				
	.dc.b	98				
						
	.dc.b	82				
						
	.dc.b	199				
	.dc.b	61				
	.dc.b	76				
						
	.dc.b	82				
						
	.dc.b	199				
	.dc.b	73				
	.dc.b	54				
						
	.dc.b	146				
						
	.dc.b	199				
	.dc.b	85				
	.dc.b	32				
						
	.dc.b	210				
						
	.dc.b	199				
	.dc.b	97				
	.dc.b	11				
						
	.dc.b	82				
						
	.dc.b	199				
	.dc.b	108				
	.dc.b	246				
						
	.dc.b	18				
						
	.dc.b	199				
	.dc.b	120				
	.dc.b	224				
						
	.dc.b	242				
						
	.dc.b	199				
	.dc.b	132				
	.dc.b	203				
						
	.dc.b	242				
						
	.dc.b	199				
	.dc.b	144				
	.dc.b	183				
						
	.dc.b	50				
						
	.dc.b	199				
	.dc.b	156				
	.dc.b	162				
						
	.dc.b	146				
						
	.dc.b	199				
	.dc.b	168				
	.dc.b	142				
						
	.dc.b	50				
						
	.dc.b	199				
	.dc.b	180				
	.dc.b	121				
						
	.dc.b	242				
						
	.dc.b	199				
	.dc.b	192				
	.dc.b	101				
						
	.dc.b	242				
						
	.dc.b	199				
	.dc.b	204				
	.dc.b	82				
						
	.dc.b	18				
						
	.dc.b	199				
	.dc.b	216				
	.dc.b	62				
						
	.dc.b	82				
						
	.dc.b	199				
	.dc.b	228				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	199				
	.dc.b	240				
	.dc.b	23				
						
	.dc.b	114				
						
	.dc.b	199				
	.dc.b	252				
	.dc.b	4				
						
	.dc.b	82				
						
	.dc.b	200				
	.dc.b	7				
	.dc.b	241				
						
	.dc.b	82				
						
	.dc.b	200				
	.dc.b	19				
	.dc.b	222				
						
	.dc.b	114				
						
	.dc.b	200				
	.dc.b	31				
	.dc.b	203				
						
	.dc.b	210				
						
	.dc.b	200				
	.dc.b	43				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	200				
	.dc.b	55				
	.dc.b	167				
						
	.dc.b	18				
						
	.dc.b	200				
	.dc.b	67				
	.dc.b	148				
						
	.dc.b	242				
						
	.dc.b	200				
	.dc.b	79				
	.dc.b	131				
						
	.dc.b	18				
						
	.dc.b	200				
	.dc.b	91				
	.dc.b	113				
						
	.dc.b	82				
						
	.dc.b	200				
	.dc.b	103				
	.dc.b	95				
						
	.dc.b	178				
						
	.dc.b	200				
	.dc.b	115				
	.dc.b	78				
						
	.dc.b	82				
						
	.dc.b	200				
	.dc.b	127				
	.dc.b	61				
						
	.dc.b	50				
						
	.dc.b	200				
	.dc.b	139				
	.dc.b	44				
						
	.dc.b	18				
						
	.dc.b	200				
	.dc.b	151				
	.dc.b	27				
						
	.dc.b	50				
						
	.dc.b	200				
	.dc.b	163				
	.dc.b	10				
						
	.dc.b	146				
						
	.dc.b	200				
	.dc.b	174				
	.dc.b	250				
						
	.dc.b	18				
						
	.dc.b	200				
	.dc.b	186				
	.dc.b	233				
						
	.dc.b	178				
						
	.dc.b	200				
	.dc.b	198				
	.dc.b	217				
						
	.dc.b	146				
						
	.dc.b	200				
	.dc.b	210				
	.dc.b	201				
						
	.dc.b	146				
						
	.dc.b	200				
	.dc.b	222				
	.dc.b	185				
						
	.dc.b	210				
						
	.dc.b	200				
	.dc.b	234				
	.dc.b	170				
						
	.dc.b	50				
						
	.dc.b	200				
	.dc.b	246				
	.dc.b	154				
						
	.dc.b	178				
						
	.dc.b	201				
	.dc.b	2				
	.dc.b	139				
						
	.dc.b	114				
						
	.dc.b	201				
	.dc.b	14				
	.dc.b	124				
						
	.dc.b	114				
						
	.dc.b	201				
	.dc.b	26				
	.dc.b	109				
						
	.dc.b	114				
						
	.dc.b	201				
	.dc.b	38				
	.dc.b	94				
						
	.dc.b	210				
						
	.dc.b	201				
	.dc.b	50				
	.dc.b	80				
						
	.dc.b	50				
						
	.dc.b	201				
	.dc.b	62				
	.dc.b	65				
						
	.dc.b	210				
						
	.dc.b	201				
	.dc.b	74				
	.dc.b	51				
						
	.dc.b	146				
						
	.dc.b	201				
	.dc.b	86				
	.dc.b	37				
						
	.dc.b	146				
						
	.dc.b	201				
	.dc.b	98				
	.dc.b	23				
						
	.dc.b	210				
						
	.dc.b	201				
	.dc.b	110				
	.dc.b	10				
						
	.dc.b	18				
						
	.dc.b	201				
	.dc.b	121				
	.dc.b	252				
						
	.dc.b	146				
						
	.dc.b	201				
	.dc.b	133				
	.dc.b	239				
						
	.dc.b	82				
						
	.dc.b	201				
	.dc.b	145				
	.dc.b	226				
						
	.dc.b	50				
						
	.dc.b	201				
	.dc.b	157				
	.dc.b	213				
						
	.dc.b	50				
						
	.dc.b	201				
	.dc.b	169				
	.dc.b	200				
						
	.dc.b	114				
						
	.dc.b	201				
	.dc.b	181				
	.dc.b	187				
						
	.dc.b	210				
						
	.dc.b	201				
	.dc.b	193				
	.dc.b	175				
						
	.dc.b	82				
						
	.dc.b	201				
	.dc.b	205				
	.dc.b	163				
						
	.dc.b	18				
						
	.dc.b	201				
	.dc.b	217				
	.dc.b	151				
						
	.dc.b	18				
						
	.dc.b	201				
	.dc.b	229				
	.dc.b	139				
						
	.dc.b	50				
						
	.dc.b	201				
	.dc.b	241				
	.dc.b	127				
						
	.dc.b	114				
						
	.dc.b	201				
	.dc.b	253				
	.dc.b	115				
						
	.dc.b	210				
						
	.dc.b	202				
	.dc.b	9				
	.dc.b	104				
						
	.dc.b	146				
						
	.dc.b	202				
	.dc.b	21				
	.dc.b	93				
						
	.dc.b	82				
						
	.dc.b	202				
	.dc.b	33				
	.dc.b	82				
						
	.dc.b	82				
						
	.dc.b	202				
	.dc.b	45				
	.dc.b	71				
						
	.dc.b	114				
						
	.dc.b	202				
	.dc.b	57				
	.dc.b	60				
						
	.dc.b	210				
						
	.dc.b	202				
	.dc.b	69				
	.dc.b	50				
						
	.dc.b	82				
						
	.dc.b	202				
	.dc.b	81				
	.dc.b	40				
						
	.dc.b	18				
						
	.dc.b	202				
	.dc.b	93				
	.dc.b	29				
						
	.dc.b	242				
						
	.dc.b	202				
	.dc.b	105				
	.dc.b	19				
						
	.dc.b	242				
						
	.dc.b	202				
	.dc.b	117				
	.dc.b	10				
						
	.dc.b	50				
						
	.dc.b	202				
	.dc.b	129				
	.dc.b	0				
						
	.dc.b	146				
						
	.dc.b	202				
	.dc.b	140				
	.dc.b	247				
						
	.dc.b	50				
						
	.dc.b	202				
	.dc.b	152				
	.dc.b	237				
						
	.dc.b	242				
						
	.dc.b	202				
	.dc.b	164				
	.dc.b	228				
						
	.dc.b	210				
						
	.dc.b	202				
	.dc.b	176				
	.dc.b	219				
						
	.dc.b	242				
						
	.dc.b	202				
	.dc.b	188				
	.dc.b	211				
						
	.dc.b	50				
						
	.dc.b	202				
	.dc.b	200				
	.dc.b	202				
						
	.dc.b	178				
						
	.dc.b	202				
	.dc.b	212				
	.dc.b	194				
						
	.dc.b	82				
						
	.dc.b	202				
	.dc.b	224				
	.dc.b	186				
						
	.dc.b	18				
						
	.dc.b	202				
	.dc.b	236				
	.dc.b	178				
						
	.dc.b	18				
						
	.dc.b	202				
	.dc.b	248				
	.dc.b	170				
						
	.dc.b	82				
						
	.dc.b	203				
	.dc.b	4				
	.dc.b	162				
						
	.dc.b	146				
						
	.dc.b	203				
	.dc.b	16				
	.dc.b	155				
						
	.dc.b	50				
						
	.dc.b	203				
	.dc.b	28				
	.dc.b	147				
						
	.dc.b	210				
						
	.dc.b	203				
	.dc.b	40				
	.dc.b	140				
						
	.dc.b	178				
						
	.dc.b	203				
	.dc.b	52				
	.dc.b	133				
						
	.dc.b	210				
						
	.dc.b	203				
	.dc.b	64				
	.dc.b	126				
						
	.dc.b	242				
						
	.dc.b	203				
	.dc.b	76				
	.dc.b	120				
						
	.dc.b	114				
						
	.dc.b	203				
	.dc.b	88				
	.dc.b	113				
						
	.dc.b	242				
						
	.dc.b	203				
	.dc.b	100				
	.dc.b	107				
						
	.dc.b	178				
						
	.dc.b	203				
	.dc.b	112				
	.dc.b	101				
						
	.dc.b	178				
						
	.dc.b	203				
	.dc.b	124				
	.dc.b	95				
						
	.dc.b	210				
						
	.dc.b	203				
	.dc.b	136				
	.dc.b	90				
						
	.dc.b	18				
						
	.dc.b	203				
	.dc.b	148				
	.dc.b	84				
						
	.dc.b	114				
						
	.dc.b	203				
	.dc.b	160				
	.dc.b	79				
						
	.dc.b	50				
						
	.dc.b	203				
	.dc.b	172				
	.dc.b	73				
						
	.dc.b	242				
						
	.dc.b	203				
	.dc.b	184				
	.dc.b	68				
						
	.dc.b	242				
						
	.dc.b	203				
	.dc.b	196				
	.dc.b	64				
						
	.dc.b	18				
						
	.dc.b	203				
	.dc.b	208				
	.dc.b	59				
						
	.dc.b	114				
						
	.dc.b	203				
	.dc.b	220				
	.dc.b	54				
						
	.dc.b	242				
						
	.dc.b	203				
	.dc.b	232				
	.dc.b	50				
						
	.dc.b	178				
						
	.dc.b	203				
	.dc.b	244				
	.dc.b	46				
						
	.dc.b	146				
						
	.dc.b	204				
	.dc.b	0				
	.dc.b	42				
						
	.dc.b	146				
						
	.dc.b	204				
	.dc.b	12				
	.dc.b	38				
						
	.dc.b	210				
						
	.dc.b	204				
	.dc.b	24				
	.dc.b	35				
						
	.dc.b	50				
						
	.dc.b	204				
	.dc.b	36				
	.dc.b	31				
						
	.dc.b	178				
						
	.dc.b	204				
	.dc.b	48				
	.dc.b	28				
						
	.dc.b	114				
						
	.dc.b	204				
	.dc.b	60				
	.dc.b	25				
						
	.dc.b	114				
						
	.dc.b	204				
	.dc.b	72				
	.dc.b	22				
						
	.dc.b	146				
						
	.dc.b	204				
	.dc.b	84				
	.dc.b	19				
						
	.dc.b	210				
						
	.dc.b	204				
	.dc.b	96				
	.dc.b	17				
						
	.dc.b	50				
						
	.dc.b	204				
	.dc.b	108				
	.dc.b	14				
						
	.dc.b	242				
						
	.dc.b	204				
	.dc.b	120				
	.dc.b	12				
						
	.dc.b	178				
						
	.dc.b	204				
	.dc.b	132				
	.dc.b	10				
						
	.dc.b	178				
						
	.dc.b	204				
	.dc.b	144				
	.dc.b	8				
						
	.dc.b	210				
						
	.dc.b	204				
	.dc.b	156				
	.dc.b	7				
						
	.dc.b	50				
						
	.dc.b	204				
	.dc.b	168				
	.dc.b	5				
						
	.dc.b	178				
						
	.dc.b	204				
	.dc.b	180				
	.dc.b	4				
						
	.dc.b	82				
						
	.dc.b	204				
	.dc.b	192				
	.dc.b	3				
						
	.dc.b	50				
						
	.dc.b	204				
	.dc.b	204				
	.dc.b	2				
						
	.dc.b	50				
						
	.dc.b	204				
	.dc.b	216				
	.dc.b	1				
						
	.dc.b	114				
						
	.dc.b	204				
	.dc.b	228				
	.dc.b	0				
						
	.dc.b	210				
						
	.dc.b	204				
	.dc.b	240				
	.dc.b	0				
						
	.dc.b	114				
						
	.dc.b	204				
	.dc.b	252				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	205				
	.dc.b	8				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	205				
	.dc.b	20				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	205				
	.dc.b	32				
	.dc.b	0				
						
	.dc.b	114				
						
	.dc.b	205				
	.dc.b	44				
	.dc.b	0				
						
	.dc.b	210				
						
	.dc.b	205				
	.dc.b	56				
	.dc.b	1				
						
	.dc.b	114				
						
	.dc.b	205				
	.dc.b	68				
	.dc.b	2				
						
	.dc.b	50				
						
	.dc.b	205				
	.dc.b	80				
	.dc.b	3				
						
	.dc.b	50				
						
	.dc.b	205				
	.dc.b	92				
	.dc.b	4				
						
	.dc.b	82				
						
	.dc.b	205				
	.dc.b	104				
	.dc.b	5				
						
	.dc.b	178				
						
	.dc.b	205				
	.dc.b	116				
	.dc.b	7				
						
	.dc.b	50				
						
	.dc.b	205				
	.dc.b	128				
	.dc.b	8				
						
	.dc.b	210				
						
	.dc.b	205				
	.dc.b	140				
	.dc.b	10				
						
	.dc.b	178				
						
	.dc.b	205				
	.dc.b	152				
	.dc.b	12				
						
	.dc.b	178				
						
	.dc.b	205				
	.dc.b	164				
	.dc.b	14				
						
	.dc.b	210				
						
	.dc.b	205				
	.dc.b	176				
	.dc.b	17				
						
	.dc.b	50				
						
	.dc.b	205				
	.dc.b	188				
	.dc.b	19				
						
	.dc.b	210				
						
	.dc.b	205				
	.dc.b	200				
	.dc.b	22				
						
	.dc.b	114				
						
	.dc.b	205				
	.dc.b	212				
	.dc.b	25				
						
	.dc.b	114				
						
	.dc.b	205				
	.dc.b	224				
	.dc.b	28				
						
	.dc.b	114				
						
	.dc.b	205				
	.dc.b	236				
	.dc.b	31				
						
	.dc.b	178				
						
	.dc.b	205				
	.dc.b	248				
	.dc.b	35				
						
	.dc.b	18				
						
	.dc.b	206				
	.dc.b	4				
	.dc.b	38				
						
	.dc.b	178				
						
	.dc.b	206				
	.dc.b	16				
	.dc.b	42				
						
	.dc.b	114				
						
	.dc.b	206				
	.dc.b	28				
	.dc.b	46				
						
	.dc.b	114				
						
	.dc.b	206				
	.dc.b	40				
	.dc.b	50				
						
	.dc.b	146				
						
	.dc.b	206				
	.dc.b	52				
	.dc.b	54				
						
	.dc.b	210				
						
	.dc.b	206				
	.dc.b	64				
	.dc.b	59				
						
	.dc.b	82				
						
	.dc.b	206				
	.dc.b	76				
	.dc.b	63				
						
	.dc.b	242				
						
	.dc.b	206				
	.dc.b	88				
	.dc.b	68				
						
	.dc.b	210				
						
	.dc.b	206				
	.dc.b	100				
	.dc.b	73				
						
	.dc.b	210				
						
	.dc.b	206				
	.dc.b	112				
	.dc.b	78				
						
	.dc.b	242				
						
	.dc.b	206				
	.dc.b	124				
	.dc.b	84				
						
	.dc.b	82				
						
	.dc.b	206				
	.dc.b	136				
	.dc.b	89				
						
	.dc.b	210				
						
	.dc.b	206				
	.dc.b	148				
	.dc.b	95				
						
	.dc.b	146				
						
	.dc.b	206				
	.dc.b	160				
	.dc.b	101				
						
	.dc.b	114				
						
	.dc.b	206				
	.dc.b	172				
	.dc.b	107				
						
	.dc.b	114				
						
	.dc.b	206				
	.dc.b	184				
	.dc.b	113				
						
	.dc.b	178				
						
	.dc.b	206				
	.dc.b	196				
	.dc.b	120				
						
	.dc.b	18				
						
	.dc.b	206				
	.dc.b	208				
	.dc.b	126				
						
	.dc.b	146				
						
	.dc.b	206				
	.dc.b	220				
	.dc.b	133				
						
	.dc.b	82				
						
	.dc.b	206				
	.dc.b	232				
	.dc.b	140				
						
	.dc.b	82				
						
	.dc.b	206				
	.dc.b	244				
	.dc.b	147				
						
	.dc.b	114				
						
	.dc.b	207				
	.dc.b	0				
	.dc.b	154				
						
	.dc.b	178				
						
	.dc.b	207				
	.dc.b	12				
	.dc.b	162				
						
	.dc.b	18				
						
	.dc.b	207				
	.dc.b	24				
	.dc.b	169				
						
	.dc.b	178				
						
	.dc.b	207				
	.dc.b	36				
	.dc.b	177				
						
	.dc.b	146				
						
	.dc.b	207				
	.dc.b	48				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	207				
	.dc.b	60				
	.dc.b	193				
						
	.dc.b	146				
						
	.dc.b	207				
	.dc.b	72				
	.dc.b	201				
						
	.dc.b	242				
						
	.dc.b	207				
	.dc.b	84				
	.dc.b	210				
						
	.dc.b	114				
						
	.dc.b	207				
	.dc.b	96				
	.dc.b	219				
						
	.dc.b	18				
						
	.dc.b	207				
	.dc.b	108				
	.dc.b	227				
						
	.dc.b	242				
						
	.dc.b	207				
	.dc.b	120				
	.dc.b	236				
						
	.dc.b	242				
						
	.dc.b	207				
	.dc.b	132				
	.dc.b	246				
						
	.dc.b	50				
						
	.dc.b	207				
	.dc.b	144				
	.dc.b	255				
						
	.dc.b	146				
						
	.dc.b	207				
	.dc.b	157				
	.dc.b	9				
						
	.dc.b	18				
						
	.dc.b	207				
	.dc.b	169				
	.dc.b	18				
						
	.dc.b	210				
						
	.dc.b	207				
	.dc.b	181				
	.dc.b	28				
						
	.dc.b	178				
						
	.dc.b	207				
	.dc.b	193				
	.dc.b	38				
						
	.dc.b	178				
						
	.dc.b	207				
	.dc.b	205				
	.dc.b	48				
						
	.dc.b	242				
						
	.dc.b	207				
	.dc.b	217				
	.dc.b	59				
						
	.dc.b	82				
						
	.dc.b	207				
	.dc.b	229				
	.dc.b	69				
						
	.dc.b	242				
						
	.dc.b	207				
	.dc.b	241				
	.dc.b	80				
						
	.dc.b	178				
						
	.dc.b	207				
	.dc.b	253				
	.dc.b	91				
						
	.dc.b	178				
						
	.dc.b	208				
	.dc.b	9				
	.dc.b	102				
						
	.dc.b	210				
						
	.dc.b	208				
	.dc.b	21				
	.dc.b	114				
						
	.dc.b	18				
						
	.dc.b	208				
	.dc.b	33				
	.dc.b	125				
						
	.dc.b	114				
						
	.dc.b	208				
	.dc.b	45				
	.dc.b	137				
						
	.dc.b	50				
						
	.dc.b	208				
	.dc.b	57				
	.dc.b	148				
						
	.dc.b	242				
						
	.dc.b	208				
	.dc.b	69				
	.dc.b	160				
						
	.dc.b	242				
						
	.dc.b	208				
	.dc.b	81				
	.dc.b	173				
						
	.dc.b	18				
						
	.dc.b	208				
	.dc.b	93				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	208				
	.dc.b	105				
	.dc.b	197				
						
	.dc.b	242				
						
	.dc.b	208				
	.dc.b	117				
	.dc.b	210				
						
	.dc.b	146				
						
	.dc.b	208				
	.dc.b	129				
	.dc.b	223				
						
	.dc.b	114				
						
	.dc.b	208				
	.dc.b	141				
	.dc.b	236				
						
	.dc.b	114				
						
	.dc.b	208				
	.dc.b	153				
	.dc.b	249				
						
	.dc.b	178				
						
	.dc.b	208				
	.dc.b	166				
	.dc.b	7				
						
	.dc.b	18				
						
	.dc.b	208				
	.dc.b	178				
	.dc.b	20				
						
	.dc.b	146				
						
	.dc.b	208				
	.dc.b	190				
	.dc.b	34				
						
	.dc.b	82				
						
	.dc.b	208				
	.dc.b	202				
	.dc.b	48				
						
	.dc.b	50				
						
	.dc.b	208				
	.dc.b	214				
	.dc.b	62				
						
	.dc.b	82				
						
	.dc.b	208				
	.dc.b	226				
	.dc.b	76				
						
	.dc.b	146				
						
	.dc.b	208				
	.dc.b	238				
	.dc.b	90				
						
	.dc.b	242				
						
	.dc.b	208				
	.dc.b	250				
	.dc.b	105				
						
	.dc.b	146				
						
	.dc.b	209				
	.dc.b	6				
	.dc.b	120				
						
	.dc.b	82				
						
	.dc.b	209				
	.dc.b	18				
	.dc.b	135				
						
	.dc.b	50				
						
	.dc.b	209				
	.dc.b	30				
	.dc.b	150				
						
	.dc.b	82				
						
	.dc.b	209				
	.dc.b	42				
	.dc.b	165				
						
	.dc.b	146				
						
	.dc.b	209				
	.dc.b	54				
	.dc.b	181				
						
	.dc.b	18				
						
	.dc.b	209				
	.dc.b	66				
	.dc.b	196				
						
	.dc.b	178				
						
	.dc.b	209				
	.dc.b	78				
	.dc.b	212				
						
	.dc.b	146				
						
	.dc.b	209				
	.dc.b	90				
	.dc.b	228				
						
	.dc.b	146				
						
	.dc.b	209				
	.dc.b	102				
	.dc.b	244				
						
	.dc.b	178				
						
	.dc.b	209				
	.dc.b	115				
	.dc.b	4				
						
	.dc.b	242				
						
	.dc.b	209				
	.dc.b	127				
	.dc.b	21				
						
	.dc.b	146				
						
	.dc.b	209				
	.dc.b	139				
	.dc.b	38				
						
	.dc.b	50				
						
	.dc.b	209				
	.dc.b	151				
	.dc.b	55				
						
	.dc.b	18				
						
	.dc.b	209				
	.dc.b	163				
	.dc.b	72				
						
	.dc.b	18				
						
	.dc.b	209				
	.dc.b	175				
	.dc.b	89				
						
	.dc.b	82				
						
	.dc.b	209				
	.dc.b	187				
	.dc.b	106				
						
	.dc.b	146				
						
	.dc.b	209				
	.dc.b	199				
	.dc.b	124				
						
	.dc.b	50				
						
	.dc.b	209				
	.dc.b	211				
	.dc.b	141				
						
	.dc.b	242				
						
	.dc.b	209				
	.dc.b	223				
	.dc.b	159				
						
	.dc.b	210				
						
	.dc.b	209				
	.dc.b	235				
	.dc.b	177				
						
	.dc.b	210				
						
	.dc.b	209				
	.dc.b	247				
	.dc.b	196				
						
	.dc.b	18				
						
	.dc.b	210				
	.dc.b	3				
	.dc.b	214				
						
	.dc.b	146				
						
	.dc.b	210				
	.dc.b	15				
	.dc.b	233				
						
	.dc.b	18				
						
	.dc.b	210				
	.dc.b	27				
	.dc.b	251				
						
	.dc.b	210				
						
	.dc.b	210				
	.dc.b	40				
	.dc.b	14				
						
	.dc.b	210				
						
	.dc.b	210				
	.dc.b	52				
	.dc.b	33				
						
	.dc.b	242				
						
	.dc.b	210				
	.dc.b	64				
	.dc.b	53				
						
	.dc.b	50				
						
	.dc.b	210				
	.dc.b	76				
	.dc.b	72				
						
	.dc.b	178				
						
	.dc.b	210				
	.dc.b	88				
	.dc.b	92				
						
	.dc.b	82				
						
	.dc.b	210				
	.dc.b	100				
	.dc.b	112				
						
	.dc.b	18				
						
	.dc.b	210				
	.dc.b	112				
	.dc.b	132				
						
	.dc.b	18				
						
	.dc.b	210				
	.dc.b	124				
	.dc.b	152				
						
	.dc.b	50				
						
	.dc.b	210				
	.dc.b	136				
	.dc.b	172				
						
	.dc.b	114				
						
	.dc.b	210				
	.dc.b	148				
	.dc.b	192				
						
	.dc.b	242				
						
	.dc.b	210				
	.dc.b	160				
	.dc.b	213				
						
	.dc.b	178				
						
	.dc.b	210				
	.dc.b	172				
	.dc.b	234				
						
	.dc.b	114				
						
	.dc.b	210				
	.dc.b	184				
	.dc.b	255				
						
	.dc.b	146				
						
	.dc.b	210				
	.dc.b	197				
	.dc.b	20				
						
	.dc.b	178				
						
	.dc.b	210				
	.dc.b	209				
	.dc.b	42				
						
	.dc.b	18				
						
	.dc.b	210				
	.dc.b	221				
	.dc.b	63				
						
	.dc.b	146				
						
	.dc.b	210				
	.dc.b	233				
	.dc.b	85				
						
	.dc.b	82				
						
	.dc.b	210				
	.dc.b	245				
	.dc.b	107				
						
	.dc.b	50				
						
	.dc.b	211				
	.dc.b	1				
	.dc.b	129				
						
	.dc.b	50				
						
	.dc.b	211				
	.dc.b	13				
	.dc.b	151				
						
	.dc.b	114				
						
	.dc.b	211				
	.dc.b	25				
	.dc.b	173				
						
	.dc.b	210				
						
	.dc.b	211				
	.dc.b	37				
	.dc.b	196				
						
	.dc.b	114				
						
	.dc.b	211				
	.dc.b	49				
	.dc.b	219				
						
	.dc.b	50				
						
	.dc.b	211				
	.dc.b	61				
	.dc.b	242				
						
	.dc.b	18				
						
	.dc.b	211				
	.dc.b	74				
	.dc.b	9				
						
	.dc.b	50				
						
	.dc.b	211				
	.dc.b	86				
	.dc.b	32				
						
	.dc.b	114				
						
	.dc.b	211				
	.dc.b	98				
	.dc.b	55				
						
	.dc.b	242				
						
	.dc.b	211				
	.dc.b	110				
	.dc.b	79				
						
	.dc.b	114				
						
	.dc.b	211				
	.dc.b	122				
	.dc.b	103				
						
	.dc.b	82				
						
	.dc.b	211				
	.dc.b	134				
	.dc.b	127				
						
	.dc.b	50				
						
	.dc.b	211				
	.dc.b	146				
	.dc.b	151				
						
	.dc.b	82				
						
	.dc.b	211				
	.dc.b	158				
	.dc.b	175				
						
	.dc.b	178				
						
	.dc.b	211				
	.dc.b	170				
	.dc.b	200				
						
	.dc.b	50				
						
	.dc.b	211				
	.dc.b	182				
	.dc.b	224				
						
	.dc.b	210				
						
	.dc.b	211				
	.dc.b	194				
	.dc.b	249				
						
	.dc.b	146				
						
	.dc.b	211				
	.dc.b	207				
	.dc.b	18				
						
	.dc.b	146				
						
	.dc.b	211				
	.dc.b	219				
	.dc.b	43				
						
	.dc.b	210				
						
	.dc.b	211				
	.dc.b	231				
	.dc.b	69				
						
	.dc.b	18				
						
	.dc.b	211				
	.dc.b	243				
	.dc.b	94				
						
	.dc.b	146				
						
	.dc.b	211				
	.dc.b	255				
	.dc.b	120				
						
	.dc.b	82				
						
	.dc.b	212				
	.dc.b	11				
	.dc.b	146				
						
	.dc.b	50				
						
	.dc.b	212				
	.dc.b	23				
	.dc.b	172				
						
	.dc.b	50				
						
	.dc.b	212				
	.dc.b	35				
	.dc.b	198				
						
	.dc.b	82				
						
	.dc.b	212				
	.dc.b	47				
	.dc.b	224				
						
	.dc.b	178				
						
	.dc.b	212				
	.dc.b	59				
	.dc.b	251				
						
	.dc.b	82				
						
	.dc.b	212				
	.dc.b	72				
	.dc.b	22				
						
	.dc.b	18				
						
	.dc.b	212				
	.dc.b	84				
	.dc.b	48				
						
	.dc.b	242				
						
	.dc.b	212				
	.dc.b	96				
	.dc.b	75				
						
	.dc.b	242				
						
	.dc.b	212				
	.dc.b	108				
	.dc.b	103				
						
	.dc.b	50				
						
	.dc.b	212				
	.dc.b	120				
	.dc.b	130				
						
	.dc.b	146				
						
	.dc.b	212				
	.dc.b	132				
	.dc.b	158				
						
	.dc.b	50				
						
	.dc.b	212				
	.dc.b	144				
	.dc.b	185				
						
	.dc.b	242				
						
	.dc.b	212				
	.dc.b	156				
	.dc.b	213				
						
	.dc.b	210				
						
	.dc.b	212				
	.dc.b	168				
	.dc.b	241				
						
	.dc.b	242				
						
	.dc.b	212				
	.dc.b	181				
	.dc.b	14				
						
	.dc.b	50				
						
	.dc.b	212				
	.dc.b	193				
	.dc.b	42				
						
	.dc.b	178				
						
	.dc.b	212				
	.dc.b	205				
	.dc.b	71				
						
	.dc.b	82				
						
	.dc.b	212				
	.dc.b	217				
	.dc.b	100				
						
	.dc.b	18				
						
	.dc.b	212				
	.dc.b	229				
	.dc.b	129				
						
	.dc.b	18				
						
	.dc.b	212				
	.dc.b	241				
	.dc.b	158				
						
	.dc.b	50				
						
	.dc.b	212				
	.dc.b	253				
	.dc.b	187				
						
	.dc.b	114				
						
	.dc.b	213				
	.dc.b	9				
	.dc.b	216				
						
	.dc.b	242				
						
	.dc.b	213				
	.dc.b	21				
	.dc.b	246				
						
	.dc.b	146				
						
	.dc.b	213				
	.dc.b	34				
	.dc.b	20				
						
	.dc.b	114				
						
	.dc.b	213				
	.dc.b	46				
	.dc.b	50				
						
	.dc.b	114				
						
	.dc.b	213				
	.dc.b	58				
	.dc.b	80				
						
	.dc.b	146				
						
	.dc.b	213				
	.dc.b	70				
	.dc.b	110				
						
	.dc.b	242				
						
	.dc.b	213				
	.dc.b	82				
	.dc.b	141				
						
	.dc.b	114				
						
	.dc.b	213				
	.dc.b	94				
	.dc.b	172				
						
	.dc.b	50				
						
	.dc.b	213				
	.dc.b	106				
	.dc.b	202				
						
	.dc.b	242				
						
	.dc.b	213				
	.dc.b	118				
	.dc.b	234				
						
	.dc.b	18				
						
	.dc.b	213				
	.dc.b	131				
	.dc.b	9				
						
	.dc.b	50				
						
	.dc.b	213				
	.dc.b	143				
	.dc.b	40				
						
	.dc.b	146				
						
	.dc.b	213				
	.dc.b	155				
	.dc.b	72				
						
	.dc.b	50				
						
	.dc.b	213				
	.dc.b	167				
	.dc.b	103				
						
	.dc.b	210				
						
	.dc.b	213				
	.dc.b	179				
	.dc.b	135				
						
	.dc.b	178				
						
	.dc.b	213				
	.dc.b	191				
	.dc.b	167				
						
	.dc.b	210				
						
	.dc.b	213				
	.dc.b	203				
	.dc.b	200				
						
	.dc.b	18				
						
	.dc.b	213				
	.dc.b	215				
	.dc.b	232				
						
	.dc.b	114				
						
	.dc.b	213				
	.dc.b	228				
	.dc.b	8				
						
	.dc.b	242				
						
	.dc.b	213				
	.dc.b	240				
	.dc.b	41				
						
	.dc.b	178				
						
	.dc.b	213				
	.dc.b	252				
	.dc.b	74				
						
	.dc.b	178				
						
	.dc.b	214				
	.dc.b	8				
	.dc.b	107				
						
	.dc.b	210				
						
	.dc.b	214				
	.dc.b	20				
	.dc.b	141				
						
	.dc.b	18				
						
	.dc.b	214				
	.dc.b	32				
	.dc.b	174				
						
	.dc.b	114				
						
	.dc.b	214				
	.dc.b	44				
	.dc.b	208				
						
	.dc.b	18				
						
	.dc.b	214				
	.dc.b	56				
	.dc.b	241				
						
	.dc.b	210				
						
	.dc.b	214				
	.dc.b	69				
	.dc.b	19				
						
	.dc.b	210				
						
	.dc.b	214				
	.dc.b	81				
	.dc.b	53				
						
	.dc.b	242				
						
	.dc.b	214				
	.dc.b	93				
	.dc.b	88				
						
	.dc.b	50				
						
	.dc.b	214				
	.dc.b	105				
	.dc.b	122				
						
	.dc.b	178				
						
	.dc.b	214				
	.dc.b	117				
	.dc.b	157				
						
	.dc.b	82				
						
	.dc.b	214				
	.dc.b	129				
	.dc.b	192				
						
	.dc.b	18				
						
	.dc.b	214				
	.dc.b	141				
	.dc.b	227				
						
	.dc.b	18				
						
	.dc.b	214				
	.dc.b	154				
	.dc.b	6				
						
	.dc.b	50				
						
	.dc.b	214				
	.dc.b	166				
	.dc.b	41				
						
	.dc.b	146				
						
	.dc.b	214				
	.dc.b	178				
	.dc.b	77				
						
	.dc.b	18				
						
	.dc.b	214				
	.dc.b	190				
	.dc.b	112				
						
	.dc.b	178				
						
	.dc.b	214				
	.dc.b	202				
	.dc.b	148				
						
	.dc.b	146				
						
	.dc.b	214				
	.dc.b	214				
	.dc.b	184				
						
	.dc.b	146				
						
	.dc.b	214				
	.dc.b	226				
	.dc.b	220				
						
	.dc.b	210				
						
	.dc.b	214				
	.dc.b	239				
	.dc.b	1				
						
	.dc.b	18				
						
	.dc.b	214				
	.dc.b	251				
	.dc.b	37				
						
	.dc.b	178				
						
	.dc.b	215				
	.dc.b	7				
	.dc.b	74				
						
	.dc.b	82				
						
	.dc.b	215				
	.dc.b	19				
	.dc.b	111				
						
	.dc.b	50				
						
	.dc.b	215				
	.dc.b	31				
	.dc.b	148				
						
	.dc.b	50				
						
	.dc.b	215				
	.dc.b	43				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	215				
	.dc.b	55				
	.dc.b	222				
						
	.dc.b	210				
						
	.dc.b	215				
	.dc.b	68				
	.dc.b	4				
						
	.dc.b	114				
						
	.dc.b	215				
	.dc.b	80				
	.dc.b	42				
						
	.dc.b	18				
						
	.dc.b	215				
	.dc.b	92				
	.dc.b	80				
						
	.dc.b	18				
						
	.dc.b	215				
	.dc.b	104				
	.dc.b	118				
						
	.dc.b	18				
						
	.dc.b	215				
	.dc.b	116				
	.dc.b	156				
						
	.dc.b	82				
						
	.dc.b	215				
	.dc.b	128				
	.dc.b	194				
						
	.dc.b	178				
						
	.dc.b	215				
	.dc.b	140				
	.dc.b	233				
						
	.dc.b	82				
						
	.dc.b	215				
	.dc.b	153				
	.dc.b	16				
						
	.dc.b	18				
						
	.dc.b	215				
	.dc.b	165				
	.dc.b	54				
						
	.dc.b	242				
						
	.dc.b	215				
	.dc.b	177				
	.dc.b	94				
						
	.dc.b	18				
						
	.dc.b	215				
	.dc.b	189				
	.dc.b	133				
						
	.dc.b	82				
						
	.dc.b	215				
	.dc.b	201				
	.dc.b	172				
						
	.dc.b	210				
						
	.dc.b	215				
	.dc.b	213				
	.dc.b	212				
						
	.dc.b	114				
						
	.dc.b	215				
	.dc.b	225				
	.dc.b	252				
						
	.dc.b	50				
						
	.dc.b	215				
	.dc.b	238				
	.dc.b	36				
						
	.dc.b	18				
						
	.dc.b	215				
	.dc.b	250				
	.dc.b	76				
						
	.dc.b	50				
						
	.dc.b	216				
	.dc.b	6				
	.dc.b	116				
						
	.dc.b	146				
						
	.dc.b	216				
	.dc.b	18				
	.dc.b	156				
						
	.dc.b	242				
						
	.dc.b	216				
	.dc.b	30				
	.dc.b	197				
						
	.dc.b	146				
						
	.dc.b	216				
	.dc.b	42				
	.dc.b	238				
						
	.dc.b	114				
						
	.dc.b	216				
	.dc.b	55				
	.dc.b	23				
						
	.dc.b	114				
						
	.dc.b	216				
	.dc.b	67				
	.dc.b	64				
						
	.dc.b	146				
						
	.dc.b	216				
	.dc.b	79				
	.dc.b	105				
						
	.dc.b	210				
						
	.dc.b	216				
	.dc.b	91				
	.dc.b	147				
						
	.dc.b	82				
						
	.dc.b	216				
	.dc.b	103				
	.dc.b	189				
						
	.dc.b	18				
						
	.dc.b	216				
	.dc.b	115				
	.dc.b	230				
						
	.dc.b	210				
						
	.dc.b	216				
	.dc.b	128				
	.dc.b	16				
						
	.dc.b	210				
						
	.dc.b	216				
	.dc.b	140				
	.dc.b	59				
						
	.dc.b	18				
						
	.dc.b	216				
	.dc.b	152				
	.dc.b	101				
						
	.dc.b	82				
						
	.dc.b	216				
	.dc.b	164				
	.dc.b	143				
						
	.dc.b	242				
						
	.dc.b	216				
	.dc.b	176				
	.dc.b	186				
						
	.dc.b	146				
						
	.dc.b	216				
	.dc.b	188				
	.dc.b	229				
						
	.dc.b	114				
						
	.dc.b	216				
	.dc.b	201				
	.dc.b	16				
						
	.dc.b	114				
						
	.dc.b	216				
	.dc.b	213				
	.dc.b	59				
						
	.dc.b	178				
						
	.dc.b	216				
	.dc.b	225				
	.dc.b	103				
						
	.dc.b	18				
						
	.dc.b	216				
	.dc.b	237				
	.dc.b	146				
						
	.dc.b	146				
						
	.dc.b	216				
	.dc.b	249				
	.dc.b	190				
						
	.dc.b	82				
						
	.dc.b	217				
	.dc.b	5				
	.dc.b	234				
						
	.dc.b	50				
						
	.dc.b	217				
	.dc.b	18				
	.dc.b	22				
						
	.dc.b	50				
						
	.dc.b	217				
	.dc.b	30				
	.dc.b	66				
						
	.dc.b	114				
						
	.dc.b	217				
	.dc.b	42				
	.dc.b	110				
						
	.dc.b	210				
						
	.dc.b	217				
	.dc.b	54				
	.dc.b	155				
						
	.dc.b	82				
						
	.dc.b	217				
	.dc.b	66				
	.dc.b	200				
						
	.dc.b	18				
						
	.dc.b	217				
	.dc.b	78				
	.dc.b	245				
						
	.dc.b	18				
						
	.dc.b	217				
	.dc.b	91				
	.dc.b	34				
						
	.dc.b	18				
						
	.dc.b	217				
	.dc.b	103				
	.dc.b	79				
						
	.dc.b	82				
						
	.dc.b	217				
	.dc.b	115				
	.dc.b	124				
						
	.dc.b	178				
						
	.dc.b	217				
	.dc.b	127				
	.dc.b	170				
						
	.dc.b	82				
						
	.dc.b	217				
	.dc.b	139				
	.dc.b	216				
						
	.dc.b	18				
						
	.dc.b	217				
	.dc.b	152				
	.dc.b	6				
						
	.dc.b	18				
						
	.dc.b	217				
	.dc.b	164				
	.dc.b	52				
						
	.dc.b	18				
						
	.dc.b	217				
	.dc.b	176				
	.dc.b	98				
						
	.dc.b	114				
						
	.dc.b	217				
	.dc.b	188				
	.dc.b	144				
						
	.dc.b	210				
						
	.dc.b	217				
	.dc.b	200				
	.dc.b	191				
						
	.dc.b	114				
						
	.dc.b	217				
	.dc.b	212				
	.dc.b	238				
						
	.dc.b	50				
						
	.dc.b	217				
	.dc.b	225				
	.dc.b	29				
						
	.dc.b	50				
						
	.dc.b	217				
	.dc.b	237				
	.dc.b	76				
						
	.dc.b	82				
						
	.dc.b	217				
	.dc.b	249				
	.dc.b	123				
						
	.dc.b	146				
						
	.dc.b	218				
	.dc.b	5				
	.dc.b	171				
						
	.dc.b	18				
						
	.dc.b	218				
	.dc.b	17				
	.dc.b	218				
						
	.dc.b	178				
						
	.dc.b	218				
	.dc.b	30				
	.dc.b	10				
						
	.dc.b	114				
						
	.dc.b	218				
	.dc.b	42				
	.dc.b	58				
						
	.dc.b	114				
						
	.dc.b	218				
	.dc.b	54				
	.dc.b	106				
						
	.dc.b	146				
						
	.dc.b	218				
	.dc.b	66				
	.dc.b	154				
						
	.dc.b	242				
						
	.dc.b	218				
	.dc.b	78				
	.dc.b	203				
						
	.dc.b	82				
						
	.dc.b	218				
	.dc.b	90				
	.dc.b	252				
						
	.dc.b	18				
						
	.dc.b	218				
	.dc.b	103				
	.dc.b	44				
						
	.dc.b	210				
						
	.dc.b	218				
	.dc.b	115				
	.dc.b	93				
						
	.dc.b	210				
						
	.dc.b	218				
	.dc.b	127				
	.dc.b	142				
						
	.dc.b	242				
						
	.dc.b	218				
	.dc.b	139				
	.dc.b	192				
						
	.dc.b	82				
						
	.dc.b	218				
	.dc.b	151				
	.dc.b	241				
						
	.dc.b	210				
						
	.dc.b	218				
	.dc.b	164				
	.dc.b	35				
						
	.dc.b	146				
						
	.dc.b	218				
	.dc.b	176				
	.dc.b	85				
						
	.dc.b	82				
						
	.dc.b	218				
	.dc.b	188				
	.dc.b	135				
						
	.dc.b	82				
						
	.dc.b	218				
	.dc.b	200				
	.dc.b	185				
						
	.dc.b	146				
						
	.dc.b	218				
	.dc.b	212				
	.dc.b	235				
						
	.dc.b	242				
						
	.dc.b	218				
	.dc.b	225				
	.dc.b	30				
						
	.dc.b	114				
						
	.dc.b	218				
	.dc.b	237				
	.dc.b	81				
						
	.dc.b	18				
						
	.dc.b	218				
	.dc.b	249				
	.dc.b	131				
						
	.dc.b	242				
						
	.dc.b	219				
	.dc.b	5				
	.dc.b	183				
						
	.dc.b	18				
						
	.dc.b	219				
	.dc.b	17				
	.dc.b	234				
						
	.dc.b	50				
						
	.dc.b	219				
	.dc.b	30				
	.dc.b	29				
						
	.dc.b	146				
						
	.dc.b	219				
	.dc.b	42				
	.dc.b	81				
						
	.dc.b	18				
						
	.dc.b	219				
	.dc.b	54				
	.dc.b	132				
						
	.dc.b	210				
						
	.dc.b	219				
	.dc.b	66				
	.dc.b	184				
						
	.dc.b	178				
						
	.dc.b	219				
	.dc.b	78				
	.dc.b	236				
						
	.dc.b	210				
						
	.dc.b	219				
	.dc.b	91				
	.dc.b	32				
						
	.dc.b	242				
						
	.dc.b	219				
	.dc.b	103				
	.dc.b	85				
						
	.dc.b	82				
						
	.dc.b	219				
	.dc.b	115				
	.dc.b	137				
						
	.dc.b	242				
						
	.dc.b	219				
	.dc.b	127				
	.dc.b	190				
						
	.dc.b	178				
						
	.dc.b	219				
	.dc.b	139				
	.dc.b	243				
						
	.dc.b	146				
						
	.dc.b	219				
	.dc.b	152				
	.dc.b	40				
						
	.dc.b	178				
						
	.dc.b	219				
	.dc.b	164				
	.dc.b	93				
						
	.dc.b	210				
						
	.dc.b	219				
	.dc.b	176				
	.dc.b	147				
						
	.dc.b	82				
						
	.dc.b	219				
	.dc.b	188				
	.dc.b	200				
						
	.dc.b	210				
						
	.dc.b	219				
	.dc.b	200				
	.dc.b	254				
						
	.dc.b	146				
						
	.dc.b	219				
	.dc.b	213				
	.dc.b	52				
						
	.dc.b	146				
						
	.dc.b	219				
	.dc.b	225				
	.dc.b	106				
						
	.dc.b	146				
						
	.dc.b	219				
	.dc.b	237				
	.dc.b	160				
						
	.dc.b	210				
						
	.dc.b	219				
	.dc.b	249				
	.dc.b	215				
						
	.dc.b	82				
						
	.dc.b	220				
	.dc.b	6				
	.dc.b	13				
						
	.dc.b	242				
						
	.dc.b	220				
	.dc.b	18				
	.dc.b	68				
						
	.dc.b	178				
						
	.dc.b	220				
	.dc.b	30				
	.dc.b	123				
						
	.dc.b	146				
						
	.dc.b	220				
	.dc.b	42				
	.dc.b	178				
						
	.dc.b	178				
						
	.dc.b	220				
	.dc.b	54				
	.dc.b	233				
						
	.dc.b	242				
						
	.dc.b	220				
	.dc.b	67				
	.dc.b	33				
						
	.dc.b	114				
						
	.dc.b	220				
	.dc.b	79				
	.dc.b	89				
						
	.dc.b	18				
						
	.dc.b	220				
	.dc.b	91				
	.dc.b	144				
						
	.dc.b	210				
						
	.dc.b	220				
	.dc.b	103				
	.dc.b	200				
						
	.dc.b	210				
						
	.dc.b	220				
	.dc.b	116				
	.dc.b	0				
						
	.dc.b	242				
						
	.dc.b	220				
	.dc.b	128				
	.dc.b	57				
						
	.dc.b	50				
						
	.dc.b	220				
	.dc.b	140				
	.dc.b	113				
						
	.dc.b	178				
						
	.dc.b	220				
	.dc.b	152				
	.dc.b	170				
						
	.dc.b	82				
						
	.dc.b	220				
	.dc.b	164				
	.dc.b	227				
						
	.dc.b	18				
						
	.dc.b	220				
	.dc.b	177				
	.dc.b	28				
						
	.dc.b	18				
						
	.dc.b	220				
	.dc.b	189				
	.dc.b	85				
						
	.dc.b	50				
						
	.dc.b	220				
	.dc.b	201				
	.dc.b	142				
						
	.dc.b	114				
						
	.dc.b	220				
	.dc.b	213				
	.dc.b	199				
						
	.dc.b	242				
						
	.dc.b	220				
	.dc.b	226				
	.dc.b	1				
						
	.dc.b	146				
						
	.dc.b	220				
	.dc.b	238				
	.dc.b	59				
						
	.dc.b	114				
						
	.dc.b	220				
	.dc.b	250				
	.dc.b	117				
						
	.dc.b	114				
						
	.dc.b	221				
	.dc.b	6				
	.dc.b	175				
						
	.dc.b	146				
						
	.dc.b	221				
	.dc.b	18				
	.dc.b	233				
						
	.dc.b	210				
						
	.dc.b	221				
	.dc.b	31				
	.dc.b	36				
						
	.dc.b	82				
						
	.dc.b	221				
	.dc.b	43				
	.dc.b	95				
						
	.dc.b	18				
						
	.dc.b	221				
	.dc.b	55				
	.dc.b	153				
						
	.dc.b	210				
						
	.dc.b	221				
	.dc.b	67				
	.dc.b	212				
						
	.dc.b	210				
						
	.dc.b	221				
	.dc.b	80				
	.dc.b	15				
						
	.dc.b	242				
						
	.dc.b	221				
	.dc.b	92				
	.dc.b	75				
						
	.dc.b	82				
						
	.dc.b	221				
	.dc.b	104				
	.dc.b	134				
						
	.dc.b	210				
						
	.dc.b	221				
	.dc.b	116				
	.dc.b	194				
						
	.dc.b	146				
						
	.dc.b	221				
	.dc.b	128				
	.dc.b	254				
						
	.dc.b	82				
						
	.dc.b	221				
	.dc.b	141				
	.dc.b	58				
						
	.dc.b	82				
						
	.dc.b	221				
	.dc.b	153				
	.dc.b	118				
						
	.dc.b	146				
						
	.dc.b	221				
	.dc.b	165				
	.dc.b	178				
						
	.dc.b	242				
						
	.dc.b	221				
	.dc.b	177				
	.dc.b	239				
						
	.dc.b	114				
						
	.dc.b	221				
	.dc.b	190				
	.dc.b	44				
						
	.dc.b	18				
						
	.dc.b	221				
	.dc.b	202				
	.dc.b	104				
						
	.dc.b	242				
						
	.dc.b	221				
	.dc.b	214				
	.dc.b	165				
						
	.dc.b	242				
						
	.dc.b	221				
	.dc.b	226				
	.dc.b	227				
						
	.dc.b	50				
						
	.dc.b	221				
	.dc.b	239				
	.dc.b	32				
						
	.dc.b	146				
						
	.dc.b	221				
	.dc.b	251				
	.dc.b	94				
						
	.dc.b	18				
						
	.dc.b	222				
	.dc.b	7				
	.dc.b	155				
						
	.dc.b	210				
						
	.dc.b	222				
	.dc.b	19				
	.dc.b	217				
						
	.dc.b	146				
						
	.dc.b	222				
	.dc.b	32				
	.dc.b	23				
						
	.dc.b	178				
						
	.dc.b	222				
	.dc.b	44				
	.dc.b	85				
						
	.dc.b	210				
						
	.dc.b	222				
	.dc.b	56				
	.dc.b	148				
						
	.dc.b	50				
						
	.dc.b	222				
	.dc.b	68				
	.dc.b	210				
						
	.dc.b	210				
						
	.dc.b	222				
	.dc.b	81				
	.dc.b	17				
						
	.dc.b	114				
						
	.dc.b	222				
	.dc.b	93				
	.dc.b	80				
						
	.dc.b	82				
						
	.dc.b	222				
	.dc.b	105				
	.dc.b	143				
						
	.dc.b	114				
						
	.dc.b	222				
	.dc.b	117				
	.dc.b	206				
						
	.dc.b	178				
						
	.dc.b	222				
	.dc.b	130				
	.dc.b	14				
						
	.dc.b	18				
						
	.dc.b	222				
	.dc.b	142				
	.dc.b	77				
						
	.dc.b	146				
						
	.dc.b	222				
	.dc.b	154				
	.dc.b	141				
						
	.dc.b	82				
						
	.dc.b	222				
	.dc.b	166				
	.dc.b	205				
						
	.dc.b	50				
						
	.dc.b	222				
	.dc.b	179				
	.dc.b	13				
						
	.dc.b	50				
						
	.dc.b	222				
	.dc.b	191				
	.dc.b	77				
						
	.dc.b	114				
						
	.dc.b	222				
	.dc.b	203				
	.dc.b	141				
						
	.dc.b	210				
						
	.dc.b	222				
	.dc.b	215				
	.dc.b	206				
						
	.dc.b	114				
						
	.dc.b	222				
	.dc.b	228				
	.dc.b	15				
						
	.dc.b	50				
						
	.dc.b	222				
	.dc.b	240				
	.dc.b	80				
						
	.dc.b	18				
						
	.dc.b	222				
	.dc.b	252				
	.dc.b	145				
						
	.dc.b	50				
						
	.dc.b	223				
	.dc.b	8				
	.dc.b	210				
						
	.dc.b	114				
						
	.dc.b	223				
	.dc.b	21				
	.dc.b	19				
						
	.dc.b	210				
						
	.dc.b	223				
	.dc.b	33				
	.dc.b	85				
						
	.dc.b	82				
						
	.dc.b	223				
	.dc.b	45				
	.dc.b	151				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	57				
	.dc.b	217				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	70				
	.dc.b	27				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	82				
	.dc.b	93				
						
	.dc.b	82				
						
	.dc.b	223				
	.dc.b	94				
	.dc.b	159				
						
	.dc.b	210				
						
	.dc.b	223				
	.dc.b	106				
	.dc.b	226				
						
	.dc.b	82				
						
	.dc.b	223				
	.dc.b	119				
	.dc.b	37				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	131				
	.dc.b	104				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	143				
	.dc.b	171				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	155				
	.dc.b	238				
						
	.dc.b	82				
						
	.dc.b	223				
	.dc.b	168				
	.dc.b	49				
						
	.dc.b	210				
						
	.dc.b	223				
	.dc.b	180				
	.dc.b	117				
						
	.dc.b	114				
						
	.dc.b	223				
	.dc.b	192				
	.dc.b	185				
						
	.dc.b	50				
						
	.dc.b	223				
	.dc.b	204				
	.dc.b	253				
						
	.dc.b	18				
						
	.dc.b	223				
	.dc.b	217				
	.dc.b	65				
						
	.dc.b	50				
						
	.dc.b	223				
	.dc.b	229				
	.dc.b	133				
						
	.dc.b	114				
						
	.dc.b	223				
	.dc.b	241				
	.dc.b	201				
						
	.dc.b	242				
						
	.dc.b	223				
	.dc.b	254				
	.dc.b	14				
						
	.dc.b	114				
						
	.dc.b	224				
	.dc.b	10				
	.dc.b	83				
						
	.dc.b	82				
						
	.dc.b	224				
	.dc.b	22				
	.dc.b	152				
						
	.dc.b	50				
						
	.dc.b	224				
	.dc.b	34				
	.dc.b	221				
						
	.dc.b	82				
						
	.dc.b	224				
	.dc.b	47				
	.dc.b	34				
						
	.dc.b	146				
						
	.dc.b	224				
	.dc.b	59				
	.dc.b	104				
						
	.dc.b	18				
						
	.dc.b	224				
	.dc.b	71				
	.dc.b	173				
						
	.dc.b	146				
						
	.dc.b	224				
	.dc.b	83				
	.dc.b	243				
						
	.dc.b	114				
						
	.dc.b	224				
	.dc.b	96				
	.dc.b	57				
						
	.dc.b	82				
						
	.dc.b	224				
	.dc.b	108				
	.dc.b	127				
						
	.dc.b	114				
						
	.dc.b	224				
	.dc.b	120				
	.dc.b	197				
						
	.dc.b	178				
						
	.dc.b	224				
	.dc.b	133				
	.dc.b	12				
						
	.dc.b	50				
						
	.dc.b	224				
	.dc.b	145				
	.dc.b	82				
						
	.dc.b	210				
						
	.dc.b	224				
	.dc.b	157				
	.dc.b	153				
						
	.dc.b	146				
						
	.dc.b	224				
	.dc.b	169				
	.dc.b	224				
						
	.dc.b	146				
						
	.dc.b	224				
	.dc.b	182				
	.dc.b	39				
						
	.dc.b	178				
						
	.dc.b	224				
	.dc.b	194				
	.dc.b	110				
						
	.dc.b	242				
						
	.dc.b	224				
	.dc.b	206				
	.dc.b	182				
						
	.dc.b	114				
						
	.dc.b	224				
	.dc.b	218				
	.dc.b	254				
						
	.dc.b	18				
						
	.dc.b	224				
	.dc.b	231				
	.dc.b	69				
						
	.dc.b	210				
						
	.dc.b	224				
	.dc.b	243				
	.dc.b	141				
						
	.dc.b	210				
						
	.dc.b	224				
	.dc.b	255				
	.dc.b	213				
						
	.dc.b	242				
						
	.dc.b	225				
	.dc.b	12				
	.dc.b	30				
						
	.dc.b	50				
						
	.dc.b	225				
	.dc.b	24				
	.dc.b	102				
						
	.dc.b	178				
						
	.dc.b	225				
	.dc.b	36				
	.dc.b	175				
						
	.dc.b	82				
						
	.dc.b	225				
	.dc.b	48				
	.dc.b	248				
						
	.dc.b	18				
						
	.dc.b	225				
	.dc.b	61				
	.dc.b	65				
						
	.dc.b	18				
						
	.dc.b	225				
	.dc.b	73				
	.dc.b	138				
						
	.dc.b	50				
						
	.dc.b	225				
	.dc.b	85				
	.dc.b	211				
						
	.dc.b	114				
						
	.dc.b	225				
	.dc.b	98				
	.dc.b	28				
						
	.dc.b	242				
						
	.dc.b	225				
	.dc.b	110				
	.dc.b	102				
						
	.dc.b	146				
						
	.dc.b	225				
	.dc.b	122				
	.dc.b	176				
						
	.dc.b	114				
						
	.dc.b	225				
	.dc.b	134				
	.dc.b	250				
						
	.dc.b	82				
						
	.dc.b	225				
	.dc.b	147				
	.dc.b	68				
						
	.dc.b	114				
						
	.dc.b	225				
	.dc.b	159				
	.dc.b	142				
						
	.dc.b	210				
						
	.dc.b	225				
	.dc.b	171				
	.dc.b	217				
						
	.dc.b	82				
						
	.dc.b	225				
	.dc.b	184				
	.dc.b	35				
						
	.dc.b	242				
						
	.dc.b	225				
	.dc.b	196				
	.dc.b	110				
						
	.dc.b	178				
						
	.dc.b	225				
	.dc.b	208				
	.dc.b	185				
						
	.dc.b	178				
						
	.dc.b	225				
	.dc.b	221				
	.dc.b	4				
						
	.dc.b	210				
						
	.dc.b	225				
	.dc.b	233				
	.dc.b	80				
						
	.dc.b	18				
						
	.dc.b	225				
	.dc.b	245				
	.dc.b	155				
						
	.dc.b	146				
						
	.dc.b	226				
	.dc.b	1				
	.dc.b	231				
						
	.dc.b	50				
						
	.dc.b	226				
	.dc.b	14				
	.dc.b	51				
						
	.dc.b	18				
						
	.dc.b	226				
	.dc.b	26				
	.dc.b	127				
						
	.dc.b	18				
						
	.dc.b	226				
	.dc.b	38				
	.dc.b	203				
						
	.dc.b	50				
						
	.dc.b	226				
	.dc.b	51				
	.dc.b	23				
						
	.dc.b	114				
						
	.dc.b	226				
	.dc.b	63				
	.dc.b	99				
						
	.dc.b	242				
						
	.dc.b	226				
	.dc.b	75				
	.dc.b	176				
						
	.dc.b	146				
						
	.dc.b	226				
	.dc.b	87				
	.dc.b	253				
						
	.dc.b	114				
						
	.dc.b	226				
	.dc.b	100				
	.dc.b	74				
						
	.dc.b	114				
						
	.dc.b	226				
	.dc.b	112				
	.dc.b	151				
						
	.dc.b	146				
						
	.dc.b	226				
	.dc.b	124				
	.dc.b	228				
						
	.dc.b	210				
						
	.dc.b	226				
	.dc.b	137				
	.dc.b	50				
						
	.dc.b	82				
						
	.dc.b	226				
	.dc.b	149				
	.dc.b	127				
						
	.dc.b	242				
						
	.dc.b	226				
	.dc.b	161				
	.dc.b	205				
						
	.dc.b	210				
						
	.dc.b	226				
	.dc.b	174				
	.dc.b	27				
						
	.dc.b	210				
						
	.dc.b	226				
	.dc.b	186				
	.dc.b	105				
						
	.dc.b	242				
						
	.dc.b	226				
	.dc.b	198				
	.dc.b	184				
						
	.dc.b	50				
						
	.dc.b	226				
	.dc.b	211				
	.dc.b	6				
						
	.dc.b	178				
						
	.dc.b	226				
	.dc.b	223				
	.dc.b	85				
						
	.dc.b	82				
						
	.dc.b	226				
	.dc.b	235				
	.dc.b	164				
						
	.dc.b	50				
						
	.dc.b	226				
	.dc.b	247				
	.dc.b	243				
						
	.dc.b	50				
						
	.dc.b	227				
	.dc.b	4				
	.dc.b	66				
						
	.dc.b	82				
						
	.dc.b	227				
	.dc.b	16				
	.dc.b	145				
						
	.dc.b	178				
						
	.dc.b	227				
	.dc.b	28				
	.dc.b	225				
						
	.dc.b	50				
						
	.dc.b	227				
	.dc.b	41				
	.dc.b	48				
						
	.dc.b	210				
						
	.dc.b	227				
	.dc.b	53				
	.dc.b	128				
						
	.dc.b	146				
						
	.dc.b	227				
	.dc.b	65				
	.dc.b	208				
						
	.dc.b	146				
						
	.dc.b	227				
	.dc.b	78				
	.dc.b	32				
						
	.dc.b	178				
						
	.dc.b	227				
	.dc.b	90				
	.dc.b	113				
						
	.dc.b	18				
						
	.dc.b	227				
	.dc.b	102				
	.dc.b	193				
						
	.dc.b	146				
						
	.dc.b	227				
	.dc.b	115				
	.dc.b	18				
						
	.dc.b	50				
						
	.dc.b	227				
	.dc.b	127				
	.dc.b	99				
						
	.dc.b	18				
						
	.dc.b	227				
	.dc.b	139				
	.dc.b	179				
						
	.dc.b	242				
						
	.dc.b	227				
	.dc.b	152				
	.dc.b	5				
						
	.dc.b	50				
						
	.dc.b	227				
	.dc.b	164				
	.dc.b	86				
						
	.dc.b	114				
						
	.dc.b	227				
	.dc.b	176				
	.dc.b	167				
						
	.dc.b	242				
						
	.dc.b	227				
	.dc.b	188				
	.dc.b	249				
						
	.dc.b	146				
						
	.dc.b	227				
	.dc.b	201				
	.dc.b	75				
						
	.dc.b	114				
						
	.dc.b	227				
	.dc.b	213				
	.dc.b	157				
						
	.dc.b	114				
						
	.dc.b	227				
	.dc.b	225				
	.dc.b	239				
						
	.dc.b	146				
						
	.dc.b	227				
	.dc.b	238				
	.dc.b	65				
						
	.dc.b	210				
						
	.dc.b	227				
	.dc.b	250				
	.dc.b	148				
						
	.dc.b	82				
						
	.dc.b	228				
	.dc.b	6				
	.dc.b	230				
						
	.dc.b	242				
						
	.dc.b	228				
	.dc.b	19				
	.dc.b	57				
						
	.dc.b	210				
						
	.dc.b	228				
	.dc.b	31				
	.dc.b	140				
						
	.dc.b	210				
						
	.dc.b	228				
	.dc.b	43				
	.dc.b	223				
						
	.dc.b	242				
						
	.dc.b	228				
	.dc.b	56				
	.dc.b	51				
						
	.dc.b	82				
						
	.dc.b	228				
	.dc.b	68				
	.dc.b	134				
						
	.dc.b	210				
						
	.dc.b	228				
	.dc.b	80				
	.dc.b	218				
						
	.dc.b	114				
						
	.dc.b	228				
	.dc.b	93				
	.dc.b	46				
						
	.dc.b	50				
						
	.dc.b	228				
	.dc.b	105				
	.dc.b	130				
						
	.dc.b	50				
						
	.dc.b	228				
	.dc.b	117				
	.dc.b	214				
						
	.dc.b	82				
						
	.dc.b	228				
	.dc.b	130				
	.dc.b	42				
						
	.dc.b	178				
						
	.dc.b	228				
	.dc.b	142				
	.dc.b	127				
						
	.dc.b	50				
						
	.dc.b	228				
	.dc.b	154				
	.dc.b	211				
						
	.dc.b	210				
						
	.dc.b	228				
	.dc.b	167				
	.dc.b	40				
						
	.dc.b	146				
						
	.dc.b	228				
	.dc.b	179				
	.dc.b	125				
						
	.dc.b	146				
						
	.dc.b	228				
	.dc.b	191				
	.dc.b	210				
						
	.dc.b	178				
						
	.dc.b	228				
	.dc.b	204				
	.dc.b	40				
						
	.dc.b	18				
						
	.dc.b	228				
	.dc.b	216				
	.dc.b	125				
						
	.dc.b	146				
						
	.dc.b	228				
	.dc.b	228				
	.dc.b	211				
						
	.dc.b	50				
						
	.dc.b	228				
	.dc.b	241				
	.dc.b	40				
						
	.dc.b	242				
						
	.dc.b	228				
	.dc.b	253				
	.dc.b	126				
						
	.dc.b	242				
						
	.dc.b	229				
	.dc.b	9				
	.dc.b	213				
						
	.dc.b	18				
						
	.dc.b	229				
	.dc.b	22				
	.dc.b	43				
						
	.dc.b	114				
						
	.dc.b	229				
	.dc.b	34				
	.dc.b	129				
						
	.dc.b	242				
						
	.dc.b	229				
	.dc.b	46				
	.dc.b	216				
						
	.dc.b	146				
						
	.dc.b	229				
	.dc.b	59				
	.dc.b	47				
						
	.dc.b	82				
						
	.dc.b	229				
	.dc.b	71				
	.dc.b	134				
						
	.dc.b	82				
						
	.dc.b	229				
	.dc.b	83				
	.dc.b	221				
						
	.dc.b	114				
						
	.dc.b	229				
	.dc.b	96				
	.dc.b	52				
						
	.dc.b	210				
						
	.dc.b	229				
	.dc.b	108				
	.dc.b	140				
						
	.dc.b	50				
						
	.dc.b	229				
	.dc.b	120				
	.dc.b	227				
						
	.dc.b	210				
						
	.dc.b	229				
	.dc.b	133				
	.dc.b	59				
						
	.dc.b	178				
						
	.dc.b	229				
	.dc.b	145				
	.dc.b	147				
						
	.dc.b	178				
						
	.dc.b	229				
	.dc.b	157				
	.dc.b	235				
						
	.dc.b	210				
						
	.dc.b	229				
	.dc.b	170				
	.dc.b	68				
						
	.dc.b	18				
						
	.dc.b	229				
	.dc.b	182				
	.dc.b	156				
						
	.dc.b	146				
						
	.dc.b	229				
	.dc.b	194				
	.dc.b	245				
						
	.dc.b	50				
						
	.dc.b	229				
	.dc.b	207				
	.dc.b	77				
						
	.dc.b	242				
						
	.dc.b	229				
	.dc.b	219				
	.dc.b	166				
						
	.dc.b	242				
						
	.dc.b	229				
	.dc.b	232				
	.dc.b	0				
						
	.dc.b	18				
						
	.dc.b	229				
	.dc.b	244				
	.dc.b	89				
						
	.dc.b	82				
						
	.dc.b	230				
	.dc.b	0				
	.dc.b	178				
						
	.dc.b	210				
						
	.dc.b	230				
	.dc.b	13				
	.dc.b	12				
						
	.dc.b	114				
						
	.dc.b	230				
	.dc.b	25				
	.dc.b	102				
						
	.dc.b	82				
						
	.dc.b	230				
	.dc.b	37				
	.dc.b	192				
						
	.dc.b	50				
						
	.dc.b	230				
	.dc.b	50				
	.dc.b	26				
						
	.dc.b	82				
						
	.dc.b	230				
	.dc.b	62				
	.dc.b	116				
						
	.dc.b	178				
						
	.dc.b	230				
	.dc.b	74				
	.dc.b	207				
						
	.dc.b	18				
						
	.dc.b	230				
	.dc.b	87				
	.dc.b	41				
						
	.dc.b	178				
						
	.dc.b	230				
	.dc.b	99				
	.dc.b	132				
						
	.dc.b	114				
						
	.dc.b	230				
	.dc.b	111				
	.dc.b	223				
						
	.dc.b	114				
						
	.dc.b	230				
	.dc.b	124				
	.dc.b	58				
						
	.dc.b	146				
						
	.dc.b	230				
	.dc.b	136				
	.dc.b	149				
						
	.dc.b	210				
						
	.dc.b	230				
	.dc.b	148				
	.dc.b	241				
						
	.dc.b	82				
						
	.dc.b	230				
	.dc.b	161				
	.dc.b	76				
						
	.dc.b	242				
						
	.dc.b	230				
	.dc.b	173				
	.dc.b	168				
						
	.dc.b	178				
						
	.dc.b	230				
	.dc.b	186				
	.dc.b	4				
						
	.dc.b	178				
						
	.dc.b	230				
	.dc.b	198				
	.dc.b	96				
						
	.dc.b	210				
						
	.dc.b	230				
	.dc.b	210				
	.dc.b	189				
						
	.dc.b	18				
						
	.dc.b	230				
	.dc.b	223				
	.dc.b	25				
						
	.dc.b	114				
						
	.dc.b	230				
	.dc.b	235				
	.dc.b	118				
						
	.dc.b	18				
						
	.dc.b	230				
	.dc.b	247				
	.dc.b	210				
						
	.dc.b	210				
						
	.dc.b	231				
	.dc.b	4				
	.dc.b	47				
						
	.dc.b	210				
						
	.dc.b	231				
	.dc.b	16				
	.dc.b	140				
						
	.dc.b	242				
						
	.dc.b	231				
	.dc.b	28				
	.dc.b	234				
						
	.dc.b	50				
						
	.dc.b	231				
	.dc.b	41				
	.dc.b	71				
						
	.dc.b	178				
						
	.dc.b	231				
	.dc.b	53				
	.dc.b	165				
						
	.dc.b	50				
						
	.dc.b	231				
	.dc.b	66				
	.dc.b	2				
						
	.dc.b	242				
						
	.dc.b	231				
	.dc.b	78				
	.dc.b	96				
						
	.dc.b	242				
						
	.dc.b	231				
	.dc.b	90				
	.dc.b	191				
						
	.dc.b	18				
						
	.dc.b	231				
	.dc.b	103				
	.dc.b	29				
						
	.dc.b	82				
						
	.dc.b	231				
	.dc.b	115				
	.dc.b	123				
						
	.dc.b	178				
						
	.dc.b	231				
	.dc.b	127				
	.dc.b	218				
						
	.dc.b	82				
						
	.dc.b	231				
	.dc.b	140				
	.dc.b	57				
						
	.dc.b	18				
						
	.dc.b	231				
	.dc.b	152				
	.dc.b	151				
						
	.dc.b	242				
						
	.dc.b	231				
	.dc.b	164				
	.dc.b	247				
						
	.dc.b	18				
						
	.dc.b	231				
	.dc.b	177				
	.dc.b	86				
						
	.dc.b	82				
						
	.dc.b	231				
	.dc.b	189				
	.dc.b	181				
						
	.dc.b	210				
						
	.dc.b	231				
	.dc.b	202				
	.dc.b	21				
						
	.dc.b	82				
						
	.dc.b	231				
	.dc.b	214				
	.dc.b	117				
						
	.dc.b	18				
						
	.dc.b	231				
	.dc.b	226				
	.dc.b	213				
						
	.dc.b	18				
						
	.dc.b	231				
	.dc.b	239				
	.dc.b	53				
						
	.dc.b	18				
						
	.dc.b	231				
	.dc.b	251				
	.dc.b	149				
						
	.dc.b	82				
						
	.dc.b	232				
	.dc.b	7				
	.dc.b	245				
						
	.dc.b	178				
						
	.dc.b	232				
	.dc.b	20				
	.dc.b	86				
						
	.dc.b	82				
						
	.dc.b	232				
	.dc.b	32				
	.dc.b	183				
						
	.dc.b	18				
						
	.dc.b	232				
	.dc.b	45				
	.dc.b	23				
						
	.dc.b	242				
						
	.dc.b	232				
	.dc.b	57				
	.dc.b	121				
						
	.dc.b	18				
						
	.dc.b	232				
	.dc.b	69				
	.dc.b	218				
						
	.dc.b	82				
						
	.dc.b	232				
	.dc.b	82				
	.dc.b	59				
						
	.dc.b	178				
						
	.dc.b	232				
	.dc.b	94				
	.dc.b	157				
						
	.dc.b	50				
						
	.dc.b	232				
	.dc.b	106				
	.dc.b	254				
						
	.dc.b	242				
						
	.dc.b	232				
	.dc.b	119				
	.dc.b	96				
						
	.dc.b	210				
						
	.dc.b	232				
	.dc.b	131				
	.dc.b	194				
						
	.dc.b	242				
						
	.dc.b	232				
	.dc.b	144				
	.dc.b	37				
						
	.dc.b	50				
						
	.dc.b	232				
	.dc.b	156				
	.dc.b	135				
						
	.dc.b	146				
						
	.dc.b	232				
	.dc.b	168				
	.dc.b	234				
						
	.dc.b	18				
						
	.dc.b	232				
	.dc.b	181				
	.dc.b	76				
						
	.dc.b	210				
						
	.dc.b	232				
	.dc.b	193				
	.dc.b	175				
						
	.dc.b	178				
						
	.dc.b	232				
	.dc.b	206				
	.dc.b	18				
						
	.dc.b	178				
						
	.dc.b	232				
	.dc.b	218				
	.dc.b	117				
						
	.dc.b	242				
						
	.dc.b	232				
	.dc.b	230				
	.dc.b	217				
						
	.dc.b	82				
						
	.dc.b	232				
	.dc.b	243				
	.dc.b	60				
						
	.dc.b	242				
						
	.dc.b	232				
	.dc.b	255				
	.dc.b	160				
						
	.dc.b	146				
						
	.dc.b	233				
	.dc.b	12				
	.dc.b	4				
						
	.dc.b	114				
						
	.dc.b	233				
	.dc.b	24				
	.dc.b	104				
						
	.dc.b	146				
						
	.dc.b	233				
	.dc.b	36				
	.dc.b	204				
						
	.dc.b	178				
						
	.dc.b	233				
	.dc.b	49				
	.dc.b	49				
						
	.dc.b	18				
						
	.dc.b	233				
	.dc.b	61				
	.dc.b	149				
						
	.dc.b	146				
						
	.dc.b	233				
	.dc.b	73				
	.dc.b	250				
						
	.dc.b	82				
						
	.dc.b	233				
	.dc.b	86				
	.dc.b	95				
						
	.dc.b	50				
						
	.dc.b	233				
	.dc.b	98				
	.dc.b	196				
						
	.dc.b	50				
						
	.dc.b	233				
	.dc.b	111				
	.dc.b	41				
						
	.dc.b	114				
						
	.dc.b	233				
	.dc.b	123				
	.dc.b	142				
						
	.dc.b	178				
						
	.dc.b	233				
	.dc.b	135				
	.dc.b	244				
						
	.dc.b	50				
						
	.dc.b	233				
	.dc.b	148				
	.dc.b	89				
						
	.dc.b	242				
						
	.dc.b	233				
	.dc.b	160				
	.dc.b	191				
						
	.dc.b	210				
						
	.dc.b	233				
	.dc.b	173				
	.dc.b	37				
						
	.dc.b	210				
						
	.dc.b	233				
	.dc.b	185				
	.dc.b	139				
						
	.dc.b	242				
						
	.dc.b	233				
	.dc.b	197				
	.dc.b	242				
						
	.dc.b	82				
						
	.dc.b	233				
	.dc.b	210				
	.dc.b	88				
						
	.dc.b	210				
						
	.dc.b	233				
	.dc.b	222				
	.dc.b	191				
						
	.dc.b	114				
						
	.dc.b	233				
	.dc.b	235				
	.dc.b	38				
						
	.dc.b	82				
						
	.dc.b	233				
	.dc.b	247				
	.dc.b	141				
						
	.dc.b	82				
						
	.dc.b	234				
	.dc.b	3				
	.dc.b	244				
						
	.dc.b	114				
						
	.dc.b	234				
	.dc.b	16				
	.dc.b	91				
						
	.dc.b	210				
						
	.dc.b	234				
	.dc.b	28				
	.dc.b	195				
						
	.dc.b	82				
						
	.dc.b	234				
	.dc.b	41				
	.dc.b	42				
						
	.dc.b	242				
						
	.dc.b	234				
	.dc.b	53				
	.dc.b	146				
						
	.dc.b	210				
						
	.dc.b	234				
	.dc.b	65				
	.dc.b	250				
						
	.dc.b	210				
						
	.dc.b	234				
	.dc.b	78				
	.dc.b	98				
						
	.dc.b	242				
						
	.dc.b	234				
	.dc.b	90				
	.dc.b	203				
						
	.dc.b	50				
						
	.dc.b	234				
	.dc.b	103				
	.dc.b	51				
						
	.dc.b	178				
						
	.dc.b	234				
	.dc.b	115				
	.dc.b	156				
						
	.dc.b	82				
						
	.dc.b	234				
	.dc.b	128				
	.dc.b	5				
						
	.dc.b	50				
						
	.dc.b	234				
	.dc.b	140				
	.dc.b	110				
						
	.dc.b	50				
						
	.dc.b	234				
	.dc.b	152				
	.dc.b	215				
						
	.dc.b	82				
						
	.dc.b	234				
	.dc.b	165				
	.dc.b	64				
						
	.dc.b	146				
						
	.dc.b	234				
	.dc.b	177				
	.dc.b	170				
						
	.dc.b	18				
						
	.dc.b	234				
	.dc.b	190				
	.dc.b	19				
						
	.dc.b	178				
						
	.dc.b	234				
	.dc.b	202				
	.dc.b	125				
						
	.dc.b	114				
						
	.dc.b	234				
	.dc.b	214				
	.dc.b	231				
						
	.dc.b	114				
						
	.dc.b	234				
	.dc.b	227				
	.dc.b	81				
						
	.dc.b	146				
						
	.dc.b	234				
	.dc.b	239				
	.dc.b	187				
						
	.dc.b	210				
						
	.dc.b	234				
	.dc.b	252				
	.dc.b	38				
						
	.dc.b	50				
						
	.dc.b	235				
	.dc.b	8				
	.dc.b	144				
						
	.dc.b	210				
						
	.dc.b	235				
	.dc.b	20				
	.dc.b	251				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	33				
	.dc.b	102				
						
	.dc.b	146				
						
	.dc.b	235				
	.dc.b	45				
	.dc.b	209				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	58				
	.dc.b	60				
						
	.dc.b	242				
						
	.dc.b	235				
	.dc.b	70				
	.dc.b	168				
						
	.dc.b	82				
						
	.dc.b	235				
	.dc.b	83				
	.dc.b	19				
						
	.dc.b	242				
						
	.dc.b	235				
	.dc.b	95				
	.dc.b	127				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	107				
	.dc.b	235				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	120				
	.dc.b	87				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	132				
	.dc.b	195				
						
	.dc.b	242				
						
	.dc.b	235				
	.dc.b	145				
	.dc.b	48				
						
	.dc.b	114				
						
	.dc.b	235				
	.dc.b	157				
	.dc.b	156				
						
	.dc.b	242				
						
	.dc.b	235				
	.dc.b	170				
	.dc.b	9				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	182				
	.dc.b	118				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	194				
	.dc.b	227				
						
	.dc.b	178				
						
	.dc.b	235				
	.dc.b	207				
	.dc.b	80				
						
	.dc.b	242				
						
	.dc.b	235				
	.dc.b	219				
	.dc.b	190				
						
	.dc.b	82				
						
	.dc.b	235				
	.dc.b	232				
	.dc.b	43				
						
	.dc.b	242				
						
	.dc.b	235				
	.dc.b	244				
	.dc.b	153				
						
	.dc.b	146				
						
	.dc.b	236				
	.dc.b	1				
	.dc.b	7				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	13				
	.dc.b	117				
						
	.dc.b	146				
						
	.dc.b	236				
	.dc.b	25				
	.dc.b	227				
						
	.dc.b	210				
						
	.dc.b	236				
	.dc.b	38				
	.dc.b	82				
						
	.dc.b	50				
						
	.dc.b	236				
	.dc.b	50				
	.dc.b	192				
						
	.dc.b	178				
						
	.dc.b	236				
	.dc.b	63				
	.dc.b	47				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	75				
	.dc.b	158				
						
	.dc.b	82				
						
	.dc.b	236				
	.dc.b	88				
	.dc.b	13				
						
	.dc.b	82				
						
	.dc.b	236				
	.dc.b	100				
	.dc.b	124				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	112				
	.dc.b	235				
						
	.dc.b	210				
						
	.dc.b	236				
	.dc.b	125				
	.dc.b	91				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	137				
	.dc.b	203				
						
	.dc.b	18				
						
	.dc.b	236				
	.dc.b	150				
	.dc.b	58				
						
	.dc.b	242				
						
	.dc.b	236				
	.dc.b	162				
	.dc.b	170				
						
	.dc.b	242				
						
	.dc.b	236				
	.dc.b	175				
	.dc.b	27				
						
	.dc.b	18				
						
	.dc.b	236				
	.dc.b	187				
	.dc.b	139				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	199				
	.dc.b	251				
						
	.dc.b	242				
						
	.dc.b	236				
	.dc.b	212				
	.dc.b	108				
						
	.dc.b	146				
						
	.dc.b	236				
	.dc.b	224				
	.dc.b	221				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	237				
	.dc.b	78				
						
	.dc.b	114				
						
	.dc.b	236				
	.dc.b	249				
	.dc.b	191				
						
	.dc.b	146				
						
	.dc.b	237				
	.dc.b	6				
	.dc.b	48				
						
	.dc.b	242				
						
	.dc.b	237				
	.dc.b	18				
	.dc.b	162				
						
	.dc.b	114				
						
	.dc.b	237				
	.dc.b	31				
	.dc.b	20				
						
	.dc.b	18				
						
	.dc.b	237				
	.dc.b	43				
	.dc.b	133				
						
	.dc.b	210				
						
	.dc.b	237				
	.dc.b	55				
	.dc.b	247				
						
	.dc.b	210				
						
	.dc.b	237				
	.dc.b	68				
	.dc.b	105				
						
	.dc.b	242				
						
	.dc.b	237				
	.dc.b	80				
	.dc.b	220				
						
	.dc.b	82				
						
	.dc.b	237				
	.dc.b	93				
	.dc.b	78				
						
	.dc.b	178				
						
	.dc.b	237				
	.dc.b	105				
	.dc.b	193				
						
	.dc.b	82				
						
	.dc.b	237				
	.dc.b	118				
	.dc.b	52				
						
	.dc.b	50				
						
	.dc.b	237				
	.dc.b	130				
	.dc.b	167				
						
	.dc.b	18				
						
	.dc.b	237				
	.dc.b	143				
	.dc.b	26				
						
	.dc.b	50				
						
	.dc.b	237				
	.dc.b	155				
	.dc.b	141				
						
	.dc.b	146				
						
	.dc.b	237				
	.dc.b	168				
	.dc.b	0				
						
	.dc.b	242				
						
	.dc.b	237				
	.dc.b	180				
	.dc.b	116				
						
	.dc.b	146				
						
	.dc.b	237				
	.dc.b	192				
	.dc.b	232				
						
	.dc.b	82				
						
	.dc.b	237				
	.dc.b	205				
	.dc.b	92				
						
	.dc.b	82				
						
	.dc.b	237				
	.dc.b	217				
	.dc.b	208				
						
	.dc.b	82				
						
	.dc.b	237				
	.dc.b	230				
	.dc.b	68				
						
	.dc.b	146				
						
	.dc.b	237				
	.dc.b	242				
	.dc.b	185				
						
	.dc.b	18				
						
	.dc.b	237				
	.dc.b	255				
	.dc.b	45				
						
	.dc.b	146				
						
	.dc.b	238				
	.dc.b	11				
	.dc.b	162				
						
	.dc.b	82				
						
	.dc.b	238				
	.dc.b	24				
	.dc.b	23				
						
	.dc.b	82				
						
	.dc.b	238				
	.dc.b	36				
	.dc.b	140				
						
	.dc.b	82				
						
	.dc.b	238				
	.dc.b	49				
	.dc.b	1				
						
	.dc.b	146				
						
	.dc.b	238				
	.dc.b	61				
	.dc.b	118				
						
	.dc.b	242				
						
	.dc.b	238				
	.dc.b	73				
	.dc.b	236				
						
	.dc.b	146				
						
	.dc.b	238				
	.dc.b	86				
	.dc.b	98				
						
	.dc.b	82				
						
	.dc.b	238				
	.dc.b	98				
	.dc.b	216				
						
	.dc.b	50				
						
	.dc.b	238				
	.dc.b	111				
	.dc.b	78				
						
	.dc.b	50				
						
	.dc.b	238				
	.dc.b	123				
	.dc.b	196				
						
	.dc.b	114				
						
	.dc.b	238				
	.dc.b	136				
	.dc.b	58				
						
	.dc.b	210				
						
	.dc.b	238				
	.dc.b	148				
	.dc.b	177				
						
	.dc.b	82				
						
	.dc.b	238				
	.dc.b	161				
	.dc.b	40				
						
	.dc.b	18				
						
	.dc.b	238				
	.dc.b	173				
	.dc.b	158				
						
	.dc.b	242				
						
	.dc.b	238				
	.dc.b	186				
	.dc.b	21				
						
	.dc.b	242				
						
	.dc.b	238				
	.dc.b	198				
	.dc.b	141				
						
	.dc.b	18				
						
	.dc.b	238				
	.dc.b	211				
	.dc.b	4				
						
	.dc.b	114				
						
	.dc.b	238				
	.dc.b	223				
	.dc.b	123				
						
	.dc.b	242				
						
	.dc.b	238				
	.dc.b	235				
	.dc.b	243				
						
	.dc.b	178				
						
	.dc.b	238				
	.dc.b	248				
	.dc.b	107				
						
	.dc.b	146				
						
	.dc.b	239				
	.dc.b	4				
	.dc.b	227				
						
	.dc.b	146				
						
	.dc.b	239				
	.dc.b	17				
	.dc.b	91				
						
	.dc.b	178				
						
	.dc.b	239				
	.dc.b	29				
	.dc.b	211				
						
	.dc.b	242				
						
	.dc.b	239				
	.dc.b	42				
	.dc.b	76				
						
	.dc.b	114				
						
	.dc.b	239				
	.dc.b	54				
	.dc.b	197				
						
	.dc.b	50				
						
	.dc.b	239				
	.dc.b	67				
	.dc.b	61				
						
	.dc.b	242				
						
	.dc.b	239				
	.dc.b	79				
	.dc.b	182				
						
	.dc.b	242				
						
	.dc.b	239				
	.dc.b	92				
	.dc.b	48				
						
	.dc.b	18				
						
	.dc.b	239				
	.dc.b	104				
	.dc.b	169				
						
	.dc.b	114				
						
	.dc.b	239				
	.dc.b	117				
	.dc.b	34				
						
	.dc.b	210				
						
	.dc.b	239				
	.dc.b	129				
	.dc.b	156				
						
	.dc.b	114				
						
	.dc.b	239				
	.dc.b	142				
	.dc.b	22				
						
	.dc.b	82				
						
	.dc.b	239				
	.dc.b	154				
	.dc.b	144				
						
	.dc.b	50				
						
	.dc.b	239				
	.dc.b	167				
	.dc.b	10				
						
	.dc.b	82				
						
	.dc.b	239				
	.dc.b	179				
	.dc.b	132				
						
	.dc.b	146				
						
	.dc.b	239				
	.dc.b	191				
	.dc.b	255				
						
	.dc.b	18				
						
	.dc.b	239				
	.dc.b	204				
	.dc.b	121				
						
	.dc.b	178				
						
	.dc.b	239				
	.dc.b	216				
	.dc.b	244				
						
	.dc.b	114				
						
	.dc.b	239				
	.dc.b	229				
	.dc.b	111				
						
	.dc.b	82				
						
	.dc.b	239				
	.dc.b	241				
	.dc.b	234				
						
	.dc.b	114				
						
	.dc.b	239				
	.dc.b	254				
	.dc.b	101				
						
	.dc.b	178				
						
	.dc.b	240				
	.dc.b	10				
	.dc.b	225				
						
	.dc.b	18				
						
	.dc.b	240				
	.dc.b	23				
	.dc.b	92				
						
	.dc.b	178				
						
	.dc.b	240				
	.dc.b	35				
	.dc.b	216				
						
	.dc.b	114				
						
	.dc.b	240				
	.dc.b	48				
	.dc.b	84				
						
	.dc.b	82				
						
	.dc.b	240				
	.dc.b	60				
	.dc.b	208				
						
	.dc.b	114				
						
	.dc.b	240				
	.dc.b	73				
	.dc.b	76				
						
	.dc.b	146				
						
	.dc.b	240				
	.dc.b	85				
	.dc.b	200				
						
	.dc.b	242				
						
	.dc.b	240				
	.dc.b	98				
	.dc.b	69				
						
	.dc.b	146				
						
	.dc.b	240				
	.dc.b	110				
	.dc.b	194				
						
	.dc.b	82				
						
	.dc.b	240				
	.dc.b	123				
	.dc.b	63				
						
	.dc.b	50				
						
	.dc.b	240				
	.dc.b	135				
	.dc.b	188				
						
	.dc.b	50				
						
	.dc.b	240				
	.dc.b	148				
	.dc.b	57				
						
	.dc.b	82				
						
	.dc.b	240				
	.dc.b	160				
	.dc.b	182				
						
	.dc.b	178				
						
	.dc.b	240				
	.dc.b	173				
	.dc.b	52				
						
	.dc.b	82				
						
	.dc.b	240				
	.dc.b	185				
	.dc.b	177				
						
	.dc.b	242				
						
	.dc.b	240				
	.dc.b	198				
	.dc.b	47				
						
	.dc.b	210				
						
	.dc.b	240				
	.dc.b	210				
	.dc.b	173				
						
	.dc.b	210				
						
	.dc.b	240				
	.dc.b	223				
	.dc.b	43				
						
	.dc.b	242				
						
	.dc.b	240				
	.dc.b	235				
	.dc.b	170				
						
	.dc.b	82				
						
	.dc.b	240				
	.dc.b	248				
	.dc.b	40				
						
	.dc.b	210				
						
	.dc.b	241				
	.dc.b	4				
	.dc.b	167				
						
	.dc.b	114				
						
	.dc.b	241				
	.dc.b	17				
	.dc.b	38				
						
	.dc.b	82				
						
	.dc.b	241				
	.dc.b	29				
	.dc.b	165				
						
	.dc.b	82				
						
	.dc.b	241				
	.dc.b	42				
	.dc.b	36				
						
	.dc.b	114				
						
	.dc.b	241				
	.dc.b	54				
	.dc.b	163				
						
	.dc.b	178				
						
	.dc.b	241				
	.dc.b	67				
	.dc.b	35				
						
	.dc.b	50				
						
	.dc.b	241				
	.dc.b	79				
	.dc.b	162				
						
	.dc.b	210				
						
	.dc.b	241				
	.dc.b	92				
	.dc.b	34				
						
	.dc.b	146				
						
	.dc.b	241				
	.dc.b	104				
	.dc.b	162				
						
	.dc.b	146				
						
	.dc.b	241				
	.dc.b	117				
	.dc.b	34				
						
	.dc.b	178				
						
	.dc.b	241				
	.dc.b	129				
	.dc.b	162				
						
	.dc.b	242				
						
	.dc.b	241				
	.dc.b	142				
	.dc.b	35				
						
	.dc.b	82				
						
	.dc.b	241				
	.dc.b	154				
	.dc.b	163				
						
	.dc.b	242				
						
	.dc.b	241				
	.dc.b	167				
	.dc.b	36				
						
	.dc.b	178				
						
	.dc.b	241				
	.dc.b	179				
	.dc.b	165				
						
	.dc.b	178				
						
	.dc.b	241				
	.dc.b	192				
	.dc.b	38				
						
	.dc.b	178				
						
	.dc.b	241				
	.dc.b	204				
	.dc.b	167				
						
	.dc.b	242				
						
	.dc.b	241				
	.dc.b	217				
	.dc.b	41				
						
	.dc.b	114				
						
	.dc.b	241				
	.dc.b	229				
	.dc.b	170				
						
	.dc.b	242				
						
	.dc.b	241				
	.dc.b	242				
	.dc.b	44				
						
	.dc.b	178				
						
	.dc.b	241				
	.dc.b	254				
	.dc.b	174				
						
	.dc.b	146				
						
	.dc.b	242				
	.dc.b	11				
	.dc.b	48				
						
	.dc.b	178				
						
	.dc.b	242				
	.dc.b	23				
	.dc.b	178				
						
	.dc.b	210				
						
	.dc.b	242				
	.dc.b	36				
	.dc.b	53				
						
	.dc.b	50				
						
	.dc.b	242				
	.dc.b	48				
	.dc.b	183				
						
	.dc.b	210				
						
	.dc.b	242				
	.dc.b	61				
	.dc.b	58				
						
	.dc.b	114				
						
	.dc.b	242				
	.dc.b	73				
	.dc.b	189				
						
	.dc.b	82				
						
	.dc.b	242				
	.dc.b	86				
	.dc.b	64				
						
	.dc.b	82				
						
	.dc.b	242				
	.dc.b	98				
	.dc.b	195				
						
	.dc.b	146				
						
	.dc.b	242				
	.dc.b	111				
	.dc.b	70				
						
	.dc.b	242				
						
	.dc.b	242				
	.dc.b	123				
	.dc.b	202				
						
	.dc.b	114				
						
	.dc.b	242				
	.dc.b	136				
	.dc.b	78				
						
	.dc.b	18				
						
	.dc.b	242				
	.dc.b	148				
	.dc.b	209				
						
	.dc.b	242				
						
	.dc.b	242				
	.dc.b	161				
	.dc.b	85				
						
	.dc.b	242				
						
	.dc.b	242				
	.dc.b	173				
	.dc.b	218				
						
	.dc.b	18				
						
	.dc.b	242				
	.dc.b	186				
	.dc.b	94				
						
	.dc.b	82				
						
	.dc.b	242				
	.dc.b	198				
	.dc.b	226				
						
	.dc.b	210				
						
	.dc.b	242				
	.dc.b	211				
	.dc.b	103				
						
	.dc.b	114				
						
	.dc.b	242				
	.dc.b	223				
	.dc.b	236				
						
	.dc.b	82				
						
	.dc.b	242				
	.dc.b	236				
	.dc.b	113				
						
	.dc.b	50				
						
	.dc.b	242				
	.dc.b	248				
	.dc.b	246				
						
	.dc.b	82				
						
	.dc.b	243				
	.dc.b	5				
	.dc.b	123				
						
	.dc.b	178				
						
	.dc.b	243				
	.dc.b	18				
	.dc.b	1				
						
	.dc.b	18				
						
	.dc.b	243				
	.dc.b	30				
	.dc.b	134				
						
	.dc.b	178				
						
	.dc.b	243				
	.dc.b	43				
	.dc.b	12				
						
	.dc.b	114				
						
	.dc.b	243				
	.dc.b	55				
	.dc.b	146				
						
	.dc.b	82				
						
	.dc.b	243				
	.dc.b	68				
	.dc.b	24				
						
	.dc.b	114				
						
	.dc.b	243				
	.dc.b	80				
	.dc.b	158				
						
	.dc.b	178				
						
	.dc.b	243				
	.dc.b	93				
	.dc.b	37				
						
	.dc.b	50				
						
	.dc.b	243				
	.dc.b	105				
	.dc.b	171				
						
	.dc.b	178				
						
	.dc.b	243				
	.dc.b	118				
	.dc.b	50				
						
	.dc.b	114				
						
	.dc.b	243				
	.dc.b	130				
	.dc.b	185				
						
	.dc.b	82				
						
	.dc.b	243				
	.dc.b	143				
	.dc.b	64				
						
	.dc.b	114				
						
	.dc.b	243				
	.dc.b	155				
	.dc.b	199				
						
	.dc.b	146				
						
	.dc.b	243				
	.dc.b	168				
	.dc.b	78				
						
	.dc.b	242				
						
	.dc.b	243				
	.dc.b	180				
	.dc.b	214				
						
	.dc.b	146				
						
	.dc.b	243				
	.dc.b	193				
	.dc.b	94				
						
	.dc.b	50				
						
	.dc.b	243				
	.dc.b	205				
	.dc.b	230				
						
	.dc.b	18				
						
	.dc.b	243				
	.dc.b	218				
	.dc.b	110				
						
	.dc.b	18				
						
	.dc.b	243				
	.dc.b	230				
	.dc.b	246				
						
	.dc.b	82				
						
	.dc.b	243				
	.dc.b	243				
	.dc.b	126				
						
	.dc.b	178				
						
	.dc.b	244				
	.dc.b	0				
	.dc.b	7				
						
	.dc.b	50				
						
	.dc.b	244				
	.dc.b	12				
	.dc.b	143				
						
	.dc.b	210				
						
	.dc.b	244				
	.dc.b	25				
	.dc.b	24				
						
	.dc.b	178				
						
	.dc.b	244				
	.dc.b	37				
	.dc.b	161				
						
	.dc.b	146				
						
	.dc.b	244				
	.dc.b	50				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	244				
	.dc.b	62				
	.dc.b	180				
						
	.dc.b	18				
						
	.dc.b	244				
	.dc.b	75				
	.dc.b	61				
						
	.dc.b	146				
						
	.dc.b	244				
	.dc.b	87				
	.dc.b	199				
						
	.dc.b	50				
						
	.dc.b	244				
	.dc.b	100				
	.dc.b	80				
						
	.dc.b	242				
						
	.dc.b	244				
	.dc.b	112				
	.dc.b	218				
						
	.dc.b	242				
						
	.dc.b	244				
	.dc.b	125				
	.dc.b	101				
						
	.dc.b	18				
						
	.dc.b	244				
	.dc.b	137				
	.dc.b	239				
						
	.dc.b	82				
						
	.dc.b	244				
	.dc.b	150				
	.dc.b	121				
						
	.dc.b	210				
						
	.dc.b	244				
	.dc.b	163				
	.dc.b	4				
						
	.dc.b	82				
						
	.dc.b	244				
	.dc.b	175				
	.dc.b	143				
						
	.dc.b	18				
						
	.dc.b	244				
	.dc.b	188				
	.dc.b	26				
						
	.dc.b	18				
						
	.dc.b	244				
	.dc.b	200				
	.dc.b	165				
						
	.dc.b	18				
						
	.dc.b	244				
	.dc.b	213				
	.dc.b	48				
						
	.dc.b	82				
						
	.dc.b	244				
	.dc.b	225				
	.dc.b	187				
						
	.dc.b	178				
						
	.dc.b	244				
	.dc.b	238				
	.dc.b	71				
						
	.dc.b	82				
						
	.dc.b	244				
	.dc.b	250				
	.dc.b	211				
						
	.dc.b	18				
						
	.dc.b	245				
	.dc.b	7				
	.dc.b	94				
						
	.dc.b	242				
						
	.dc.b	245				
	.dc.b	19				
	.dc.b	234				
						
	.dc.b	242				
						
	.dc.b	245				
	.dc.b	32				
	.dc.b	119				
						
	.dc.b	50				
						
	.dc.b	245				
	.dc.b	45				
	.dc.b	3				
						
	.dc.b	146				
						
	.dc.b	245				
	.dc.b	57				
	.dc.b	144				
						
	.dc.b	18				
						
	.dc.b	245				
	.dc.b	70				
	.dc.b	28				
						
	.dc.b	178				
						
	.dc.b	245				
	.dc.b	82				
	.dc.b	169				
						
	.dc.b	146				
						
	.dc.b	245				
	.dc.b	95				
	.dc.b	54				
						
	.dc.b	146				
						
	.dc.b	245				
	.dc.b	107				
	.dc.b	195				
						
	.dc.b	210				
						
	.dc.b	245				
	.dc.b	120				
	.dc.b	81				
						
	.dc.b	18				
						
	.dc.b	245				
	.dc.b	132				
	.dc.b	222				
						
	.dc.b	146				
						
	.dc.b	245				
	.dc.b	145				
	.dc.b	108				
						
	.dc.b	50				
						
	.dc.b	245				
	.dc.b	157				
	.dc.b	250				
						
	.dc.b	18				
						
	.dc.b	245				
	.dc.b	170				
	.dc.b	135				
						
	.dc.b	242				
						
	.dc.b	245				
	.dc.b	183				
	.dc.b	22				
						
	.dc.b	18				
						
	.dc.b	245				
	.dc.b	195				
	.dc.b	164				
						
	.dc.b	114				
						
	.dc.b	245				
	.dc.b	208				
	.dc.b	50				
						
	.dc.b	210				
						
	.dc.b	245				
	.dc.b	220				
	.dc.b	193				
						
	.dc.b	114				
						
	.dc.b	245				
	.dc.b	233				
	.dc.b	80				
						
	.dc.b	50				
						
	.dc.b	245				
	.dc.b	245				
	.dc.b	223				
						
	.dc.b	50				
						
	.dc.b	246				
	.dc.b	2				
	.dc.b	110				
						
	.dc.b	82				
						
	.dc.b	246				
	.dc.b	14				
	.dc.b	253				
						
	.dc.b	146				
						
	.dc.b	246				
	.dc.b	27				
	.dc.b	140				
						
	.dc.b	242				
						
	.dc.b	246				
	.dc.b	40				
	.dc.b	28				
						
	.dc.b	146				
						
	.dc.b	246				
	.dc.b	52				
	.dc.b	172				
						
	.dc.b	50				
						
	.dc.b	246				
	.dc.b	65				
	.dc.b	60				
						
	.dc.b	50				
						
	.dc.b	246				
	.dc.b	77				
	.dc.b	204				
						
	.dc.b	50				
						
	.dc.b	246				
	.dc.b	90				
	.dc.b	92				
						
	.dc.b	114				
						
	.dc.b	246				
	.dc.b	102				
	.dc.b	236				
						
	.dc.b	210				
						
	.dc.b	246				
	.dc.b	115				
	.dc.b	125				
						
	.dc.b	82				
						
	.dc.b	246				
	.dc.b	128				
	.dc.b	13				
						
	.dc.b	242				
						
	.dc.b	246				
	.dc.b	140				
	.dc.b	158				
						
	.dc.b	210				
						
	.dc.b	246				
	.dc.b	153				
	.dc.b	47				
						
	.dc.b	210				
						
	.dc.b	246				
	.dc.b	165				
	.dc.b	193				
						
	.dc.b	18				
						
	.dc.b	246				
	.dc.b	178				
	.dc.b	82				
						
	.dc.b	82				
						
	.dc.b	246				
	.dc.b	190				
	.dc.b	227				
						
	.dc.b	210				
						
	.dc.b	246				
	.dc.b	203				
	.dc.b	117				
						
	.dc.b	146				
						
	.dc.b	246				
	.dc.b	216				
	.dc.b	7				
						
	.dc.b	82				
						
	.dc.b	246				
	.dc.b	228				
	.dc.b	153				
						
	.dc.b	82				
						
	.dc.b	246				
	.dc.b	241				
	.dc.b	43				
						
	.dc.b	114				
						
	.dc.b	246				
	.dc.b	253				
	.dc.b	189				
						
	.dc.b	178				
						
	.dc.b	247				
	.dc.b	10				
	.dc.b	80				
						
	.dc.b	50				
						
	.dc.b	247				
	.dc.b	22				
	.dc.b	226				
						
	.dc.b	210				
						
	.dc.b	247				
	.dc.b	35				
	.dc.b	117				
						
	.dc.b	146				
						
	.dc.b	247				
	.dc.b	48				
	.dc.b	8				
						
	.dc.b	146				
						
	.dc.b	247				
	.dc.b	60				
	.dc.b	155				
						
	.dc.b	146				
						
	.dc.b	247				
	.dc.b	73				
	.dc.b	46				
						
	.dc.b	210				
						
	.dc.b	247				
	.dc.b	85				
	.dc.b	194				
						
	.dc.b	82				
						
	.dc.b	247				
	.dc.b	98				
	.dc.b	85				
						
	.dc.b	210				
						
	.dc.b	247				
	.dc.b	110				
	.dc.b	233				
						
	.dc.b	146				
						
	.dc.b	247				
	.dc.b	123				
	.dc.b	125				
						
	.dc.b	114				
						
	.dc.b	247				
	.dc.b	136				
	.dc.b	17				
						
	.dc.b	146				
						
	.dc.b	247				
	.dc.b	148				
	.dc.b	165				
						
	.dc.b	178				
						
	.dc.b	247				
	.dc.b	161				
	.dc.b	58				
						
	.dc.b	18				
						
	.dc.b	247				
	.dc.b	173				
	.dc.b	206				
						
	.dc.b	178				
						
	.dc.b	247				
	.dc.b	186				
	.dc.b	99				
						
	.dc.b	82				
						
	.dc.b	247				
	.dc.b	198				
	.dc.b	248				
						
	.dc.b	50				
						
	.dc.b	247				
	.dc.b	211				
	.dc.b	141				
						
	.dc.b	50				
						
	.dc.b	247				
	.dc.b	224				
	.dc.b	34				
						
	.dc.b	114				
						
	.dc.b	247				
	.dc.b	236				
	.dc.b	183				
						
	.dc.b	178				
						
	.dc.b	247				
	.dc.b	249				
	.dc.b	77				
						
	.dc.b	50				
						
	.dc.b	248				
	.dc.b	5				
	.dc.b	226				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	18				
	.dc.b	120				
						
	.dc.b	178				
						
	.dc.b	248				
	.dc.b	31				
	.dc.b	14				
						
	.dc.b	178				
						
	.dc.b	248				
	.dc.b	43				
	.dc.b	164				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	56				
	.dc.b	59				
						
	.dc.b	18				
						
	.dc.b	248				
	.dc.b	68				
	.dc.b	209				
						
	.dc.b	114				
						
	.dc.b	248				
	.dc.b	81				
	.dc.b	104				
						
	.dc.b	18				
						
	.dc.b	248				
	.dc.b	93				
	.dc.b	254				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	106				
	.dc.b	149				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	119				
	.dc.b	44				
						
	.dc.b	242				
						
	.dc.b	248				
	.dc.b	131				
	.dc.b	196				
						
	.dc.b	50				
						
	.dc.b	248				
	.dc.b	144				
	.dc.b	91				
						
	.dc.b	146				
						
	.dc.b	248				
	.dc.b	156				
	.dc.b	243				
						
	.dc.b	18				
						
	.dc.b	248				
	.dc.b	169				
	.dc.b	138				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	182				
	.dc.b	34				
						
	.dc.b	178				
						
	.dc.b	248				
	.dc.b	194				
	.dc.b	186				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	207				
	.dc.b	82				
						
	.dc.b	242				
						
	.dc.b	248				
	.dc.b	219				
	.dc.b	235				
						
	.dc.b	82				
						
	.dc.b	248				
	.dc.b	232				
	.dc.b	131				
						
	.dc.b	210				
						
	.dc.b	248				
	.dc.b	245				
	.dc.b	28				
						
	.dc.b	146				
						
	.dc.b	249				
	.dc.b	1				
	.dc.b	181				
						
	.dc.b	82				
						
	.dc.b	249				
	.dc.b	14				
	.dc.b	78				
						
	.dc.b	82				
						
	.dc.b	249				
	.dc.b	26				
	.dc.b	231				
						
	.dc.b	146				
						
	.dc.b	249				
	.dc.b	39				
	.dc.b	128				
						
	.dc.b	210				
						
	.dc.b	249				
	.dc.b	52				
	.dc.b	26				
						
	.dc.b	82				
						
	.dc.b	249				
	.dc.b	64				
	.dc.b	179				
						
	.dc.b	242				
						
	.dc.b	249				
	.dc.b	77				
	.dc.b	77				
						
	.dc.b	178				
						
	.dc.b	249				
	.dc.b	89				
	.dc.b	231				
						
	.dc.b	178				
						
	.dc.b	249				
	.dc.b	102				
	.dc.b	129				
						
	.dc.b	210				
						
	.dc.b	249				
	.dc.b	115				
	.dc.b	28				
						
	.dc.b	18				
						
	.dc.b	249				
	.dc.b	127				
	.dc.b	182				
						
	.dc.b	146				
						
	.dc.b	249				
	.dc.b	140				
	.dc.b	81				
						
	.dc.b	18				
						
	.dc.b	249				
	.dc.b	152				
	.dc.b	235				
						
	.dc.b	210				
						
	.dc.b	249				
	.dc.b	165				
	.dc.b	134				
						
	.dc.b	210				
						
	.dc.b	249				
	.dc.b	178				
	.dc.b	33				
						
	.dc.b	210				
						
	.dc.b	249				
	.dc.b	190				
	.dc.b	189				
						
	.dc.b	18				
						
	.dc.b	249				
	.dc.b	203				
	.dc.b	88				
						
	.dc.b	114				
						
	.dc.b	249				
	.dc.b	215				
	.dc.b	244				
						
	.dc.b	18				
						
	.dc.b	249				
	.dc.b	228				
	.dc.b	143				
						
	.dc.b	178				
						
	.dc.b	249				
	.dc.b	241				
	.dc.b	43				
						
	.dc.b	146				
						
	.dc.b	249				
	.dc.b	253				
	.dc.b	199				
						
	.dc.b	146				
						
	.dc.b	250				
	.dc.b	10				
	.dc.b	99				
						
	.dc.b	210				
						
	.dc.b	250				
	.dc.b	23				
	.dc.b	0				
						
	.dc.b	50				
						
	.dc.b	250				
	.dc.b	35				
	.dc.b	156				
						
	.dc.b	178				
						
	.dc.b	250				
	.dc.b	48				
	.dc.b	57				
						
	.dc.b	82				
						
	.dc.b	250				
	.dc.b	60				
	.dc.b	214				
						
	.dc.b	18				
						
	.dc.b	250				
	.dc.b	73				
	.dc.b	115				
						
	.dc.b	18				
						
	.dc.b	250				
	.dc.b	86				
	.dc.b	16				
						
	.dc.b	50				
						
	.dc.b	250				
	.dc.b	98				
	.dc.b	173				
						
	.dc.b	146				
						
	.dc.b	250				
	.dc.b	111				
	.dc.b	74				
						
	.dc.b	242				
						
	.dc.b	250				
	.dc.b	123				
	.dc.b	232				
						
	.dc.b	146				
						
	.dc.b	250				
	.dc.b	136				
	.dc.b	134				
						
	.dc.b	82				
						
	.dc.b	250				
	.dc.b	149				
	.dc.b	36				
						
	.dc.b	82				
						
	.dc.b	250				
	.dc.b	161				
	.dc.b	194				
						
	.dc.b	114				
						
	.dc.b	250				
	.dc.b	174				
	.dc.b	96				
						
	.dc.b	178				
						
	.dc.b	250				
	.dc.b	186				
	.dc.b	255				
						
	.dc.b	18				
						
	.dc.b	250				
	.dc.b	199				
	.dc.b	157				
						
	.dc.b	146				
						
	.dc.b	250				
	.dc.b	212				
	.dc.b	60				
						
	.dc.b	82				
						
	.dc.b	250				
	.dc.b	224				
	.dc.b	219				
						
	.dc.b	50				
						
	.dc.b	250				
	.dc.b	237				
	.dc.b	122				
						
	.dc.b	82				
						
	.dc.b	250				
	.dc.b	250				
	.dc.b	25				
						
	.dc.b	114				
						
	.dc.b	251				
	.dc.b	6				
	.dc.b	184				
						
	.dc.b	210				
						
	.dc.b	251				
	.dc.b	19				
	.dc.b	88				
						
	.dc.b	82				
						
	.dc.b	251				
	.dc.b	31				
	.dc.b	248				
						
	.dc.b	18				
						
	.dc.b	251				
	.dc.b	44				
	.dc.b	151				
						
	.dc.b	210				
						
	.dc.b	251				
	.dc.b	57				
	.dc.b	55				
						
	.dc.b	210				
						
	.dc.b	251				
	.dc.b	69				
	.dc.b	215				
						
	.dc.b	242				
						
	.dc.b	251				
	.dc.b	82				
	.dc.b	120				
						
	.dc.b	82				
						
	.dc.b	251				
	.dc.b	95				
	.dc.b	24				
						
	.dc.b	210				
						
	.dc.b	251				
	.dc.b	107				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	251				
	.dc.b	120				
	.dc.b	90				
						
	.dc.b	50				
						
	.dc.b	251				
	.dc.b	132				
	.dc.b	251				
						
	.dc.b	50				
						
	.dc.b	251				
	.dc.b	145				
	.dc.b	156				
						
	.dc.b	50				
						
	.dc.b	251				
	.dc.b	158				
	.dc.b	61				
						
	.dc.b	146				
						
	.dc.b	251				
	.dc.b	170				
	.dc.b	222				
						
	.dc.b	242				
						
	.dc.b	251				
	.dc.b	183				
	.dc.b	128				
						
	.dc.b	146				
						
	.dc.b	251				
	.dc.b	196				
	.dc.b	34				
						
	.dc.b	50				
						
	.dc.b	251				
	.dc.b	208				
	.dc.b	196				
						
	.dc.b	50				
						
	.dc.b	251				
	.dc.b	221				
	.dc.b	102				
						
	.dc.b	50				
						
	.dc.b	251				
	.dc.b	234				
	.dc.b	8				
						
	.dc.b	114				
						
	.dc.b	251				
	.dc.b	246				
	.dc.b	170				
						
	.dc.b	210				
						
	.dc.b	252				
	.dc.b	3				
	.dc.b	77				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	15				
	.dc.b	240				
						
	.dc.b	18				
						
	.dc.b	252				
	.dc.b	28				
	.dc.b	146				
						
	.dc.b	210				
						
	.dc.b	252				
	.dc.b	41				
	.dc.b	53				
						
	.dc.b	210				
						
	.dc.b	252				
	.dc.b	53				
	.dc.b	217				
						
	.dc.b	18				
						
	.dc.b	252				
	.dc.b	66				
	.dc.b	124				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	79				
	.dc.b	31				
						
	.dc.b	210				
						
	.dc.b	252				
	.dc.b	91				
	.dc.b	195				
						
	.dc.b	114				
						
	.dc.b	252				
	.dc.b	104				
	.dc.b	103				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	117				
	.dc.b	11				
						
	.dc.b	50				
						
	.dc.b	252				
	.dc.b	129				
	.dc.b	175				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	142				
	.dc.b	83				
						
	.dc.b	146				
						
	.dc.b	252				
	.dc.b	154				
	.dc.b	248				
						
	.dc.b	18				
						
	.dc.b	252				
	.dc.b	167				
	.dc.b	156				
						
	.dc.b	146				
						
	.dc.b	252				
	.dc.b	180				
	.dc.b	65				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	192				
	.dc.b	230				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	205				
	.dc.b	139				
						
	.dc.b	82				
						
	.dc.b	252				
	.dc.b	218				
	.dc.b	48				
						
	.dc.b	146				
						
	.dc.b	252				
	.dc.b	230				
	.dc.b	213				
						
	.dc.b	242				
						
	.dc.b	252				
	.dc.b	243				
	.dc.b	123				
						
	.dc.b	114				
						
	.dc.b	253				
	.dc.b	0				
	.dc.b	33				
						
	.dc.b	50				
						
	.dc.b	253				
	.dc.b	12				
	.dc.b	199				
						
	.dc.b	18				
						
	.dc.b	253				
	.dc.b	25				
	.dc.b	109				
						
	.dc.b	18				
						
	.dc.b	253				
	.dc.b	38				
	.dc.b	19				
						
	.dc.b	50				
						
	.dc.b	253				
	.dc.b	50				
	.dc.b	185				
						
	.dc.b	146				
						
	.dc.b	253				
	.dc.b	63				
	.dc.b	96				
						
	.dc.b	18				
						
	.dc.b	253				
	.dc.b	76				
	.dc.b	6				
						
	.dc.b	178				
						
	.dc.b	253				
	.dc.b	88				
	.dc.b	173				
						
	.dc.b	114				
						
	.dc.b	253				
	.dc.b	101				
	.dc.b	84				
						
	.dc.b	114				
						
	.dc.b	253				
	.dc.b	113				
	.dc.b	251				
						
	.dc.b	146				
						
	.dc.b	253				
	.dc.b	126				
	.dc.b	162				
						
	.dc.b	210				
						
	.dc.b	253				
	.dc.b	139				
	.dc.b	74				
						
	.dc.b	50				
						
	.dc.b	253				
	.dc.b	151				
	.dc.b	241				
						
	.dc.b	210				
						
	.dc.b	253				
	.dc.b	164				
	.dc.b	153				
						
	.dc.b	146				
						
	.dc.b	253				
	.dc.b	177				
	.dc.b	65				
						
	.dc.b	114				
						
	.dc.b	253				
	.dc.b	189				
	.dc.b	233				
						
	.dc.b	146				
						
	.dc.b	253				
	.dc.b	202				
	.dc.b	145				
						
	.dc.b	210				
						
	.dc.b	253				
	.dc.b	215				
	.dc.b	58				
						
	.dc.b	50				
						
	.dc.b	253				
	.dc.b	227				
	.dc.b	226				
						
	.dc.b	178				
						
	.dc.b	253				
	.dc.b	240				
	.dc.b	139				
						
	.dc.b	114				
						
	.dc.b	253				
	.dc.b	253				
	.dc.b	52				
						
	.dc.b	50				
						
	.dc.b	254				
	.dc.b	9				
	.dc.b	221				
						
	.dc.b	50				
						
	.dc.b	254				
	.dc.b	22				
	.dc.b	134				
						
	.dc.b	114				
						
	.dc.b	254				
	.dc.b	35				
	.dc.b	47				
						
	.dc.b	178				
						
	.dc.b	254				
	.dc.b	47				
	.dc.b	217				
						
	.dc.b	50				
						
	.dc.b	254				
	.dc.b	60				
	.dc.b	130				
						
	.dc.b	210				
						
	.dc.b	254				
	.dc.b	73				
	.dc.b	44				
						
	.dc.b	178				
						
	.dc.b	254				
	.dc.b	85				
	.dc.b	214				
						
	.dc.b	178				
						
	.dc.b	254				
	.dc.b	98				
	.dc.b	128				
						
	.dc.b	178				
						
	.dc.b	254				
	.dc.b	111				
	.dc.b	43				
						
	.dc.b	18				
						
	.dc.b	254				
	.dc.b	123				
	.dc.b	213				
						
	.dc.b	114				
						
	.dc.b	254				
	.dc.b	136				
	.dc.b	128				
						
	.dc.b	18				
						
	.dc.b	254				
	.dc.b	149				
	.dc.b	42				
						
	.dc.b	210				
						
	.dc.b	254				
	.dc.b	161				
	.dc.b	213				
						
	.dc.b	178				
						
	.dc.b	254				
	.dc.b	174				
	.dc.b	128				
						
	.dc.b	178				
						
	.dc.b	254				
	.dc.b	187				
	.dc.b	43				
						
	.dc.b	242				
						
	.dc.b	254				
	.dc.b	199				
	.dc.b	215				
						
	.dc.b	82				
						
	.dc.b	254				
	.dc.b	212				
	.dc.b	130				
						
	.dc.b	210				
						
	.dc.b	254				
	.dc.b	225				
	.dc.b	46				
						
	.dc.b	146				
						
	.dc.b	254				
	.dc.b	237				
	.dc.b	218				
						
	.dc.b	114				
						
	.dc.b	254				
	.dc.b	250				
	.dc.b	134				
						
	.dc.b	114				
						
	.dc.b	255				
	.dc.b	7				
	.dc.b	50				
						
	.dc.b	146				
						
	.dc.b	255				
	.dc.b	19				
	.dc.b	222				
						
	.dc.b	242				
						
	.dc.b	255				
	.dc.b	32				
	.dc.b	139				
						
	.dc.b	82				
						
	.dc.b	255				
	.dc.b	45				
	.dc.b	56				
						
	.dc.b	18				
						
	.dc.b	255				
	.dc.b	57				
	.dc.b	228				
						
	.dc.b	210				
						
	.dc.b	255				
	.dc.b	70				
	.dc.b	145				
						
	.dc.b	210				
						
	.dc.b	255				
	.dc.b	83				
	.dc.b	62				
						
	.dc.b	210				
						
	.dc.b	255				
	.dc.b	95				
	.dc.b	236				
						
	.dc.b	18				
						
	.dc.b	255				
	.dc.b	108				
	.dc.b	153				
						
	.dc.b	146				
						
	.dc.b	255				
	.dc.b	121				
	.dc.b	71				
						
	.dc.b	18				
						
	.dc.b	255				
	.dc.b	133				
	.dc.b	244				
						
	.dc.b	210				
						
	.dc.b	255				
	.dc.b	146				
	.dc.b	162				
						
	.dc.b	210				
						
	.dc.b	255				
	.dc.b	159				
	.dc.b	80				
						
	.dc.b	210				
						
	.dc.b	255				
	.dc.b	171				
	.dc.b	255				
						
	.dc.b	18				
						
	.dc.b	255				
	.dc.b	184				
	.dc.b	173				
						
	.dc.b	114				
						
	.dc.b	255				
	.dc.b	197				
	.dc.b	91				
						
	.dc.b	242				
						
	.dc.b	255				
	.dc.b	210				
	.dc.b	10				
						
	.dc.b	146				
						
	.dc.b	255				
	.dc.b	222				
	.dc.b	185				
						
	.dc.b	114				
						
	.dc.b	255				
	.dc.b	235				
	.dc.b	104				
						
	.dc.b	114				
						
	.dc.b	255				
	.dc.b	248				
	.dc.b	23				
						
	.dc.b	146				
						
	.dc.b	128				
	.dc.b	2				
	.dc.b	99				
						
	.dc.b	115				
						
	.dc.b	128				
	.dc.b	8				
	.dc.b	187				
						
	.dc.b	51				
						
	.dc.b	128				
	.dc.b	15				
	.dc.b	18				
						
	.dc.b	243				
						
	.dc.b	128				
	.dc.b	21				
	.dc.b	106				
						
	.dc.b	243				
						
	.dc.b	128				
	.dc.b	27				
	.dc.b	194				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	34				
	.dc.b	26				
						
	.dc.b	243				
						
	.dc.b	128				
	.dc.b	40				
	.dc.b	115				
						
	.dc.b	19				
						
	.dc.b	128				
	.dc.b	46				
	.dc.b	203				
						
	.dc.b	51				
						
	.dc.b	128				
	.dc.b	53				
	.dc.b	35				
						
	.dc.b	147				
						
	.dc.b	128				
	.dc.b	59				
	.dc.b	123				
						
	.dc.b	243				
						
	.dc.b	128				
	.dc.b	65				
	.dc.b	212				
						
	.dc.b	83				
						
	.dc.b	128				
	.dc.b	72				
	.dc.b	44				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	78				
	.dc.b	133				
						
	.dc.b	115				
						
	.dc.b	128				
	.dc.b	84				
	.dc.b	222				
						
	.dc.b	19				
						
	.dc.b	128				
	.dc.b	91				
	.dc.b	54				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	97				
	.dc.b	143				
						
	.dc.b	179				
						
	.dc.b	128				
	.dc.b	103				
	.dc.b	232				
						
	.dc.b	147				
						
	.dc.b	128				
	.dc.b	110				
	.dc.b	65				
						
	.dc.b	147				
						
	.dc.b	128				
	.dc.b	116				
	.dc.b	154				
						
	.dc.b	179				
						
	.dc.b	128				
	.dc.b	122				
	.dc.b	243				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	129				
	.dc.b	77				
						
	.dc.b	19				
						
	.dc.b	128				
	.dc.b	135				
	.dc.b	166				
						
	.dc.b	83				
						
	.dc.b	128				
	.dc.b	141				
	.dc.b	255				
						
	.dc.b	179				
						
	.dc.b	128				
	.dc.b	148				
	.dc.b	89				
						
	.dc.b	51				
						
	.dc.b	128				
	.dc.b	154				
	.dc.b	178				
						
	.dc.b	179				
						
	.dc.b	128				
	.dc.b	161				
	.dc.b	12				
						
	.dc.b	83				
						
	.dc.b	128				
	.dc.b	167				
	.dc.b	102				
						
	.dc.b	19				
						
	.dc.b	128				
	.dc.b	173				
	.dc.b	191				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	180				
	.dc.b	25				
						
	.dc.b	179				
						
	.dc.b	128				
	.dc.b	186				
	.dc.b	115				
						
	.dc.b	147				
						
	.dc.b	128				
	.dc.b	192				
	.dc.b	205				
						
	.dc.b	147				
						
	.dc.b	128				
	.dc.b	199				
	.dc.b	39				
						
	.dc.b	179				
						
	.dc.b	128				
	.dc.b	205				
	.dc.b	129				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	211				
	.dc.b	220				
						
	.dc.b	19				
						
	.dc.b	128				
	.dc.b	218				
	.dc.b	54				
						
	.dc.b	115				
						
	.dc.b	128				
	.dc.b	224				
	.dc.b	144				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	230				
	.dc.b	235				
						
	.dc.b	83				
						
	.dc.b	128				
	.dc.b	237				
	.dc.b	69				
						
	.dc.b	211				
						
	.dc.b	128				
	.dc.b	243				
	.dc.b	160				
						
	.dc.b	115				
						
	.dc.b	128				
	.dc.b	249				
	.dc.b	251				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	0				
	.dc.b	85				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	6				
	.dc.b	176				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	13				
	.dc.b	11				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	19				
	.dc.b	102				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	25				
	.dc.b	193				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	32				
	.dc.b	29				
						
	.dc.b	19				
						
	.dc.b	129				
	.dc.b	38				
	.dc.b	120				
						
	.dc.b	83				
						
	.dc.b	129				
	.dc.b	44				
	.dc.b	211				
						
	.dc.b	179				
						
	.dc.b	129				
	.dc.b	51				
	.dc.b	47				
						
	.dc.b	19				
						
	.dc.b	129				
	.dc.b	57				
	.dc.b	138				
						
	.dc.b	147				
						
	.dc.b	129				
	.dc.b	63				
	.dc.b	230				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	70				
	.dc.b	65				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	76				
	.dc.b	157				
						
	.dc.b	147				
						
	.dc.b	129				
	.dc.b	82				
	.dc.b	249				
						
	.dc.b	115				
						
	.dc.b	129				
	.dc.b	89				
	.dc.b	85				
						
	.dc.b	83				
						
	.dc.b	129				
	.dc.b	95				
	.dc.b	177				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	102				
	.dc.b	13				
						
	.dc.b	83				
						
	.dc.b	129				
	.dc.b	108				
	.dc.b	105				
						
	.dc.b	115				
						
	.dc.b	129				
	.dc.b	114				
	.dc.b	197				
						
	.dc.b	147				
						
	.dc.b	129				
	.dc.b	121				
	.dc.b	33				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	127				
	.dc.b	126				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	133				
	.dc.b	218				
						
	.dc.b	179				
						
	.dc.b	129				
	.dc.b	140				
	.dc.b	55				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	146				
	.dc.b	147				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	152				
	.dc.b	240				
						
	.dc.b	115				
						
	.dc.b	129				
	.dc.b	159				
	.dc.b	77				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	165				
	.dc.b	169				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	172				
	.dc.b	6				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	178				
	.dc.b	99				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	184				
	.dc.b	192				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	191				
	.dc.b	30				
						
	.dc.b	19				
						
	.dc.b	129				
	.dc.b	197				
	.dc.b	123				
						
	.dc.b	83				
						
	.dc.b	129				
	.dc.b	203				
	.dc.b	216				
						
	.dc.b	147				
						
	.dc.b	129				
	.dc.b	210				
	.dc.b	53				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	216				
	.dc.b	147				
						
	.dc.b	115				
						
	.dc.b	129				
	.dc.b	222				
	.dc.b	240				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	229				
	.dc.b	78				
						
	.dc.b	147				
						
	.dc.b	129				
	.dc.b	235				
	.dc.b	172				
						
	.dc.b	51				
						
	.dc.b	129				
	.dc.b	242				
	.dc.b	9				
						
	.dc.b	243				
						
	.dc.b	129				
	.dc.b	248				
	.dc.b	103				
						
	.dc.b	211				
						
	.dc.b	129				
	.dc.b	254				
	.dc.b	197				
						
	.dc.b	179				
						
	.dc.b	130				
	.dc.b	5				
	.dc.b	35				
						
	.dc.b	179				
						
	.dc.b	130				
	.dc.b	11				
	.dc.b	129				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	17				
	.dc.b	223				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	24				
	.dc.b	62				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	30				
	.dc.b	156				
						
	.dc.b	115				
						
	.dc.b	130				
	.dc.b	36				
	.dc.b	250				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	43				
	.dc.b	89				
						
	.dc.b	83				
						
	.dc.b	130				
	.dc.b	49				
	.dc.b	183				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	56				
	.dc.b	22				
						
	.dc.b	115				
						
	.dc.b	130				
	.dc.b	62				
	.dc.b	117				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	68				
	.dc.b	211				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	75				
	.dc.b	50				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	81				
	.dc.b	145				
						
	.dc.b	179				
						
	.dc.b	130				
	.dc.b	87				
	.dc.b	240				
						
	.dc.b	179				
						
	.dc.b	130				
	.dc.b	94				
	.dc.b	79				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	100				
	.dc.b	174				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	107				
	.dc.b	14				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	113				
	.dc.b	109				
						
	.dc.b	147				
						
	.dc.b	130				
	.dc.b	119				
	.dc.b	204				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	126				
	.dc.b	44				
						
	.dc.b	115				
						
	.dc.b	130				
	.dc.b	132				
	.dc.b	139				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	138				
	.dc.b	235				
						
	.dc.b	147				
						
	.dc.b	130				
	.dc.b	145				
	.dc.b	75				
						
	.dc.b	83				
						
	.dc.b	130				
	.dc.b	151				
	.dc.b	171				
						
	.dc.b	19				
						
	.dc.b	130				
	.dc.b	158				
	.dc.b	10				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	164				
	.dc.b	106				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	170				
	.dc.b	202				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	177				
	.dc.b	42				
						
	.dc.b	243				
						
	.dc.b	130				
	.dc.b	183				
	.dc.b	139				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	189				
	.dc.b	235				
						
	.dc.b	115				
						
	.dc.b	130				
	.dc.b	196				
	.dc.b	75				
						
	.dc.b	179				
						
	.dc.b	130				
	.dc.b	202				
	.dc.b	172				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	209				
	.dc.b	12				
						
	.dc.b	147				
						
	.dc.b	130				
	.dc.b	215				
	.dc.b	109				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	221				
	.dc.b	205				
						
	.dc.b	211				
						
	.dc.b	130				
	.dc.b	228				
	.dc.b	46				
						
	.dc.b	147				
						
	.dc.b	130				
	.dc.b	234				
	.dc.b	143				
						
	.dc.b	83				
						
	.dc.b	130				
	.dc.b	240				
	.dc.b	240				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	247				
	.dc.b	81				
						
	.dc.b	51				
						
	.dc.b	130				
	.dc.b	253				
	.dc.b	178				
						
	.dc.b	51				
						
	.dc.b	131				
	.dc.b	4				
	.dc.b	19				
						
	.dc.b	83				
						
	.dc.b	131				
	.dc.b	10				
	.dc.b	116				
						
	.dc.b	115				
						
	.dc.b	131				
	.dc.b	16				
	.dc.b	213				
						
	.dc.b	179				
						
	.dc.b	131				
	.dc.b	23				
	.dc.b	55				
						
	.dc.b	19				
						
	.dc.b	131				
	.dc.b	29				
	.dc.b	152				
						
	.dc.b	115				
						
	.dc.b	131				
	.dc.b	35				
	.dc.b	249				
						
	.dc.b	243				
						
	.dc.b	131				
	.dc.b	42				
	.dc.b	91				
						
	.dc.b	147				
						
	.dc.b	131				
	.dc.b	48				
	.dc.b	189				
						
	.dc.b	51				
						
	.dc.b	131				
	.dc.b	55				
	.dc.b	30				
						
	.dc.b	243				
						
	.dc.b	131				
	.dc.b	61				
	.dc.b	128				
						
	.dc.b	179				
						
	.dc.b	131				
	.dc.b	67				
	.dc.b	226				
						
	.dc.b	179				
						
	.dc.b	131				
	.dc.b	74				
	.dc.b	68				
						
	.dc.b	147				
						
	.dc.b	131				
	.dc.b	80				
	.dc.b	166				
						
	.dc.b	147				
						
	.dc.b	131				
	.dc.b	87				
	.dc.b	8				
						
	.dc.b	179				
						
	.dc.b	131				
	.dc.b	93				
	.dc.b	106				
						
	.dc.b	243				
						
	.dc.b	131				
	.dc.b	99				
	.dc.b	205				
						
	.dc.b	51				
						
	.dc.b	131				
	.dc.b	106				
	.dc.b	47				
						
	.dc.b	147				
						
	.dc.b	131				
	.dc.b	112				
	.dc.b	145				
						
	.dc.b	243				
						
	.dc.b	131				
	.dc.b	118				
	.dc.b	244				
						
	.dc.b	115				
						
	.dc.b	131				
	.dc.b	125				
	.dc.b	87				
						
	.dc.b	19				
						
	.dc.b	131				
	.dc.b	131				
	.dc.b	185				
						
	.dc.b	179				
						
	.dc.b	131				
	.dc.b	138				
	.dc.b	28				
						
	.dc.b	115				
						
	.dc.b	131				
	.dc.b	144				
	.dc.b	127				
						
	.dc.b	83				
						
	.dc.b	131				
	.dc.b	150				
	.dc.b	226				
						
	.dc.b	51				
						
	.dc.b	131				
	.dc.b	157				
	.dc.b	69				
						
	.dc.b	19				
						
	.dc.b	131				
	.dc.b	163				
	.dc.b	168				
						
	.dc.b	51				
						
	.dc.b	131				
	.dc.b	170				
	.dc.b	11				
						
	.dc.b	83				
						
	.dc.b	131				
	.dc.b	176				
	.dc.b	110				
						
	.dc.b	115				
						
	.dc.b	131				
	.dc.b	182				
	.dc.b	209				
						
	.dc.b	211				
						
	.dc.b	131				
	.dc.b	189				
	.dc.b	53				
						
	.dc.b	19				
						
	.dc.b	131				
	.dc.b	195				
	.dc.b	152				
						
	.dc.b	147				
						
	.dc.b	131				
	.dc.b	201				
	.dc.b	252				
						
	.dc.b	19				
						
	.dc.b	131				
	.dc.b	208				
	.dc.b	95				
						
	.dc.b	179				
						
	.dc.b	131				
	.dc.b	214				
	.dc.b	195				
						
	.dc.b	83				
						
	.dc.b	131				
	.dc.b	221				
	.dc.b	39				
						
	.dc.b	19				
						
	.dc.b	131				
	.dc.b	227				
	.dc.b	138				
						
	.dc.b	243				
						
	.dc.b	131				
	.dc.b	233				
	.dc.b	238				
						
	.dc.b	211				
						
	.dc.b	131				
	.dc.b	240				
	.dc.b	82				
						
	.dc.b	211				
						
	.dc.b	131				
	.dc.b	246				
	.dc.b	182				
						
	.dc.b	211				
						
	.dc.b	131				
	.dc.b	253				
	.dc.b	26				
						
	.dc.b	243				
						
	.dc.b	132				
	.dc.b	3				
	.dc.b	127				
						
	.dc.b	51				
						
	.dc.b	132				
	.dc.b	9				
	.dc.b	227				
						
	.dc.b	115				
						
	.dc.b	132				
	.dc.b	16				
	.dc.b	71				
						
	.dc.b	211				
						
	.dc.b	132				
	.dc.b	22				
	.dc.b	172				
						
	.dc.b	51				
						
	.dc.b	132				
	.dc.b	29				
	.dc.b	16				
						
	.dc.b	179				
						
	.dc.b	132				
	.dc.b	35				
	.dc.b	117				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	41				
	.dc.b	218				
						
	.dc.b	19				
						
	.dc.b	132				
	.dc.b	48				
	.dc.b	62				
						
	.dc.b	211				
						
	.dc.b	132				
	.dc.b	54				
	.dc.b	163				
						
	.dc.b	147				
						
	.dc.b	132				
	.dc.b	61				
	.dc.b	8				
						
	.dc.b	115				
						
	.dc.b	132				
	.dc.b	67				
	.dc.b	109				
						
	.dc.b	115				
						
	.dc.b	132				
	.dc.b	73				
	.dc.b	210				
						
	.dc.b	147				
						
	.dc.b	132				
	.dc.b	80				
	.dc.b	55				
						
	.dc.b	179				
						
	.dc.b	132				
	.dc.b	86				
	.dc.b	156				
						
	.dc.b	211				
						
	.dc.b	132				
	.dc.b	93				
	.dc.b	2				
						
	.dc.b	51				
						
	.dc.b	132				
	.dc.b	99				
	.dc.b	103				
						
	.dc.b	147				
						
	.dc.b	132				
	.dc.b	105				
	.dc.b	204				
						
	.dc.b	243				
						
	.dc.b	132				
	.dc.b	112				
	.dc.b	50				
						
	.dc.b	115				
						
	.dc.b	132				
	.dc.b	118				
	.dc.b	152				
						
	.dc.b	19				
						
	.dc.b	132				
	.dc.b	124				
	.dc.b	253				
						
	.dc.b	211				
						
	.dc.b	132				
	.dc.b	131				
	.dc.b	99				
						
	.dc.b	147				
						
	.dc.b	132				
	.dc.b	137				
	.dc.b	201				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	144				
	.dc.b	47				
						
	.dc.b	51				
						
	.dc.b	132				
	.dc.b	150				
	.dc.b	149				
						
	.dc.b	51				
						
	.dc.b	132				
	.dc.b	156				
	.dc.b	251				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	163				
	.dc.b	97				
						
	.dc.b	115				
						
	.dc.b	132				
	.dc.b	169				
	.dc.b	199				
						
	.dc.b	179				
						
	.dc.b	132				
	.dc.b	176				
	.dc.b	45				
						
	.dc.b	243				
						
	.dc.b	132				
	.dc.b	182				
	.dc.b	148				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	188				
	.dc.b	250				
						
	.dc.b	211				
						
	.dc.b	132				
	.dc.b	195				
	.dc.b	97				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	201				
	.dc.b	199				
						
	.dc.b	243				
						
	.dc.b	132				
	.dc.b	208				
	.dc.b	46				
						
	.dc.b	147				
						
	.dc.b	132				
	.dc.b	214				
	.dc.b	149				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	220				
	.dc.b	252				
						
	.dc.b	51				
						
	.dc.b	132				
	.dc.b	227				
	.dc.b	99				
						
	.dc.b	19				
						
	.dc.b	132				
	.dc.b	233				
	.dc.b	202				
						
	.dc.b	19				
						
	.dc.b	132				
	.dc.b	240				
	.dc.b	49				
						
	.dc.b	19				
						
	.dc.b	132				
	.dc.b	246				
	.dc.b	152				
						
	.dc.b	83				
						
	.dc.b	132				
	.dc.b	252				
	.dc.b	255				
						
	.dc.b	115				
						
	.dc.b	133				
	.dc.b	3				
	.dc.b	102				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	9				
	.dc.b	206				
						
	.dc.b	51				
						
	.dc.b	133				
	.dc.b	16				
	.dc.b	53				
						
	.dc.b	147				
						
	.dc.b	133				
	.dc.b	22				
	.dc.b	157				
						
	.dc.b	19				
						
	.dc.b	133				
	.dc.b	29				
	.dc.b	4				
						
	.dc.b	179				
						
	.dc.b	133				
	.dc.b	35				
	.dc.b	108				
						
	.dc.b	115				
						
	.dc.b	133				
	.dc.b	41				
	.dc.b	212				
						
	.dc.b	51				
						
	.dc.b	133				
	.dc.b	48				
	.dc.b	59				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	54				
	.dc.b	163				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	61				
	.dc.b	11				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	67				
	.dc.b	115				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	73				
	.dc.b	220				
						
	.dc.b	19				
						
	.dc.b	133				
	.dc.b	80				
	.dc.b	68				
						
	.dc.b	83				
						
	.dc.b	133				
	.dc.b	86				
	.dc.b	172				
						
	.dc.b	147				
						
	.dc.b	133				
	.dc.b	93				
	.dc.b	20				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	99				
	.dc.b	125				
						
	.dc.b	115				
						
	.dc.b	133				
	.dc.b	105				
	.dc.b	229				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	112				
	.dc.b	78				
						
	.dc.b	147				
						
	.dc.b	133				
	.dc.b	118				
	.dc.b	183				
						
	.dc.b	83				
						
	.dc.b	133				
	.dc.b	125				
	.dc.b	32				
						
	.dc.b	19				
						
	.dc.b	133				
	.dc.b	131				
	.dc.b	136				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	137				
	.dc.b	241				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	144				
	.dc.b	90				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	150				
	.dc.b	195				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	157				
	.dc.b	44				
						
	.dc.b	243				
						
	.dc.b	133				
	.dc.b	163				
	.dc.b	150				
						
	.dc.b	51				
						
	.dc.b	133				
	.dc.b	169				
	.dc.b	255				
						
	.dc.b	115				
						
	.dc.b	133				
	.dc.b	176				
	.dc.b	104				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	182				
	.dc.b	210				
						
	.dc.b	83				
						
	.dc.b	133				
	.dc.b	189				
	.dc.b	59				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	195				
	.dc.b	165				
						
	.dc.b	115				
						
	.dc.b	133				
	.dc.b	202				
	.dc.b	15				
						
	.dc.b	19				
						
	.dc.b	133				
	.dc.b	208				
	.dc.b	120				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	214				
	.dc.b	226				
						
	.dc.b	179				
						
	.dc.b	133				
	.dc.b	221				
	.dc.b	76				
						
	.dc.b	147				
						
	.dc.b	133				
	.dc.b	227				
	.dc.b	182				
						
	.dc.b	147				
						
	.dc.b	133				
	.dc.b	234				
	.dc.b	32				
						
	.dc.b	179				
						
	.dc.b	133				
	.dc.b	240				
	.dc.b	138				
						
	.dc.b	211				
						
	.dc.b	133				
	.dc.b	246				
	.dc.b	245				
						
	.dc.b	19				
						
	.dc.b	133				
	.dc.b	253				
	.dc.b	95				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	3				
	.dc.b	201				
						
	.dc.b	179				
						
	.dc.b	134				
	.dc.b	10				
	.dc.b	52				
						
	.dc.b	51				
						
	.dc.b	134				
	.dc.b	16				
	.dc.b	158				
						
	.dc.b	179				
						
	.dc.b	134				
	.dc.b	23				
	.dc.b	9				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	29				
	.dc.b	115				
						
	.dc.b	243				
						
	.dc.b	134				
	.dc.b	35				
	.dc.b	222				
						
	.dc.b	179				
						
	.dc.b	134				
	.dc.b	42				
	.dc.b	73				
						
	.dc.b	147				
						
	.dc.b	134				
	.dc.b	48				
	.dc.b	180				
						
	.dc.b	115				
						
	.dc.b	134				
	.dc.b	55				
	.dc.b	31				
						
	.dc.b	115				
						
	.dc.b	134				
	.dc.b	61				
	.dc.b	138				
						
	.dc.b	147				
						
	.dc.b	134				
	.dc.b	67				
	.dc.b	245				
						
	.dc.b	179				
						
	.dc.b	134				
	.dc.b	74				
	.dc.b	96				
						
	.dc.b	211				
						
	.dc.b	134				
	.dc.b	80				
	.dc.b	204				
						
	.dc.b	51				
						
	.dc.b	134				
	.dc.b	87				
	.dc.b	55				
						
	.dc.b	147				
						
	.dc.b	134				
	.dc.b	93				
	.dc.b	162				
						
	.dc.b	243				
						
	.dc.b	134				
	.dc.b	100				
	.dc.b	14				
						
	.dc.b	147				
						
	.dc.b	134				
	.dc.b	106				
	.dc.b	122				
						
	.dc.b	19				
						
	.dc.b	134				
	.dc.b	112				
	.dc.b	229				
						
	.dc.b	211				
						
	.dc.b	134				
	.dc.b	119				
	.dc.b	81				
						
	.dc.b	147				
						
	.dc.b	134				
	.dc.b	125				
	.dc.b	189				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	132				
	.dc.b	41				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	138				
	.dc.b	149				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	145				
	.dc.b	1				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	151				
	.dc.b	109				
						
	.dc.b	115				
						
	.dc.b	134				
	.dc.b	157				
	.dc.b	217				
						
	.dc.b	179				
						
	.dc.b	134				
	.dc.b	164				
	.dc.b	69				
						
	.dc.b	243				
						
	.dc.b	134				
	.dc.b	170				
	.dc.b	178				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	177				
	.dc.b	30				
						
	.dc.b	211				
						
	.dc.b	134				
	.dc.b	183				
	.dc.b	139				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	189				
	.dc.b	247				
						
	.dc.b	243				
						
	.dc.b	134				
	.dc.b	196				
	.dc.b	100				
						
	.dc.b	147				
						
	.dc.b	134				
	.dc.b	202				
	.dc.b	209				
						
	.dc.b	83				
						
	.dc.b	134				
	.dc.b	209				
	.dc.b	62				
						
	.dc.b	51				
						
	.dc.b	134				
	.dc.b	215				
	.dc.b	171				
						
	.dc.b	19				
						
	.dc.b	134				
	.dc.b	222				
	.dc.b	24				
						
	.dc.b	19				
						
	.dc.b	134				
	.dc.b	228				
	.dc.b	133				
						
	.dc.b	19				
						
	.dc.b	134				
	.dc.b	234				
	.dc.b	242				
						
	.dc.b	51				
						
	.dc.b	134				
	.dc.b	241				
	.dc.b	95				
						
	.dc.b	115				
						
	.dc.b	134				
	.dc.b	247				
	.dc.b	204				
						
	.dc.b	179				
						
	.dc.b	134				
	.dc.b	254				
	.dc.b	58				
						
	.dc.b	19				
						
	.dc.b	135				
	.dc.b	4				
	.dc.b	167				
						
	.dc.b	147				
						
	.dc.b	135				
	.dc.b	11				
	.dc.b	21				
						
	.dc.b	19				
						
	.dc.b	135				
	.dc.b	17				
	.dc.b	130				
						
	.dc.b	147				
						
	.dc.b	135				
	.dc.b	23				
	.dc.b	240				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	30				
	.dc.b	94				
						
	.dc.b	19				
						
	.dc.b	135				
	.dc.b	36				
	.dc.b	203				
						
	.dc.b	211				
						
	.dc.b	135				
	.dc.b	43				
	.dc.b	57				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	49				
	.dc.b	167				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	56				
	.dc.b	21				
						
	.dc.b	211				
						
	.dc.b	135				
	.dc.b	62				
	.dc.b	131				
						
	.dc.b	243				
						
	.dc.b	135				
	.dc.b	68				
	.dc.b	242				
						
	.dc.b	19				
						
	.dc.b	135				
	.dc.b	75				
	.dc.b	96				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	81				
	.dc.b	206				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	88				
	.dc.b	61				
						
	.dc.b	51				
						
	.dc.b	135				
	.dc.b	94				
	.dc.b	171				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	101				
	.dc.b	26				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	107				
	.dc.b	136				
						
	.dc.b	243				
						
	.dc.b	135				
	.dc.b	113				
	.dc.b	247				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	120				
	.dc.b	102				
						
	.dc.b	115				
						
	.dc.b	135				
	.dc.b	126				
	.dc.b	213				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	133				
	.dc.b	68				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	139				
	.dc.b	179				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	146				
	.dc.b	34				
						
	.dc.b	115				
						
	.dc.b	135				
	.dc.b	152				
	.dc.b	145				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	159				
	.dc.b	0				
						
	.dc.b	243				
						
	.dc.b	135				
	.dc.b	165				
	.dc.b	112				
						
	.dc.b	83				
						
	.dc.b	135				
	.dc.b	171				
	.dc.b	223				
						
	.dc.b	179				
						
	.dc.b	135				
	.dc.b	178				
	.dc.b	79				
						
	.dc.b	51				
						
	.dc.b	135				
	.dc.b	184				
	.dc.b	190				
						
	.dc.b	211				
						
	.dc.b	135				
	.dc.b	191				
	.dc.b	46				
						
	.dc.b	115				
						
	.dc.b	135				
	.dc.b	197				
	.dc.b	158				
						
	.dc.b	51				
						
	.dc.b	135				
	.dc.b	204				
	.dc.b	14				
						
	.dc.b	19				
						
	.dc.b	135				
	.dc.b	210				
	.dc.b	125				
						
	.dc.b	243				
						
	.dc.b	135				
	.dc.b	216				
	.dc.b	237				
						
	.dc.b	211				
						
	.dc.b	135				
	.dc.b	223				
	.dc.b	93				
						
	.dc.b	243				
						
	.dc.b	135				
	.dc.b	229				
	.dc.b	205				
						
	.dc.b	243				
						
	.dc.b	135				
	.dc.b	236				
	.dc.b	62				
						
	.dc.b	51				
						
	.dc.b	135				
	.dc.b	242				
	.dc.b	174				
						
	.dc.b	115				
						
	.dc.b	135				
	.dc.b	249				
	.dc.b	30				
						
	.dc.b	211				
						
	.dc.b	135				
	.dc.b	255				
	.dc.b	143				
						
	.dc.b	51				
						
	.dc.b	136				
	.dc.b	5				
	.dc.b	255				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	12				
	.dc.b	112				
						
	.dc.b	83				
						
	.dc.b	136				
	.dc.b	18				
	.dc.b	224				
						
	.dc.b	243				
						
	.dc.b	136				
	.dc.b	25				
	.dc.b	81				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	31				
	.dc.b	194				
						
	.dc.b	115				
						
	.dc.b	136				
	.dc.b	38				
	.dc.b	51				
						
	.dc.b	83				
						
	.dc.b	136				
	.dc.b	44				
	.dc.b	164				
						
	.dc.b	83				
						
	.dc.b	136				
	.dc.b	51				
	.dc.b	21				
						
	.dc.b	83				
						
	.dc.b	136				
	.dc.b	57				
	.dc.b	134				
						
	.dc.b	115				
						
	.dc.b	136				
	.dc.b	63				
	.dc.b	247				
						
	.dc.b	147				
						
	.dc.b	136				
	.dc.b	70				
	.dc.b	104				
						
	.dc.b	211				
						
	.dc.b	136				
	.dc.b	76				
	.dc.b	218				
						
	.dc.b	51				
						
	.dc.b	136				
	.dc.b	83				
	.dc.b	75				
						
	.dc.b	147				
						
	.dc.b	136				
	.dc.b	89				
	.dc.b	189				
						
	.dc.b	19				
						
	.dc.b	136				
	.dc.b	96				
	.dc.b	46				
						
	.dc.b	147				
						
	.dc.b	136				
	.dc.b	102				
	.dc.b	160				
						
	.dc.b	51				
						
	.dc.b	136				
	.dc.b	109				
	.dc.b	17				
						
	.dc.b	243				
						
	.dc.b	136				
	.dc.b	115				
	.dc.b	131				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	121				
	.dc.b	245				
						
	.dc.b	147				
						
	.dc.b	136				
	.dc.b	128				
	.dc.b	103				
						
	.dc.b	147				
						
	.dc.b	136				
	.dc.b	134				
	.dc.b	217				
						
	.dc.b	147				
						
	.dc.b	136				
	.dc.b	141				
	.dc.b	75				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	147				
	.dc.b	189				
						
	.dc.b	211				
						
	.dc.b	136				
	.dc.b	154				
	.dc.b	48				
						
	.dc.b	19				
						
	.dc.b	136				
	.dc.b	160				
	.dc.b	162				
						
	.dc.b	115				
						
	.dc.b	136				
	.dc.b	167				
	.dc.b	20				
						
	.dc.b	211				
						
	.dc.b	136				
	.dc.b	173				
	.dc.b	135				
						
	.dc.b	51				
						
	.dc.b	136				
	.dc.b	179				
	.dc.b	249				
						
	.dc.b	211				
						
	.dc.b	136				
	.dc.b	186				
	.dc.b	108				
						
	.dc.b	115				
						
	.dc.b	136				
	.dc.b	192				
	.dc.b	223				
						
	.dc.b	19				
						
	.dc.b	136				
	.dc.b	199				
	.dc.b	81				
						
	.dc.b	243				
						
	.dc.b	136				
	.dc.b	205				
	.dc.b	196				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	212				
	.dc.b	55				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	218				
	.dc.b	170				
						
	.dc.b	179				
						
	.dc.b	136				
	.dc.b	225				
	.dc.b	29				
						
	.dc.b	211				
						
	.dc.b	136				
	.dc.b	231				
	.dc.b	144				
						
	.dc.b	243				
						
	.dc.b	136				
	.dc.b	238				
	.dc.b	4				
						
	.dc.b	51				
						
	.dc.b	136				
	.dc.b	244				
	.dc.b	119				
						
	.dc.b	115				
						
	.dc.b	136				
	.dc.b	250				
	.dc.b	234				
						
	.dc.b	211				
						
	.dc.b	137				
	.dc.b	1				
	.dc.b	94				
						
	.dc.b	83				
						
	.dc.b	137				
	.dc.b	7				
	.dc.b	209				
						
	.dc.b	211				
						
	.dc.b	137				
	.dc.b	14				
	.dc.b	69				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	20				
	.dc.b	185				
						
	.dc.b	51				
						
	.dc.b	137				
	.dc.b	27				
	.dc.b	44				
						
	.dc.b	243				
						
	.dc.b	137				
	.dc.b	33				
	.dc.b	160				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	40				
	.dc.b	20				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	46				
	.dc.b	136				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	52				
	.dc.b	252				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	59				
	.dc.b	112				
						
	.dc.b	211				
						
	.dc.b	137				
	.dc.b	65				
	.dc.b	229				
						
	.dc.b	19				
						
	.dc.b	137				
	.dc.b	72				
	.dc.b	89				
						
	.dc.b	83				
						
	.dc.b	137				
	.dc.b	78				
	.dc.b	205				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	85				
	.dc.b	66				
						
	.dc.b	51				
						
	.dc.b	137				
	.dc.b	91				
	.dc.b	182				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	98				
	.dc.b	43				
						
	.dc.b	83				
						
	.dc.b	137				
	.dc.b	104				
	.dc.b	159				
						
	.dc.b	243				
						
	.dc.b	137				
	.dc.b	111				
	.dc.b	20				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	117				
	.dc.b	137				
						
	.dc.b	147				
						
	.dc.b	137				
	.dc.b	123				
	.dc.b	254				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	130				
	.dc.b	115				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	136				
	.dc.b	232				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	143				
	.dc.b	93				
						
	.dc.b	147				
						
	.dc.b	137				
	.dc.b	149				
	.dc.b	210				
						
	.dc.b	211				
						
	.dc.b	137				
	.dc.b	156				
	.dc.b	72				
						
	.dc.b	19				
						
	.dc.b	137				
	.dc.b	162				
	.dc.b	189				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	169				
	.dc.b	50				
						
	.dc.b	243				
						
	.dc.b	137				
	.dc.b	175				
	.dc.b	168				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	182				
	.dc.b	29				
						
	.dc.b	243				
						
	.dc.b	137				
	.dc.b	188				
	.dc.b	147				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	195				
	.dc.b	9				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	201				
	.dc.b	127				
						
	.dc.b	51				
						
	.dc.b	137				
	.dc.b	207				
	.dc.b	245				
						
	.dc.b	19				
						
	.dc.b	137				
	.dc.b	214				
	.dc.b	107				
						
	.dc.b	19				
						
	.dc.b	137				
	.dc.b	220				
	.dc.b	225				
						
	.dc.b	19				
						
	.dc.b	137				
	.dc.b	227				
	.dc.b	87				
						
	.dc.b	51				
						
	.dc.b	137				
	.dc.b	233				
	.dc.b	205				
						
	.dc.b	115				
						
	.dc.b	137				
	.dc.b	240				
	.dc.b	67				
						
	.dc.b	179				
						
	.dc.b	137				
	.dc.b	246				
	.dc.b	185				
						
	.dc.b	243				
						
	.dc.b	137				
	.dc.b	253				
	.dc.b	48				
						
	.dc.b	115				
						
	.dc.b	138				
	.dc.b	3				
	.dc.b	166				
						
	.dc.b	243				
						
	.dc.b	138				
	.dc.b	10				
	.dc.b	29				
						
	.dc.b	115				
						
	.dc.b	138				
	.dc.b	16				
	.dc.b	148				
						
	.dc.b	19				
						
	.dc.b	138				
	.dc.b	23				
	.dc.b	10				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	29				
	.dc.b	129				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	35				
	.dc.b	248				
						
	.dc.b	147				
						
	.dc.b	138				
	.dc.b	42				
	.dc.b	111				
						
	.dc.b	115				
						
	.dc.b	138				
	.dc.b	48				
	.dc.b	230				
						
	.dc.b	115				
						
	.dc.b	138				
	.dc.b	55				
	.dc.b	93				
						
	.dc.b	147				
						
	.dc.b	138				
	.dc.b	61				
	.dc.b	212				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	68				
	.dc.b	75				
						
	.dc.b	243				
						
	.dc.b	138				
	.dc.b	74				
	.dc.b	195				
						
	.dc.b	83				
						
	.dc.b	138				
	.dc.b	81				
	.dc.b	58				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	87				
	.dc.b	178				
						
	.dc.b	51				
						
	.dc.b	138				
	.dc.b	94				
	.dc.b	41				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	100				
	.dc.b	161				
						
	.dc.b	83				
						
	.dc.b	138				
	.dc.b	107				
	.dc.b	25				
						
	.dc.b	19				
						
	.dc.b	138				
	.dc.b	113				
	.dc.b	144				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	120				
	.dc.b	8				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	126				
	.dc.b	128				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	132				
	.dc.b	248				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	139				
	.dc.b	112				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	145				
	.dc.b	232				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	152				
	.dc.b	97				
						
	.dc.b	19				
						
	.dc.b	138				
	.dc.b	158				
	.dc.b	217				
						
	.dc.b	115				
						
	.dc.b	138				
	.dc.b	165				
	.dc.b	81				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	171				
	.dc.b	202				
						
	.dc.b	51				
						
	.dc.b	138				
	.dc.b	178				
	.dc.b	66				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	184				
	.dc.b	187				
						
	.dc.b	115				
						
	.dc.b	138				
	.dc.b	191				
	.dc.b	52				
						
	.dc.b	19				
						
	.dc.b	138				
	.dc.b	197				
	.dc.b	172				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	204				
	.dc.b	37				
						
	.dc.b	179				
						
	.dc.b	138				
	.dc.b	210				
	.dc.b	158				
						
	.dc.b	147				
						
	.dc.b	138				
	.dc.b	217				
	.dc.b	23				
						
	.dc.b	147				
						
	.dc.b	138				
	.dc.b	223				
	.dc.b	144				
						
	.dc.b	147				
						
	.dc.b	138				
	.dc.b	230				
	.dc.b	9				
						
	.dc.b	211				
						
	.dc.b	138				
	.dc.b	236				
	.dc.b	130				
						
	.dc.b	243				
						
	.dc.b	138				
	.dc.b	242				
	.dc.b	252				
						
	.dc.b	83				
						
	.dc.b	138				
	.dc.b	249				
	.dc.b	117				
						
	.dc.b	147				
						
	.dc.b	138				
	.dc.b	255				
	.dc.b	239				
						
	.dc.b	19				
						
	.dc.b	139				
	.dc.b	6				
	.dc.b	104				
						
	.dc.b	147				
						
	.dc.b	139				
	.dc.b	12				
	.dc.b	226				
						
	.dc.b	51				
						
	.dc.b	139				
	.dc.b	19				
	.dc.b	91				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	25				
	.dc.b	213				
						
	.dc.b	147				
						
	.dc.b	139				
	.dc.b	32				
	.dc.b	79				
						
	.dc.b	115				
						
	.dc.b	139				
	.dc.b	38				
	.dc.b	201				
						
	.dc.b	83				
						
	.dc.b	139				
	.dc.b	45				
	.dc.b	67				
						
	.dc.b	51				
						
	.dc.b	139				
	.dc.b	51				
	.dc.b	189				
						
	.dc.b	83				
						
	.dc.b	139				
	.dc.b	58				
	.dc.b	55				
						
	.dc.b	115				
						
	.dc.b	139				
	.dc.b	64				
	.dc.b	177				
						
	.dc.b	147				
						
	.dc.b	139				
	.dc.b	71				
	.dc.b	43				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	77				
	.dc.b	166				
						
	.dc.b	51				
						
	.dc.b	139				
	.dc.b	84				
	.dc.b	32				
						
	.dc.b	147				
						
	.dc.b	139				
	.dc.b	90				
	.dc.b	155				
						
	.dc.b	19				
						
	.dc.b	139				
	.dc.b	97				
	.dc.b	21				
						
	.dc.b	179				
						
	.dc.b	139				
	.dc.b	103				
	.dc.b	144				
						
	.dc.b	83				
						
	.dc.b	139				
	.dc.b	110				
	.dc.b	11				
						
	.dc.b	19				
						
	.dc.b	139				
	.dc.b	116				
	.dc.b	133				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	123				
	.dc.b	0				
						
	.dc.b	179				
						
	.dc.b	139				
	.dc.b	129				
	.dc.b	123				
						
	.dc.b	179				
						
	.dc.b	139				
	.dc.b	135				
	.dc.b	246				
						
	.dc.b	179				
						
	.dc.b	139				
	.dc.b	142				
	.dc.b	113				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	148				
	.dc.b	236				
						
	.dc.b	243				
						
	.dc.b	139				
	.dc.b	155				
	.dc.b	104				
						
	.dc.b	51				
						
	.dc.b	139				
	.dc.b	161				
	.dc.b	227				
						
	.dc.b	115				
						
	.dc.b	139				
	.dc.b	168				
	.dc.b	94				
						
	.dc.b	243				
						
	.dc.b	139				
	.dc.b	174				
	.dc.b	218				
						
	.dc.b	83				
						
	.dc.b	139				
	.dc.b	181				
	.dc.b	85				
						
	.dc.b	243				
						
	.dc.b	139				
	.dc.b	187				
	.dc.b	209				
						
	.dc.b	147				
						
	.dc.b	139				
	.dc.b	194				
	.dc.b	77				
						
	.dc.b	51				
						
	.dc.b	139				
	.dc.b	200				
	.dc.b	200				
						
	.dc.b	243				
						
	.dc.b	139				
	.dc.b	207				
	.dc.b	68				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	213				
	.dc.b	192				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	220				
	.dc.b	60				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	226				
	.dc.b	184				
						
	.dc.b	211				
						
	.dc.b	139				
	.dc.b	233				
	.dc.b	52				
						
	.dc.b	243				
						
	.dc.b	139				
	.dc.b	239				
	.dc.b	177				
						
	.dc.b	51				
						
	.dc.b	139				
	.dc.b	246				
	.dc.b	45				
						
	.dc.b	147				
						
	.dc.b	139				
	.dc.b	252				
	.dc.b	169				
						
	.dc.b	243				
						
	.dc.b	140				
	.dc.b	3				
	.dc.b	38				
						
	.dc.b	83				
						
	.dc.b	140				
	.dc.b	9				
	.dc.b	162				
						
	.dc.b	211				
						
	.dc.b	140				
	.dc.b	16				
	.dc.b	31				
						
	.dc.b	115				
						
	.dc.b	140				
	.dc.b	22				
	.dc.b	156				
						
	.dc.b	51				
						
	.dc.b	140				
	.dc.b	29				
	.dc.b	24				
						
	.dc.b	243				
						
	.dc.b	140				
	.dc.b	35				
	.dc.b	149				
						
	.dc.b	179				
						
	.dc.b	140				
	.dc.b	42				
	.dc.b	18				
						
	.dc.b	147				
						
	.dc.b	140				
	.dc.b	48				
	.dc.b	143				
						
	.dc.b	147				
						
	.dc.b	140				
	.dc.b	55				
	.dc.b	12				
						
	.dc.b	147				
						
	.dc.b	140				
	.dc.b	61				
	.dc.b	137				
						
	.dc.b	179				
						
	.dc.b	140				
	.dc.b	68				
	.dc.b	6				
						
	.dc.b	243				
						
	.dc.b	140				
	.dc.b	74				
	.dc.b	132				
						
	.dc.b	51				
						
	.dc.b	140				
	.dc.b	81				
	.dc.b	1				
						
	.dc.b	147				
						
	.dc.b	140				
	.dc.b	87				
	.dc.b	126				
						
	.dc.b	243				
						
	.dc.b	140				
	.dc.b	93				
	.dc.b	252				
						
	.dc.b	115				
						
	.dc.b	140				
	.dc.b	100				
	.dc.b	122				
						
	.dc.b	19				
						
	.dc.b	140				
	.dc.b	106				
	.dc.b	247				
						
	.dc.b	179				
						
	.dc.b	140				
	.dc.b	113				
	.dc.b	117				
						
	.dc.b	115				
						
	.dc.b	140				
	.dc.b	119				
	.dc.b	243				
						
	.dc.b	51				
						
	.dc.b	140				
	.dc.b	126				
	.dc.b	113				
						
	.dc.b	19				
						
	.dc.b	140				
	.dc.b	132				
	.dc.b	239				
						
	.dc.b	19				
						
	.dc.b	140				
	.dc.b	139				
	.dc.b	109				
						
	.dc.b	19				
						
	.dc.b	140				
	.dc.b	145				
	.dc.b	235				
						
	.dc.b	51				
						
	.dc.b	140				
	.dc.b	152				
	.dc.b	105				
						
	.dc.b	83				
						
	.dc.b	140				
	.dc.b	158				
	.dc.b	231				
						
	.dc.b	147				
						
	.dc.b	140				
	.dc.b	165				
	.dc.b	101				
						
	.dc.b	243				
						
	.dc.b	140				
	.dc.b	171				
	.dc.b	228				
						
	.dc.b	83				
						
	.dc.b	140				
	.dc.b	178				
	.dc.b	98				
						
	.dc.b	211				
						
	.dc.b	140				
	.dc.b	184				
	.dc.b	225				
						
	.dc.b	83				
						
	.dc.b	140				
	.dc.b	191				
	.dc.b	95				
						
	.dc.b	243				
						
	.dc.b	140				
	.dc.b	197				
	.dc.b	222				
						
	.dc.b	179				
						
	.dc.b	140				
	.dc.b	204				
	.dc.b	93				
						
	.dc.b	115				
						
	.dc.b	140				
	.dc.b	210				
	.dc.b	220				
						
	.dc.b	83				
						
	.dc.b	140				
	.dc.b	217				
	.dc.b	91				
						
	.dc.b	51				
						
	.dc.b	140				
	.dc.b	223				
	.dc.b	218				
						
	.dc.b	51				
						
	.dc.b	140				
	.dc.b	230				
	.dc.b	89				
						
	.dc.b	83				
						
	.dc.b	140				
	.dc.b	236				
	.dc.b	216				
						
	.dc.b	115				
						
	.dc.b	140				
	.dc.b	243				
	.dc.b	87				
						
	.dc.b	179				
						
	.dc.b	140				
	.dc.b	249				
	.dc.b	214				
						
	.dc.b	243				
						
	.dc.b	141				
	.dc.b	0				
	.dc.b	86				
						
	.dc.b	83				
						
	.dc.b	141				
	.dc.b	6				
	.dc.b	213				
						
	.dc.b	211				
						
	.dc.b	141				
	.dc.b	13				
	.dc.b	85				
						
	.dc.b	83				
						
	.dc.b	141				
	.dc.b	19				
	.dc.b	212				
						
	.dc.b	243				
						
	.dc.b	141				
	.dc.b	26				
	.dc.b	84				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	32				
	.dc.b	212				
						
	.dc.b	83				
						
	.dc.b	141				
	.dc.b	39				
	.dc.b	84				
						
	.dc.b	51				
						
	.dc.b	141				
	.dc.b	45				
	.dc.b	212				
						
	.dc.b	19				
						
	.dc.b	141				
	.dc.b	52				
	.dc.b	84				
						
	.dc.b	19				
						
	.dc.b	141				
	.dc.b	58				
	.dc.b	212				
						
	.dc.b	19				
						
	.dc.b	141				
	.dc.b	65				
	.dc.b	84				
						
	.dc.b	51				
						
	.dc.b	141				
	.dc.b	71				
	.dc.b	212				
						
	.dc.b	115				
						
	.dc.b	141				
	.dc.b	78				
	.dc.b	84				
						
	.dc.b	179				
						
	.dc.b	141				
	.dc.b	84				
	.dc.b	213				
						
	.dc.b	19				
						
	.dc.b	141				
	.dc.b	91				
	.dc.b	85				
						
	.dc.b	115				
						
	.dc.b	141				
	.dc.b	97				
	.dc.b	213				
						
	.dc.b	243				
						
	.dc.b	141				
	.dc.b	104				
	.dc.b	86				
						
	.dc.b	115				
						
	.dc.b	141				
	.dc.b	110				
	.dc.b	215				
						
	.dc.b	51				
						
	.dc.b	141				
	.dc.b	117				
	.dc.b	87				
						
	.dc.b	211				
						
	.dc.b	141				
	.dc.b	123				
	.dc.b	216				
						
	.dc.b	179				
						
	.dc.b	141				
	.dc.b	130				
	.dc.b	89				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	136				
	.dc.b	218				
						
	.dc.b	115				
						
	.dc.b	141				
	.dc.b	143				
	.dc.b	91				
						
	.dc.b	115				
						
	.dc.b	141				
	.dc.b	149				
	.dc.b	220				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	156				
	.dc.b	93				
						
	.dc.b	211				
						
	.dc.b	141				
	.dc.b	162				
	.dc.b	222				
						
	.dc.b	243				
						
	.dc.b	141				
	.dc.b	169				
	.dc.b	96				
						
	.dc.b	83				
						
	.dc.b	141				
	.dc.b	175				
	.dc.b	225				
						
	.dc.b	179				
						
	.dc.b	141				
	.dc.b	182				
	.dc.b	99				
						
	.dc.b	51				
						
	.dc.b	141				
	.dc.b	188				
	.dc.b	228				
						
	.dc.b	179				
						
	.dc.b	141				
	.dc.b	195				
	.dc.b	102				
						
	.dc.b	83				
						
	.dc.b	141				
	.dc.b	201				
	.dc.b	232				
						
	.dc.b	19				
						
	.dc.b	141				
	.dc.b	208				
	.dc.b	105				
						
	.dc.b	211				
						
	.dc.b	141				
	.dc.b	214				
	.dc.b	235				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	221				
	.dc.b	109				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	227				
	.dc.b	239				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	234				
	.dc.b	113				
						
	.dc.b	147				
						
	.dc.b	141				
	.dc.b	240				
	.dc.b	243				
						
	.dc.b	179				
						
	.dc.b	141				
	.dc.b	247				
	.dc.b	117				
						
	.dc.b	243				
						
	.dc.b	141				
	.dc.b	253				
	.dc.b	248				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	4				
	.dc.b	122				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	10				
	.dc.b	253				
						
	.dc.b	19				
						
	.dc.b	142				
	.dc.b	17				
	.dc.b	127				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	24				
	.dc.b	2				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	30				
	.dc.b	132				
						
	.dc.b	211				
						
	.dc.b	142				
	.dc.b	37				
	.dc.b	7				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	43				
	.dc.b	138				
						
	.dc.b	83				
						
	.dc.b	142				
	.dc.b	50				
	.dc.b	13				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	56				
	.dc.b	144				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	63				
	.dc.b	19				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	69				
	.dc.b	150				
						
	.dc.b	83				
						
	.dc.b	142				
	.dc.b	76				
	.dc.b	25				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	82				
	.dc.b	156				
						
	.dc.b	211				
						
	.dc.b	142				
	.dc.b	89				
	.dc.b	32				
						
	.dc.b	19				
						
	.dc.b	142				
	.dc.b	95				
	.dc.b	163				
						
	.dc.b	115				
						
	.dc.b	142				
	.dc.b	102				
	.dc.b	38				
						
	.dc.b	243				
						
	.dc.b	142				
	.dc.b	108				
	.dc.b	170				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	115				
	.dc.b	46				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	121				
	.dc.b	177				
						
	.dc.b	211				
						
	.dc.b	142				
	.dc.b	128				
	.dc.b	53				
						
	.dc.b	179				
						
	.dc.b	142				
	.dc.b	134				
	.dc.b	185				
						
	.dc.b	115				
						
	.dc.b	142				
	.dc.b	141				
	.dc.b	61				
						
	.dc.b	115				
						
	.dc.b	142				
	.dc.b	147				
	.dc.b	193				
						
	.dc.b	115				
						
	.dc.b	142				
	.dc.b	154				
	.dc.b	69				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	160				
	.dc.b	201				
						
	.dc.b	179				
						
	.dc.b	142				
	.dc.b	167				
	.dc.b	77				
						
	.dc.b	243				
						
	.dc.b	142				
	.dc.b	173				
	.dc.b	210				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	180				
	.dc.b	86				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	186				
	.dc.b	218				
						
	.dc.b	243				
						
	.dc.b	142				
	.dc.b	193				
	.dc.b	95				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	199				
	.dc.b	228				
						
	.dc.b	19				
						
	.dc.b	142				
	.dc.b	206				
	.dc.b	104				
						
	.dc.b	211				
						
	.dc.b	142				
	.dc.b	212				
	.dc.b	237				
						
	.dc.b	147				
						
	.dc.b	142				
	.dc.b	219				
	.dc.b	114				
						
	.dc.b	83				
						
	.dc.b	142				
	.dc.b	225				
	.dc.b	247				
						
	.dc.b	83				
						
	.dc.b	142				
	.dc.b	232				
	.dc.b	124				
						
	.dc.b	51				
						
	.dc.b	142				
	.dc.b	239				
	.dc.b	1				
						
	.dc.b	83				
						
	.dc.b	142				
	.dc.b	245				
	.dc.b	134				
						
	.dc.b	115				
						
	.dc.b	142				
	.dc.b	252				
	.dc.b	11				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	2				
	.dc.b	144				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	9				
	.dc.b	22				
						
	.dc.b	51				
						
	.dc.b	143				
	.dc.b	15				
	.dc.b	155				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	22				
	.dc.b	33				
						
	.dc.b	19				
						
	.dc.b	143				
	.dc.b	28				
	.dc.b	166				
						
	.dc.b	179				
						
	.dc.b	143				
	.dc.b	35				
	.dc.b	44				
						
	.dc.b	83				
						
	.dc.b	143				
	.dc.b	41				
	.dc.b	177				
						
	.dc.b	243				
						
	.dc.b	143				
	.dc.b	48				
	.dc.b	55				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	54				
	.dc.b	189				
						
	.dc.b	179				
						
	.dc.b	143				
	.dc.b	61				
	.dc.b	67				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	67				
	.dc.b	201				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	74				
	.dc.b	79				
						
	.dc.b	179				
						
	.dc.b	143				
	.dc.b	80				
	.dc.b	213				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	87				
	.dc.b	92				
						
	.dc.b	19				
						
	.dc.b	143				
	.dc.b	93				
	.dc.b	226				
						
	.dc.b	83				
						
	.dc.b	143				
	.dc.b	100				
	.dc.b	104				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	106				
	.dc.b	239				
						
	.dc.b	51				
						
	.dc.b	143				
	.dc.b	113				
	.dc.b	117				
						
	.dc.b	179				
						
	.dc.b	143				
	.dc.b	119				
	.dc.b	252				
						
	.dc.b	83				
						
	.dc.b	143				
	.dc.b	126				
	.dc.b	131				
						
	.dc.b	19				
						
	.dc.b	143				
	.dc.b	133				
	.dc.b	9				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	139				
	.dc.b	144				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	146				
	.dc.b	23				
						
	.dc.b	115				
						
	.dc.b	143				
	.dc.b	152				
	.dc.b	158				
						
	.dc.b	115				
						
	.dc.b	143				
	.dc.b	159				
	.dc.b	37				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	165				
	.dc.b	172				
						
	.dc.b	179				
						
	.dc.b	143				
	.dc.b	172				
	.dc.b	51				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	178				
	.dc.b	187				
						
	.dc.b	19				
						
	.dc.b	143				
	.dc.b	185				
	.dc.b	66				
						
	.dc.b	115				
						
	.dc.b	143				
	.dc.b	191				
	.dc.b	201				
						
	.dc.b	211				
						
	.dc.b	143				
	.dc.b	198				
	.dc.b	81				
						
	.dc.b	83				
						
	.dc.b	143				
	.dc.b	204				
	.dc.b	216				
						
	.dc.b	243				
						
	.dc.b	143				
	.dc.b	211				
	.dc.b	96				
						
	.dc.b	147				
						
	.dc.b	143				
	.dc.b	217				
	.dc.b	232				
						
	.dc.b	83				
						
	.dc.b	143				
	.dc.b	224				
	.dc.b	112				
						
	.dc.b	19				
						
	.dc.b	143				
	.dc.b	230				
	.dc.b	247				
						
	.dc.b	243				
						
	.dc.b	143				
	.dc.b	237				
	.dc.b	127				
						
	.dc.b	243				
						
	.dc.b	143				
	.dc.b	244				
	.dc.b	7				
						
	.dc.b	243				
						
	.dc.b	143				
	.dc.b	250				
	.dc.b	143				
						
	.dc.b	243				
						
	.dc.b	144				
	.dc.b	1				
	.dc.b	24				
						
	.dc.b	51				
						
	.dc.b	144				
	.dc.b	7				
	.dc.b	160				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	14				
	.dc.b	40				
						
	.dc.b	179				
						
	.dc.b	144				
	.dc.b	20				
	.dc.b	177				
						
	.dc.b	19				
						
	.dc.b	144				
	.dc.b	27				
	.dc.b	57				
						
	.dc.b	147				
						
	.dc.b	144				
	.dc.b	33				
	.dc.b	194				
						
	.dc.b	19				
						
	.dc.b	144				
	.dc.b	40				
	.dc.b	74				
						
	.dc.b	179				
						
	.dc.b	144				
	.dc.b	46				
	.dc.b	211				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	53				
	.dc.b	92				
						
	.dc.b	19				
						
	.dc.b	144				
	.dc.b	59				
	.dc.b	228				
						
	.dc.b	243				
						
	.dc.b	144				
	.dc.b	66				
	.dc.b	109				
						
	.dc.b	211				
						
	.dc.b	144				
	.dc.b	72				
	.dc.b	246				
						
	.dc.b	211				
						
	.dc.b	144				
	.dc.b	79				
	.dc.b	127				
						
	.dc.b	211				
						
	.dc.b	144				
	.dc.b	86				
	.dc.b	8				
						
	.dc.b	243				
						
	.dc.b	144				
	.dc.b	92				
	.dc.b	146				
						
	.dc.b	51				
						
	.dc.b	144				
	.dc.b	99				
	.dc.b	27				
						
	.dc.b	115				
						
	.dc.b	144				
	.dc.b	105				
	.dc.b	164				
						
	.dc.b	211				
						
	.dc.b	144				
	.dc.b	112				
	.dc.b	46				
						
	.dc.b	51				
						
	.dc.b	144				
	.dc.b	118				
	.dc.b	183				
						
	.dc.b	179				
						
	.dc.b	144				
	.dc.b	125				
	.dc.b	65				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	131				
	.dc.b	202				
						
	.dc.b	243				
						
	.dc.b	144				
	.dc.b	138				
	.dc.b	84				
						
	.dc.b	147				
						
	.dc.b	144				
	.dc.b	144				
	.dc.b	222				
						
	.dc.b	115				
						
	.dc.b	144				
	.dc.b	151				
	.dc.b	104				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	157				
	.dc.b	242				
						
	.dc.b	51				
						
	.dc.b	144				
	.dc.b	164				
	.dc.b	124				
						
	.dc.b	51				
						
	.dc.b	144				
	.dc.b	171				
	.dc.b	6				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	177				
	.dc.b	144				
						
	.dc.b	115				
						
	.dc.b	144				
	.dc.b	184				
	.dc.b	26				
						
	.dc.b	179				
						
	.dc.b	144				
	.dc.b	190				
	.dc.b	164				
						
	.dc.b	243				
						
	.dc.b	144				
	.dc.b	197				
	.dc.b	47				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	203				
	.dc.b	185				
						
	.dc.b	211				
						
	.dc.b	144				
	.dc.b	210				
	.dc.b	68				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	216				
	.dc.b	206				
						
	.dc.b	243				
						
	.dc.b	144				
	.dc.b	223				
	.dc.b	89				
						
	.dc.b	147				
						
	.dc.b	144				
	.dc.b	229				
	.dc.b	228				
						
	.dc.b	83				
						
	.dc.b	144				
	.dc.b	236				
	.dc.b	111				
						
	.dc.b	51				
						
	.dc.b	144				
	.dc.b	242				
	.dc.b	250				
						
	.dc.b	19				
						
	.dc.b	144				
	.dc.b	249				
	.dc.b	133				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	0				
	.dc.b	16				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	6				
	.dc.b	155				
						
	.dc.b	51				
						
	.dc.b	145				
	.dc.b	13				
	.dc.b	38				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	19				
	.dc.b	177				
						
	.dc.b	179				
						
	.dc.b	145				
	.dc.b	26				
	.dc.b	61				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	32				
	.dc.b	200				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	39				
	.dc.b	83				
						
	.dc.b	243				
						
	.dc.b	145				
	.dc.b	45				
	.dc.b	223				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	52				
	.dc.b	107				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	58				
	.dc.b	246				
						
	.dc.b	211				
						
	.dc.b	145				
	.dc.b	65				
	.dc.b	130				
						
	.dc.b	147				
						
	.dc.b	145				
	.dc.b	72				
	.dc.b	14				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	78				
	.dc.b	154				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	85				
	.dc.b	38				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	91				
	.dc.b	178				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	98				
	.dc.b	62				
						
	.dc.b	179				
						
	.dc.b	145				
	.dc.b	104				
	.dc.b	202				
						
	.dc.b	211				
						
	.dc.b	145				
	.dc.b	111				
	.dc.b	87				
						
	.dc.b	51				
						
	.dc.b	145				
	.dc.b	117				
	.dc.b	227				
						
	.dc.b	147				
						
	.dc.b	145				
	.dc.b	124				
	.dc.b	111				
						
	.dc.b	243				
						
	.dc.b	145				
	.dc.b	130				
	.dc.b	252				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	137				
	.dc.b	137				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	144				
	.dc.b	21				
						
	.dc.b	179				
						
	.dc.b	145				
	.dc.b	150				
	.dc.b	162				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	157				
	.dc.b	47				
						
	.dc.b	83				
						
	.dc.b	145				
	.dc.b	163				
	.dc.b	188				
						
	.dc.b	51				
						
	.dc.b	145				
	.dc.b	170				
	.dc.b	73				
						
	.dc.b	51				
						
	.dc.b	145				
	.dc.b	176				
	.dc.b	214				
						
	.dc.b	51				
						
	.dc.b	145				
	.dc.b	183				
	.dc.b	99				
						
	.dc.b	83				
						
	.dc.b	145				
	.dc.b	189				
	.dc.b	240				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	196				
	.dc.b	125				
						
	.dc.b	179				
						
	.dc.b	145				
	.dc.b	203				
	.dc.b	11				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	209				
	.dc.b	152				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	216				
	.dc.b	37				
						
	.dc.b	243				
						
	.dc.b	145				
	.dc.b	222				
	.dc.b	179				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	229				
	.dc.b	65				
						
	.dc.b	19				
						
	.dc.b	145				
	.dc.b	235				
	.dc.b	206				
						
	.dc.b	211				
						
	.dc.b	145				
	.dc.b	242				
	.dc.b	92				
						
	.dc.b	147				
						
	.dc.b	145				
	.dc.b	248				
	.dc.b	234				
						
	.dc.b	115				
						
	.dc.b	145				
	.dc.b	255				
	.dc.b	120				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	6				
	.dc.b	6				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	12				
	.dc.b	148				
						
	.dc.b	115				
						
	.dc.b	146				
	.dc.b	19				
	.dc.b	34				
						
	.dc.b	147				
						
	.dc.b	146				
	.dc.b	25				
	.dc.b	176				
						
	.dc.b	211				
						
	.dc.b	146				
	.dc.b	32				
	.dc.b	63				
						
	.dc.b	19				
						
	.dc.b	146				
	.dc.b	38				
	.dc.b	205				
						
	.dc.b	115				
						
	.dc.b	146				
	.dc.b	45				
	.dc.b	91				
						
	.dc.b	211				
						
	.dc.b	146				
	.dc.b	51				
	.dc.b	234				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	58				
	.dc.b	120				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	65				
	.dc.b	7				
						
	.dc.b	147				
						
	.dc.b	146				
	.dc.b	71				
	.dc.b	150				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	78				
	.dc.b	37				
						
	.dc.b	19				
						
	.dc.b	146				
	.dc.b	84				
	.dc.b	179				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	91				
	.dc.b	66				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	97				
	.dc.b	209				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	104				
	.dc.b	97				
						
	.dc.b	19				
						
	.dc.b	146				
	.dc.b	110				
	.dc.b	240				
						
	.dc.b	51				
						
	.dc.b	146				
	.dc.b	117				
	.dc.b	127				
						
	.dc.b	115				
						
	.dc.b	146				
	.dc.b	124				
	.dc.b	14				
						
	.dc.b	211				
						
	.dc.b	146				
	.dc.b	130				
	.dc.b	158				
						
	.dc.b	51				
						
	.dc.b	146				
	.dc.b	137				
	.dc.b	45				
						
	.dc.b	147				
						
	.dc.b	146				
	.dc.b	143				
	.dc.b	189				
						
	.dc.b	51				
						
	.dc.b	146				
	.dc.b	150				
	.dc.b	76				
						
	.dc.b	211				
						
	.dc.b	146				
	.dc.b	156				
	.dc.b	220				
						
	.dc.b	115				
						
	.dc.b	146				
	.dc.b	163				
	.dc.b	108				
						
	.dc.b	51				
						
	.dc.b	146				
	.dc.b	169				
	.dc.b	252				
						
	.dc.b	19				
						
	.dc.b	146				
	.dc.b	176				
	.dc.b	139				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	183				
	.dc.b	27				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	189				
	.dc.b	171				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	196				
	.dc.b	60				
						
	.dc.b	19				
						
	.dc.b	146				
	.dc.b	202				
	.dc.b	204				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	209				
	.dc.b	92				
						
	.dc.b	147				
						
	.dc.b	146				
	.dc.b	215				
	.dc.b	236				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	222				
	.dc.b	125				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	229				
	.dc.b	13				
						
	.dc.b	211				
						
	.dc.b	146				
	.dc.b	235				
	.dc.b	158				
						
	.dc.b	83				
						
	.dc.b	146				
	.dc.b	242				
	.dc.b	46				
						
	.dc.b	243				
						
	.dc.b	146				
	.dc.b	248				
	.dc.b	191				
						
	.dc.b	179				
						
	.dc.b	146				
	.dc.b	255				
	.dc.b	80				
						
	.dc.b	115				
						
	.dc.b	147				
	.dc.b	5				
	.dc.b	225				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	12				
	.dc.b	114				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	19				
	.dc.b	3				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	25				
	.dc.b	148				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	32				
	.dc.b	37				
						
	.dc.b	147				
						
	.dc.b	147				
	.dc.b	38				
	.dc.b	182				
						
	.dc.b	179				
						
	.dc.b	147				
	.dc.b	45				
	.dc.b	72				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	51				
	.dc.b	217				
						
	.dc.b	115				
						
	.dc.b	147				
	.dc.b	58				
	.dc.b	106				
						
	.dc.b	211				
						
	.dc.b	147				
	.dc.b	64				
	.dc.b	252				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	71				
	.dc.b	141				
						
	.dc.b	243				
						
	.dc.b	147				
	.dc.b	78				
	.dc.b	31				
						
	.dc.b	147				
						
	.dc.b	147				
	.dc.b	84				
	.dc.b	177				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	91				
	.dc.b	67				
						
	.dc.b	51				
						
	.dc.b	147				
	.dc.b	97				
	.dc.b	213				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	104				
	.dc.b	102				
						
	.dc.b	243				
						
	.dc.b	147				
	.dc.b	110				
	.dc.b	249				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	117				
	.dc.b	139				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	124				
	.dc.b	29				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	130				
	.dc.b	175				
						
	.dc.b	147				
						
	.dc.b	147				
	.dc.b	137				
	.dc.b	65				
						
	.dc.b	211				
						
	.dc.b	147				
	.dc.b	143				
	.dc.b	212				
						
	.dc.b	51				
						
	.dc.b	147				
	.dc.b	150				
	.dc.b	102				
						
	.dc.b	179				
						
	.dc.b	147				
	.dc.b	156				
	.dc.b	249				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	163				
	.dc.b	139				
						
	.dc.b	211				
						
	.dc.b	147				
	.dc.b	170				
	.dc.b	30				
						
	.dc.b	147				
						
	.dc.b	147				
	.dc.b	176				
	.dc.b	177				
						
	.dc.b	83				
						
	.dc.b	147				
	.dc.b	183				
	.dc.b	68				
						
	.dc.b	51				
						
	.dc.b	147				
	.dc.b	189				
	.dc.b	215				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	196				
	.dc.b	106				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	202				
	.dc.b	253				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	209				
	.dc.b	144				
						
	.dc.b	51				
						
	.dc.b	147				
	.dc.b	216				
	.dc.b	35				
						
	.dc.b	115				
						
	.dc.b	147				
	.dc.b	222				
	.dc.b	182				
						
	.dc.b	179				
						
	.dc.b	147				
	.dc.b	229				
	.dc.b	74				
						
	.dc.b	19				
						
	.dc.b	147				
	.dc.b	235				
	.dc.b	221				
						
	.dc.b	115				
						
	.dc.b	147				
	.dc.b	242				
	.dc.b	112				
						
	.dc.b	243				
						
	.dc.b	147				
	.dc.b	249				
	.dc.b	4				
						
	.dc.b	147				
						
	.dc.b	147				
	.dc.b	255				
	.dc.b	152				
						
	.dc.b	51				
						
	.dc.b	148				
	.dc.b	6				
	.dc.b	43				
						
	.dc.b	211				
						
	.dc.b	148				
	.dc.b	12				
	.dc.b	191				
						
	.dc.b	179				
						
	.dc.b	148				
	.dc.b	19				
	.dc.b	83				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	25				
	.dc.b	231				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	32				
	.dc.b	123				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	39				
	.dc.b	15				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	45				
	.dc.b	163				
						
	.dc.b	179				
						
	.dc.b	148				
	.dc.b	52				
	.dc.b	55				
						
	.dc.b	211				
						
	.dc.b	148				
	.dc.b	58				
	.dc.b	204				
						
	.dc.b	51				
						
	.dc.b	148				
	.dc.b	65				
	.dc.b	96				
						
	.dc.b	147				
						
	.dc.b	148				
	.dc.b	71				
	.dc.b	244				
						
	.dc.b	243				
						
	.dc.b	148				
	.dc.b	78				
	.dc.b	137				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	85				
	.dc.b	30				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	91				
	.dc.b	178				
						
	.dc.b	179				
						
	.dc.b	148				
	.dc.b	98				
	.dc.b	71				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	104				
	.dc.b	220				
						
	.dc.b	83				
						
	.dc.b	148				
	.dc.b	111				
	.dc.b	113				
						
	.dc.b	51				
						
	.dc.b	148				
	.dc.b	118				
	.dc.b	6				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	124				
	.dc.b	155				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	131				
	.dc.b	48				
						
	.dc.b	51				
						
	.dc.b	148				
	.dc.b	137				
	.dc.b	197				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	144				
	.dc.b	90				
						
	.dc.b	179				
						
	.dc.b	148				
	.dc.b	150				
	.dc.b	239				
						
	.dc.b	243				
						
	.dc.b	148				
	.dc.b	157				
	.dc.b	133				
						
	.dc.b	83				
						
	.dc.b	148				
	.dc.b	164				
	.dc.b	26				
						
	.dc.b	211				
						
	.dc.b	148				
	.dc.b	170				
	.dc.b	176				
						
	.dc.b	83				
						
	.dc.b	148				
	.dc.b	177				
	.dc.b	69				
						
	.dc.b	243				
						
	.dc.b	148				
	.dc.b	183				
	.dc.b	219				
						
	.dc.b	179				
						
	.dc.b	148				
	.dc.b	190				
	.dc.b	113				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	197				
	.dc.b	7				
						
	.dc.b	51				
						
	.dc.b	148				
	.dc.b	203				
	.dc.b	157				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	210				
	.dc.b	51				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	216				
	.dc.b	201				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	223				
	.dc.b	95				
						
	.dc.b	51				
						
	.dc.b	148				
	.dc.b	229				
	.dc.b	245				
						
	.dc.b	115				
						
	.dc.b	148				
	.dc.b	236				
	.dc.b	139				
						
	.dc.b	179				
						
	.dc.b	148				
	.dc.b	243				
	.dc.b	34				
						
	.dc.b	19				
						
	.dc.b	148				
	.dc.b	249				
	.dc.b	184				
						
	.dc.b	115				
						
	.dc.b	149				
	.dc.b	0				
	.dc.b	78				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	6				
	.dc.b	229				
						
	.dc.b	115				
						
	.dc.b	149				
	.dc.b	13				
	.dc.b	124				
						
	.dc.b	19				
						
	.dc.b	149				
	.dc.b	20				
	.dc.b	18				
						
	.dc.b	211				
						
	.dc.b	149				
	.dc.b	26				
	.dc.b	169				
						
	.dc.b	147				
						
	.dc.b	149				
	.dc.b	33				
	.dc.b	64				
						
	.dc.b	115				
						
	.dc.b	149				
	.dc.b	39				
	.dc.b	215				
						
	.dc.b	83				
						
	.dc.b	149				
	.dc.b	46				
	.dc.b	110				
						
	.dc.b	83				
						
	.dc.b	149				
	.dc.b	53				
	.dc.b	5				
						
	.dc.b	115				
						
	.dc.b	149				
	.dc.b	59				
	.dc.b	156				
						
	.dc.b	147				
						
	.dc.b	149				
	.dc.b	66				
	.dc.b	51				
						
	.dc.b	179				
						
	.dc.b	149				
	.dc.b	72				
	.dc.b	203				
						
	.dc.b	19				
						
	.dc.b	149				
	.dc.b	79				
	.dc.b	98				
						
	.dc.b	115				
						
	.dc.b	149				
	.dc.b	85				
	.dc.b	249				
						
	.dc.b	211				
						
	.dc.b	149				
	.dc.b	92				
	.dc.b	145				
						
	.dc.b	83				
						
	.dc.b	149				
	.dc.b	99				
	.dc.b	40				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	105				
	.dc.b	192				
						
	.dc.b	147				
						
	.dc.b	149				
	.dc.b	112				
	.dc.b	88				
						
	.dc.b	83				
						
	.dc.b	149				
	.dc.b	118				
	.dc.b	240				
						
	.dc.b	19				
						
	.dc.b	149				
	.dc.b	125				
	.dc.b	135				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	132				
	.dc.b	31				
						
	.dc.b	211				
						
	.dc.b	149				
	.dc.b	138				
	.dc.b	183				
						
	.dc.b	211				
						
	.dc.b	149				
	.dc.b	145				
	.dc.b	79				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	151				
	.dc.b	232				
						
	.dc.b	19				
						
	.dc.b	149				
	.dc.b	158				
	.dc.b	128				
						
	.dc.b	83				
						
	.dc.b	149				
	.dc.b	165				
	.dc.b	24				
						
	.dc.b	179				
						
	.dc.b	149				
	.dc.b	171				
	.dc.b	177				
						
	.dc.b	19				
						
	.dc.b	149				
	.dc.b	178				
	.dc.b	73				
						
	.dc.b	115				
						
	.dc.b	149				
	.dc.b	184				
	.dc.b	225				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	191				
	.dc.b	122				
						
	.dc.b	147				
						
	.dc.b	149				
	.dc.b	198				
	.dc.b	19				
						
	.dc.b	51				
						
	.dc.b	149				
	.dc.b	204				
	.dc.b	171				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	211				
	.dc.b	68				
						
	.dc.b	211				
						
	.dc.b	149				
	.dc.b	217				
	.dc.b	221				
						
	.dc.b	179				
						
	.dc.b	149				
	.dc.b	224				
	.dc.b	118				
						
	.dc.b	147				
						
	.dc.b	149				
	.dc.b	231				
	.dc.b	15				
						
	.dc.b	179				
						
	.dc.b	149				
	.dc.b	237				
	.dc.b	168				
						
	.dc.b	179				
						
	.dc.b	149				
	.dc.b	244				
	.dc.b	65				
						
	.dc.b	243				
						
	.dc.b	149				
	.dc.b	250				
	.dc.b	219				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	1				
	.dc.b	116				
						
	.dc.b	115				
						
	.dc.b	150				
	.dc.b	8				
	.dc.b	13				
						
	.dc.b	211				
						
	.dc.b	150				
	.dc.b	14				
	.dc.b	167				
						
	.dc.b	83				
						
	.dc.b	150				
	.dc.b	21				
	.dc.b	64				
						
	.dc.b	211				
						
	.dc.b	150				
	.dc.b	27				
	.dc.b	218				
						
	.dc.b	115				
						
	.dc.b	150				
	.dc.b	34				
	.dc.b	116				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	41				
	.dc.b	13				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	47				
	.dc.b	167				
						
	.dc.b	179				
						
	.dc.b	150				
	.dc.b	54				
	.dc.b	65				
						
	.dc.b	147				
						
	.dc.b	150				
	.dc.b	60				
	.dc.b	219				
						
	.dc.b	147				
						
	.dc.b	150				
	.dc.b	67				
	.dc.b	117				
						
	.dc.b	179				
						
	.dc.b	150				
	.dc.b	74				
	.dc.b	15				
						
	.dc.b	179				
						
	.dc.b	150				
	.dc.b	80				
	.dc.b	169				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	87				
	.dc.b	68				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	93				
	.dc.b	222				
						
	.dc.b	147				
						
	.dc.b	150				
	.dc.b	100				
	.dc.b	120				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	107				
	.dc.b	19				
						
	.dc.b	115				
						
	.dc.b	150				
	.dc.b	113				
	.dc.b	173				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	120				
	.dc.b	72				
						
	.dc.b	147				
						
	.dc.b	150				
	.dc.b	126				
	.dc.b	227				
						
	.dc.b	83				
						
	.dc.b	150				
	.dc.b	133				
	.dc.b	126				
						
	.dc.b	19				
						
	.dc.b	150				
	.dc.b	140				
	.dc.b	24				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	146				
	.dc.b	179				
						
	.dc.b	211				
						
	.dc.b	150				
	.dc.b	153				
	.dc.b	78				
						
	.dc.b	211				
						
	.dc.b	150				
	.dc.b	159				
	.dc.b	233				
						
	.dc.b	211				
						
	.dc.b	150				
	.dc.b	166				
	.dc.b	132				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	173				
	.dc.b	32				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	179				
	.dc.b	187				
						
	.dc.b	115				
						
	.dc.b	150				
	.dc.b	186				
	.dc.b	86				
						
	.dc.b	211				
						
	.dc.b	150				
	.dc.b	192				
	.dc.b	242				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	199				
	.dc.b	141				
						
	.dc.b	179				
						
	.dc.b	150				
	.dc.b	206				
	.dc.b	41				
						
	.dc.b	83				
						
	.dc.b	150				
	.dc.b	212				
	.dc.b	196				
						
	.dc.b	243				
						
	.dc.b	150				
	.dc.b	219				
	.dc.b	96				
						
	.dc.b	179				
						
	.dc.b	150				
	.dc.b	225				
	.dc.b	252				
						
	.dc.b	115				
						
	.dc.b	150				
	.dc.b	232				
	.dc.b	152				
						
	.dc.b	83				
						
	.dc.b	150				
	.dc.b	239				
	.dc.b	52				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	245				
	.dc.b	208				
						
	.dc.b	51				
						
	.dc.b	150				
	.dc.b	252				
	.dc.b	108				
						
	.dc.b	83				
						
	.dc.b	151				
	.dc.b	3				
	.dc.b	8				
						
	.dc.b	115				
						
	.dc.b	151				
	.dc.b	9				
	.dc.b	164				
						
	.dc.b	147				
						
	.dc.b	151				
	.dc.b	16				
	.dc.b	64				
						
	.dc.b	243				
						
	.dc.b	151				
	.dc.b	22				
	.dc.b	221				
						
	.dc.b	83				
						
	.dc.b	151				
	.dc.b	29				
	.dc.b	121				
						
	.dc.b	179				
						
	.dc.b	151				
	.dc.b	36				
	.dc.b	22				
						
	.dc.b	51				
						
	.dc.b	151				
	.dc.b	42				
	.dc.b	178				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	49				
	.dc.b	79				
						
	.dc.b	115				
						
	.dc.b	151				
	.dc.b	55				
	.dc.b	236				
						
	.dc.b	51				
						
	.dc.b	151				
	.dc.b	62				
	.dc.b	136				
						
	.dc.b	243				
						
	.dc.b	151				
	.dc.b	69				
	.dc.b	37				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	75				
	.dc.b	194				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	82				
	.dc.b	95				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	88				
	.dc.b	252				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	95				
	.dc.b	154				
						
	.dc.b	19				
						
	.dc.b	151				
	.dc.b	102				
	.dc.b	55				
						
	.dc.b	51				
						
	.dc.b	151				
	.dc.b	108				
	.dc.b	212				
						
	.dc.b	147				
						
	.dc.b	151				
	.dc.b	115				
	.dc.b	113				
						
	.dc.b	243				
						
	.dc.b	151				
	.dc.b	122				
	.dc.b	15				
						
	.dc.b	83				
						
	.dc.b	151				
	.dc.b	128				
	.dc.b	172				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	135				
	.dc.b	74				
						
	.dc.b	115				
						
	.dc.b	151				
	.dc.b	141				
	.dc.b	232				
						
	.dc.b	19				
						
	.dc.b	151				
	.dc.b	148				
	.dc.b	133				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	155				
	.dc.b	35				
						
	.dc.b	179				
						
	.dc.b	151				
	.dc.b	161				
	.dc.b	193				
						
	.dc.b	147				
						
	.dc.b	151				
	.dc.b	168				
	.dc.b	95				
						
	.dc.b	115				
						
	.dc.b	151				
	.dc.b	174				
	.dc.b	253				
						
	.dc.b	147				
						
	.dc.b	151				
	.dc.b	181				
	.dc.b	155				
						
	.dc.b	147				
						
	.dc.b	151				
	.dc.b	188				
	.dc.b	57				
						
	.dc.b	211				
						
	.dc.b	151				
	.dc.b	194				
	.dc.b	216				
						
	.dc.b	19				
						
	.dc.b	151				
	.dc.b	201				
	.dc.b	118				
						
	.dc.b	83				
						
	.dc.b	151				
	.dc.b	208				
	.dc.b	20				
						
	.dc.b	179				
						
	.dc.b	151				
	.dc.b	214				
	.dc.b	179				
						
	.dc.b	51				
						
	.dc.b	151				
	.dc.b	221				
	.dc.b	81				
						
	.dc.b	179				
						
	.dc.b	151				
	.dc.b	227				
	.dc.b	240				
						
	.dc.b	83				
						
	.dc.b	151				
	.dc.b	234				
	.dc.b	142				
						
	.dc.b	243				
						
	.dc.b	151				
	.dc.b	241				
	.dc.b	45				
						
	.dc.b	179				
						
	.dc.b	151				
	.dc.b	247				
	.dc.b	204				
						
	.dc.b	147				
						
	.dc.b	151				
	.dc.b	254				
	.dc.b	107				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	5				
	.dc.b	10				
						
	.dc.b	83				
						
	.dc.b	152				
	.dc.b	11				
	.dc.b	169				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	18				
	.dc.b	72				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	24				
	.dc.b	231				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	31				
	.dc.b	134				
						
	.dc.b	243				
						
	.dc.b	152				
	.dc.b	38				
	.dc.b	38				
						
	.dc.b	51				
						
	.dc.b	152				
	.dc.b	44				
	.dc.b	197				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	51				
	.dc.b	101				
						
	.dc.b	19				
						
	.dc.b	152				
	.dc.b	58				
	.dc.b	4				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	64				
	.dc.b	164				
						
	.dc.b	51				
						
	.dc.b	152				
	.dc.b	71				
	.dc.b	67				
						
	.dc.b	243				
						
	.dc.b	152				
	.dc.b	77				
	.dc.b	227				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	84				
	.dc.b	131				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	91				
	.dc.b	35				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	97				
	.dc.b	195				
						
	.dc.b	83				
						
	.dc.b	152				
	.dc.b	104				
	.dc.b	99				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	111				
	.dc.b	3				
						
	.dc.b	147				
						
	.dc.b	152				
	.dc.b	117				
	.dc.b	163				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	124				
	.dc.b	67				
						
	.dc.b	243				
						
	.dc.b	152				
	.dc.b	130				
	.dc.b	228				
						
	.dc.b	83				
						
	.dc.b	152				
	.dc.b	137				
	.dc.b	132				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	144				
	.dc.b	37				
						
	.dc.b	51				
						
	.dc.b	152				
	.dc.b	150				
	.dc.b	197				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	157				
	.dc.b	102				
						
	.dc.b	83				
						
	.dc.b	152				
	.dc.b	164				
	.dc.b	7				
						
	.dc.b	19				
						
	.dc.b	152				
	.dc.b	170				
	.dc.b	167				
						
	.dc.b	211				
						
	.dc.b	152				
	.dc.b	177				
	.dc.b	72				
						
	.dc.b	147				
						
	.dc.b	152				
	.dc.b	183				
	.dc.b	233				
						
	.dc.b	147				
						
	.dc.b	152				
	.dc.b	190				
	.dc.b	138				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	197				
	.dc.b	43				
						
	.dc.b	147				
						
	.dc.b	152				
	.dc.b	203				
	.dc.b	204				
						
	.dc.b	179				
						
	.dc.b	152				
	.dc.b	210				
	.dc.b	109				
						
	.dc.b	211				
						
	.dc.b	152				
	.dc.b	217				
	.dc.b	15				
						
	.dc.b	19				
						
	.dc.b	152				
	.dc.b	223				
	.dc.b	176				
						
	.dc.b	115				
						
	.dc.b	152				
	.dc.b	230				
	.dc.b	81				
						
	.dc.b	211				
						
	.dc.b	152				
	.dc.b	236				
	.dc.b	243				
						
	.dc.b	83				
						
	.dc.b	152				
	.dc.b	243				
	.dc.b	148				
						
	.dc.b	243				
						
	.dc.b	152				
	.dc.b	250				
	.dc.b	54				
						
	.dc.b	147				
						
	.dc.b	153				
	.dc.b	0				
	.dc.b	216				
						
	.dc.b	51				
						
	.dc.b	153				
	.dc.b	7				
	.dc.b	121				
						
	.dc.b	243				
						
	.dc.b	153				
	.dc.b	14				
	.dc.b	27				
						
	.dc.b	211				
						
	.dc.b	153				
	.dc.b	20				
	.dc.b	189				
						
	.dc.b	179				
						
	.dc.b	153				
	.dc.b	27				
	.dc.b	95				
						
	.dc.b	179				
						
	.dc.b	153				
	.dc.b	34				
	.dc.b	1				
						
	.dc.b	179				
						
	.dc.b	153				
	.dc.b	40				
	.dc.b	163				
						
	.dc.b	211				
						
	.dc.b	153				
	.dc.b	47				
	.dc.b	70				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	53				
	.dc.b	232				
						
	.dc.b	83				
						
	.dc.b	153				
	.dc.b	60				
	.dc.b	138				
						
	.dc.b	179				
						
	.dc.b	153				
	.dc.b	67				
	.dc.b	45				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	73				
	.dc.b	207				
						
	.dc.b	147				
						
	.dc.b	153				
	.dc.b	80				
	.dc.b	114				
						
	.dc.b	51				
						
	.dc.b	153				
	.dc.b	87				
	.dc.b	20				
						
	.dc.b	211				
						
	.dc.b	153				
	.dc.b	93				
	.dc.b	183				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	100				
	.dc.b	90				
						
	.dc.b	51				
						
	.dc.b	153				
	.dc.b	106				
	.dc.b	253				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	113				
	.dc.b	160				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	120				
	.dc.b	66				
						
	.dc.b	243				
						
	.dc.b	153				
	.dc.b	126				
	.dc.b	230				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	133				
	.dc.b	137				
						
	.dc.b	51				
						
	.dc.b	153				
	.dc.b	140				
	.dc.b	44				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	146				
	.dc.b	207				
						
	.dc.b	179				
						
	.dc.b	153				
	.dc.b	153				
	.dc.b	115				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	160				
	.dc.b	22				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	166				
	.dc.b	185				
						
	.dc.b	243				
						
	.dc.b	153				
	.dc.b	173				
	.dc.b	93				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	180				
	.dc.b	1				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	186				
	.dc.b	164				
						
	.dc.b	211				
						
	.dc.b	153				
	.dc.b	193				
	.dc.b	72				
						
	.dc.b	147				
						
	.dc.b	153				
	.dc.b	199				
	.dc.b	236				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	206				
	.dc.b	144				
						
	.dc.b	83				
						
	.dc.b	153				
	.dc.b	213				
	.dc.b	52				
						
	.dc.b	83				
						
	.dc.b	153				
	.dc.b	219				
	.dc.b	216				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	226				
	.dc.b	124				
						
	.dc.b	147				
						
	.dc.b	153				
	.dc.b	233				
	.dc.b	32				
						
	.dc.b	211				
						
	.dc.b	153				
	.dc.b	239				
	.dc.b	197				
						
	.dc.b	19				
						
	.dc.b	153				
	.dc.b	246				
	.dc.b	105				
						
	.dc.b	115				
						
	.dc.b	153				
	.dc.b	253				
	.dc.b	13				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	3				
	.dc.b	178				
						
	.dc.b	83				
						
	.dc.b	154				
	.dc.b	10				
	.dc.b	86				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	16				
	.dc.b	251				
						
	.dc.b	115				
						
	.dc.b	154				
	.dc.b	23				
	.dc.b	160				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	30				
	.dc.b	68				
						
	.dc.b	243				
						
	.dc.b	154				
	.dc.b	36				
	.dc.b	233				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	43				
	.dc.b	142				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	50				
	.dc.b	51				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	56				
	.dc.b	216				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	63				
	.dc.b	125				
						
	.dc.b	243				
						
	.dc.b	154				
	.dc.b	70				
	.dc.b	35				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	76				
	.dc.b	200				
						
	.dc.b	115				
						
	.dc.b	154				
	.dc.b	83				
	.dc.b	109				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	90				
	.dc.b	19				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	96				
	.dc.b	184				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	103				
	.dc.b	94				
						
	.dc.b	83				
						
	.dc.b	154				
	.dc.b	110				
	.dc.b	3				
						
	.dc.b	243				
						
	.dc.b	154				
	.dc.b	116				
	.dc.b	169				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	123				
	.dc.b	79				
						
	.dc.b	115				
						
	.dc.b	154				
	.dc.b	129				
	.dc.b	245				
						
	.dc.b	83				
						
	.dc.b	154				
	.dc.b	136				
	.dc.b	155				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	143				
	.dc.b	65				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	149				
	.dc.b	231				
						
	.dc.b	83				
						
	.dc.b	154				
	.dc.b	156				
	.dc.b	141				
						
	.dc.b	115				
						
	.dc.b	154				
	.dc.b	163				
	.dc.b	51				
						
	.dc.b	147				
						
	.dc.b	154				
	.dc.b	169				
	.dc.b	217				
						
	.dc.b	243				
						
	.dc.b	154				
	.dc.b	176				
	.dc.b	128				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	183				
	.dc.b	38				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	189				
	.dc.b	205				
						
	.dc.b	51				
						
	.dc.b	154				
	.dc.b	196				
	.dc.b	115				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	203				
	.dc.b	26				
						
	.dc.b	83				
						
	.dc.b	154				
	.dc.b	209				
	.dc.b	193				
						
	.dc.b	19				
						
	.dc.b	154				
	.dc.b	216				
	.dc.b	103				
						
	.dc.b	211				
						
	.dc.b	154				
	.dc.b	223				
	.dc.b	14				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	229				
	.dc.b	181				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	236				
	.dc.b	92				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	243				
	.dc.b	3				
						
	.dc.b	179				
						
	.dc.b	154				
	.dc.b	249				
	.dc.b	170				
						
	.dc.b	211				
						
	.dc.b	155				
	.dc.b	0				
	.dc.b	82				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	6				
	.dc.b	249				
						
	.dc.b	83				
						
	.dc.b	155				
	.dc.b	13				
	.dc.b	160				
						
	.dc.b	179				
						
	.dc.b	155				
	.dc.b	20				
	.dc.b	72				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	26				
	.dc.b	239				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	33				
	.dc.b	151				
						
	.dc.b	51				
						
	.dc.b	155				
	.dc.b	40				
	.dc.b	62				
						
	.dc.b	211				
						
	.dc.b	155				
	.dc.b	46				
	.dc.b	230				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	53				
	.dc.b	142				
						
	.dc.b	83				
						
	.dc.b	155				
	.dc.b	60				
	.dc.b	54				
						
	.dc.b	51				
						
	.dc.b	155				
	.dc.b	66				
	.dc.b	222				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	73				
	.dc.b	134				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	80				
	.dc.b	46				
						
	.dc.b	51				
						
	.dc.b	155				
	.dc.b	86				
	.dc.b	214				
						
	.dc.b	83				
						
	.dc.b	155				
	.dc.b	93				
	.dc.b	126				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	100				
	.dc.b	38				
						
	.dc.b	211				
						
	.dc.b	155				
	.dc.b	106				
	.dc.b	207				
						
	.dc.b	51				
						
	.dc.b	155				
	.dc.b	113				
	.dc.b	119				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	120				
	.dc.b	32				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	126				
	.dc.b	200				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	133				
	.dc.b	113				
						
	.dc.b	83				
						
	.dc.b	155				
	.dc.b	140				
	.dc.b	25				
						
	.dc.b	243				
						
	.dc.b	155				
	.dc.b	146				
	.dc.b	194				
						
	.dc.b	211				
						
	.dc.b	155				
	.dc.b	153				
	.dc.b	107				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	160				
	.dc.b	20				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	166				
	.dc.b	189				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	173				
	.dc.b	102				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	180				
	.dc.b	15				
						
	.dc.b	179				
						
	.dc.b	155				
	.dc.b	186				
	.dc.b	184				
						
	.dc.b	243				
						
	.dc.b	155				
	.dc.b	193				
	.dc.b	98				
						
	.dc.b	51				
						
	.dc.b	155				
	.dc.b	200				
	.dc.b	11				
						
	.dc.b	147				
						
	.dc.b	155				
	.dc.b	206				
	.dc.b	180				
						
	.dc.b	243				
						
	.dc.b	155				
	.dc.b	213				
	.dc.b	94				
						
	.dc.b	115				
						
	.dc.b	155				
	.dc.b	220				
	.dc.b	8				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	226				
	.dc.b	177				
						
	.dc.b	179				
						
	.dc.b	155				
	.dc.b	233				
	.dc.b	91				
						
	.dc.b	115				
						
	.dc.b	155				
	.dc.b	240				
	.dc.b	5				
						
	.dc.b	51				
						
	.dc.b	155				
	.dc.b	246				
	.dc.b	175				
						
	.dc.b	19				
						
	.dc.b	155				
	.dc.b	253				
	.dc.b	88				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	4				
	.dc.b	2				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	10				
	.dc.b	172				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	17				
	.dc.b	87				
						
	.dc.b	19				
						
	.dc.b	156				
	.dc.b	24				
	.dc.b	1				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	30				
	.dc.b	171				
						
	.dc.b	147				
						
	.dc.b	156				
	.dc.b	37				
	.dc.b	85				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	44				
	.dc.b	0				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	50				
	.dc.b	170				
						
	.dc.b	211				
						
	.dc.b	156				
	.dc.b	57				
	.dc.b	85				
						
	.dc.b	115				
						
	.dc.b	156				
	.dc.b	64				
	.dc.b	0				
						
	.dc.b	19				
						
	.dc.b	156				
	.dc.b	70				
	.dc.b	170				
						
	.dc.b	179				
						
	.dc.b	156				
	.dc.b	77				
	.dc.b	85				
						
	.dc.b	147				
						
	.dc.b	156				
	.dc.b	84				
	.dc.b	0				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	90				
	.dc.b	171				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	97				
	.dc.b	86				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	104				
	.dc.b	1				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	110				
	.dc.b	172				
						
	.dc.b	115				
						
	.dc.b	156				
	.dc.b	117				
	.dc.b	87				
						
	.dc.b	179				
						
	.dc.b	156				
	.dc.b	124				
	.dc.b	2				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	130				
	.dc.b	174				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	137				
	.dc.b	89				
						
	.dc.b	179				
						
	.dc.b	156				
	.dc.b	144				
	.dc.b	5				
						
	.dc.b	51				
						
	.dc.b	156				
	.dc.b	150				
	.dc.b	176				
						
	.dc.b	179				
						
	.dc.b	156				
	.dc.b	157				
	.dc.b	92				
						
	.dc.b	83				
						
	.dc.b	156				
	.dc.b	164				
	.dc.b	8				
						
	.dc.b	19				
						
	.dc.b	156				
	.dc.b	170				
	.dc.b	179				
						
	.dc.b	211				
						
	.dc.b	156				
	.dc.b	177				
	.dc.b	95				
						
	.dc.b	179				
						
	.dc.b	156				
	.dc.b	184				
	.dc.b	11				
						
	.dc.b	147				
						
	.dc.b	156				
	.dc.b	190				
	.dc.b	183				
						
	.dc.b	147				
						
	.dc.b	156				
	.dc.b	197				
	.dc.b	99				
						
	.dc.b	147				
						
	.dc.b	156				
	.dc.b	204				
	.dc.b	15				
						
	.dc.b	179				
						
	.dc.b	156				
	.dc.b	210				
	.dc.b	187				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	217				
	.dc.b	104				
						
	.dc.b	51				
						
	.dc.b	156				
	.dc.b	224				
	.dc.b	20				
						
	.dc.b	115				
						
	.dc.b	156				
	.dc.b	230				
	.dc.b	192				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	237				
	.dc.b	109				
						
	.dc.b	115				
						
	.dc.b	156				
	.dc.b	244				
	.dc.b	25				
						
	.dc.b	243				
						
	.dc.b	156				
	.dc.b	250				
	.dc.b	198				
						
	.dc.b	147				
						
	.dc.b	157				
	.dc.b	1				
	.dc.b	115				
						
	.dc.b	51				
						
	.dc.b	157				
	.dc.b	8				
	.dc.b	32				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	14				
	.dc.b	204				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	21				
	.dc.b	121				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	28				
	.dc.b	38				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	34				
	.dc.b	211				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	41				
	.dc.b	128				
						
	.dc.b	243				
						
	.dc.b	157				
	.dc.b	48				
	.dc.b	46				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	54				
	.dc.b	219				
						
	.dc.b	83				
						
	.dc.b	157				
	.dc.b	61				
	.dc.b	136				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	68				
	.dc.b	54				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	74				
	.dc.b	227				
						
	.dc.b	147				
						
	.dc.b	157				
	.dc.b	81				
	.dc.b	145				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	88				
	.dc.b	62				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	94				
	.dc.b	236				
						
	.dc.b	83				
						
	.dc.b	157				
	.dc.b	101				
	.dc.b	154				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	108				
	.dc.b	71				
						
	.dc.b	243				
						
	.dc.b	157				
	.dc.b	114				
	.dc.b	245				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	121				
	.dc.b	163				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	128				
	.dc.b	81				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	134				
	.dc.b	255				
						
	.dc.b	243				
						
	.dc.b	157				
	.dc.b	141				
	.dc.b	174				
						
	.dc.b	51				
						
	.dc.b	157				
	.dc.b	148				
	.dc.b	92				
						
	.dc.b	115				
						
	.dc.b	157				
	.dc.b	155				
	.dc.b	10				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	161				
	.dc.b	185				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	168				
	.dc.b	103				
						
	.dc.b	147				
						
	.dc.b	157				
	.dc.b	175				
	.dc.b	22				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	181				
	.dc.b	196				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	188				
	.dc.b	115				
						
	.dc.b	83				
						
	.dc.b	157				
	.dc.b	195				
	.dc.b	34				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	201				
	.dc.b	208				
						
	.dc.b	243				
						
	.dc.b	157				
	.dc.b	208				
	.dc.b	127				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	215				
	.dc.b	46				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	221				
	.dc.b	221				
						
	.dc.b	211				
						
	.dc.b	157				
	.dc.b	228				
	.dc.b	140				
						
	.dc.b	243				
						
	.dc.b	157				
	.dc.b	235				
	.dc.b	60				
						
	.dc.b	19				
						
	.dc.b	157				
	.dc.b	241				
	.dc.b	235				
						
	.dc.b	83				
						
	.dc.b	157				
	.dc.b	248				
	.dc.b	154				
						
	.dc.b	179				
						
	.dc.b	157				
	.dc.b	255				
	.dc.b	74				
						
	.dc.b	19				
						
	.dc.b	158				
	.dc.b	5				
	.dc.b	249				
						
	.dc.b	115				
						
	.dc.b	158				
	.dc.b	12				
	.dc.b	168				
						
	.dc.b	243				
						
	.dc.b	158				
	.dc.b	19				
	.dc.b	88				
						
	.dc.b	147				
						
	.dc.b	158				
	.dc.b	26				
	.dc.b	8				
						
	.dc.b	51				
						
	.dc.b	158				
	.dc.b	32				
	.dc.b	183				
						
	.dc.b	243				
						
	.dc.b	158				
	.dc.b	39				
	.dc.b	103				
						
	.dc.b	211				
						
	.dc.b	158				
	.dc.b	46				
	.dc.b	23				
						
	.dc.b	179				
						
	.dc.b	158				
	.dc.b	52				
	.dc.b	199				
						
	.dc.b	147				
						
	.dc.b	158				
	.dc.b	59				
	.dc.b	119				
						
	.dc.b	179				
						
	.dc.b	158				
	.dc.b	66				
	.dc.b	39				
						
	.dc.b	179				
						
	.dc.b	158				
	.dc.b	72				
	.dc.b	215				
						
	.dc.b	243				
						
	.dc.b	158				
	.dc.b	79				
	.dc.b	136				
						
	.dc.b	19				
						
	.dc.b	158				
	.dc.b	86				
	.dc.b	56				
						
	.dc.b	115				
						
	.dc.b	158				
	.dc.b	92				
	.dc.b	232				
						
	.dc.b	211				
						
	.dc.b	158				
	.dc.b	99				
	.dc.b	153				
						
	.dc.b	51				
						
	.dc.b	158				
	.dc.b	106				
	.dc.b	73				
						
	.dc.b	179				
						
	.dc.b	158				
	.dc.b	112				
	.dc.b	250				
						
	.dc.b	83				
						
	.dc.b	158				
	.dc.b	119				
	.dc.b	170				
						
	.dc.b	243				
						
	.dc.b	158				
	.dc.b	126				
	.dc.b	91				
						
	.dc.b	179				
						
	.dc.b	158				
	.dc.b	133				
	.dc.b	12				
						
	.dc.b	147				
						
	.dc.b	158				
	.dc.b	139				
	.dc.b	189				
						
	.dc.b	83				
						
	.dc.b	158				
	.dc.b	146				
	.dc.b	110				
						
	.dc.b	83				
						
	.dc.b	158				
	.dc.b	153				
	.dc.b	31				
						
	.dc.b	83				
						
	.dc.b	158				
	.dc.b	159				
	.dc.b	208				
						
	.dc.b	115				
						
	.dc.b	158				
	.dc.b	166				
	.dc.b	129				
						
	.dc.b	147				
						
	.dc.b	158				
	.dc.b	173				
	.dc.b	50				
						
	.dc.b	211				
						
	.dc.b	158				
	.dc.b	179				
	.dc.b	228				
						
	.dc.b	19				
						
	.dc.b	158				
	.dc.b	186				
	.dc.b	149				
						
	.dc.b	115				
						
	.dc.b	158				
	.dc.b	193				
	.dc.b	70				
						
	.dc.b	211				
						
	.dc.b	158				
	.dc.b	199				
	.dc.b	248				
						
	.dc.b	83				
						
	.dc.b	158				
	.dc.b	206				
	.dc.b	169				
						
	.dc.b	243				
						
	.dc.b	158				
	.dc.b	213				
	.dc.b	91				
						
	.dc.b	147				
						
	.dc.b	158				
	.dc.b	220				
	.dc.b	13				
						
	.dc.b	83				
						
	.dc.b	158				
	.dc.b	226				
	.dc.b	191				
						
	.dc.b	19				
						
	.dc.b	158				
	.dc.b	233				
	.dc.b	112				
						
	.dc.b	243				
						
	.dc.b	158				
	.dc.b	240				
	.dc.b	34				
						
	.dc.b	211				
						
	.dc.b	158				
	.dc.b	246				
	.dc.b	212				
						
	.dc.b	211				
						
	.dc.b	158				
	.dc.b	253				
	.dc.b	134				
						
	.dc.b	243				
						
	.dc.b	159				
	.dc.b	4				
	.dc.b	57				
						
	.dc.b	19				
						
	.dc.b	159				
	.dc.b	10				
	.dc.b	235				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	17				
	.dc.b	157				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	24				
	.dc.b	79				
						
	.dc.b	211				
						
	.dc.b	159				
	.dc.b	31				
	.dc.b	2				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	37				
	.dc.b	180				
						
	.dc.b	211				
						
	.dc.b	159				
	.dc.b	44				
	.dc.b	103				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	51				
	.dc.b	25				
						
	.dc.b	243				
						
	.dc.b	159				
	.dc.b	57				
	.dc.b	204				
						
	.dc.b	179				
						
	.dc.b	159				
	.dc.b	64				
	.dc.b	127				
						
	.dc.b	115				
						
	.dc.b	159				
	.dc.b	71				
	.dc.b	50				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	77				
	.dc.b	229				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	84				
	.dc.b	152				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	91				
	.dc.b	75				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	97				
	.dc.b	254				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	104				
	.dc.b	177				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	111				
	.dc.b	100				
						
	.dc.b	211				
						
	.dc.b	159				
	.dc.b	118				
	.dc.b	24				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	124				
	.dc.b	203				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	131				
	.dc.b	127				
						
	.dc.b	19				
						
	.dc.b	159				
	.dc.b	138				
	.dc.b	50				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	144				
	.dc.b	230				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	151				
	.dc.b	153				
						
	.dc.b	211				
						
	.dc.b	159				
	.dc.b	158				
	.dc.b	77				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	165				
	.dc.b	1				
						
	.dc.b	115				
						
	.dc.b	159				
	.dc.b	171				
	.dc.b	181				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	178				
	.dc.b	105				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	185				
	.dc.b	29				
						
	.dc.b	83				
						
	.dc.b	159				
	.dc.b	191				
	.dc.b	209				
						
	.dc.b	115				
						
	.dc.b	159				
	.dc.b	198				
	.dc.b	133				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	205				
	.dc.b	57				
						
	.dc.b	211				
						
	.dc.b	159				
	.dc.b	211				
	.dc.b	238				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	218				
	.dc.b	162				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	225				
	.dc.b	87				
						
	.dc.b	19				
						
	.dc.b	159				
	.dc.b	232				
	.dc.b	11				
						
	.dc.b	147				
						
	.dc.b	159				
	.dc.b	238				
	.dc.b	192				
						
	.dc.b	51				
						
	.dc.b	159				
	.dc.b	245				
	.dc.b	116				
						
	.dc.b	211				
						
	.dc.b	159				
	.dc.b	252				
	.dc.b	41				
						
	.dc.b	147				
						
	.dc.b	160				
	.dc.b	2				
	.dc.b	222				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	9				
	.dc.b	147				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	16				
	.dc.b	72				
						
	.dc.b	51				
						
	.dc.b	160				
	.dc.b	22				
	.dc.b	253				
						
	.dc.b	51				
						
	.dc.b	160				
	.dc.b	29				
	.dc.b	178				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	36				
	.dc.b	103				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	43				
	.dc.b	28				
						
	.dc.b	179				
						
	.dc.b	160				
	.dc.b	49				
	.dc.b	210				
						
	.dc.b	19				
						
	.dc.b	160				
	.dc.b	56				
	.dc.b	135				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	63				
	.dc.b	60				
						
	.dc.b	211				
						
	.dc.b	160				
	.dc.b	69				
	.dc.b	242				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	76				
	.dc.b	167				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	83				
	.dc.b	93				
						
	.dc.b	147				
						
	.dc.b	160				
	.dc.b	90				
	.dc.b	19				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	96				
	.dc.b	201				
						
	.dc.b	19				
						
	.dc.b	160				
	.dc.b	103				
	.dc.b	126				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	110				
	.dc.b	52				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	116				
	.dc.b	234				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	123				
	.dc.b	160				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	130				
	.dc.b	87				
						
	.dc.b	51				
						
	.dc.b	160				
	.dc.b	137				
	.dc.b	13				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	143				
	.dc.b	195				
						
	.dc.b	179				
						
	.dc.b	160				
	.dc.b	150				
	.dc.b	121				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	157				
	.dc.b	48				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	163				
	.dc.b	230				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	170				
	.dc.b	157				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	177				
	.dc.b	84				
						
	.dc.b	19				
						
	.dc.b	160				
	.dc.b	184				
	.dc.b	10				
						
	.dc.b	211				
						
	.dc.b	160				
	.dc.b	190				
	.dc.b	193				
						
	.dc.b	147				
						
	.dc.b	160				
	.dc.b	197				
	.dc.b	120				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	204				
	.dc.b	47				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	210				
	.dc.b	230				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	217				
	.dc.b	157				
						
	.dc.b	115				
						
	.dc.b	160				
	.dc.b	224				
	.dc.b	84				
						
	.dc.b	147				
						
	.dc.b	160				
	.dc.b	231				
	.dc.b	11				
						
	.dc.b	179				
						
	.dc.b	160				
	.dc.b	237				
	.dc.b	194				
						
	.dc.b	243				
						
	.dc.b	160				
	.dc.b	244				
	.dc.b	122				
						
	.dc.b	83				
						
	.dc.b	160				
	.dc.b	251				
	.dc.b	49				
						
	.dc.b	179				
						
	.dc.b	161				
	.dc.b	1				
	.dc.b	233				
						
	.dc.b	51				
						
	.dc.b	161				
	.dc.b	8				
	.dc.b	160				
						
	.dc.b	211				
						
	.dc.b	161				
	.dc.b	15				
	.dc.b	88				
						
	.dc.b	83				
						
	.dc.b	161				
	.dc.b	22				
	.dc.b	16				
						
	.dc.b	19				
						
	.dc.b	161				
	.dc.b	28				
	.dc.b	199				
						
	.dc.b	211				
						
	.dc.b	161				
	.dc.b	35				
	.dc.b	127				
						
	.dc.b	179				
						
	.dc.b	161				
	.dc.b	42				
	.dc.b	55				
						
	.dc.b	147				
						
	.dc.b	161				
	.dc.b	48				
	.dc.b	239				
						
	.dc.b	147				
						
	.dc.b	161				
	.dc.b	55				
	.dc.b	167				
						
	.dc.b	147				
						
	.dc.b	161				
	.dc.b	62				
	.dc.b	95				
						
	.dc.b	179				
						
	.dc.b	161				
	.dc.b	69				
	.dc.b	23				
						
	.dc.b	211				
						
	.dc.b	161				
	.dc.b	75				
	.dc.b	208				
						
	.dc.b	19				
						
	.dc.b	161				
	.dc.b	82				
	.dc.b	136				
						
	.dc.b	115				
						
	.dc.b	161				
	.dc.b	89				
	.dc.b	64				
						
	.dc.b	211				
						
	.dc.b	161				
	.dc.b	95				
	.dc.b	249				
						
	.dc.b	51				
						
	.dc.b	161				
	.dc.b	102				
	.dc.b	177				
						
	.dc.b	211				
						
	.dc.b	161				
	.dc.b	109				
	.dc.b	106				
						
	.dc.b	83				
						
	.dc.b	161				
	.dc.b	116				
	.dc.b	35				
						
	.dc.b	19				
						
	.dc.b	161				
	.dc.b	122				
	.dc.b	219				
						
	.dc.b	211				
						
	.dc.b	161				
	.dc.b	129				
	.dc.b	148				
						
	.dc.b	147				
						
	.dc.b	161				
	.dc.b	136				
	.dc.b	77				
						
	.dc.b	115				
						
	.dc.b	161				
	.dc.b	143				
	.dc.b	6				
						
	.dc.b	115				
						
	.dc.b	161				
	.dc.b	149				
	.dc.b	191				
						
	.dc.b	115				
						
	.dc.b	161				
	.dc.b	156				
	.dc.b	120				
						
	.dc.b	147				
						
	.dc.b	161				
	.dc.b	163				
	.dc.b	49				
						
	.dc.b	179				
						
						
_pretab:					

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				

	.dc.b $00				
	.dc.b $01,$01,$01,$01,$02,$02,$03,$03
	.dc.b $03,$02
	.dc.b $00				
	.align	2				
						
						
_sfbwidth_table:				
						
	.dc.l	_sfb_48000_long			
						
	.dc.l	_sfb_48000_short		
						
	.dc.l	_sfb_48000_mixed		
						
	.dc.l	_sfb_44100_long			
						
	.dc.l	_sfb_44100_short		
						
	.dc.l	_sfb_44100_mixed		
						
	.dc.l	_sfb_32000_long			
						
	.dc.l	_sfb_32000_short		
						
	.dc.l	_sfb_32000_mixed		
						
	.dc.l	_sfb_24000_long			
						
	.dc.l	_sfb_24000_short		
						
	.dc.l	_sfb_24000_mixed		
						
	.dc.l	_sfb_22050_long			
						
	.dc.l	_sfb_22050_short		
						
	.dc.l	_sfb_22050_mixed		
						
	.dc.l	_sfb_22050_long			
						
	.dc.l	_sfb_16000_short		
						
	.dc.l	_sfb_16000_mixed		
						
	.dc.l	_sfb_22050_long			
						
	.dc.l	_sfb_16000_short		
						
	.dc.l	_sfb_16000_mixed		
						
	.dc.l	_sfb_22050_long			
						
	.dc.l	_sfb_16000_short		
						
	.dc.l	_sfb_16000_mixed		
						
	.dc.l	_sfb_8000_long			
						
	.dc.l	_sfb_8000_short			
						
	.dc.l	_sfb_8000_mixed			
						
						
_sfb_8000_mixed:				
	.dc.b $0c,$0c,$0c,$04,$04,$04,$08,$08
	.dc.b $08,$0c,$0c,$0c,$10,$10,$10,$14
	.dc.b $14,$14,$18,$18			
	.dc.b $18,$1c,$1c,$1c,$24,$24,$24,$02
	.dc.b $02,$02,$02,$02,$02,$02,$02,$02
	.dc.b $1a,$1a				
	.dc.b $1a				
						
						
_sfb_8000_short:				
	.dc.b $08,$08,$08,$08,$08,$08,$08,$08
	.dc.b $08,$0c,$0c,$0c,$10,$10,$10,$14
	.dc.b $14,$14,$18,$18,$18		
	.dc.b $1c,$1c,$1c,$24,$24,$24,$02,$02
	.dc.b $02,$02,$02,$02,$02,$02,$02,$1a
	.dc.b $1a,$1a				
						
						
_sfb_8000_long:					
	.dc.b $0c,$0c,$0c,$0c,$0c,$0c,$10,$14
	.dc.b $18,$1c,$20,$28,$30,$38,$40,$4c
	.dc.b $5a,$02,$02,$02,$02,$02		
						
						
_sfb_16000_mixed:				
	.dc.b $06,$06,$06,$06,$06,$06,$06,$06
	.dc.b $06,$08,$08,$08,$0a,$0a,$0a,$0c
	.dc.b $0c,$0c,$0e,$0e			
	.dc.b $0e,$12,$12,$12,$18,$18,$18,$1e
	.dc.b $1e,$1e,$28,$28,$28,$12,$12,$12	
						
						
_sfb_22050_mixed:				
	.dc.b $06,$06,$06,$06,$06,$06,$06,$06
	.dc.b $06,$06,$06,$06,$08,$08,$08,$0a
	.dc.b $0a,$0a				
	.dc.b $0e,$0e,$0e,$12,$12,$12,$1a,$1a
	.dc.b $1a,$20,$20,$20,$2a,$2a,$2a,$12
	.dc.b $12,$12				
						
						
_sfb_24000_mixed:				
	.dc.b $06,$06,$06,$06,$06,$06,$06,$06
	.dc.b $06,$08,$08,$08,$0a,$0a,$0a,$0c
	.dc.b $0c,$0c,$0e,$0e			
	.dc.b $0e,$12,$12,$12,$18,$18,$18,$20
	.dc.b $20,$20,$2c,$2c,$2c,$0c,$0c,$0c	
						
						
_sfb_16000_short:				
	.dc.b $04,$04,$04,$04,$04,$04,$04,$04
	.dc.b $04,$06,$06,$06,$08,$08,$08,$0a
	.dc.b $0a,$0a				
	.dc.b $0c,$0c,$0c,$0e,$0e,$0e,$12,$12
	.dc.b $12,$18,$18,$18,$1e,$1e,$1e,$28
	.dc.b $28,$28,$12			
	.dc.b $12,$12				
						
						
_sfb_22050_short:				
	.dc.b $04,$04,$04,$04,$04,$04,$04,$04
	.dc.b $04,$06,$06,$06,$06,$06,$06	
	.dc.b $08,$08,$08,$0a,$0a,$0a,$0e,$0e
	.dc.b $0e,$12,$12,$12,$1a,$1a,$1a,$20
	.dc.b $20,$20,$2a,$2a,$2a,$12,$12	
	.dc.b $12				
						
						
_sfb_24000_short:				
	.dc.b $04,$04,$04,$04,$04,$04,$04,$04
	.dc.b $04,$06,$06,$06,$08,$08,$08,$0a
	.dc.b $0a,$0a				
	.dc.b $0c,$0c,$0c,$0e,$0e,$0e,$12,$12
	.dc.b $12,$18,$18,$18,$20,$20,$20,$2c
	.dc.b $2c,$2c,$0c,$0c,$0c		
						
						
_sfb_22050_long:				
	.dc.b $06,$06,$06,$06,$06,$06,$08,$0a
	.dc.b $0c,$0e,$10,$14,$18,$1c,$20,$26
	.dc.b $2e,$34,$3c,$44,$3a,$36		
						
						
_sfb_24000_long:				
	.dc.b $06,$06,$06,$06,$06,$06,$08,$0a
	.dc.b $0c,$0e,$10,$12,$16,$1a,$20,$26
	.dc.b $2e,$36,$3e,$46,$4c,$24		
						
						
_sfb_32000_mixed:				
	.dc.b $04,$04,$04,$04,$04,$04,$06,$06
	.dc.b $04,$04,$04,$06,$06,$06,$08,$08	
	.dc.b $08,$0c,$0c,$0c,$10,$10,$10,$14
	.dc.b $14,$14,$1a,$1a,$1a,$22,$22,$22
	.dc.b $2a,$2a,$2a,$0c,$0c,$0c		
						
						
_sfb_44100_mixed:				
	.dc.b $04,$04,$04,$04,$04,$04,$06,$06
	.dc.b $04,$04,$04,$06,$06,$06,$08,$08	
	.dc.b $08,$0a,$0a,$0a,$0c,$0c,$0c,$0e
	.dc.b $0e,$0e,$12,$12,$12,$16,$16,$16
	.dc.b $1e,$1e,$1e			
	.dc.b $38,$38,$38			
						
						
_sfb_48000_mixed:				
	.dc.b $04,$04,$04,$04,$04,$04,$06,$06
	.dc.b $04,$04,$04,$06,$06,$06,$06	
	.dc.b $06,$06,$0a,$0a,$0a,$0c,$0c,$0c
	.dc.b $0e,$0e,$0e,$10,$10,$10,$14,$14
	.dc.b $14,$1a				
	.dc.b $1a,$1a,$42,$42,$42		
						
						
_sfb_32000_short:				
	.dc.b $04,$04,$04,$04,$04,$04,$04,$04
	.dc.b $04,$04,$04,$04,$06,$06,$06	
	.dc.b $08,$08,$08,$0c,$0c,$0c,$10,$10
	.dc.b $10,$14,$14,$14,$1a,$1a,$1a,$22
	.dc.b $22,$22,$2a,$2a,$2a,$0c,$0c	
	.dc.b $0c				
						
						
_sfb_44100_short:				
	.dc.b $04,$04,$04,$04,$04,$04,$04,$04
	.dc.b $04,$04,$04,$04,$06,$06,$06	
	.dc.b $08,$08,$08,$0a,$0a,$0a,$0c,$0c
	.dc.b $0c,$0e,$0e,$0e,$12,$12,$12,$16
	.dc.b $16,$16,$1e,$1e			
	.dc.b $1e,$38,$38,$38			
						
						
_sfb_48000_short:				
	.dc.b $04,$04,$04,$04,$04,$04,$04,$04
	.dc.b $04,$04,$04,$04,$06,$06,$06	
	.dc.b $06,$06,$06,$0a,$0a,$0a,$0c,$0c
	.dc.b $0c,$0e,$0e,$0e,$10,$10,$10,$14
	.dc.b $14,$14				
	.dc.b $1a,$1a,$1a,$42,$42,$42		
						
						
_sfb_32000_long:				
	.dc.b $04,$04,$04,$04,$04,$04,$06,$06
	.dc.b $08,$0a,$0c,$10,$14,$18,$1e,$26
	.dc.b $2e,$38,$44,$54,$66		
	.dc.b $1a				
						
						
_sfb_44100_long:				
	.dc.b $04,$04,$04,$04,$04,$04,$06,$06
	.dc.b $08,$08,$0a,$0c,$10,$14,$18,$1c
	.dc.b $22,$2a,$32			
	.dc.b $36,$4c,$9e			
						
						
_sfb_48000_long:				
	.dc.b $04,$04,$04,$04,$04,$04,$06,$06
	.dc.b $06,$08,$0a,$0c,$10,$12,$16,$1c
	.dc.b $22				
	.dc.b $28,$2e,$36,$36,$c0		
						
						
_nsfb_table:					
	.dc.b $06,$05,$05,$05			
	.dc.b $09,$09,$09,$09			
	.dc.b $06,$09,$09,$09			
	.dc.b $06,$05,$07,$03			
	.dc.b $09,$09,$0c,$06			
	.dc.b $06,$09,$0c,$06			
	.dc.b $0b,$0a
	.dc.b $00				

	.dc.b $00				
	.dc.b $12,$12
	.dc.b $00				

	.dc.b $00				
	.dc.b $0f,$12
	.dc.b $00				

	.dc.b $00				
	.dc.b $07,$07,$07
	.dc.b $00				
	.dc.b $0c,$0c,$0c
	.dc.b $00				
	.dc.b $06,$0f,$0c
	.dc.b $00				
	.dc.b $06,$06,$06,$03			
	.dc.b $0c,$09,$09,$06			
	.dc.b $06,$0c,$09,$06			
	.dc.b $08,$08,$05
	.dc.b $00				
	.dc.b $0f,$0c,$09
	.dc.b $00				
	.dc.b $06,$12,$09
	.dc.b $00				
						
						
_sflen_table:					
						
	.dc.b	0				
						
	.dc.b	0				
						
	.dc.b	0				
						
	.dc.b	1				
						
	.dc.b	0				
						
	.dc.b	2				
						
	.dc.b	0				
						
	.dc.b	3				
						
	.dc.b	3				
						
	.dc.b	0				
						
	.dc.b	1				
						
	.dc.b	1				
						
	.dc.b	1				
						
	.dc.b	2				
						
	.dc.b	1				
						
	.dc.b	3				
						
	.dc.b	2				
						
	.dc.b	1				
						
	.dc.b	2				
						
	.dc.b	2				
						
	.dc.b	2				
						
	.dc.b	3				
						
	.dc.b	3				
						
	.dc.b	1				
						
	.dc.b	3				
						
	.dc.b	2				
						
	.dc.b	3				
						
	.dc.b	3				
						
	.dc.b	4				
						
	.dc.b	2				
						
	.dc.b	4				
						
	.dc.b	3				
						
