* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"decoder.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_error_default:					
	move.l 8(sp),a0				
						
	cmp.l #513,60(a0)			
	jbeq _?L8				
						
	clr.l d0				
						
	rts					
_?L8:						
						
	move.l 4(sp),a0				
	tst.l (a0)				
	jbne _?L9				
						
	moveq #1,d0				
	move.l d0,(a0)				
						
	moveq #32,d0				
_?L10:						
						
	rts					
_?L9:						
						
	move.l 12(sp),-(sp)			
	jbsr _mad_frame_mute			
	addq.l #4,sp				
						
	moveq #32,d0				
	jbra _?L10				
						
	.align	2				
	.globl	_mad_decoder_init		
						
_mad_decoder_init:				
	move.l 4(sp),a0				
						
	moveq #-1,d0				
	move.l d0,(a0)				
						
	clr.l 4(a0)				
						
	clr.l 8(a0)				
						
	move.l d0,12(a0)			
						
	move.l d0,16(a0)			
						
	clr.l 20(a0)				
						
	move.l 8(sp),24(a0)			
						
	move.l 12(sp),28(a0)			
						
	move.l 16(sp),32(a0)			
						
	move.l 20(sp),36(a0)			
						
	move.l 24(sp),40(a0)			
						
	move.l 28(sp),44(a0)			
						
	move.l 32(sp),48(a0)			
						
	rts					
						
	.align	2				
	.globl	_mad_decoder_finish		
						
_mad_decoder_finish:				
						
	clr.l d0				
	rts					
						
	.align	2				
	.globl	_mad_decoder_run		
						
_mad_decoder_run:				
	subq.l #4,sp				
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
	move.l 32(sp),a4			
	move.l 36(sp),d0			
						
	move.l d0,(a4)				
						
	jbne _?L18				
						
	pea 1.w					
	pea 22656.w				
	jbsr _himem_malloc			
	addq.l #8,sp				
	move.l d0,a3				
						
	move.l d0,20(a4)			
						
	jbeq _?L18				
						
	clr.l 24(sp)				
						
	tst.l 28(a4)				
	jbeq _?L36				
						
	move.l 44(a4),a6			
						
	tst.l a6				
	jbeq _?L37				
						
	move.l 24(a4),d4			
						
	lea (64,a3),a5				
						
	move.l a3,d3				
	add.l #9332,d3				
						
	move.l a3,-(sp)				
	jbsr _mad_stream_init			
						
	move.l a5,(sp)				
	jbsr _mad_frame_init			
						
	move.l d3,(sp)				
	jbsr _mad_synth_init			
	addq.l #4,sp				
						
	move.l 4(a4),56(a3)			
_?L34:						
						
	move.l a3,-(sp)				
	move.l 24(a4),-(sp)			
	move.l 28(a4),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	moveq #17,d1				
	cmp.l d0,d1				
	jbeq _?L35				
	moveq #32,d1				
	cmp.l d0,d1				
	jbeq _?L22				
						
	moveq #16,d1				
	cmp.l d0,d1				
	jbeq _?L23				
_?L24:						
						
	tst.l 32(a4)				
	jbeq _?L26				
						
	move.l a3,-(sp)				
	move.l a5,-(sp)				
	jbsr _mad_header_decode			
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbeq _?L105				
						
	move.l a5,-(sp)				
	move.l 24(a4),-(sp)			
	move.l 32(a4),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	moveq #17,d1				
	cmp.l d0,d1				
	jbeq _?L35				
	moveq #32,d1				
	cmp.l d0,d1				
	jbeq _?L24				
	moveq #16,d1				
	cmp.l d0,d1				
	jbeq _?L23				
_?L26:						
						
	move.l a3,-(sp)				
	move.l a5,-(sp)				
	jbsr _mad_frame_decode			
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbeq _?L106				
						
	clr.l 24(sp)				
_?L31:						
						
	move.l 36(a4),a0			
						
	tst.l a0				
	jbeq _?L32				
						
	move.l a5,-(sp)				
	move.l a3,-(sp)				
	move.l 24(a4),-(sp)			
	jbsr (a0)				
	lea (12,sp),sp				
						
	moveq #17,d1				
	cmp.l d0,d1				
	jbeq _?L35				
	moveq #32,d1				
	cmp.l d0,d1				
	jbeq _?L24				
	moveq #16,d1				
	cmp.l d0,d1				
	jbeq _?L23				
_?L32:						
						
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	jbsr _mad_synth_frame			
	addq.l #8,sp				
						
	move.l 40(a4),a0			
						
	tst.l a0				
	jbeq _?L24				
						
	pea 13432(a3)				
	move.l a5,-(sp)				
	move.l 24(a4),-(sp)			
	jbsr (a0)				
	lea (12,sp),sp				
						
	moveq #16,d1				
	cmp.l d0,d1				
	jbeq _?L23				
_?L101:						
	moveq #17,d1				
	cmp.l d0,d1				
	jbne _?L24				
_?L35:						
						
	moveq #-1,d3				
_?L25:						
						
	move.l a5,-(sp)				
	jbsr _mad_frame_finish			
						
	move.l a3,(sp)				
	jbsr _mad_stream_finish			
	addq.l #4,sp				
						
	move.l 20(a4),a3			
_?L19:						
						
	move.l a3,-(sp)				
	jbsr _free				
	addq.l #4,sp				
						
	clr.l 20(a4)				
_?L15:						
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	addq.l #4,sp				
	rts					
_?L105:						
						
	move.l 60(a3),d0			
	move.l d0,d1				
	and.l #65280,d1				
						
	jbeq _?L28				
						
	move.l a5,-(sp)				
	move.l a3,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
						
	moveq #16,d1				
	cmp.l d0,d1				
	jbne _?L101				
_?L23:						
						
	clr.l d3				
						
	move.l a5,-(sp)				
	jbsr _mad_frame_finish			
						
	move.l a3,(sp)				
	jbsr _mad_stream_finish			
	addq.l #4,sp				
						
	move.l 20(a4),a3			
	jbra _?L19				
_?L22:						
						
	move.l 60(a3),d0			
_?L28:						
						
	subq.l #1,d0				
	jbeq _?L34				
						
	moveq #-1,d3				
	jbra _?L25				
_?L37:						
						
	moveq #24,d4				
	add.l sp,d4				
						
	lea _error_default,a6			
						
	lea (64,a3),a5				
						
	move.l a3,d3				
	add.l #9332,d3				
						
	move.l a3,-(sp)				
	jbsr _mad_stream_init			
						
	move.l a5,(sp)				
	jbsr _mad_frame_init			
						
	move.l d3,(sp)				
	jbsr _mad_synth_init			
	addq.l #4,sp				
						
	move.l 4(a4),56(a3)			
	jbra _?L34				
_?L36:						
						
	clr.l d3				
						
	move.l a3,-(sp)				
	jbsr _free				
	addq.l #4,sp				
						
	clr.l 20(a4)				
	jbra _?L15				
_?L106:						
						
	move.l 60(a3),d0			
	move.l d0,d1				
	and.l #65280,d1				
						
	jbeq _?L28				
						
	move.l a5,-(sp)				
	move.l a3,-(sp)				
	move.l d4,-(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
						
	moveq #17,d1				
	cmp.l d0,d1				
	jbeq _?L35				
	moveq #32,d1				
	cmp.l d0,d1				
	jbeq _?L31				
	moveq #16,d1				
	cmp.l d0,d1				
	jbne _?L24				
	jbra _?L23				
_?L18:						
						
	moveq #-1,d3				
						
	move.l d3,d0				
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	addq.l #4,sp				
	rts					
						
	.align	2				
	.globl	_mad_decoder_message		
						
_mad_decoder_message:				
						
	moveq #-1,d0				
	rts					
						
						
