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
	jbne _?L6				
						
	moveq #16,d1				
	or.l d1,28(a3)				
						
	move.l #65535,-(sp)			
	pea 16.w				
	move.l 32(a6),-(sp)			
	move.l 28(a6),-(sp)			
	jbsr _mad_bit_crc			
	lea (16,sp),sp				
						
	move.w d0,24(a3)			
_?L6:						
						
	pea 4.w					
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,a1				
						
	moveq #15,d0				
	cmp.l a1,d0				
	jbeq _?L22				
						
	move.l (a3),d1				
	lea _bitrate_table,a2			
						
	btst #4,30(a3)				
	jbeq _?L7				
						
	lsr.l #1,d1				
						
	addq.l #3,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
_?L36:						
						
	add.l a1,d0				
	move.l (a2,d0.l*4),d0			
						
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
_?L37:						
						
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
_?L19:						
						
	clr.l d0				
_?L1:						
						
	movem.l (sp)+,a3/a4/a5/a6		
	rts					
_?L3:						
						
	btst #6,30(a3)				
	jbeq _?L4				
	move.l #257,d0				
_?L5:						
						
	move.l d0,60(a6)			
						
	moveq #-1,d0				
	jbra _?L1				
_?L7:						
						
	subq.l #1,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	move.l d0,a0				
	sub.l d1,a0				
	move.l a0,d0				
	jbra _?L36				
_?L11:						
						
	lsr.l #2,d0				
	jbra _?L37				
_?L17:						
						
	pea 16.w				
	move.l a4,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.w d0,26(a3)			
	jbra _?L19				
_?L21:						
	move.l #258,d0				
	jbra _?L5				
_?L22:						
	move.l #259,d0				
	jbra _?L5				
_?L23:						
	move.l #260,d0				
	jbra _?L5				
						
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
	.globl	_mad_frame_finish		
						
_mad_frame_finish:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 9264(a3),d0			
						
	jbeq _?L39				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 9264(a3)				
_?L39:						
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_mad_header_decode		
						
_mad_header_decode:				
	lea (-112,sp),sp			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 152(sp),a5			
	move.l 156(sp),a4			
						
	move.l 24(a4),d0			
						
	move.l 4(a4),d3				
						
	tst.l d0				
	jbne _?L45				
						
	moveq #2,d0				
_?L106:						
						
	move.l d0,60(a4)			
						
	jbra _?L46				
_?L45:						
						
	move.l 8(a4),d1				
						
	move.l 12(a4),a1			
						
	jbeq _?L79				
						
	tst.l a1				
	jbne _?L48				
						
	move.l 20(a4),d0			
_?L48:						
						
	move.l d3,a1				
	sub.l d0,a1				
						
	cmp.l d1,a1				
	jbcc _?L49				
						
	sub.l a1,d1				
	move.l d1,8(a4)				
						
	move.l d3,24(a4)			
						
	moveq #1,d1				
	move.l d1,60(a4)			
_?L46:						
						
	clr.l 12(a4)				
						
	moveq #-1,d0				
	jbra _?L44				
_?L49:						
						
	add.l d1,d0				
						
	clr.l 8(a4)				
						
	moveq #1,d2				
	move.l d2,12(a4)			
_?L79:						
						
	tst.l 12(a4)				
	jbeq _?L50				
						
	move.l d3,d1				
	sub.l d0,d1				
						
	moveq #7,d6				
	cmp.l d1,d6				
	jblt _?L51				
_?L107:						
						
	move.l d0,24(a4)			
						
	moveq #1,d0				
	jbra _?L106				
_?L51:						
						
	move.l d0,a0				
	cmp.b #-1,(a0)				
	jbne _?L52				
						
	move.b 1(a0),d1				
	and.b #-32,d1				
	cmp.b #-32,d1				
	jbeq _?L53				
_?L52:						
						
	move.l d0,20(a4)			
						
	addq.l #1,d0				
	move.l d0,24(a4)			
_?L71:						
						
	move.l #257,60(a4)			
	jbra _?L46				
_?L50:						
						
	lea (28,a4),a3				
	move.l d0,-(sp)				
	move.l a3,-(sp)				
	jbsr _mad_bit_init			
						
	addq.l #4,sp				
	move.l a4,(sp)				
	jbsr _mad_stream_sync			
	addq.l #4,sp				
						
	addq.l #1,d0				
	jbne _?L54				
						
	move.l d3,d0				
	sub.l 24(a4),d0				
						
	moveq #7,d2				
	cmp.l d0,d2				
	jbge _?L55				
						
	subq.l #8,d3				
	move.l d3,24(a4)			
_?L55:						
						
	moveq #1,d6				
	move.l d6,60(a4)			
						
	jbra _?L46				
_?L54:						
						
	move.l a3,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
_?L53:						
						
	move.l d0,20(a4)			
						
	move.l d0,d1				
	addq.l #1,d1				
	move.l d1,24(a4)			
						
	lea (28,a4),a3				
	move.l d0,-(sp)				
	move.l a3,-(sp)				
	jbsr _mad_bit_init			
						
	addq.l #4,sp				
	move.l a4,(sp)				
	move.l a5,-(sp)				
	jbsr _decode_header			
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbeq _?L46				
						
	move.l 20(a5),a1			
						
	move.l (a5),d1				
						
	move.l #384,d0				
	moveq #1,d6				
	cmp.l d1,d6				
	jbeq _?L56				
						
	move.l #1152,d0				
	subq.l #3,d1				
	jbne _?L56				
						
	btst #4,30(a5)				
	jbeq _?L56				
						
	move.l #576,d0				
_?L56:						
						
	move.l a1,-(sp)				
	move.l d0,-(sp)				
	clr.l -(sp)				
	pea 36(a5)				
	jbsr _mad_timer_set			
	lea (16,sp),sp				
						
	tst.l 16(a5)				
	jbne _?L57				
						
	move.l 16(a4),d0			
						
	move.l (a5),d1				
						
	tst.l d0				
	jbeq _?L58				
						
	tst.l 12(a4)				
	jbeq _?L58				
						
	subq.l #3,d1				
	jbne _?L59				
						
	cmp.l #640000,d0			
	jbls _?L59				
						
	move.l 28(a4),d6			
	move.w 32(a4),d5			
	move.w 34(a4),d4			
						
	move.l 28(a5),d0			
						
	bfextu d0{#24:#1},d7			
_?L60:						
						
	btst #12,d0				
	jbeq _?L62				
						
	moveq #72,d1				
	move.l d1,36(sp)			
	jbra _?L61				
_?L58:						
						
	move.l 28(a4),d6			
	move.w 32(a4),d5			
	move.w 34(a4),d4			
						
	move.l 28(a5),d0			
						
	bfextu d0{#24:#1},d7			
						
	subq.l #3,d1				
	jbeq _?L60				
_?L62:						
	move.l #144,36(sp)			
_?L61:						
						
	lea _memcpy,a6				
_?L63:						
						
	move.l a4,-(sp)				
	jbsr _mad_stream_sync			
	addq.l #4,sp				
						
	tst.l d0				
	jbeq _?L70				
						
	move.l d6,28(a4)			
	move.w d5,32(a4)			
	move.w d4,34(a4)			
	jbra _?L71				
_?L70:						
						
	pea 64.w				
	move.l a4,-(sp)				
	pea 92(sp)				
	jbsr (a6)				
						
	addq.l #8,sp				
	moveq #44,d0				
	move.l d0,(sp)				
	move.l a5,-(sp)				
	pea 48(sp)				
	jbsr (a6)				
	lea (12,sp),sp				
						
	pea 84(sp)				
	pea 44(sp)				
	jbsr _decode_header			
	addq.l #8,sp				
						
	tst.l d0				
	jbeq _?L64				
_?L65:						
						
	pea 8.w					
	move.l a3,-(sp)				
	jbsr _mad_bit_skip			
	addq.l #8,sp				
	jbra _?L63				
_?L64:						
						
	move.l 40(sp),d2			
	cmp.l (a5),d2				
	jbne _?L65				
						
	move.l 60(sp),a0			
	cmp.l 20(a5),a0				
	jbne _?L65				
						
	move.l a3,-(sp)				
	jbsr _mad_bit_nextbyte			
	addq.l #4,sp				
						
	move.l d0,a1				
	sub.l 20(a4),a1				
						
	move.l (a5),d1				
	moveq #1,d0				
	sub.l d7,d0				
						
	moveq #1,d2				
	cmp.l d1,d2				
	jbne _?L66				
						
	lsl.l #2,d0				
	add.l a1,d0				
						
	muls.l 20(a5),d0			
						
	mulu.l #91625969,d2:d0			
	moveq #10,d0				
	lsr.l d0,d2				
_?L67:						
						
	moveq #7,d0				
	cmp.l d2,d0				
	jbcc _?L65				
						
	move.l d6,28(a4)			
	move.w d5,32(a4)			
	move.w d4,34(a4)			
						
	subq.l #3,d1				
	jbne _?L69				
						
	cmp.l #640,d2				
	jbhi _?L71				
_?L69:						
						
	move.l d2,d1				
	lsl.l #5,d1				
	sub.l d2,d1				
	lsl.l #2,d1				
	move.l d1,d0				
	add.l d2,d0				
	lsl.l #3,d0				
						
	move.l d0,16(a4)			
_?L59:						
						
	move.l 16(a4),16(a5)			
						
	or.w #1024,30(a5)			
_?L57:						
						
	move.l 28(a5),d2			
						
	bfextu d2{#24:#1},d4			
						
	move.l (a5),a1				
						
	move.l 16(a5),d5			
						
	move.l 20(a5),d0			
						
	moveq #1,d1				
	cmp.l a1,d1				
	jbne _?L72				
						
	move.l d5,d1				
	add.l d1,d1				
	add.l d5,d1				
	lsl.l #2,d1				
						
	divu.l d0,d1				
						
	add.l d4,d1				
						
	lsl.l #2,d1				
_?L73:						
						
	move.l 20(a4),d0			
						
	move.l d3,d4				
	sub.l d0,d4				
						
	move.l d1,a1				
	addq.l #8,a1				
	cmp.l a1,d4				
	jbcs _?L107				
						
	move.l d0,a1				
	add.l d1,a1				
						
	move.l a1,24(a4)			
						
	tst.l 12(a4)				
	jbne _?L76				
						
	cmp.b #-1,(a1)				
	jbne _?L77				
						
	move.b 1(a1),d1				
	and.b #-32,d1				
	cmp.b #-32,d1				
	jbeq _?L78				
_?L77:						
						
	addq.l #1,d0				
						
	move.l d0,24(a4)			
						
	jbra _?L79				
_?L66:						
						
	add.l a1,d0				
						
	muls.l 20(a5),d0			
						
	divu.l 36(sp),d0			
						
	mulu.l #274877907,d2:d0			
	lsr.l #6,d2				
	jbra _?L67				
_?L72:						
						
	moveq #111,d1				
	not.b d1				
	moveq #3,d6				
	cmp.l a1,d6				
	jbne _?L74				
						
	btst #12,d2				
	jbeq _?L74				
						
	moveq #72,d1				
_?L74:						
						
	muls.l d5,d1				
						
	divu.l d0,d1				
						
	add.l d4,d1				
	jbra _?L73				
_?L78:						
						
	moveq #1,d1				
	move.l d1,12(a4)			
_?L76:						
						
	moveq #8,d6				
	or.l d2,d6				
	move.l d6,28(a5)			
						
	clr.l d0				
_?L44:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (112,sp),sp				
	rts					
						
	.align	2				
	.globl	_mad_frame_decode		
						
_mad_frame_decode:				
	subq.l #8,sp				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 20(sp),a4			
	move.l 24(sp),a3			
						
	move.l 56(a3),44(a4)			
						
	btst #3,31(a4)				
	jbeq _?L109				
_?L113:						
						
	moveq #-9,d0				
	and.l d0,28(a4)				
						
	move.l (a4),d0				
	subq.l #1,d0				
						
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l _decoder_table(d0.l*4),a0	
	jbsr (a0)				
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbne _?L121				
						
	move.l 60(a3),d0			
	and.l #65280,d0				
						
	jbne _?L114				
						
	move.l 20(a3),24(a3)			
	jbra _?L114				
_?L109:						
						
	move.l a3,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_header_decode			
	addq.l #8,sp				
						
	addq.l #1,d0				
	jbne _?L113				
_?L114:						
						
	clr.l 44(a3)				
						
	moveq #-1,d0				
	jbra _?L108				
_?L121:						
						
	moveq #3,d0				
	cmp.l (a4),d0				
	jbne _?L115				
_?L117:						
						
	clr.l d0				
_?L108:						
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	addq.l #8,sp				
	rts					
_?L115:						
						
	move.l 24(a3),-(sp)			
	lea (12,sp),a4				
	move.l a4,-(sp)				
	jbsr _mad_bit_init			
	addq.l #8,sp				
						
	move.l 28(a3),36(a3)			
	move.l 32(a3),40(a3)			
						
	move.l a4,-(sp)				
	pea 28(a3)				
	jbsr _mad_bit_length			
	addq.l #8,sp				
						
	move.l d0,44(a3)			
	jbra _?L117				
						
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
	jbeq _?L122				
	lea (72,a0),a2				
_?L124:						
						
	move.l a0,a1				
						
	clr.l d0				
_?L125:						
						
	clr.l 2304(a1)				
						
	clr.l (a1)				
						
	addq.l #1,d0				
						
	lea (72,a1),a1				
	moveq #32,d1				
	cmp.l d0,d1				
	jbne _?L125				
						
	addq.l #4,a0				
	cmp.l a2,a0				
	jbne _?L124				
_?L122:						
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_mad_frame_init			
						
_mad_frame_init:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l a3,-(sp)				
	jbsr _mad_header_init			
	addq.l #4,sp				
						
	clr.l 44(a3)				
						
	clr.l 9264(a3)				
						
	move.l a3,8(sp)				
						
	move.l (sp)+,a3				
						
	jbra _mad_frame_mute			
						
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
						
