* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"frame.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_decode_header:					
	movem.l a3/a4/a5/a6,-(sp)		
	move.l 20(sp),a3			
	move.l 24(sp),a6			
						
	clr.l 28(a3)				
						
	clr.l 32(a3)				
						
	lea (28,a6),a4				
	pea 11.w				
	move.l a4,-(sp)				
	jbsr _mad_bit_skip			
	addq.l #8,sp				
						
	pea 1.w					
	move.l a4,-(sp)				
	lea _mad_bit_read,a5			
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L2				
						
	or.w #16384,30(a3)			
_?L2:						
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L3				
						
	or.w #4096,30(a3)			
_?L4:						
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	moveq #4,d1				
	sub.l d0,d1				
						
	move.l d1,(a3)				
						
	subq.l #4,d1				
	jbeq _?L21				
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L39				
_?L6:						
						
	pea 4.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	moveq #15,d1				
	cmp.l d0,d1				
	jbeq _?L22				
						
	move.l (a3),d1				
						
	btst #4,30(a3)				
	jbeq _?L7				
						
	lsr.l #1,d1				
						
	addq.l #3,d1				
_?L36:						
						
	move.l d1,d2				
	lsl.l #4,d2				
	move.l d2,a0				
	sub.l d1,a0				
	add.l a0,d0				
	move.l _bitrate_table(d0.l*4),d0	
						
	move.l d0,16(a3)			
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	moveq #3,d1				
	cmp.l d0,d1				
	jbeq _?L23				
						
	move.l _samplerate_table(d0.l*4),d0	
						
	move.l d0,20(a3)			
						
	move.l 28(a3),d1			
						
	btst #12,d1				
	jbeq _?L10				
						
	btst #14,d1				
	jbne _?L11				
						
	lsr.l #1,d0				
	move.l d0,20(a3)			
_?L10:						
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L13				
						
	or.w #128,30(a3)			
_?L13:						
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L14				
						
	or.w #256,34(a3)			
_?L14:						
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	moveq #3,d1				
	sub.l d0,d1				
	move.l d1,4(a3)				
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d0,8(a3)				
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L15				
						
	moveq #32,d0				
	or.l d0,28(a3)				
_?L15:						
						
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L16				
						
	moveq #64,d1				
	or.l d1,28(a3)				
_?L16:						
						
	pea 2.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d0,12(a3)			
						
	btst #4,31(a3)				
	jbne _?L17				
						
	clr.l d0				
_?L1:						
						
	movem.l (sp)+,a3/a4/a5/a6		
	rts					
_?L3:						
						
	btst #6,30(a3)				
	jbeq _?L4				
	move.l #257,d0				
						
	move.l d0,60(a6)			
						
	moveq #-1,d0				
_?L40:						
						
	movem.l (sp)+,a3/a4/a5/a6		
	rts					
_?L7:						
						
	subq.l #1,d1				
	jbra _?L36				
_?L39:						
						
	moveq #16,d1				
	or.l d1,28(a3)				
						
	move.l #65535,-(sp)			
	pea 16.w				
	move.l 32(a6),-(sp)			
	move.l 28(a6),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.w d0,24(a3)			
	jbra _?L6				
_?L17:						
						
	pea 16.w				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.w d0,26(a3)			
						
	clr.l d0				
	jbra _?L1				
_?L11:						
						
	lsr.l #2,d0				
	move.l d0,20(a3)			
	jbra _?L10				
_?L21:						
	move.l #258,d0				
						
	move.l d0,60(a6)			
						
	moveq #-1,d0				
	jbra _?L40				
_?L22:						
	move.l #259,d0				
						
	move.l d0,60(a6)			
						
	moveq #-1,d0				
	jbra _?L40				
_?L23:						
	move.l #260,d0				
						
	move.l d0,60(a6)			
						
	moveq #-1,d0				
	jbra _?L40				
						
	.align	2				
	.globl	_mad_header_init		
						
_mad_header_init:				
	move.l 4(sp),a0				
						
	clr.l (a0)				
						
	clr.l 4(a0)				
						
	clr.l 8(a0)				
						
	clr.l 12(a0)				
						
	clr.l 16(a0)				
						
	clr.l 20(a0)				
						
	clr.w 24(a0)				
						
	clr.w 26(a0)				
						
	clr.l 28(a0)				
						
	clr.l 32(a0)				
						
	move.l _mad_timer_zero,d0		
	move.l _mad_timer_zero+4,d1		
	move.l d0,36(a0)			
	move.l d1,40(a0)			
						
	rts					
						
	.align	2				
	.globl	_mad_frame_init			
						
_mad_frame_init:				
	move.l 4(sp),a0				
						
	clr.l (a0)				
						
	clr.l 4(a0)				
						
	clr.l 8(a0)				
						
	clr.l 12(a0)				
						
	clr.l 16(a0)				
						
	clr.l 20(a0)				
						
	clr.w 24(a0)				
						
	clr.w 26(a0)				
						
	clr.l 28(a0)				
						
	clr.l 32(a0)				
						
	move.l _mad_timer_zero,d0		
	move.l _mad_timer_zero+4,d1		
	move.l d0,36(a0)			
	move.l d1,40(a0)			
						
	clr.l 44(a0)				
						
	clr.l 9264(a0)				
						
	pea 9216.w				
	clr.l -(sp)				
	pea 48(a0)				
	jbsr _memset				
	lea (12,sp),sp				
						
	rts					
						
	.align	2				
	.globl	_mad_frame_finish		
						
_mad_frame_finish:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 9264(a3),d0			
						
	jbeq _?L45				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 9264(a3)				
_?L45:						
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_mad_header_decode		
						
_mad_header_decode:				
	lea (-124,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 164(sp),a4			
	move.l 168(sp),a3			
						
	move.l 24(a3),a1			
						
	move.l 4(a3),d7				
						
	tst.l a1				
	jbeq _?L114				
						
	move.l 8(a3),d0				
						
	move.l 12(a3),d1			
						
	tst.l d0				
	jbeq _?L55				
						
	tst.l d1				
	jbne _?L56				
						
	move.l 20(a3),a1			
_?L56:						
						
	move.l d7,d1				
	sub.l a1,d1				
						
	cmp.l d0,d1				
	jbcs _?L115				
						
	add.l d0,a1				
						
	clr.l 8(a3)				
						
	moveq #1,d2				
	move.l d2,12(a3)			
_?L108:						
						
	move.l d7,d0				
	sub.l a1,d0				
						
	moveq #7,d1				
	cmp.l d0,d1				
	jbge _?L116				
						
	cmp.b #-1,(a1)				
	jbne _?L60				
						
	move.b 1(a1),d0				
	and.b #-32,d0				
	cmp.b #-32,d0				
	jbne _?L60				
						
	moveq #28,d3				
	add.l a3,d3				
	move.l #_mad_bit_init,d6		
						
	move.l a1,20(a3)			
						
	lea (1,a1),a0				
	move.l a0,24(a3)			
						
	move.l a1,-(sp)				
	move.l d3,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l a3,(sp)				
	move.l a4,-(sp)				
	move.l #_decode_header,d4		
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbeq _?L54				
_?L122:						
						
	move.l 20(a4),a0			
						
	move.l (a4),d0				
						
	moveq #1,d2				
	cmp.l d0,d2				
	jbeq _?L91				
						
	move.l #1152,d1				
	subq.l #3,d0				
	jbeq _?L117				
_?L64:						
						
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	clr.l -(sp)				
	pea 36(a4)				
	jbsr _mad_timer_set			
	lea (16,sp),sp				
						
	move.l 16(a4),a2			
						
	tst.l a2				
	jbeq _?L65				
_?L123:						
						
	move.l 28(a4),d4			
						
	move.l (a4),a0				
						
	move.l 20(a4),d2			
						
	move.l 20(a3),a1			
						
	bfextu d4{#24:#1},d5			
						
	moveq #1,d0				
	cmp.l a0,d0				
	jbeq _?L118				
_?L82:						
						
	moveq #111,d1				
	not.b d1				
	moveq #3,d0				
	cmp.l a0,d0				
	jbeq _?L119				
_?L84:						
						
	move.l a2,d0				
	muls.l d0,d1				
						
	divu.l d2,d1				
						
	add.l d5,d1				
_?L83:						
						
	move.l d7,a0				
	sub.l a1,a0				
						
	move.l d1,d0				
	addq.l #8,d0				
	cmp.l d0,a0				
	jbcs _?L120				
_?L85:						
						
	lea (a1,d1.l),a0			
						
	move.l a0,24(a3)			
						
	tst.l 12(a3)				
	jbne _?L86				
						
	cmp.b #-1,(a0)				
	jbne _?L109				
						
	move.b 1(a0),d0				
	and.b #-32,d0				
	cmp.b #-32,d0				
	jbeq _?L88				
_?L109:						
						
	addq.l #1,a1				
						
	move.l a1,24(a3)			
_?L58:						
						
	move.l a1,-(sp)				
	move.l d3,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l a3,(sp)				
	jbsr _mad_stream_sync			
	addq.l #4,sp				
						
	addq.l #1,d0				
	jbeq _?L121				
						
	move.l d3,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
	move.l d0,a1				
						
	move.l a1,20(a3)			
						
	lea (1,a1),a0				
	move.l a0,24(a3)			
						
	move.l a1,-(sp)				
	move.l d3,-(sp)				
	move.l d6,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l a3,(sp)				
	move.l a4,-(sp)				
	move.l #_decode_header,d4		
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbne _?L122				
_?L54:						
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
_?L52:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (124,sp),sp				
	rts					
_?L55:						
						
	tst.l d1				
	jbne _?L108				
	moveq #28,d3				
	add.l a3,d3				
	move.l #_mad_bit_init,d6		
	jbra _?L58				
_?L117:						
						
	btst #4,30(a4)				
	jbeq _?L64				
						
	move.l #576,d1				
						
	move.l a0,-(sp)				
	move.l d1,-(sp)				
	clr.l -(sp)				
	pea 36(a4)				
	jbsr _mad_timer_set			
	lea (16,sp),sp				
						
	move.l 16(a4),a2			
						
	tst.l a2				
	jbne _?L123				
_?L65:						
						
	move.l 16(a3),a2			
						
	move.l (a4),a0				
						
	move.l 28(a4),d0			
						
	tst.l a2				
	jbeq _?L67				
						
	tst.l 12(a3)				
	jbeq _?L67				
						
	moveq #3,d1				
	cmp.l a0,d1				
	jbeq _?L68				
_?L110:						
						
	move.l 20(a4),d2			
						
	move.l 20(a3),a1			
						
	move.l a2,16(a4)			
						
	move.l 28(a4),d4			
	or.w #1024,d4				
	move.l d4,28(a4)			
_?L128:						
						
	bfextu d4{#24:#1},d5			
						
	moveq #1,d0				
	cmp.l a0,d0				
	jbne _?L82				
_?L118:						
						
	move.l a2,d0				
	add.l d0,d0				
	add.l a2,d0				
	lsl.l #2,d0				
						
	move.l d0,d1				
	divu.l d2,d1				
						
	add.l d5,d1				
						
	lsl.l #2,d1				
						
	move.l d7,a0				
	sub.l a1,a0				
						
	move.l d1,d0				
	addq.l #8,d0				
	cmp.l d0,a0				
	jbcc _?L85				
_?L120:						
						
	move.l a1,24(a3)			
						
	moveq #1,d1				
	move.l d1,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
_?L119:						
						
	btst #12,d4				
	jbeq _?L84				
						
	moveq #72,d1				
						
	move.l a2,d0				
	muls.l d0,d1				
						
	divu.l d2,d1				
						
	add.l d5,d1				
	jbra _?L83				
_?L91:						
						
	move.l #384,d1				
	jbra _?L64				
_?L67:						
						
	move.l 28(a3),36(sp)			
	move.w 32(a3),40(sp)			
	move.w 34(a3),42(sp)			
						
	bfextu d0{#24:#1},d2			
	move.l d2,48(sp)			
						
	moveq #3,d1				
	cmp.l a0,d1				
	jbeq _?L90				
_?L71:						
	move.l #144,44(sp)			
	move.l #_mad_stream_sync,d5		
						
	lea (96,sp),a6				
						
	lea (52,sp),a5				
_?L73:						
						
	move.l a3,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L124				
_?L80:						
						
	pea 64.w				
	move.l a3,-(sp)				
	move.l a6,-(sp)				
	jbsr _memcpy				
	lea (12,sp),sp				
						
	move.l a4,a0				
	move.l (a0)+,(a5)			
	move.l (a0)+,56(sp)			
	move.l (a0)+,60(sp)			
	move.l (a0)+,64(sp)			
	move.l (a0)+,68(sp)			
	move.l (a0)+,72(sp)			
	move.l (a0)+,76(sp)			
	move.l (a0)+,80(sp)			
	move.l (a0)+,84(sp)			
	move.l (a0)+,88(sp)			
	move.l (a0),92(sp)			
						
	move.l a6,-(sp)				
	move.l a5,-(sp)				
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L75				
						
	move.l 52(sp),d0			
	cmp.l (a4),d0				
	jbeq _?L125				
_?L75:						
						
	pea 8.w					
	move.l d3,-(sp)				
	jbsr _mad_bit_skip			
	addq.l #8,sp				
						
	move.l a3,-(sp)				
	move.l d5,a0				
	jbsr (a0)				
	addq.l #4,sp				
						
	tst.l d0				
	jbeq _?L80				
_?L124:						
						
	move.l 36(sp),28(a3)			
	move.w 40(sp),32(a3)			
	move.w 42(sp),34(a3)			
_?L81:						
						
	move.l #257,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
_?L125:						
						
	move.l 72(sp),d1			
	cmp.l 20(a4),d1				
	jbne _?L75				
						
	move.l d3,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
						
	move.l 20(a3),a1			
						
	sub.l a1,d0				
						
	move.l (a4),a0				
	moveq #1,d1				
	sub.l 48(sp),d1				
						
	moveq #1,d2				
	cmp.l a0,d2				
	jbeq _?L126				
						
	move.l 20(a4),d2			
						
	add.l d0,d1				
						
	muls.l d2,d1				
						
	divu.l 44(sp),d1			
						
	mulu.l #274877907,d0:d1			
	move.l d0,d1				
	lsr.l #6,d1				
						
	moveq #7,d0				
	cmp.l d1,d0				
	jbcc _?L75				
_?L130:						
						
	move.l 36(sp),28(a3)			
	move.w 40(sp),32(a3)			
	move.w 42(sp),34(a3)			
						
	moveq #3,d0				
	cmp.l a0,d0				
	jbeq _?L127				
						
	move.l d1,d0				
	lsl.l #5,d0				
	sub.l d1,d0				
	lsl.l #2,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	move.l d0,a2				
						
	move.l d0,16(a3)			
_?L129:						
						
	move.l a2,16(a4)			
						
	move.l 28(a4),d4			
	or.w #1024,d4				
	move.l d4,28(a4)			
	jbra _?L128				
_?L68:						
						
	cmp.l #640000,a2			
	jbls _?L110				
						
	move.l 28(a3),36(sp)			
	move.w 32(a3),40(sp)			
	move.w 34(a3),42(sp)			
						
	bfextu d0{#24:#1},d1			
	move.l d1,48(sp)			
_?L90:						
						
	btst #12,d0				
	jbeq _?L71				
						
	moveq #72,d2				
	move.l d2,44(sp)			
	move.l #_mad_stream_sync,d5		
						
	lea (96,sp),a6				
						
	lea (52,sp),a5				
	jbra _?L73				
_?L127:						
						
	cmp.l #640,d1				
	jbhi _?L81				
						
	move.l d1,d0				
	lsl.l #5,d0				
	sub.l d1,d0				
	lsl.l #2,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	move.l d0,a2				
						
	move.l d0,16(a3)			
	jbra _?L129				
_?L126:						
						
	move.l 20(a4),d2			
						
	lsl.l #2,d1				
	add.l d0,d1				
						
	muls.l d2,d1				
						
	mulu.l #91625969,d0:d1			
	move.l d0,d1				
	moveq #10,d0				
	lsr.l d0,d1				
						
	moveq #7,d0				
	cmp.l d1,d0				
	jbcc _?L75				
	jbra _?L130				
_?L88:						
						
	moveq #1,d2				
	move.l d2,12(a3)			
_?L86:						
						
	moveq #8,d0				
	or.l d4,d0				
	move.l d0,28(a4)			
						
	clr.l d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (124,sp),sp				
	rts					
_?L60:						
						
	move.l a1,20(a3)			
						
	addq.l #1,a1				
	move.l a1,24(a3)			
						
	move.l #257,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
_?L116:						
						
	move.l a1,24(a3)			
						
	moveq #1,d2				
	move.l d2,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
_?L121:						
						
	move.l d7,d0				
	sub.l 24(a3),d0				
						
	moveq #7,d2				
	cmp.l d0,d2				
	jbge _?L63				
						
	subq.l #8,d7				
	move.l d7,24(a3)			
_?L63:						
						
	moveq #1,d0				
	move.l d0,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
_?L115:						
						
	sub.l d1,d0				
	move.l d0,8(a3)				
						
	move.l d7,24(a3)			
						
	moveq #1,d1				
	move.l d1,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
_?L114:						
						
	moveq #2,d0				
	move.l d0,60(a3)			
						
	clr.l 12(a3)				
						
	moveq #-1,d0				
	jbra _?L52				
						
	.align	2				
	.globl	_mad_frame_decode		
						
_mad_frame_decode:				
	subq.l #8,sp				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 20(sp),a3			
	move.l 24(sp),a4			
						
	move.l 56(a4),44(a3)			
						
	move.l 28(a3),d0			
						
	btst #3,d0				
	jbeq _?L144				
_?L132:						
						
	moveq #-9,d1				
	and.l d0,d1				
	move.l d1,28(a3)			
						
	move.l (a3),d0				
	subq.l #1,d0				
						
	move.l a3,-(sp)				
	move.l a4,-(sp)				
	move.l _decoder_table(d0.l*4),a0	
	jbsr (a0)				
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbeq _?L145				
						
	moveq #3,d0				
	cmp.l (a3),d0				
	jbne _?L136				
						
	clr.l d0				
_?L131:						
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	addq.l #8,sp				
	rts					
_?L136:						
						
	move.l 24(a4),-(sp)			
	lea (12,sp),a3				
	move.l a3,-(sp)				
	jbsr _mad_bit_init			
	addq.l #8,sp				
						
	move.l 28(a4),36(a4)			
	move.l 32(a4),40(a4)			
						
	move.l a3,-(sp)				
	pea 28(a4)				
	jbsr _mad_bit_length			
	addq.l #8,sp				
						
	move.l d0,44(a4)			
						
	clr.l d0				
	jbra _?L131				
_?L144:						
						
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	jbsr _mad_header_decode			
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbeq _?L135				
						
	move.l 28(a3),d0			
	jbra _?L132				
_?L145:						
						
	move.l 60(a4),d0			
	and.l #65280,d0				
						
	jbne _?L135				
						
	move.l 20(a4),24(a4)			
_?L135:						
						
	clr.l 44(a4)				
						
	moveq #-1,d0				
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	addq.l #8,sp				
	rts					
						
	.align	2				
	.globl	_mad_frame_mute			
						
_mad_frame_mute:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	pea 9216.w				
	clr.l -(sp)				
	pea 48(a3)				
	jbsr _memset				
	lea (12,sp),sp				
						
	move.l 9264(a3),a0			
						
	tst.l a0				
	jbeq _?L146				
	lea (72,a0),a1				
	move.l a0,d0				
	add.l #2376,d0				
_?L148:						
	lea (-72,a1),a0				
_?L149:						
						
	clr.l 2304(a0)				
						
	clr.l (a0)+				
						
	cmp.l a0,a1				
	jbne _?L149				
						
	lea (72,a1),a1				
	cmp.l a1,d0				
	jbne _?L148				
_?L146:						
						
	move.l (sp)+,a3				
	rts					
						
	.data					
	.align	2				
						
						
_decoder_table:					
	.dc.l	_mad_layer_I			
	.dc.l	_mad_layer_II			
	.dc.l	_mad_layer_III			
	.align	2				
						
						
_samplerate_table:				
	.dc.l	44100				
	.dc.l	48000				
	.dc.l	32000				
	.align	2				
						
						
_bitrate_table:					
	.dc.l	0				
	.dc.l	32000				
	.dc.l	64000				
	.dc.l	96000				
	.dc.l	128000				
	.dc.l	160000				
	.dc.l	192000				
	.dc.l	224000				
	.dc.l	256000				
	.dc.l	288000				
	.dc.l	320000				
	.dc.l	352000				
	.dc.l	384000				
	.dc.l	416000				
	.dc.l	448000				
	.dc.l	0				
	.dc.l	32000				
	.dc.l	48000				
	.dc.l	56000				
	.dc.l	64000				
	.dc.l	80000				
	.dc.l	96000				
	.dc.l	112000				
	.dc.l	128000				
	.dc.l	160000				
	.dc.l	192000				
	.dc.l	224000				
	.dc.l	256000				
	.dc.l	320000				
	.dc.l	384000				
	.dc.l	0				
	.dc.l	32000				
	.dc.l	40000				
	.dc.l	48000				
	.dc.l	56000				
	.dc.l	64000				
	.dc.l	80000				
	.dc.l	96000				
	.dc.l	112000				
	.dc.l	128000				
	.dc.l	160000				
	.dc.l	192000				
	.dc.l	224000				
	.dc.l	256000				
	.dc.l	320000				
	.dc.l	0				
	.dc.l	32000				
	.dc.l	48000				
	.dc.l	56000				
	.dc.l	64000				
	.dc.l	80000				
	.dc.l	96000				
	.dc.l	112000				
	.dc.l	128000				
	.dc.l	144000				
	.dc.l	160000				
	.dc.l	176000				
	.dc.l	192000				
	.dc.l	224000				
	.dc.l	256000				
	.dc.l	0				
	.dc.l	8000				
	.dc.l	16000				
	.dc.l	24000				
	.dc.l	32000				
	.dc.l	40000				
	.dc.l	48000				
	.dc.l	56000				
	.dc.l	64000				
	.dc.l	80000				
	.dc.l	96000				
	.dc.l	112000				
	.dc.l	128000				
	.dc.l	144000				
	.dc.l	160000				
						
