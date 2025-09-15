* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"synth.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_dct32:						
	lea (-184,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 224(sp),a5			
						
	move.l 124(a5),d0			
						
	move.l (a5),a0				
	add.l d0,a0				
						
	move.l (a5),d1				
	sub.l d0,d1				
	moveq #12,d0				
	asr.l d0,d1				
						
	move.l d1,d0				
	moveq #10,d2				
	lsl.l d2,d0				
	sub.l d1,d0				
	lsl.l #2,d0				
	sub.l d1,d0				
						
	move.l 64(a5),d1			
						
	move.l 60(a5),d2			
	add.l d1,d2				
						
	move.l 60(a5),d3			
	sub.l d1,d3				
	moveq #12,d4				
	asr.l d4,d3				
						
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #3,d1				
	add.l d3,d1				
	lsl.l #3,d1				
						
	move.l d0,d5				
	add.l d1,d5				
	move.l d5,52(sp)			
						
	sub.l d1,d0				
	asr.l d4,d0				
						
	move.l d0,d1				
	lsl.l #8,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	move.l d1,88(sp)			
						
	lea (a0,d2.l),a1			
						
	move.l a0,d0				
	sub.l d2,d0				
	asr.l d4,d0				
						
	move.l d0,d2				
	lsl.l #8,d2				
	sub.l d0,d2				
	lsl.l #2,d2				
	sub.l d0,d2				
	lsl.l #2,d2				
						
	move.l 96(a5),d0			
						
	move.l 28(a5),a0			
	add.l d0,a0				
						
	move.l 28(a5),d1			
	sub.l d0,d1				
	asr.l d4,d1				
						
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #5,d0				
	sub.l d1,d0				
	lsl.l #2,d0				
	sub.l d1,d0				
	lsl.l #2,d0				
	add.l d1,d0				
	add.l d0,d0				
						
	move.l 92(a5),d1			
						
	move.l 32(a5),d3			
	add.l d1,d3				
						
	move.l 32(a5),d4			
	sub.l d1,d4				
	moveq #12,d6				
	asr.l d6,d4				
						
	move.l d4,d1				
	add.l d1,d1				
	add.l d4,d1				
	lsl.l #2,d1				
	sub.l d4,d1				
	lsl.l #2,d1				
	sub.l d4,d1				
	lsl.l #5,d1				
	sub.l d4,d1				
	add.l d1,d1				
						
	move.l d0,d7				
	add.l d1,d7				
	move.l d7,56(sp)			
						
	sub.l d1,d0				
	asr.l d6,d0				
						
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #3,d1				
	add.l d0,d1				
	lsl.l #4,d1				
	add.l d0,d1				
	move.l d1,92(sp)			
						
	lea (a0,d3.l),a4			
						
	move.l a0,d0				
	sub.l d3,d0				
	asr.l d6,d0				
						
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #3,d1				
	add.l d0,d1				
	lsl.l #4,d1				
	add.l d0,d1				
	move.l d1,96(sp)			
						
	move.l 112(a5),d0			
						
	move.l 12(a5),d1			
	add.l d0,d1				
						
	move.l 12(a5),d3			
	sub.l d0,d3				
	asr.l d6,d3				
						
	move.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	lsl.l #4,d0				
	add.l d3,d0				
	lsl.l #4,d0				
						
	move.l 76(a5),a0			
						
	move.l 48(a5),d3			
	add.l a0,d3				
						
	move.l 48(a5),d4			
	sub.l a0,d4				
	asr.l d6,d4				
						
	move.l d4,d6				
	add.l d6,d6				
	add.l d4,d6				
	lsl.l #3,d6				
	sub.l d4,d6				
	move.l d6,d5				
	lsl.l #4,d5				
	sub.l d6,d5				
	lsl.l #2,d5				
	move.l d5,a0				
	sub.l d4,a0				
						
	lea (a0,d0.l),a2			
	move.l a2,60(sp)			
						
	sub.l a0,d0				
	moveq #12,d4				
	asr.l d4,d0				
						
	move.l d0,d4				
	add.l d4,d4				
	add.l d0,d4				
	move.l d4,d5				
	lsl.l #5,d5				
	add.l d5,d4				
	lsl.l #4,d4				
	sub.l d0,d4				
	add.l d4,d4				
	move.l d4,100(sp)			
						
	move.l d1,a0				
	add.l d3,a0				
						
	sub.l d3,d1				
	move.l d1,d3				
	moveq #12,d5				
	asr.l d5,d3				
						
	move.l d3,d0				
	add.l d0,d0				
	add.l d3,d0				
	move.l d0,d1				
	lsl.l #5,d1				
	add.l d0,d1				
	lsl.l #4,d1				
	sub.l d3,d1				
	add.l d1,d1				
						
	move.l 108(a5),d0			
						
	move.l 16(a5),d4			
	add.l d0,d4				
						
	move.l 16(a5),d3			
	sub.l d0,d3				
	asr.l d5,d3				
						
	move.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	lsl.l #2,d0				
	sub.l d3,d0				
	add.l d0,d0				
						
	move.l 80(a5),d3			
						
	move.l 44(a5),d5			
	add.l d3,d5				
						
	move.l 44(a5),d6			
	sub.l d3,d6				
	moveq #12,d7				
	asr.l d7,d6				
						
	move.l d6,d3				
	lsl.l #3,d3				
	sub.l d6,d3				
	lsl.l #3,d3				
	sub.l d6,d3				
	lsl.l #2,d3				
	sub.l d6,d3				
	lsl.l #3,d3				
	sub.l d6,d3				
						
	move.l d0,d6				
	add.l d3,d6				
	move.l d6,64(sp)			
						
	sub.l d3,d0				
	asr.l d7,d0				
						
	move.l d0,d3				
	lsl.l #2,d3				
	add.l d0,d3				
	move.l d3,d6				
	lsl.l #6,d6				
	add.l d6,d3				
	lsl.l #2,d3				
	sub.l d0,d3				
	add.l d3,d3				
	move.l d3,104(sp)			
						
	move.l d4,a3				
	add.l d5,a3				
						
	sub.l d5,d4				
	asr.l d7,d4				
						
	move.l d4,d0				
	lsl.l #2,d0				
	add.l d4,d0				
	move.l d0,d3				
	lsl.l #6,d3				
	add.l d3,d0				
	lsl.l #2,d0				
	sub.l d4,d0				
	add.l d0,d0				
	move.l d0,108(sp)			
						
	move.l 120(a5),d0			
						
	move.l 4(a5),d3				
	add.l d0,d3				
						
	move.l 4(a5),d4				
	sub.l d0,d4				
	asr.l d7,d4				
						
	move.l d4,d0				
	lsl.l #6,d0				
	sub.l d4,d0				
	lsl.l #2,d0				
	add.l d4,d0				
	lsl.l #2,d0				
	add.l d4,d0				
	lsl.l #2,d0				
	sub.l d4,d0				
						
	move.l 68(a5),d4			
						
	move.l 56(a5),d6			
	add.l d4,d6				
						
	move.l 56(a5),d5			
	sub.l d4,d5				
	asr.l d7,d5				
						
	move.l d5,d7				
	lsl.l #2,d7				
	add.l d5,d7				
	move.l d7,d4				
	lsl.l #4,d4				
	sub.l d7,d4				
	lsl.l #3,d4				
	add.l d5,d4				
						
	move.l d0,d7				
	add.l d4,d7				
	move.l d7,48(sp)			
						
	sub.l d4,d0				
	moveq #12,d4				
	asr.l d4,d0				
						
	move.l d0,d4				
	lsl.l #4,d4				
	sub.l d0,d4				
	lsl.l #2,d4				
	add.l d0,d4				
	lsl.l #2,d4				
	add.l d0,d4				
	lsl.l #4,d4				
	sub.l d0,d4				
	move.l d4,112(sp)			
						
	move.l d3,d5				
	add.l d6,d5				
	move.l d5,68(sp)			
						
	sub.l d6,d3				
	moveq #12,d6				
	asr.l d6,d3				
						
	move.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	move.l d0,116(sp)			
						
	move.l 100(a5),d0			
						
	move.l 24(a5),d3			
	add.l d0,d3				
						
	move.l 24(a5),d4			
	sub.l d0,d4				
	asr.l d6,d4				
						
	move.l d4,d5				
	lsl.l #4,d5				
	add.l d4,d5				
	lsl.l #3,d5				
	add.l d4,d5				
	move.l d5,d0				
	lsl.l #2,d0				
	sub.l d5,d0				
	lsl.l #3,d0				
	add.l d4,d0				
						
	move.l 88(a5),d4			
						
	move.l 36(a5),d5			
	add.l d4,d5				
						
	move.l 36(a5),d6			
	sub.l d4,d6				
	moveq #12,d7				
	asr.l d7,d6				
						
	move.l d6,d4				
	lsl.l #4,d4				
	add.l d6,d4				
	lsl.l #4,d4				
	sub.l d6,d4				
	move.l d4,d6				
	lsl.l #3,d6				
	add.l d6,d4				
						
	move.l d0,d6				
	add.l d4,d6				
	move.l d6,72(sp)			
						
	sub.l d4,d0				
	asr.l d7,d0				
						
	move.l d0,d4				
	lsl.l #3,d4				
	add.l d0,d4				
	move.l d4,d6				
	lsl.l #5,d6				
	add.l d6,d4				
	lsl.l #2,d4				
	add.l d0,d4				
	move.l d4,120(sp)			
						
	move.l d3,d7				
	add.l d5,d7				
	move.l d7,128(sp)			
						
	sub.l d5,d3				
	moveq #12,d0				
	asr.l d0,d3				
						
	move.l d3,d0				
	lsl.l #3,d0				
	add.l d3,d0				
	move.l d0,d4				
	lsl.l #5,d4				
	add.l d4,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	move.l d0,124(sp)			
						
	move.l 116(a5),d3			
						
	move.l 8(a5),d0				
	add.l d3,d0				
						
	move.l 8(a5),d4				
	sub.l d3,d4				
	moveq #12,d3				
	asr.l d3,d4				
						
	move.l d4,d3				
	lsl.l #5,d3				
	sub.l d4,d3				
	lsl.l #5,d3				
	add.l d4,d3				
	lsl.l #2,d3				
	add.l d4,d3				
						
	move.l 72(a5),d5			
						
	move.l 52(a5),d4			
	add.l d5,d4				
						
	move.l 52(a5),d6			
	sub.l d5,d6				
	moveq #12,d5				
	asr.l d5,d6				
						
	move.l d6,d5				
	lsl.l #5,d5				
	sub.l d6,d5				
	lsl.l #3,d5				
	add.l d6,d5				
	lsl.l #2,d5				
	sub.l d6,d5				
						
	move.l d3,d6				
	add.l d5,d6				
	move.l d6,76(sp)			
						
	sub.l d5,d3				
	move.l d3,d5				
	moveq #12,d7				
	asr.l d7,d5				
						
	move.l d5,d3				
	lsl.l #3,d3				
	sub.l d5,d3				
	move.l d3,d5				
	lsl.l #7,d5				
	add.l d5,d3				
	lsl.l #2,d3				
						
	move.l d0,d5				
	add.l d4,d5				
	move.l d5,132(sp)			
						
	sub.l d4,d0				
	asr.l d7,d0				
						
	move.l d0,d4				
	lsl.l #3,d4				
	sub.l d0,d4				
	move.l d4,d0				
	lsl.l #7,d0				
	add.l d0,d4				
	lsl.l #2,d4				
						
	move.l 104(a5),d0			
						
	move.l 20(a5),a2			
	add.l d0,a2				
						
	move.l 20(a5),d6			
	sub.l d0,d6				
	asr.l d7,d6				
						
	move.l d6,d0				
	lsl.l #3,d0				
	sub.l d6,d0				
	lsl.l #3,d0				
	sub.l d6,d0				
	lsl.l #3,d0				
	sub.l d6,d0				
	lsl.l #3,d0				
	add.l d6,d0				
						
	move.l 40(a5),d6			
						
	move.l 84(a5),a6			
						
	lea (a6,d6.l),a5			
						
	sub.l a6,d6				
	asr.l d7,d6				
						
	move.l d6,d7				
	lsl.l #5,d7				
	move.l d7,a6				
	add.l d6,a6				
	move.l a6,d5				
	lsl.l #3,d5				
	move.l d5,a6				
	sub.l d6,a6				
	move.l a6,d7				
	lsl.l #3,d7				
	move.l d7,a6				
	add.l d6,a6				
						
	move.l d0,d6				
	add.l a6,d6				
						
	sub.l a6,d0				
	moveq #12,d5				
	asr.l d5,d0				
						
	move.l d0,d7				
	lsl.l #4,d7				
	move.l d7,a6				
	sub.l d0,a6				
	move.l a6,d5				
	lsl.l #4,d5				
	move.l d5,a6				
	add.l d0,a6				
	move.l a6,d7				
	lsl.l #2,d7				
	add.l d7,d0				
	add.l d0,d0				
						
	lea (a2,a5.l),a6			
						
	sub.l a5,a2				
	move.l a2,d5				
	moveq #12,d7				
	asr.l d7,d5				
	move.l d5,a2				
						
	lsl.l #4,d5				
	move.l d5,a5				
	sub.l a2,a5				
	move.l a5,d5				
	lsl.l #4,d5				
	move.l d5,a5				
	add.l a2,a5				
	move.l a5,d7				
	lsl.l #2,d7				
	move.l d7,a5				
	add.l a2,a5				
	move.l a5,d5				
	add.l d5,d5				
	move.l d5,a5				
						
	lea (a1,a4.l),a2			
	move.l a2,44(sp)			
						
	sub.l a4,a1				
	move.l a1,d5				
	moveq #12,d7				
	asr.l d7,d5				
	move.l d5,a1				
						
	lsl.l #6,d5				
	move.l d5,a2				
	sub.l a1,a2				
	move.l a2,d5				
	lsl.l #2,d5				
	move.l d5,a2				
	sub.l a1,a2				
	move.l a2,d7				
	lsl.l #4,d7				
	move.l d7,a2				
	add.l a1,a2				
	move.l a2,156(sp)			
						
	lea (a0,a3.l),a1			
	move.l a1,80(sp)			
						
	sub.l a3,a0				
	move.l a0,d5				
	moveq #12,d7				
	asr.l d7,d5				
	move.l d5,a0				
						
	add.l d5,d5				
	move.l d5,a1				
	add.l a0,a1				
	move.l a1,d5				
	lsl.l #3,d5				
	move.l d5,a1				
	add.l a0,a1				
	move.l a1,d7				
	lsl.l #5,d7				
	move.l d7,a1				
	sub.l a0,a1				
	move.l a1,160(sp)			
						
	move.l 68(sp),d5			
	add.l 128(sp),d5			
	move.l d5,84(sp)			
						
	move.l 68(sp),a0			
	sub.l 128(sp),a0			
	move.l a0,d7				
	moveq #12,d5				
	asr.l d5,d7				
	move.l d7,a0				
						
	lsl.l #3,d7				
	sub.l a0,d7				
	lsl.l #3,d7				
	add.l a0,d7				
	lsl.l #2,d7				
	sub.l a0,d7				
	move.l d7,d5				
	lsl.l #4,d5				
	move.l d5,a0				
	sub.l d7,a0				
	move.l a0,164(sp)			
						
	move.l 132(sp),d7			
	add.l a6,d7				
	move.l d7,68(sp)			
						
	move.l 132(sp),d5			
	sub.l a6,d5				
	moveq #12,d7				
	asr.l d7,d5				
						
	move.l d5,d7				
	lsl.l #3,d7				
	add.l d5,d7				
	lsl.l #2,d7				
	sub.l d5,d7				
	move.l d7,d5				
	lsl.l #6,d5				
	add.l d5,d7				
	move.l d7,168(sp)			
						
	move.l 52(sp),d5			
	add.l 56(sp),d5				
	move.l d5,128(sp)			
						
	move.l 52(sp),d5			
	sub.l 56(sp),d5				
	moveq #12,d7				
	asr.l d7,d5				
						
	move.l d5,d7				
	lsl.l #6,d7				
	sub.l d5,d7				
	lsl.l #2,d7				
	sub.l d5,d7				
	lsl.l #4,d7				
	add.l d5,d7				
	move.l d7,172(sp)			
						
	move.l 60(sp),d5			
	add.l 64(sp),d5				
	move.l d5,52(sp)			
						
	move.l 60(sp),d5			
	sub.l 64(sp),d5				
	moveq #12,d7				
	asr.l d7,d5				
						
	move.l d5,d7				
	add.l d7,d7				
	add.l d5,d7				
	lsl.l #3,d7				
	add.l d5,d7				
	lsl.l #5,d7				
	sub.l d5,d7				
	move.l d7,176(sp)			
						
	move.l 48(sp),d5			
	add.l 72(sp),d5				
	move.l d5,56(sp)			
						
	move.l 48(sp),d7			
	sub.l 72(sp),d7				
	moveq #12,d5				
	asr.l d5,d7				
						
	move.l d7,d5				
	lsl.l #3,d5				
	sub.l d7,d5				
	lsl.l #3,d5				
	add.l d7,d5				
	lsl.l #2,d5				
	sub.l d7,d5				
	move.l d5,d7				
	lsl.l #4,d7				
	sub.l d5,d7				
	move.l d7,180(sp)			
						
	move.l 76(sp),a4			
	add.l d6,a4				
						
	move.l 76(sp),d5			
	sub.l d6,d5				
	move.l d5,d6				
	moveq #12,d7				
	asr.l d7,d6				
						
	move.l d6,d5				
	lsl.l #3,d5				
	add.l d6,d5				
	lsl.l #2,d5				
	sub.l d6,d5				
	move.l d5,d6				
	lsl.l #6,d6				
	add.l d6,d5				
	move.l d5,184(sp)			
						
	move.l 96(sp),d5			
	add.l d2,d5				
	move.l d5,60(sp)			
						
	sub.l 96(sp),d2				
	asr.l d7,d2				
						
	move.l d2,d5				
	lsl.l #6,d5				
	sub.l d2,d5				
	lsl.l #2,d5				
	sub.l d2,d5				
	lsl.l #4,d5				
	add.l d2,d5				
	move.l d5,188(sp)			
						
	move.l 108(sp),d6			
	add.l d1,d6				
	move.l d6,64(sp)			
						
	sub.l 108(sp),d1			
	asr.l d7,d1				
						
	move.l d1,d2				
	add.l d2,d2				
	add.l d1,d2				
	lsl.l #3,d2				
	add.l d1,d2				
	lsl.l #5,d2				
	sub.l d1,d2				
	move.l d2,192(sp)			
						
	move.l 116(sp),d7			
	add.l 124(sp),d7			
	move.l d7,48(sp)			
						
	move.l 116(sp),d2			
	sub.l 124(sp),d2			
	moveq #12,d1				
	asr.l d1,d2				
						
	move.l d2,d1				
	lsl.l #3,d1				
	sub.l d2,d1				
	lsl.l #3,d1				
	add.l d2,d1				
	lsl.l #2,d1				
	sub.l d2,d1				
	move.l d1,d2				
	lsl.l #4,d2				
	sub.l d1,d2				
	move.l d2,196(sp)			
						
	lea (a5,d4.l),a0			
	move.l a0,40(sp)			
						
	sub.l a5,d4				
	moveq #12,d1				
	asr.l d1,d4				
						
	move.l d4,d2				
	lsl.l #3,d2				
	add.l d4,d2				
	lsl.l #2,d2				
	sub.l d4,d2				
	move.l d2,d4				
	lsl.l #6,d4				
	add.l d4,d2				
	move.l d2,200(sp)			
						
	move.l 88(sp),d2			
	add.l 92(sp),d2				
	move.l d2,72(sp)			
						
	move.l 88(sp),d2			
	sub.l 92(sp),d2				
	asr.l d1,d2				
						
	move.l d2,d4				
	lsl.l #6,d4				
	sub.l d2,d4				
	lsl.l #2,d4				
	sub.l d2,d4				
	lsl.l #4,d4				
	add.l d2,d4				
	move.l d4,204(sp)			
						
	move.l 100(sp),d4			
	add.l 104(sp),d4			
	move.l d4,36(sp)			
						
	move.l 100(sp),d2			
	sub.l 104(sp),d2			
	asr.l d1,d2				
						
	move.l d2,d4				
	add.l d4,d4				
	add.l d2,d4				
	lsl.l #3,d4				
	add.l d2,d4				
	lsl.l #5,d4				
	sub.l d2,d4				
	move.l d4,208(sp)			
						
	move.l 112(sp),d5			
	add.l 120(sp),d5			
	move.l d5,76(sp)			
						
	move.l 112(sp),d4			
	sub.l 120(sp),d4			
	asr.l d1,d4				
						
	move.l d4,d2				
	lsl.l #3,d2				
	sub.l d4,d2				
	lsl.l #3,d2				
	add.l d4,d2				
	lsl.l #2,d2				
	sub.l d4,d2				
	move.l d2,d4				
	lsl.l #4,d4				
	sub.l d2,d4				
	move.l d4,212(sp)			
						
	move.l d3,d5				
	add.l d0,d5				
						
	sub.l d0,d3				
	asr.l d1,d3				
						
	move.l d3,d0				
	lsl.l #3,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	sub.l d3,d0				
	move.l d0,d2				
	lsl.l #6,d2				
	add.l d2,d0				
	move.l d0,216(sp)			
						
	move.l 44(sp),a2			
	add.l 80(sp),a2				
						
	move.l 84(sp),a3			
	add.l 68(sp),a3				
	move.l 228(sp),d0			
	lsl.l #2,d0				
	move.l 236(sp),a1			
	add.l d0,a1				
						
	lea 2048(a2,a3.l),a0			
	move.l a0,d2				
	asr.l d1,d2				
						
	move.l d2,480(a1)			
	move.l 232(sp),a0			
	add.l d0,a0				
						
	sub.l a3,a2				
	move.l a2,d2				
	asr.l d1,d2				
	move.l d2,d3				
	add.l d3,d3				
	add.l d2,d3				
	move.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	lsl.l #2,d0				
	add.l d2,d0				
	lsl.l #4,d0				
	add.l #2048,d0				
	asr.l d1,d0				
						
	move.l d0,(a0)				
						
	move.l 128(sp),d0			
	add.l 52(sp),d0				
	move.l d0,88(sp)			
						
	move.l 56(sp),d1			
	add.l a4,d1				
	move.l d1,92(sp)			
						
	add.l d1,d0				
						
	move.l d0,d2				
	add.l #2048,d2				
	moveq #12,d3				
	asr.l d3,d2				
						
	move.l d2,448(a1)			
						
	move.l 60(sp),d4			
	add.l d6,d4				
	move.l d4,96(sp)			
						
	add.l 40(sp),d7				
	move.l d7,100(sp)			
						
	move.l d4,a5				
	add.l d7,a5				
						
	move.l a5,d2				
	add.l #2048,d2				
	asr.l d3,d2				
						
	move.l d2,416(a1)			
						
	move.l 72(sp),d6			
	add.l 36(sp),d6				
	move.l d6,104(sp)			
						
	move.l 76(sp),d7			
	add.l d5,d7				
	move.l d7,108(sp)			
						
	move.l d6,d3				
	add.l d7,d3				
						
	move.l d3,d4				
	add.l d4,d4				
						
	sub.l d0,d4				
						
	move.l d4,d0				
	add.l #2048,d0				
	moveq #12,d1				
	asr.l d1,d0				
						
	move.l d0,384(a1)			
						
	move.l 156(sp),a3			
	add.l 160(sp),a3			
						
	move.l 164(sp),d2			
	add.l 168(sp),d2			
						
	lea (a3,d2.l),a2			
	move.l a2,112(sp)			
						
	move.l a2,d0				
	add.l #2048,d0				
	asr.l d1,d0				
						
	move.l d0,352(a1)			
						
	move.l 172(sp),d0			
	add.l 176(sp),d0			
	move.l d0,116(sp)			
						
	move.l 180(sp),a2			
	add.l 184(sp),a2			
						
	add.l a2,d0				
	move.l d0,120(sp)			
						
	add.l d0,d0				
						
	move.l d0,d1				
	sub.l d4,d1				
						
	move.l d1,d4				
	add.l #2048,d4				
	moveq #12,d6				
	asr.l d6,d4				
						
	move.l d4,320(a1)			
						
	move.l 188(sp),d7			
	add.l 192(sp),d7			
	move.l d7,124(sp)			
						
	move.l 196(sp),d0			
	add.l 200(sp),d0			
	move.l d0,132(sp)			
						
	move.l d7,d4				
	add.l d0,d4				
						
	move.l d4,d6				
	add.l d6,d6				
						
	sub.l a5,d6				
	move.l d6,136(sp)			
						
	add.l #2048,d6				
	moveq #12,d7				
	asr.l d7,d6				
						
	move.l d6,288(a1)			
						
	move.l 204(sp),d0			
	add.l 208(sp),d0			
	move.l d0,140(sp)			
						
	move.l 212(sp),d6			
	add.l 216(sp),d6			
	move.l d6,144(sp)			
						
	add.l d6,d0				
	move.l d0,148(sp)			
						
	move.l d0,d6				
	add.l d6,d6				
						
	sub.l d3,d6				
						
	move.l d6,d3				
	add.l d3,d3				
						
	sub.l d1,d3				
	move.l d3,152(sp)			
						
	move.l d3,d0				
	add.l #2048,d0				
	asr.l d7,d0				
						
	move.l d0,256(a1)			
						
	move.l 44(sp),d3			
	sub.l 80(sp),d3				
	asr.l d7,d3				
						
	move.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	lsl.l #2,d0				
	sub.l d3,d0				
	lsl.l #3,d0				
	add.l d3,d0				
	lsl.l #3,d0				
						
	move.l 84(sp),d3			
	sub.l 68(sp),d3				
	asr.l d7,d3				
	move.l d3,a5				
						
	add.l d3,d3				
	add.l a5,d3				
	lsl.l #4,d3				
	add.l a5,d3				
	lsl.l #5,d3				
	sub.l a5,d3				
						
	move.l d0,a5				
	add.l d3,a5				
						
	lea (2048,a5),a6			
	move.l a6,d1				
	asr.l d7,d1				
						
	move.l d1,224(a1)			
						
	sub.l d3,d0				
	asr.l d7,d0				
	move.l d0,d3				
	add.l d3,d3				
	move.l d3,a6				
	add.l d0,a6				
	move.l a6,d3				
	lsl.l #4,d3				
	sub.l a6,d3				
	lsl.l #2,d3				
	add.l d0,d3				
	lsl.l #5,d3				
	sub.l a5,d3				
	add.l #2048,d3				
	asr.l d7,d3				
						
	move.l d3,256(a0)			
						
	move.l 128(sp),d3			
	sub.l 52(sp),d3				
	asr.l d7,d3				
						
	move.l d3,d0				
	lsl.l #4,d0				
	sub.l d3,d0				
	lsl.l #2,d0				
	sub.l d3,d0				
	lsl.l #3,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	move.l d0,80(sp)			
						
	move.l 56(sp),d0			
	sub.l a4,d0				
	asr.l d7,d0				
						
	move.l d0,d3				
	add.l d3,d3				
	add.l d0,d3				
	lsl.l #4,d3				
	add.l d0,d3				
	lsl.l #5,d3				
	move.l d3,a6				
	sub.l d0,a6				
						
	move.l 80(sp),d3			
	add.l a6,d3				
	move.l d3,44(sp)			
						
	move.l d3,d0				
	add.l d0,d0				
						
	sub.l 152(sp),d0			
	move.l d0,68(sp)			
						
	move.l d0,d3				
	add.l #2048,d3				
	asr.l d7,d3				
						
	move.l d3,192(a1)			
						
	move.l 60(sp),d3			
	sub.l 64(sp),d3				
	asr.l d7,d3				
	move.l d3,a4				
						
	lsl.l #4,d3				
	sub.l a4,d3				
	lsl.l #2,d3				
	sub.l a4,d3				
	lsl.l #3,d3				
	add.l a4,d3				
	lsl.l #3,d3				
						
	move.l 48(sp),a4			
	sub.l 40(sp),a4				
	move.l a4,d1				
	asr.l d7,d1				
						
	move.l d1,d0				
	add.l d0,d0				
	move.l d0,a4				
	add.l d1,a4				
	move.l a4,d7				
	lsl.l #4,d7				
	move.l d7,a4				
	add.l d1,a4				
	move.l a4,d0				
	lsl.l #5,d0				
	move.l d0,a4				
	sub.l d1,a4				
						
	lea (a4,d3.l),a5			
	move.l a5,52(sp)			
						
	move.l a5,d1				
	add.l d1,d1				
						
	sub.l 136(sp),d1			
	move.l d1,56(sp)			
						
	add.l #2048,d1				
	moveq #12,d0				
	asr.l d0,d1				
						
	move.l d1,160(a1)			
						
	move.l 72(sp),d1			
	sub.l 36(sp),d1				
	move.l d1,d7				
	asr.l d0,d7				
						
	move.l d7,d1				
	lsl.l #4,d1				
	sub.l d7,d1				
	lsl.l #2,d1				
	sub.l d7,d1				
	lsl.l #3,d1				
	add.l d7,d1				
	lsl.l #3,d1				
						
	move.l 76(sp),d7			
	sub.l d5,d7				
	move.l d7,d5				
	asr.l d0,d5				
						
	move.l d5,d7				
	add.l d7,d7				
	add.l d5,d7				
	lsl.l #4,d7				
	add.l d5,d7				
	lsl.l #5,d7				
	sub.l d5,d7				
	move.l d7,84(sp)			
						
	add.l d1,d7				
	move.l d7,60(sp)			
						
	move.l d7,d5				
	add.l d5,d5				
						
	sub.l d6,d5				
	move.l d5,64(sp)			
						
	add.l d5,d5				
						
	sub.l 68(sp),d5				
	move.l d5,48(sp)			
						
	move.l d5,d0				
	add.l #2048,d0				
	moveq #12,d5				
	asr.l d5,d0				
						
	move.l d0,128(a1)			
						
	move.l 156(sp),d5			
	sub.l 160(sp),d5			
	moveq #12,d6				
	asr.l d6,d5				
						
	move.l d5,d0				
	lsl.l #4,d0				
	sub.l d5,d0				
	lsl.l #2,d0				
	sub.l d5,d0				
	lsl.l #3,d0				
	add.l d5,d0				
	lsl.l #3,d0				
						
	move.l 164(sp),d7			
	sub.l 168(sp),d7			
	asr.l d6,d7				
						
	move.l d7,d5				
	add.l d5,d5				
	add.l d7,d5				
	lsl.l #4,d5				
	add.l d7,d5				
	lsl.l #5,d5				
	sub.l d7,d5				
						
	move.l d0,a5				
	add.l d5,a5				
						
	move.l a5,d7				
	add.l d7,d7				
						
	sub.l 112(sp),d7			
	move.l d7,68(sp)			
						
	move.l d7,d6				
	add.l #2048,d6				
	moveq #12,d7				
	asr.l d7,d6				
						
	move.l d6,96(a1)			
						
	move.l a3,d6				
	sub.l d2,d6				
	asr.l d7,d6				
						
	move.l d6,d2				
	add.l d2,d2				
	move.l d2,a3				
	add.l d6,a3				
	move.l a3,d2				
	lsl.l #4,d2				
	sub.l a3,d2				
	lsl.l #2,d2				
	add.l d6,d2				
	lsl.l #5,d2				
						
	sub.l 68(sp),d2				
						
	move.l d2,d6				
	add.l #2048,d6				
	asr.l d7,d6				
						
	move.l d6,128(a0)			
						
	sub.l d5,d0				
	asr.l d7,d0				
	move.l d0,d6				
	add.l d6,d6				
	add.l d0,d6				
	move.l d6,d5				
	lsl.l #4,d5				
	sub.l d6,d5				
	lsl.l #2,d5				
	add.l d0,d5				
	lsl.l #5,d5				
	sub.l a5,d5				
	add.l d5,d5				
	sub.l d2,d5				
	add.l #2048,d5				
	asr.l d7,d5				
						
	move.l d5,384(a0)			
						
	move.l 172(sp),d2			
	sub.l 176(sp),d2			
	asr.l d7,d2				
						
	move.l d2,d0				
	lsl.l #4,d0				
	sub.l d2,d0				
	lsl.l #2,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	add.l d2,d0				
	lsl.l #3,d0				
						
	move.l 180(sp),d2			
	sub.l 184(sp),d2			
	asr.l d7,d2				
						
	move.l d2,d5				
	add.l d5,d5				
	add.l d2,d5				
	lsl.l #4,d5				
	add.l d2,d5				
	lsl.l #5,d5				
	move.l d5,a3				
	sub.l d2,a3				
						
	lea (a3,d0.l),a5			
	move.l a5,68(sp)			
						
	move.l a5,d2				
	add.l d2,d2				
						
	sub.l 120(sp),d2			
						
	move.l d2,d5				
	add.l d5,d5				
						
	sub.l 48(sp),d5				
	move.l d5,72(sp)			
						
	add.l #2048,d5				
	asr.l d7,d5				
						
	move.l d5,64(a1)			
						
	move.l 116(sp),d6			
	sub.l a2,d6				
	asr.l d7,d6				
						
	move.l d6,d7				
	add.l d7,d7				
	add.l d6,d7				
	move.l d7,d5				
	lsl.l #4,d5				
	sub.l d7,d5				
	lsl.l #2,d5				
	add.l d6,d5				
	lsl.l #5,d5				
						
	sub.l d2,d5				
	move.l d5,48(sp)			
						
	move.l 188(sp),d5			
	sub.l 192(sp),d5			
	moveq #12,d2				
	asr.l d2,d5				
						
	move.l d5,d2				
	lsl.l #4,d2				
	sub.l d5,d2				
	lsl.l #2,d2				
	sub.l d5,d2				
	lsl.l #3,d2				
	add.l d5,d2				
	lsl.l #3,d2				
						
	move.l 196(sp),d5			
	sub.l 200(sp),d5			
	moveq #12,d6				
	asr.l d6,d5				
						
	move.l d5,d6				
	add.l d6,d6				
	add.l d5,d6				
	lsl.l #4,d6				
	add.l d5,d6				
	lsl.l #5,d6				
	move.l d6,a5				
	sub.l d5,a5				
						
	lea (a5,d2.l),a2			
	move.l a2,76(sp)			
						
	move.l a2,d7				
	add.l d7,d7				
						
	sub.l d4,d7				
						
	move.l d7,d4				
	add.l d4,d4				
						
	move.l d4,a2				
	sub.l 56(sp),a2				
						
	move.l a2,d4				
	add.l #2048,d4				
	moveq #12,d5				
	asr.l d5,d4				
						
	move.l d4,32(a1)			
						
	move.l 96(sp),d6			
	sub.l 100(sp),d6			
	asr.l d5,d6				
						
	move.l d6,d5				
	add.l d5,d5				
	add.l d6,d5				
	move.l d5,d4				
	lsl.l #4,d4				
	sub.l d5,d4				
	lsl.l #2,d4				
	add.l d6,d4				
	move.l d4,d5				
	lsl.l #5,d5				
						
	sub.l a2,d5				
						
	move.l d5,d4				
	add.l #2048,d4				
	moveq #12,d6				
	asr.l d6,d4				
						
	move.l d4,64(a0)			
						
	move.l 124(sp),d6			
	sub.l 132(sp),d6			
	moveq #12,d4				
	asr.l d4,d6				
						
	move.l d6,d4				
	add.l d4,d4				
	move.l d4,a2				
	add.l d6,a2				
	move.l a2,d4				
	lsl.l #4,d4				
	sub.l a2,d4				
	lsl.l #2,d4				
	add.l d6,d4				
	lsl.l #5,d4				
						
	sub.l d7,d4				
						
	move.l d4,d6				
	add.l d6,d6				
						
	sub.l d5,d6				
						
	move.l d6,d5				
	add.l #2048,d5				
	moveq #12,d7				
	asr.l d7,d5				
						
	move.l d5,192(a0)			
						
	sub.l a4,d3				
	asr.l d7,d3				
						
	move.l d3,d7				
	add.l d7,d7				
	add.l d3,d7				
	move.l d7,d5				
	lsl.l #4,d5				
	sub.l d7,d5				
	lsl.l #2,d5				
	add.l d3,d5				
	lsl.l #5,d5				
						
	sub.l 52(sp),d5				
						
	add.l d5,d5				
						
	sub.l d6,d5				
						
	move.l d5,d3				
	add.l #2048,d3				
	moveq #12,d6				
	asr.l d6,d3				
						
	move.l d3,320(a0)			
						
	sub.l a5,d2				
	asr.l d6,d2				
	move.l d2,d6				
	add.l d6,d6				
	add.l d2,d6				
	move.l d6,d3				
	lsl.l #4,d3				
	sub.l d6,d3				
	lsl.l #2,d3				
	add.l d2,d3				
	lsl.l #5,d3				
	sub.l 76(sp),d3				
	add.l d3,d3				
	sub.l d4,d3				
	add.l d3,d3				
	sub.l d5,d3				
	add.l #2048,d3				
	moveq #12,d7				
	asr.l d7,d3				
						
	move.l d3,448(a0)			
						
	move.l 204(sp),d3			
	sub.l 208(sp),d3			
	asr.l d7,d3				
						
	move.l d3,d2				
	lsl.l #4,d2				
	sub.l d3,d2				
	lsl.l #2,d2				
	sub.l d3,d2				
	lsl.l #3,d2				
	add.l d3,d2				
	lsl.l #3,d2				
						
	move.l 212(sp),d3			
	sub.l 216(sp),d3			
	asr.l d7,d3				
						
	move.l d3,d4				
	add.l d4,d4				
	add.l d3,d4				
	lsl.l #4,d4				
	add.l d3,d4				
	lsl.l #5,d4				
	sub.l d3,d4				
						
	move.l d2,a2				
	add.l d4,a2				
						
	move.l a2,d7				
	add.l d7,d7				
						
	sub.l 148(sp),d7			
						
	move.l d7,d6				
	add.l d6,d6				
						
	sub.l 64(sp),d6				
						
	move.l 104(sp),d5			
	sub.l 108(sp),d5			
	moveq #12,d3				
	asr.l d3,d5				
						
	move.l d5,d3				
	add.l d3,d3				
	move.l d3,a5				
	add.l d5,a5				
	move.l a5,d3				
	lsl.l #4,d3				
	sub.l a5,d3				
	lsl.l #2,d3				
	add.l d3,d5				
	lsl.l #5,d5				
						
	sub.l d6,d5				
						
	add.l d6,d6				
						
	move.l d6,a4				
	sub.l 72(sp),a4				
						
	move.l a4,d6				
	add.l #2048,d6				
	moveq #12,d3				
	asr.l d3,d6				
						
	move.l d6,(a1)				
						
	move.l 88(sp),d3			
	sub.l 92(sp),d3				
	moveq #12,d6				
	asr.l d6,d3				
	move.l d3,a1				
						
	add.l d3,d3				
	lea (a1,d3.l),a5			
	move.l a5,d3				
	lsl.l #4,d3				
	sub.l a5,d3				
	lsl.l #2,d3				
	add.l a1,d3				
	lsl.l #5,d3				
						
	move.l d3,a1				
	sub.l a4,a1				
						
	move.l a1,d6				
	add.l #2048,d6				
	moveq #12,d3				
	asr.l d3,d6				
						
	move.l d6,32(a0)			
						
	move.l d5,d6				
	add.l d6,d6				
						
	move.l d6,a4				
	sub.l a1,a4				
						
	lea (2048,a4),a1			
	move.l a1,d6				
	asr.l d3,d6				
						
	move.l d6,96(a0)			
						
	move.l 48(sp),d3			
	add.l d3,d3				
						
	move.l d3,a1				
	sub.l a4,a1				
						
	move.l a1,d3				
	add.l #2048,d3				
	moveq #12,d6				
	asr.l d6,d3				
						
	move.l d3,160(a0)			
						
	move.l 140(sp),d6			
	sub.l 144(sp),d6			
	moveq #12,d3				
	asr.l d3,d6				
						
	move.l d6,d3				
	add.l d3,d3				
	move.l d3,a5				
	add.l d6,a5				
	move.l a5,d3				
	lsl.l #4,d3				
	sub.l a5,d3				
	lsl.l #2,d3				
	add.l d6,d3				
	lsl.l #5,d3				
						
	sub.l d7,d3				
						
	move.l d3,d6				
	add.l d6,d6				
						
	sub.l d5,d6				
						
	move.l d6,d7				
	add.l d7,d7				
						
	move.l d7,a4				
	sub.l a1,a4				
						
	move.l a4,d7				
	add.l #2048,d7				
	moveq #12,d5				
	asr.l d5,d7				
						
	move.l d7,224(a0)			
						
	move.l 80(sp),d5			
	sub.l a6,d5				
	moveq #12,d7				
	asr.l d7,d5				
	move.l d5,a1				
						
	add.l d5,d5				
	lea (a1,d5.l),a5			
	move.l a5,d5				
	lsl.l #4,d5				
	sub.l a5,d5				
	lsl.l #2,d5				
	add.l a1,d5				
	lsl.l #5,d5				
						
	sub.l 44(sp),d5				
						
	add.l d5,d5				
						
	move.l d5,a5				
	sub.l a4,a5				
						
	move.l a5,d7				
	add.l #2048,d7				
	moveq #12,d5				
	asr.l d5,d7				
						
	move.l d7,288(a0)			
						
	sub.l 84(sp),d1				
	move.l d1,d7				
	asr.l d5,d7				
						
	move.l d7,d1				
	add.l d1,d1				
	move.l d1,a1				
	add.l d7,a1				
	move.l a1,d1				
	lsl.l #4,d1				
	sub.l a1,d1				
	lsl.l #2,d1				
	add.l d7,d1				
	lsl.l #5,d1				
						
	sub.l 60(sp),d1				
						
	add.l d1,d1				
						
	sub.l d6,d1				
						
	move.l d1,d6				
	add.l d6,d6				
						
	sub.l a5,d6				
						
	move.l d6,d5				
	add.l #2048,d5				
	moveq #12,d7				
	asr.l d7,d5				
						
	move.l d5,352(a0)			
						
	sub.l a3,d0				
	move.l d0,d5				
	asr.l d7,d5				
						
	move.l d5,d7				
	add.l d7,d7				
	add.l d5,d7				
	move.l d7,d0				
	lsl.l #4,d0				
	sub.l d7,d0				
	lsl.l #2,d0				
	add.l d5,d0				
	lsl.l #5,d0				
						
	sub.l 68(sp),d0				
						
	add.l d0,d0				
						
	sub.l 48(sp),d0				
						
	add.l d0,d0				
						
	move.l d0,a1				
	sub.l d6,a1				
						
	move.l a1,d0				
	add.l #2048,d0				
	moveq #12,d5				
	asr.l d5,d0				
						
	move.l d0,416(a0)			
						
	sub.l d4,d2				
	asr.l d5,d2				
	move.l d2,d4				
	add.l d4,d4				
	add.l d2,d4				
	move.l d4,d0				
	lsl.l #4,d0				
	sub.l d4,d0				
	lsl.l #2,d0				
	add.l d2,d0				
	lsl.l #5,d0				
	sub.l a2,d0				
	add.l d0,d0				
	sub.l d3,d0				
	add.l d0,d0				
	sub.l d1,d0				
	add.l d0,d0				
	sub.l a1,d0				
	add.l #2048,d0				
	asr.l d5,d0				
						
	move.l d0,480(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (184,sp),sp				
	rts					
						
	.align	2				
						
_synth_full:					
	lea (-40,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 80(sp),d6			
						
	tst.l 88(sp)				
	jbeq _?L3				
						
	move.l d6,a0				
	move.l 4096(a0),72(sp)			
	tst.l 92(sp)				
	jbeq _?L3				
	lea (4108,a0),a0			
	move.l a0,68(sp)			
	moveq #48,d0				
	add.l 84(sp),d0				
	move.l d0,64(sp)			
						
	clr.l 60(sp)				
_?L9:						
	move.l 60(sp),d1			
	lsl.l #2,d1				
	move.l d1,52(sp)			
	moveq #64,d3				
	add.l 68(sp),d3				
	move.l 64(sp),48(sp)			
						
	move.l 72(sp),40(sp)			
						
	clr.l 44(sp)				
	addq.l #2,d1				
	move.l d1,56(sp)			
_?L6:						
						
	moveq #1,d4				
	and.l 40(sp),d4				
	move.l 52(sp),d5			
	add.l d4,d5				
	move.l d5,d0				
	addq.l #2,d0				
	moveq #9,d1				
	lsl.l d1,d0				
						
	move.l d6,a0				
	lea -1024(a0,d0.l),a3			
						
	pea (a0,d0.l)				
	move.l a3,-(sp)				
	move.l 48(sp),d0			
	lsr.l #1,d0				
	move.l d0,-(sp)				
	move.l 60(sp),-(sp)			
	jbsr _dct32				
	lea (16,sp),sp				
	eor.w #1,d4				
	move.l d4,a1				
						
	move.l 56(sp),d4			
	add.l a1,d4				
	moveq #9,d0				
	lsl.l d0,d4				
	add.l d6,d4				
						
	move.l 40(sp),d7			
	subq.l #1,d7				
						
	moveq #14,d1				
	and.l d1,d7				
						
	moveq #1,d0				
	or.l d0,d7				
						
	move.l d7,d2				
	lsl.l #2,d2				
						
	moveq #-2,d1				
	and.l 40(sp),d1				
	move.l d1,d0				
	lsl.l #2,d0				
	move.l d0,36(sp)			
						
	moveq #9,d0				
	lsl.l d0,d5				
	move.l d6,a2				
	move.l (a2,d5.l),d0			
	muls.l _D(d1.l*4),d0			
	move.l d0,a0				
						
	move.l 4(a2,d5.l),d0			
	muls.l _D+56(d1.l*4),d0			
	lea (a0,d0.l),a2			
						
	move.l d6,a4				
	move.l 8(a4,d5.l),d0			
	muls.l _D+48(d1.l*4),d0			
	lea (a2,d0.l),a0			
						
	move.l 12(a4,d5.l),d0			
	muls.l _D+40(d1.l*4),d0			
	lea (a0,d0.l),a2			
						
	move.l 16(a4,d5.l),d0			
	muls.l _D+32(d1.l*4),d0			
	lea (a2,d0.l),a0			
						
	move.l 20(a4,d5.l),d0			
	muls.l _D+24(d1.l*4),d0			
	lea (a0,d0.l),a2			
						
	move.l 24(a4,d5.l),d0			
	muls.l _D+16(d1.l*4),d0			
	add.l d0,a2				
						
	move.l 28(a4,d5.l),d5			
	muls.l _D+8(d1.l*4),d5			
	lea (a2,d5.l),a0			
						
	move.l 52(sp),d5			
	add.l a1,d5				
	moveq #9,d0				
	lsl.l d0,d5				
	move.l 4(a4,d5.l),d0			
	muls.l _D+56(d7.l*4),d0			
	sub.l d0,a0				
						
	move.l (a4,d5.l),d0			
	muls.l _D(d7.l*4),d0			
	sub.l d0,a0				
						
	move.l 8(a4,d5.l),d0			
	muls.l _D+48(d7.l*4),d0			
	sub.l d0,a0				
						
	move.l 12(a4,d5.l),d0			
	muls.l _D+40(d7.l*4),d0			
	sub.l d0,a0				
						
	move.l 16(a4,d5.l),d0			
	muls.l _D+32(d7.l*4),d0			
	sub.l d0,a0				
						
	move.l 20(a4,d5.l),d0			
	muls.l _D+24(d7.l*4),d0			
	sub.l d0,a0				
						
	move.l 24(a4,d5.l),d0			
	muls.l _D+16(d7.l*4),d0			
	sub.l d0,a0				
						
	move.w #-60,a5				
	add.l d3,a5				
						
	move.l 28(a4,d5.l),d5			
	muls.l _D+8(d7.l*4),d5			
						
	move.l a0,d7				
	sub.l d5,d7				
						
	asr.l #2,d7				
						
	move.l d3,a0				
	move.l d7,-64(a0)			
	move.w #60,a6				
	add.l d3,a6				
	move.l d2,d5				
	add.l #128,d5				
	move.l d2,a2				
	add.l #_D+128,a2			
	move.l 36(sp),a1			
	add.l #_D+128,a1			
						
	move.l d4,a0				
	lsl.l #3,d1				
	add.l 36(sp),d2				
_?L8:						
						
	lea (32,a3),a3				
						
	move.l 28(a3),d0			
	muls.l 8(a1),d0				
						
	move.l 24(a3),d7			
	muls.l 16(a1),d7			
	add.l d7,d0				
						
	move.l 20(a3),d7			
	muls.l 24(a1),d7			
	add.l d0,d7				
						
	move.l 16(a3),d0			
	muls.l 32(a1),d0			
	add.l d7,d0				
						
	move.l 12(a3),d7			
	muls.l 40(a1),d7			
	add.l d0,d7				
						
	move.l 8(a3),d0				
	muls.l 48(a1),d0			
	add.l d7,d0				
						
	move.l 4(a3),d7				
	muls.l 56(a1),d7			
	add.l d0,d7				
						
	move.l (a3),d0				
	muls.l (a1),d0				
	add.l d7,d0				
						
	move.l 4(a0),d7				
	muls.l 56(a2),d7			
	sub.l d7,d0				
						
	move.l (a0),d7				
	muls.l (a2),d7				
	sub.l d7,d0				
						
	move.l 8(a0),d7				
	muls.l 48(a2),d7			
	sub.l d7,d0				
						
	move.l 12(a0),d7			
	muls.l 40(a2),d7			
	sub.l d7,d0				
						
	move.l 16(a0),d7			
	muls.l 32(a2),d7			
	sub.l d7,d0				
						
	move.l 20(a0),d7			
	muls.l 24(a2),d7			
	sub.l d7,d0				
						
	move.l 24(a0),d7			
	muls.l 16(a2),d7			
	sub.l d7,d0				
						
	move.l 28(a0),d7			
	muls.l 8(a2),d7				
						
	sub.l d7,d0				
						
	asr.l #2,d0				
						
	move.l d0,(a5)+				
						
	move.l a1,a4				
	sub.l d1,a4				
						
	move.l (a3),d7				
	muls.l 60(a4),d7			
						
	move.l 4(a3),d0				
	muls.l 68(a4),d0			
	add.l d7,d0				
						
	move.l 8(a3),d7				
	muls.l 76(a4),d7			
	add.l d0,d7				
						
	move.l 12(a3),d0			
	muls.l 84(a4),d0			
	add.l d7,d0				
						
	move.l 16(a3),d7			
	muls.l 92(a4),d7			
	add.l d0,d7				
						
	move.l 20(a3),d0			
	muls.l 100(a4),d0			
	add.l d7,d0				
						
	move.l 24(a3),d7			
	muls.l 108(a4),d7			
	add.l d0,d7				
						
	move.l 28(a3),d0			
	muls.l 116(a4),d0			
	add.l d7,d0				
						
	move.l a1,a4				
	sub.l d2,a4				
						
	move.l 28(a0),d7			
	muls.l 116(a4),d7			
	add.l d0,d7				
						
	move.l 24(a0),d0			
	muls.l 108(a4),d0			
	add.l d7,d0				
						
	move.l 20(a0),d7			
	muls.l 100(a4),d7			
	add.l d0,d7				
						
	move.l 16(a0),d0			
	muls.l 92(a4),d0			
	add.l d7,d0				
						
	move.l 12(a0),d7			
	muls.l 84(a4),d7			
	add.l d0,d7				
						
	move.l 8(a0),d0				
	muls.l 76(a4),d0			
	add.l d7,d0				
						
	move.l 4(a0),d7				
	muls.l 68(a4),d7			
	add.l d0,d7				
						
	move.l (a0),d0				
	muls.l 60(a4),d0			
	add.l d7,d0				
						
	asr.l #2,d0				
						
	move.l d0,(a6)				
						
	lea (32,a0),a0				
						
	subq.l #4,a6				
	lea (128,a2),a2				
	lea (128,a1),a1				
	cmp.l a5,d3				
	jbne _?L8				
						
	move.l d4,a1				
	move.l 480(a1),d1			
	muls.l _D+1920(d5.l),d1			
						
	move.l 484(a1),d0			
	muls.l _D+1976(d5.l),d0			
	add.l d1,d0				
						
	move.l 488(a1),d1			
	muls.l _D+1968(d5.l),d1			
	add.l d0,d1				
						
	move.l 492(a1),d0			
	muls.l _D+1960(d5.l),d0			
	add.l d1,d0				
						
	move.l 496(a1),d1			
	muls.l _D+1952(d5.l),d1			
	add.l d0,d1				
						
	move.l 500(a1),d0			
	muls.l _D+1944(d5.l),d0			
	add.l d1,d0				
						
	move.l 504(a1),d1			
	muls.l _D+1936(d5.l),d1			
	add.l d0,d1				
						
	move.l 508(a1),d0			
	muls.l _D+1928(d5.l),d0			
	add.l d1,d0				
						
	neg.l d0				
	asr.l #2,d0				
						
	move.l d0,(a5)				
						
	move.l 40(sp),d0			
	addq.l #1,d0				
						
	moveq #15,d1				
	and.l d0,d1				
	move.l d1,40(sp)			
						
	addq.l #1,44(sp)			
						
	add.l #128,48(sp)			
	move.l a5,d3				
	add.l #128,d3				
	move.l 92(sp),a0			
	cmp.l 44(sp),a0				
	jbne _?L6				
						
	addq.l #1,60(sp)			
						
	add.l #4608,68(sp)			
	add.l #4608,64(sp)			
	move.l 88(sp),a1			
	cmp.l 60(sp),a1				
	jbne _?L9				
_?L3:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (40,sp),sp				
	rts					
						
	.align	2				
						
_synth_half:					
	lea (-36,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 76(sp),d7			
						
	tst.l 84(sp)				
	jbeq _?L18				
						
	move.l d7,a0				
	move.l 4096(a0),68(sp)			
	tst.l 88(sp)				
	jbeq _?L18				
	move.l d7,d0				
	add.l #4108,d0				
	move.l d0,64(sp)			
	moveq #48,d1				
	add.l 80(sp),d1				
	move.l d1,60(sp)			
						
	clr.l 56(sp)				
_?L25:						
						
	move.l 64(sp),a4			
	move.l 56(sp),d0			
	lsl.l #2,d0				
	move.l d0,48(sp)			
	move.l 60(sp),44(sp)			
						
	move.l 68(sp),d6			
						
	clr.l 40(sp)				
	addq.l #2,d0				
	move.l d0,52(sp)			
_?L21:						
						
	moveq #1,d3				
	and.l d6,d3				
	move.l 48(sp),d5			
	add.l d3,d5				
	move.l d5,d1				
	addq.l #2,d1				
	moveq #9,d0				
	lsl.l d0,d1				
						
	move.l d7,a0				
	lea -1024(a0,d1.l),a3			
						
	pea (a0,d1.l)				
	move.l a3,-(sp)				
	move.l d6,d0				
	lsr.l #1,d0				
	move.l d0,-(sp)				
	move.l 56(sp),-(sp)			
	jbsr _dct32				
	lea (16,sp),sp				
	move.l d3,d0				
	eor.w #1,d0				
						
	move.l 52(sp),d4			
	add.l d0,d4				
	moveq #9,d1				
	lsl.l d1,d4				
	add.l d7,d4				
						
	move.l d6,d2				
	subq.l #1,d2				
						
	moveq #14,d1				
	and.l d1,d2				
						
	moveq #1,d1				
	or.l d1,d2				
						
	move.l d2,d3				
	lsl.l #2,d3				
						
	moveq #-2,d1				
	and.l d6,d1				
	move.l d1,a0				
						
	lsl.l #2,d1				
	move.l d1,36(sp)			
						
	moveq #9,d1				
	lsl.l d1,d5				
	move.l d7,a2				
	move.l (a2,d5.l),d1			
	muls.l _D(a0.l*4),d1			
	move.l d1,a1				
						
	move.l 4(a2,d5.l),d1			
	muls.l _D+56(a0.l*4),d1			
	lea (a1,d1.l),a2			
						
	move.l d7,a5				
	move.l 8(a5,d5.l),d1			
	muls.l _D+48(a0.l*4),d1			
	lea (a2,d1.l),a1			
						
	move.l 12(a5,d5.l),d1			
	muls.l _D+40(a0.l*4),d1			
	lea (a1,d1.l),a2			
						
	move.l 16(a5,d5.l),d1			
	muls.l _D+32(a0.l*4),d1			
	lea (a2,d1.l),a1			
						
	move.l 20(a5,d5.l),d1			
	muls.l _D+24(a0.l*4),d1			
	lea (a1,d1.l),a2			
						
	move.l 24(a5,d5.l),d1			
	muls.l _D+16(a0.l*4),d1			
	lea (a2,d1.l),a1			
						
	move.l 28(a5,d5.l),d5			
	muls.l _D+8(a0.l*4),d5			
	lea (a1,d5.l),a0			
						
	add.l 48(sp),d0				
	moveq #9,d1				
	lsl.l d1,d0				
	move.l 4(a5,d0.l),d5			
	muls.l _D+56(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l (a5,d0.l),d5			
	muls.l _D(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 8(a5,d0.l),d5			
	muls.l _D+48(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 12(a5,d0.l),d5			
	muls.l _D+40(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 16(a5,d0.l),d5			
	muls.l _D+32(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 20(a5,d0.l),d5			
	muls.l _D+24(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 24(a5,d0.l),d5			
	muls.l _D+16(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l a4,a6				
						
	move.l _D+8(d2.l*4),d2			
	muls.l 28(a5,d0.l),d2			
						
	move.l a0,d0				
	sub.l d2,d0				
						
	asr.l #2,d0				
						
	move.l d0,(a6)+				
						
	moveq #60,d2				
	add.l a4,d2				
	move.l d3,d5				
	add.l #128,d5				
	move.l d3,a5				
	add.l #_D+128,a5			
	move.l 36(sp),a4			
	add.l #_D+128,a4			
	lea _D+188,a2				
	sub.l d3,a2				
	lea _D+188,a1				
	sub.l 36(sp),a1				
						
	move.l d4,a0				
						
	moveq #1,d1				
_?L24:						
						
	lea (32,a3),a3				
						
	btst #0,d1				
	jbne _?L23				
						
	move.l 28(a3),d0			
	muls.l 8(a4),d0				
						
	move.l 24(a3),d3			
	muls.l 16(a4),d3			
	add.l d3,d0				
						
	move.l 20(a3),d3			
	muls.l 24(a4),d3			
	add.l d0,d3				
						
	move.l 16(a3),d0			
	muls.l 32(a4),d0			
	add.l d3,d0				
						
	move.l 12(a3),d3			
	muls.l 40(a4),d3			
	add.l d0,d3				
						
	move.l 8(a3),d0				
	muls.l 48(a4),d0			
	add.l d3,d0				
						
	move.l 4(a3),d3				
	muls.l 56(a4),d3			
	add.l d0,d3				
						
	move.l (a3),d0				
	muls.l (a4),d0				
	add.l d3,d0				
						
	move.l 4(a0),d3				
	muls.l 56(a5),d3			
	sub.l d3,d0				
						
	move.l (a0),d3				
	muls.l (a5),d3				
	sub.l d3,d0				
						
	move.l 8(a0),d3				
	muls.l 48(a5),d3			
	sub.l d3,d0				
						
	move.l 12(a0),d3			
	muls.l 40(a5),d3			
	sub.l d3,d0				
						
	move.l 16(a0),d3			
	muls.l 32(a5),d3			
	sub.l d3,d0				
						
	move.l 20(a0),d3			
	muls.l 24(a5),d3			
	sub.l d3,d0				
						
	move.l 24(a0),d3			
	muls.l 16(a5),d3			
	sub.l d3,d0				
						
	move.l 28(a0),d3			
	muls.l 8(a5),d3				
						
	sub.l d3,d0				
						
	asr.l #2,d0				
						
	addq.l #4,a6				
	move.l a6,36(sp)			
	subq.l #4,a6				
	move.l d0,(a6)+				
						
	move.l 28(a0),d3			
	muls.l 56(a2),d3			
						
	move.l 24(a0),d0			
	muls.l 48(a2),d0			
	add.l d3,d0				
						
	move.l 20(a0),d3			
	muls.l 40(a2),d3			
	add.l d0,d3				
						
	move.l 16(a0),d0			
	muls.l 32(a2),d0			
	add.l d3,d0				
						
	move.l 12(a0),d3			
	muls.l 24(a2),d3			
	add.l d0,d3				
						
	move.l 8(a0),d0				
	muls.l 16(a2),d0			
	add.l d3,d0				
						
	move.l 4(a0),d3				
	muls.l 8(a2),d3				
	add.l d0,d3				
						
	move.l (a0),d0				
	muls.l (a2),d0				
	add.l d3,d0				
						
	move.l (a3),d3				
	muls.l (a1),d3				
	add.l d0,d3				
						
	move.l 4(a3),d0				
	muls.l 8(a1),d0				
	add.l d3,d0				
						
	move.l 8(a3),d3				
	muls.l 16(a1),d3			
	add.l d0,d3				
						
	move.l 12(a3),d0			
	muls.l 24(a1),d0			
	add.l d3,d0				
						
	move.l 16(a3),d3			
	muls.l 32(a1),d3			
	add.l d0,d3				
						
	move.l 20(a3),d0			
	muls.l 40(a1),d0			
	add.l d3,d0				
						
	move.l 24(a3),d3			
	muls.l 48(a1),d3			
	add.l d0,d3				
						
	move.l 28(a3),d0			
	muls.l 56(a1),d0			
	add.l d3,d0				
						
	asr.l #2,d0				
						
	move.l d2,a6				
	move.l d0,(a6)				
						
	subq.l #4,d2				
						
	move.l 36(sp),a6			
_?L23:						
						
	lea (32,a0),a0				
						
	addq.l #1,d1				
						
	lea (128,a5),a5				
	lea (128,a4),a4				
	lea (128,a2),a2				
	lea (128,a1),a1				
	moveq #16,d0				
	cmp.l d1,d0				
	jbne _?L24				
						
	move.l d4,a0				
	move.l 480(a0),d1			
	muls.l _D+1920(d5.l),d1			
						
	move.l 484(a0),d0			
	muls.l _D+1976(d5.l),d0			
	add.l d1,d0				
						
	move.l 488(a0),d1			
	muls.l _D+1968(d5.l),d1			
	add.l d0,d1				
						
	move.l 492(a0),d0			
	muls.l _D+1960(d5.l),d0			
	add.l d1,d0				
						
	move.l 496(a0),d1			
	muls.l _D+1952(d5.l),d1			
	add.l d0,d1				
						
	move.l 500(a0),d0			
	muls.l _D+1944(d5.l),d0			
	add.l d1,d0				
						
	move.l 504(a0),d1			
	muls.l _D+1936(d5.l),d1			
	add.l d0,d1				
						
	move.l 508(a0),d0			
	muls.l _D+1928(d5.l),d0			
	add.l d1,d0				
						
	neg.l d0				
	asr.l #2,d0				
						
	move.l d0,(a6)				
						
	lea (32,a6),a4				
						
	addq.l #1,d6				
						
	moveq #15,d0				
	and.l d0,d6				
						
	addq.l #1,40(sp)			
						
	add.l #128,44(sp)			
	move.l 88(sp),d1			
	cmp.l 40(sp),d1				
	jbne _?L21				
						
	addq.l #1,56(sp)			
						
	add.l #4608,64(sp)			
	add.l #4608,60(sp)			
	move.l 84(sp),a0			
	cmp.l 56(sp),a0				
	jbne _?L25				
_?L18:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (36,sp),sp				
	rts					
						
	.align	2				
						
_synth_quarter:					
	lea (-36,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 76(sp),d7			
						
	tst.l 84(sp)				
	jbeq _?L34				
						
	move.l d7,a0				
	move.l 4096(a0),68(sp)			
	tst.l 88(sp)				
	jbeq _?L34				
	move.l d7,d0				
	add.l #4108,d0				
	move.l d0,64(sp)			
	moveq #48,d1				
	add.l 80(sp),d1				
	move.l d1,60(sp)			
						
	clr.l 56(sp)				
_?L41:						
						
	move.l 64(sp),a4			
	move.l 56(sp),d0			
	lsl.l #2,d0				
	move.l d0,48(sp)			
	move.l 60(sp),44(sp)			
						
	move.l 68(sp),d6			
						
	clr.l 40(sp)				
	addq.l #2,d0				
	move.l d0,52(sp)			
_?L37:						
						
	moveq #1,d3				
	and.l d6,d3				
	move.l 48(sp),d5			
	add.l d3,d5				
	move.l d5,d1				
	addq.l #2,d1				
	moveq #9,d0				
	lsl.l d0,d1				
						
	move.l d7,a0				
	lea -1024(a0,d1.l),a3			
						
	pea (a0,d1.l)				
	move.l a3,-(sp)				
	move.l d6,d0				
	lsr.l #1,d0				
	move.l d0,-(sp)				
	move.l 56(sp),-(sp)			
	jbsr _dct32				
	lea (16,sp),sp				
	move.l d3,d0				
	eor.w #1,d0				
						
	move.l 52(sp),d4			
	add.l d0,d4				
	moveq #9,d1				
	lsl.l d1,d4				
	add.l d7,d4				
						
	move.l d6,d2				
	subq.l #1,d2				
						
	moveq #14,d1				
	and.l d1,d2				
						
	moveq #1,d1				
	or.l d1,d2				
						
	move.l d2,d3				
	lsl.l #2,d3				
						
	moveq #-2,d1				
	and.l d6,d1				
	move.l d1,a0				
						
	lsl.l #2,d1				
	move.l d1,36(sp)			
						
	moveq #9,d1				
	lsl.l d1,d5				
	move.l d7,a2				
	move.l (a2,d5.l),d1			
	muls.l _D(a0.l*4),d1			
	move.l d1,a1				
						
	move.l 4(a2,d5.l),d1			
	muls.l _D+56(a0.l*4),d1			
	lea (a1,d1.l),a2			
						
	move.l d7,a5				
	move.l 8(a5,d5.l),d1			
	muls.l _D+48(a0.l*4),d1			
	lea (a2,d1.l),a1			
						
	move.l 12(a5,d5.l),d1			
	muls.l _D+40(a0.l*4),d1			
	lea (a1,d1.l),a2			
						
	move.l 16(a5,d5.l),d1			
	muls.l _D+32(a0.l*4),d1			
	lea (a2,d1.l),a1			
						
	move.l 20(a5,d5.l),d1			
	muls.l _D+24(a0.l*4),d1			
	lea (a1,d1.l),a2			
						
	move.l 24(a5,d5.l),d1			
	muls.l _D+16(a0.l*4),d1			
	lea (a2,d1.l),a1			
						
	move.l 28(a5,d5.l),d5			
	muls.l _D+8(a0.l*4),d5			
	lea (a1,d5.l),a0			
						
	add.l 48(sp),d0				
	moveq #9,d1				
	lsl.l d1,d0				
	move.l 4(a5,d0.l),d5			
	muls.l _D+56(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l (a5,d0.l),d5			
	muls.l _D(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 8(a5,d0.l),d5			
	muls.l _D+48(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 12(a5,d0.l),d5			
	muls.l _D+40(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 16(a5,d0.l),d5			
	muls.l _D+32(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 20(a5,d0.l),d5			
	muls.l _D+24(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l 24(a5,d0.l),d5			
	muls.l _D+16(d2.l*4),d5			
	sub.l d5,a0				
						
	move.l a4,a6				
						
	move.l _D+8(d2.l*4),d2			
	muls.l 28(a5,d0.l),d2			
						
	move.l a0,d0				
	sub.l d2,d0				
						
	asr.l #2,d0				
						
	move.l d0,(a6)+				
						
	moveq #28,d2				
	add.l a4,d2				
	move.l d3,d5				
	add.l #128,d5				
	move.l d3,a5				
	add.l #_D+128,a5			
	move.l 36(sp),a4			
	add.l #_D+128,a4			
	lea _D+188,a2				
	sub.l d3,a2				
	lea _D+188,a1				
	sub.l 36(sp),a1				
						
	move.l d4,a0				
						
	moveq #1,d1				
_?L40:						
						
	lea (32,a3),a3				
						
	bftst d1{#30:#2}			
	jbne _?L39				
						
	move.l 28(a3),d0			
	muls.l 8(a4),d0				
						
	move.l 24(a3),d3			
	muls.l 16(a4),d3			
	add.l d3,d0				
						
	move.l 20(a3),d3			
	muls.l 24(a4),d3			
	add.l d0,d3				
						
	move.l 16(a3),d0			
	muls.l 32(a4),d0			
	add.l d3,d0				
						
	move.l 12(a3),d3			
	muls.l 40(a4),d3			
	add.l d0,d3				
						
	move.l 8(a3),d0				
	muls.l 48(a4),d0			
	add.l d3,d0				
						
	move.l 4(a3),d3				
	muls.l 56(a4),d3			
	add.l d0,d3				
						
	move.l (a3),d0				
	muls.l (a4),d0				
	add.l d3,d0				
						
	move.l 4(a0),d3				
	muls.l 56(a5),d3			
	sub.l d3,d0				
						
	move.l (a0),d3				
	muls.l (a5),d3				
	sub.l d3,d0				
						
	move.l 8(a0),d3				
	muls.l 48(a5),d3			
	sub.l d3,d0				
						
	move.l 12(a0),d3			
	muls.l 40(a5),d3			
	sub.l d3,d0				
						
	move.l 16(a0),d3			
	muls.l 32(a5),d3			
	sub.l d3,d0				
						
	move.l 20(a0),d3			
	muls.l 24(a5),d3			
	sub.l d3,d0				
						
	move.l 24(a0),d3			
	muls.l 16(a5),d3			
	sub.l d3,d0				
						
	move.l 28(a0),d3			
	muls.l 8(a5),d3				
						
	sub.l d3,d0				
						
	asr.l #2,d0				
						
	addq.l #4,a6				
	move.l a6,36(sp)			
	subq.l #4,a6				
	move.l d0,(a6)+				
						
	move.l 28(a0),d3			
	muls.l 56(a2),d3			
						
	move.l 24(a0),d0			
	muls.l 48(a2),d0			
	add.l d3,d0				
						
	move.l 20(a0),d3			
	muls.l 40(a2),d3			
	add.l d0,d3				
						
	move.l 16(a0),d0			
	muls.l 32(a2),d0			
	add.l d3,d0				
						
	move.l 12(a0),d3			
	muls.l 24(a2),d3			
	add.l d0,d3				
						
	move.l 8(a0),d0				
	muls.l 16(a2),d0			
	add.l d3,d0				
						
	move.l 4(a0),d3				
	muls.l 8(a2),d3				
	add.l d0,d3				
						
	move.l (a0),d0				
	muls.l (a2),d0				
	add.l d3,d0				
						
	move.l (a3),d3				
	muls.l (a1),d3				
	add.l d0,d3				
						
	move.l 4(a3),d0				
	muls.l 8(a1),d0				
	add.l d3,d0				
						
	move.l 8(a3),d3				
	muls.l 16(a1),d3			
	add.l d0,d3				
						
	move.l 12(a3),d0			
	muls.l 24(a1),d0			
	add.l d3,d0				
						
	move.l 16(a3),d3			
	muls.l 32(a1),d3			
	add.l d0,d3				
						
	move.l 20(a3),d0			
	muls.l 40(a1),d0			
	add.l d3,d0				
						
	move.l 24(a3),d3			
	muls.l 48(a1),d3			
	add.l d0,d3				
						
	move.l 28(a3),d0			
	muls.l 56(a1),d0			
	add.l d3,d0				
						
	asr.l #2,d0				
						
	move.l d2,a6				
	move.l d0,(a6)				
						
	subq.l #4,d2				
						
	move.l 36(sp),a6			
_?L39:						
						
	lea (32,a0),a0				
						
	addq.l #1,d1				
						
	lea (128,a5),a5				
	lea (128,a4),a4				
	lea (128,a2),a2				
	lea (128,a1),a1				
	moveq #16,d0				
	cmp.l d1,d0				
	jbne _?L40				
						
	move.l d4,a0				
	move.l 480(a0),d1			
	muls.l _D+1920(d5.l),d1			
						
	move.l 484(a0),d0			
	muls.l _D+1976(d5.l),d0			
	add.l d1,d0				
						
	move.l 488(a0),d1			
	muls.l _D+1968(d5.l),d1			
	add.l d0,d1				
						
	move.l 492(a0),d0			
	muls.l _D+1960(d5.l),d0			
	add.l d1,d0				
						
	move.l 496(a0),d1			
	muls.l _D+1952(d5.l),d1			
	add.l d0,d1				
						
	move.l 500(a0),d0			
	muls.l _D+1944(d5.l),d0			
	add.l d1,d0				
						
	move.l 504(a0),d1			
	muls.l _D+1936(d5.l),d1			
	add.l d0,d1				
						
	move.l 508(a0),d0			
	muls.l _D+1928(d5.l),d0			
	add.l d1,d0				
						
	neg.l d0				
	asr.l #2,d0				
						
	move.l d0,(a6)				
						
	lea (16,a6),a4				
						
	addq.l #1,d6				
						
	moveq #15,d0				
	and.l d0,d6				
						
	addq.l #1,40(sp)			
						
	add.l #128,44(sp)			
	move.l 88(sp),d1			
	cmp.l 40(sp),d1				
	jbne _?L37				
						
	addq.l #1,56(sp)			
						
	add.l #4608,64(sp)			
	add.l #4608,60(sp)			
	move.l 84(sp),a0			
	cmp.l 56(sp),a0				
	jbne _?L41				
_?L34:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (36,sp),sp				
	rts					
						
	.align	2				
	.globl	_mad_synth_init			
						
_mad_synth_init:				
	move.l 4(sp),a1				
	move.l a1,d0				
	add.l #512,d0				
	move.l a1,d1				
	add.l #4608,d1				
_?L51:						
	move.l d0,a0				
	lea (-512,a0),a0			
_?L52:						
						
	clr.l 1536(a0)				
						
	clr.l 1024(a0)				
						
	clr.l 512(a0)				
						
	clr.l (a0)				
						
	clr.l 1540(a0)				
						
	clr.l 1028(a0)				
						
	clr.l 516(a0)				
						
	clr.l 4(a0)				
						
	clr.l 1544(a0)				
						
	clr.l 1032(a0)				
						
	clr.l 520(a0)				
						
	clr.l 8(a0)				
						
	clr.l 1548(a0)				
						
	clr.l 1036(a0)				
						
	clr.l 524(a0)				
						
	clr.l 12(a0)				
						
	clr.l 1552(a0)				
						
	clr.l 1040(a0)				
						
	clr.l 528(a0)				
						
	clr.l 16(a0)				
						
	clr.l 1556(a0)				
						
	clr.l 1044(a0)				
						
	clr.l 532(a0)				
						
	clr.l 20(a0)				
						
	clr.l 1560(a0)				
						
	clr.l 1048(a0)				
						
	clr.l 536(a0)				
						
	clr.l 24(a0)				
						
	clr.l 1564(a0)				
						
	clr.l 1052(a0)				
						
	clr.l 540(a0)				
						
	clr.l 28(a0)				
						
	lea (32,a0),a0				
	cmp.l a0,d0				
	jbne _?L52				
						
	move.l a0,d0				
	add.l #2048,d0				
	cmp.l d0,d1				
	jbne _?L51				
						
	clr.l 4096(a1)				
						
	clr.l 4100(a1)				
						
	clr.w 4104(a1)				
						
	clr.w 4106(a1)				
						
	rts					
						
	.align	2				
	.globl	_mad_synth_mute			
						
_mad_synth_mute:				
	move.l 4(sp),d0				
	add.l #512,d0				
	move.l 4(sp),d1				
	add.l #4608,d1				
_?L58:						
	move.l d0,a0				
	lea (-512,a0),a0			
_?L59:						
						
	clr.l 1536(a0)				
						
	clr.l 1024(a0)				
						
	clr.l 512(a0)				
						
	clr.l (a0)				
						
	clr.l 1540(a0)				
						
	clr.l 1028(a0)				
						
	clr.l 516(a0)				
						
	clr.l 4(a0)				
						
	clr.l 1544(a0)				
						
	clr.l 1032(a0)				
						
	clr.l 520(a0)				
						
	clr.l 8(a0)				
						
	clr.l 1548(a0)				
						
	clr.l 1036(a0)				
						
	clr.l 524(a0)				
						
	clr.l 12(a0)				
						
	clr.l 1552(a0)				
						
	clr.l 1040(a0)				
						
	clr.l 528(a0)				
						
	clr.l 16(a0)				
						
	clr.l 1556(a0)				
						
	clr.l 1044(a0)				
						
	clr.l 532(a0)				
						
	clr.l 20(a0)				
						
	clr.l 1560(a0)				
						
	clr.l 1048(a0)				
						
	clr.l 536(a0)				
						
	clr.l 24(a0)				
						
	clr.l 1564(a0)				
						
	clr.l 1052(a0)				
						
	clr.l 540(a0)				
						
	clr.l 28(a0)				
						
	lea (32,a0),a0				
	cmp.l a0,d0				
	jbne _?L59				
						
	move.l a0,d0				
	add.l #2048,d0				
	cmp.l d0,d1				
	jbne _?L58				
						
	rts					
						
	.align	2				
	.globl	_mad_synth_frame		
						
_mad_synth_frame:				
	movem.l d3/d4/a3,-(sp)			
	move.l 16(sp),a3			
	move.l 20(sp),a0			
						
	tst.l 4(a0)				
	jbeq _?L69				
	moveq #2,d1				
	moveq #2,d2				
						
	move.l (a0),d0				
	moveq #1,d3				
	cmp.l d0,d3				
	jbeq _?L70				
_?L77:						
						
	subq.l #3,d0				
	jbeq _?L76				
_?L72:						
	move.w #288,d4				
	move.w #576,a2				
	move.w #1152,a1				
						
	moveq #36,d3				
_?L66:						
						
	move.l 20(a0),d0			
						
	move.l d0,4100(a3)			
						
	move.w d1,4104(a3)			
						
	move.w a1,4106(a3)			
						
	move.l 44(a0),d1			
						
	btst #1,d1				
	jbeq _?L67				
						
	lsr.l #1,d0				
	move.l d0,4100(a3)			
						
	move.w a2,4106(a3)			
						
	lea _synth_half,a1			
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a0,-(sp)				
	move.l a3,-(sp)				
	jbsr (a1)				
	lea (16,sp),sp				
						
	add.l 4096(a3),d3			
						
	moveq #15,d0				
	and.l d3,d0				
	move.l d0,4096(a3)			
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L67:						
						
	btst #2,d1				
	jbeq _?L73				
						
	lsr.l #2,d0				
	move.l d0,4100(a3)			
						
	move.w d4,4106(a3)			
						
	lea _synth_quarter,a1			
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a0,-(sp)				
	move.l a3,-(sp)				
	jbsr (a1)				
	lea (16,sp),sp				
						
	add.l 4096(a3),d3			
						
	moveq #15,d0				
	and.l d3,d0				
	move.l d0,4096(a3)			
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L69:						
	moveq #1,d1				
						
	moveq #1,d2				
						
	move.l (a0),d0				
	moveq #1,d3				
	cmp.l d0,d3				
	jbne _?L77				
_?L70:						
	moveq #96,d4				
	move.w #192,a2				
	move.w #384,a1				
	moveq #12,d3				
	jbra _?L66				
_?L73:						
						
	lea _synth_full,a1			
						
	move.l d3,-(sp)				
	move.l d2,-(sp)				
	move.l a0,-(sp)				
	move.l a3,-(sp)				
	jbsr (a1)				
	lea (16,sp),sp				
						
	add.l 4096(a3),d3			
						
	moveq #15,d0				
	and.l d3,d0				
	move.l d0,4096(a3)			
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L76:						
						
	btst #4,30(a0)				
	jbeq _?L72				
						
	move.w #144,d4				
	move.w #288,a2				
	move.w #576,a1				
	moveq #18,d3				
	jbra _?L66				
						
	.data					
	.align	2				
						
						
_D:						
	.dc.l	0				
	.dc.l	-7				
	.dc.l	53				
	.dc.l	-115				
	.dc.l	509				
	.dc.l	-1288				
	.dc.l	1644				
	.dc.l	-9372				
	.dc.l	18760				
	.dc.l	9372				
	.dc.l	1644				
	.dc.l	1288				
	.dc.l	509				
	.dc.l	115				
	.dc.l	53				
	.dc.l	7				
	.dc.l	0				
	.dc.l	-7				
	.dc.l	53				
	.dc.l	-115				
	.dc.l	509				
	.dc.l	-1288				
	.dc.l	1644				
	.dc.l	-9372				
	.dc.l	18760				
	.dc.l	9372				
	.dc.l	1644				
	.dc.l	1288				
	.dc.l	509				
	.dc.l	115				
	.dc.l	53				
	.dc.l	7				
	.dc.l	0				
	.dc.l	-8				
	.dc.l	55				
	.dc.l	-130				
	.dc.l	500				
	.dc.l	-1379				
	.dc.l	1490				
	.dc.l	-9834				
	.dc.l	18748				
	.dc.l	8910				
	.dc.l	1784				
	.dc.l	1197				
	.dc.l	516				
	.dc.l	100				
	.dc.l	52				
	.dc.l	7				
	.dc.l	0				
	.dc.l	-8				
	.dc.l	55				
	.dc.l	-130				
	.dc.l	500				
	.dc.l	-1379				
	.dc.l	1490				
	.dc.l	-9834				
	.dc.l	18748				
	.dc.l	8910				
	.dc.l	1784				
	.dc.l	1197				
	.dc.l	516				
	.dc.l	100				
	.dc.l	52				
	.dc.l	7				
	.dc.l	0				
	.dc.l	-9				
	.dc.l	56				
	.dc.l	-145				
	.dc.l	488				
	.dc.l	-1470				
	.dc.l	1322				
	.dc.l	-10294				
	.dc.l	18714				
	.dc.l	8448				
	.dc.l	1910				
	.dc.l	1106				
	.dc.l	520				
	.dc.l	87				
	.dc.l	51				
	.dc.l	6				
	.dc.l	0				
	.dc.l	-9				
	.dc.l	56				
	.dc.l	-145				
	.dc.l	488				
	.dc.l	-1470				
	.dc.l	1322				
	.dc.l	-10294				
	.dc.l	18714				
	.dc.l	8448				
	.dc.l	1910				
	.dc.l	1106				
	.dc.l	520				
	.dc.l	87				
	.dc.l	51				
	.dc.l	6				
	.dc.l	0				
	.dc.l	-10				
	.dc.l	56				
	.dc.l	-161				
	.dc.l	473				
	.dc.l	-1559				
	.dc.l	1140				
	.dc.l	-10752				
	.dc.l	18658				
	.dc.l	7987				
	.dc.l	2023				
	.dc.l	1016				
	.dc.l	522				
	.dc.l	74				
	.dc.l	49				
	.dc.l	5				
	.dc.l	0				
	.dc.l	-10				
	.dc.l	56				
	.dc.l	-161				
	.dc.l	473				
	.dc.l	-1559				
	.dc.l	1140				
	.dc.l	-10752				
	.dc.l	18658				
	.dc.l	7987				
	.dc.l	2023				
	.dc.l	1016				
	.dc.l	522				
	.dc.l	74				
	.dc.l	49				
	.dc.l	5				
	.dc.l	0				
	.dc.l	-10				
	.dc.l	57				
	.dc.l	-178				
	.dc.l	456				
	.dc.l	-1647				
	.dc.l	944				
	.dc.l	-11205				
	.dc.l	18578				
	.dc.l	7528				
	.dc.l	2123				
	.dc.l	926				
	.dc.l	521				
	.dc.l	61				
	.dc.l	48				
	.dc.l	5				
	.dc.l	0				
	.dc.l	-10				
	.dc.l	57				
	.dc.l	-178				
	.dc.l	456				
	.dc.l	-1647				
	.dc.l	944				
	.dc.l	-11205				
	.dc.l	18578				
	.dc.l	7528				
	.dc.l	2123				
	.dc.l	926				
	.dc.l	521				
	.dc.l	61				
	.dc.l	48				
	.dc.l	5				
	.dc.l	0				
	.dc.l	-11				
	.dc.l	57				
	.dc.l	-195				
	.dc.l	435				
	.dc.l	-1734				
	.dc.l	734				
	.dc.l	-11654				
	.dc.l	18477				
	.dc.l	7072				
	.dc.l	2210				
	.dc.l	838				
	.dc.l	519				
	.dc.l	49				
	.dc.l	46				
	.dc.l	4				
	.dc.l	0				
	.dc.l	-11				
	.dc.l	57				
	.dc.l	-195				
	.dc.l	435				
	.dc.l	-1734				
	.dc.l	734				
	.dc.l	-11654				
	.dc.l	18477				
	.dc.l	7072				
	.dc.l	2210				
	.dc.l	838				
	.dc.l	519				
	.dc.l	49				
	.dc.l	46				
	.dc.l	4				
	.dc.l	0				
	.dc.l	-12				
	.dc.l	57				
	.dc.l	-212				
	.dc.l	411				
	.dc.l	-1818				
	.dc.l	509				
	.dc.l	-12098				
	.dc.l	18354				
	.dc.l	6621				
	.dc.l	2285				
	.dc.l	751				
	.dc.l	514				
	.dc.l	38				
	.dc.l	44				
	.dc.l	4				
	.dc.l	0				
	.dc.l	-12				
	.dc.l	57				
	.dc.l	-212				
	.dc.l	411				
	.dc.l	-1818				
	.dc.l	509				
	.dc.l	-12098				
	.dc.l	18354				
	.dc.l	6621				
	.dc.l	2285				
	.dc.l	751				
	.dc.l	514				
	.dc.l	38				
	.dc.l	44				
	.dc.l	4				
	.dc.l	-1				
	.dc.l	-13				
	.dc.l	57				
	.dc.l	-230				
	.dc.l	384				
	.dc.l	-1899				
	.dc.l	271				
	.dc.l	-12534				
	.dc.l	18209				
	.dc.l	6174				
	.dc.l	2347				
	.dc.l	666				
	.dc.l	508				
	.dc.l	28				
	.dc.l	42				
	.dc.l	4				
	.dc.l	-1				
	.dc.l	-13				
	.dc.l	57				
	.dc.l	-230				
	.dc.l	384				
	.dc.l	-1899				
	.dc.l	271				
	.dc.l	-12534				
	.dc.l	18209				
	.dc.l	6174				
	.dc.l	2347				
	.dc.l	666				
	.dc.l	508				
	.dc.l	28				
	.dc.l	42				
	.dc.l	4				
	.dc.l	-1				
	.dc.l	-15				
	.dc.l	56				
	.dc.l	-248				
	.dc.l	354				
	.dc.l	-1978				
	.dc.l	18				
	.dc.l	-12963				
	.dc.l	18042				
	.dc.l	5732				
	.dc.l	2398				
	.dc.l	583				
	.dc.l	500				
	.dc.l	18				
	.dc.l	40				
	.dc.l	3				
	.dc.l	-1				
	.dc.l	-15				
	.dc.l	56				
	.dc.l	-248				
	.dc.l	354				
	.dc.l	-1978				
	.dc.l	18				
	.dc.l	-12963				
	.dc.l	18042				
	.dc.l	5732				
	.dc.l	2398				
	.dc.l	583				
	.dc.l	500				
	.dc.l	18				
	.dc.l	40				
	.dc.l	3				
	.dc.l	-1				
	.dc.l	-16				
	.dc.l	55				
	.dc.l	-266				
	.dc.l	320				
	.dc.l	-2052				
	.dc.l	-250				
	.dc.l	-13384				
	.dc.l	17855				
	.dc.l	5297				
	.dc.l	2438				
	.dc.l	502				
	.dc.l	491				
	.dc.l	9				
	.dc.l	39				
	.dc.l	3				
	.dc.l	-1				
	.dc.l	-16				
	.dc.l	55				
	.dc.l	-266				
	.dc.l	320				
	.dc.l	-2052				
	.dc.l	-250				
	.dc.l	-13384				
	.dc.l	17855				
	.dc.l	5297				
	.dc.l	2438				
	.dc.l	502				
	.dc.l	491				
	.dc.l	9				
	.dc.l	39				
	.dc.l	3				
	.dc.l	-1				
	.dc.l	-17				
	.dc.l	54				
	.dc.l	-284				
	.dc.l	283				
	.dc.l	-2123				
	.dc.l	-531				
	.dc.l	-13795				
	.dc.l	17648				
	.dc.l	4870				
	.dc.l	2466				
	.dc.l	423				
	.dc.l	480				
	.dc.l	1				
	.dc.l	37				
	.dc.l	3				
	.dc.l	-1				
	.dc.l	-17				
	.dc.l	54				
	.dc.l	-284				
	.dc.l	283				
	.dc.l	-2123				
	.dc.l	-531				
	.dc.l	-13795				
	.dc.l	17648				
	.dc.l	4870				
	.dc.l	2466				
	.dc.l	423				
	.dc.l	480				
	.dc.l	1				
	.dc.l	37				
	.dc.l	3				
	.dc.l	-1				
	.dc.l	-18				
	.dc.l	52				
	.dc.l	-303				
	.dc.l	243				
	.dc.l	-2189				
	.dc.l	-825				
	.dc.l	-14195				
	.dc.l	17420				
	.dc.l	4450				
	.dc.l	2484				
	.dc.l	347				
	.dc.l	468				
	.dc.l	-7				
	.dc.l	35				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-18				
	.dc.l	52				
	.dc.l	-303				
	.dc.l	243				
	.dc.l	-2189				
	.dc.l	-825				
	.dc.l	-14195				
	.dc.l	17420				
	.dc.l	4450				
	.dc.l	2484				
	.dc.l	347				
	.dc.l	468				
	.dc.l	-7				
	.dc.l	35				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-20				
	.dc.l	50				
	.dc.l	-321				
	.dc.l	199				
	.dc.l	-2250				
	.dc.l	-1133				
	.dc.l	-14583				
	.dc.l	17173				
	.dc.l	4039				
	.dc.l	2492				
	.dc.l	274				
	.dc.l	454				
	.dc.l	-14				
	.dc.l	33				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-20				
	.dc.l	50				
	.dc.l	-321				
	.dc.l	199				
	.dc.l	-2250				
	.dc.l	-1133				
	.dc.l	-14583				
	.dc.l	17173				
	.dc.l	4039				
	.dc.l	2492				
	.dc.l	274				
	.dc.l	454				
	.dc.l	-14				
	.dc.l	33				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-21				
	.dc.l	47				
	.dc.l	-339				
	.dc.l	151				
	.dc.l	-2305				
	.dc.l	-1455				
	.dc.l	-14960				
	.dc.l	16907				
	.dc.l	3637				
	.dc.l	2490				
	.dc.l	204				
	.dc.l	440				
	.dc.l	-21				
	.dc.l	31				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-21				
	.dc.l	47				
	.dc.l	-339				
	.dc.l	151				
	.dc.l	-2305				
	.dc.l	-1455				
	.dc.l	-14960				
	.dc.l	16907				
	.dc.l	3637				
	.dc.l	2490				
	.dc.l	204				
	.dc.l	440				
	.dc.l	-21				
	.dc.l	31				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-23				
	.dc.l	44				
	.dc.l	-357				
	.dc.l	101				
	.dc.l	-2354				
	.dc.l	-1789				
	.dc.l	-15322				
	.dc.l	16624				
	.dc.l	3245				
	.dc.l	2479				
	.dc.l	136				
	.dc.l	425				
	.dc.l	-27				
	.dc.l	29				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-23				
	.dc.l	44				
	.dc.l	-357				
	.dc.l	101				
	.dc.l	-2354				
	.dc.l	-1789				
	.dc.l	-15322				
	.dc.l	16624				
	.dc.l	3245				
	.dc.l	2479				
	.dc.l	136				
	.dc.l	425				
	.dc.l	-27				
	.dc.l	29				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-24				
	.dc.l	41				
	.dc.l	-375				
	.dc.l	46				
	.dc.l	-2396				
	.dc.l	-2135				
	.dc.l	-15671				
	.dc.l	16323				
	.dc.l	2864				
	.dc.l	2460				
	.dc.l	72				
	.dc.l	409				
	.dc.l	-32				
	.dc.l	28				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-24				
	.dc.l	41				
	.dc.l	-375				
	.dc.l	46				
	.dc.l	-2396				
	.dc.l	-2135				
	.dc.l	-15671				
	.dc.l	16323				
	.dc.l	2864				
	.dc.l	2460				
	.dc.l	72				
	.dc.l	409				
	.dc.l	-32				
	.dc.l	28				
	.dc.l	2				
	.dc.l	-1				
	.dc.l	-26				
	.dc.l	37				
	.dc.l	-392				
	.dc.l	-11				
	.dc.l	-2432				
	.dc.l	-2494				
	.dc.l	-16005				
	.dc.l	16005				
	.dc.l	2494				
	.dc.l	2432				
	.dc.l	11				
	.dc.l	392				
	.dc.l	-37				
	.dc.l	26				
	.dc.l	1				
	.dc.l	-1				
	.dc.l	-26				
	.dc.l	37				
	.dc.l	-392				
	.dc.l	-11				
	.dc.l	-2432				
	.dc.l	-2494				
	.dc.l	-16005				
	.dc.l	16005				
	.dc.l	2494				
	.dc.l	2432				
	.dc.l	11				
	.dc.l	392				
	.dc.l	-37				
	.dc.l	26				
	.dc.l	1				
						
