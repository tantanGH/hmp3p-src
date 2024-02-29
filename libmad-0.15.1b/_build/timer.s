* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"timer.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_scale_rational:				
	movem.l d3/d4/d5,-(sp)			
	move.l 16(sp),d3			
	move.l 20(sp),d4			
	move.l 24(sp),d1			
						
	move.l d4,d2				
	move.l d3,d0				
_?L2:						
						
	tst.l d2				
	jbne _?L3				
						
	tst.l d0				
	jbne _?L4				
_?L7:						
	jbsr _abort				
_?L3:						
						
	divul.l d2,d5:d0			
	move.l d2,d0				
	move.l d5,d2				
	jbra _?L2				
_?L4:						
						
	divu.l d0,d3				
						
	divu.l d0,d4				
						
	move.l d4,d2				
	move.l d1,d0				
_?L5:						
						
	tst.l d2				
	jbne _?L6				
						
	tst.l d0				
	jbeq _?L7				
						
	divu.l d0,d1				
						
	move.l d4,d2				
	divu.l d0,d2				
						
	cmp.l d0,d4				
	jbcs _?L7				
						
	cmp.l d1,d2				
	jbcc _?L8				
	move.l d1,d0				
	divul.l d2,d1:d0			
						
	muls.l d3,d1				
						
	divu.l d2,d1				
						
	muls.l d3,d0				
						
	add.l d1,d0				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L6:						
						
	divul.l d2,d5:d0			
	move.l d2,d0				
	move.l d5,d2				
	jbra _?L5				
_?L8:						
						
	cmp.l d2,d3				
	jbls _?L10				
	divul.l d2,d0:d3			
						
	muls.l d1,d0				
						
	divu.l d2,d0				
						
	muls.l d1,d3				
						
	add.l d3,d0				
	jbra _?L1				
_?L10:						
						
	move.l d1,d0				
	muls.l d3,d0				
						
	divu.l d2,d0				
	jbra _?L1				
						
	.align	2				
	.globl	_mad_timer_compare		
						
_mad_timer_compare:				
	move.l 8(sp),d0				
	move.l 16(sp),a0			
						
	move.l 4(sp),d1				
	sub.l 12(sp),d1				
						
	jbmi _?L18				
						
	jbne _?L17				
						
	sub.l a0,d0				
						
	jbmi _?L18				
						
	sne d0					
	extb.l d0				
	neg.l d0				
_?L14:						
						
	rts					
_?L17:						
						
	moveq #1,d0				
	jbra _?L14				
_?L18:						
						
	moveq #-1,d0				
	jbra _?L14				
						
	.align	2				
	.globl	_mad_timer_negate		
						
_mad_timer_negate:				
	move.l 4(sp),a0				
						
	move.l (a0),d1				
						
	move.l d1,d0				
	neg.l d0				
	move.l d0,(a0)				
						
	move.l 4(a0),d0				
						
	jbeq _?L19				
						
	not.l d1				
	move.l d1,(a0)				
						
	move.l #352800000,d1			
	sub.l d0,d1				
	move.l d1,4(a0)				
_?L19:						
						
	rts					
						
	.align	2				
	.globl	_mad_timer_abs			
						
_mad_timer_abs:					
	link.w a6,#0				
						
	tst.l 8(a6)				
	jbge _?L25				
						
	pea 8(a6)				
	jbsr _mad_timer_negate			
	addq.l #4,sp				
_?L25:						
						
	move.l 8(a6),d0				
	move.l 12(a6),d1			
	unlk a6					
	rts					
						
	.align	2				
	.globl	_mad_timer_set			
						
_mad_timer_set:					
	move.l a3,-(sp)				
	move.l 8(sp),a3				
	move.l 12(sp),a0			
	move.l 16(sp),d0			
	move.l 20(sp),d1			
						
	move.l a0,(a3)				
						
	cmp.l d0,d1				
	jbhi _?L27				
						
	tst.l d1				
	jbeq _?L28				
	divul.l d1,d2:d0			
						
	add.l a0,d0				
	move.l d0,(a3)				
						
	move.l d2,d0				
_?L27:						
						
	cmp.l #22050,d1				
	jbeq _?L29				
	jbhi _?L30				
	cmp.l #11025,d1				
	jbeq _?L31				
	jbhi _?L32				
	cmp.l #1000,d1				
	jbeq _?L33				
	jbhi _?L34				
	moveq #1,d2				
	cmp.l d1,d2				
	jbcc _?L28				
_?L35:						
						
	move.l #352800000,-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
						
	jbra _?L44				
_?L34:						
						
	cmp.l #8000,d1				
	jbne _?L35				
						
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	sub.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
_?L52:						
						
	sub.l d1,d0				
	lsl.l #2,d0				
						
	jbra _?L44				
_?L32:						
						
	cmp.l #12000,d1				
	jbeq _?L37				
	cmp.l #16000,d1				
	jbne _?L35				
						
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	sub.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
_?L53:						
						
	sub.l d1,d0				
	add.l d0,d0				
						
	jbra _?L44				
_?L30:						
						
	cmp.l #44100,d1				
	jbeq _?L39				
	jbhi _?L40				
	cmp.l #24000,d1				
	jbeq _?L41				
	cmp.l #32000,d1				
	jbne _?L35				
						
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	sub.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
						
	jbra _?L44				
_?L40:						
						
	cmp.l #48000,d1				
	jbeq _?L43				
	cmp.l #352800000,d1			
	jbne _?L35				
_?L44:						
						
	move.l d0,4(a3)				
						
	cmp.l #352799999,d0			
	jbls _?L26				
						
	move.l d0,d2				
	mulu.l #3267918097,d1:d2		
	moveq #28,d2				
	lsr.l d2,d1				
						
	add.l d1,(a3)				
						
	muls.l #352800000,d1			
	sub.l d1,d0				
	move.l d0,4(a3)				
						
	jbra _?L26				
_?L28:						
						
	clr.l 4(a3)				
_?L26:						
						
	move.l (sp)+,a3				
	rts					
_?L33:						
						
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	sub.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	move.l d1,d0				
	lsl.l #6,d0				
	sub.l d1,d0				
	lsl.l #5,d0				
						
	jbra _?L44				
_?L31:						
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d1,d0				
	lsl.l #8,d0				
						
	jbra _?L44				
_?L37:						
						
	move.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
						
	jbra _?L44				
_?L29:						
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d1,d0				
	lsl.l #7,d0				
						
	jbra _?L44				
_?L41:						
						
	move.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	jbra _?L52				
_?L39:						
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d1,d0				
	lsl.l #6,d0				
						
	jbra _?L44				
_?L43:						
						
	move.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	jbra _?L53				
						
	.align	2				
	.globl	_mad_timer_add			
						
_mad_timer_add:					
	move.l 4(sp),a0				
						
	move.l (a0),a1				
	add.l 8(sp),a1				
	move.l a1,(a0)				
						
	move.l 4(a0),d1				
	add.l 12(sp),d1				
	move.l d1,4(a0)				
						
	cmp.l #352799999,d1			
	jbls _?L54				
						
	move.l d1,d2				
	mulu.l #3267918097,d0:d2		
	moveq #28,d2				
	lsr.l d2,d0				
						
	add.l d0,a1				
	move.l a1,(a0)				
						
	muls.l #352800000,d0			
	sub.l d0,d1				
	move.l d1,4(a0)				
_?L54:						
						
	rts					
						
	.align	2				
	.globl	_mad_timer_multiply		
						
_mad_timer_multiply:				
	subq.l #8,sp				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 28(sp),a3			
	move.l 32(sp),d3			
						
	jbpl _?L58				
						
	neg.l d3				
						
	move.l a3,-(sp)				
	jbsr _mad_timer_negate			
	addq.l #4,sp				
_?L58:						
						
	move.l (a3),d0				
	move.l 4(a3),d1				
	move.l d0,16(sp)			
	move.l d1,20(sp)			
						
	clr.l (a3)				
	clr.l 4(a3)				
	lea _mad_timer_add,a4			
						
	moveq #16,d4				
	add.l sp,d4				
_?L59:						
						
	tst.l d3				
	jbne _?L61				
						
	movem.l (sp)+,d3/d4/a3/a4		
	addq.l #8,sp				
	rts					
_?L61:						
						
	btst #0,d3				
	jbeq _?L60				
						
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	move.l a3,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
_?L60:						
						
	move.l 20(sp),-(sp)			
	move.l 20(sp),-(sp)			
	move.l d4,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	lsr.l #1,d3				
	jbra _?L59				
						
	.align	2				
	.globl	_mad_timer_count		
						
_mad_timer_count:				
	movem.l d3/d4/d5,-(sp)			
	move.l 16(sp),d4			
	move.l 20(sp),d5			
	move.l 24(sp),a0			
	move.l d4,d0				
						
	moveq #-1,d1				
	cmp.l a0,d1				
	jbeq _?L66				
	tst.l a0				
	jbge _?L67				
	moveq #-2,d0				
	cmp.l a0,d0				
	jbeq _?L68				
	moveq #-47,d1				
	cmp.l a0,d1				
	jble _?L69				
	moveq #-60,d0				
	cmp.l a0,d0				
	jble _?L70				
_?L82:						
						
	clr.l d0				
	jbra _?L65				
_?L77:						
						
	moveq #-30,d0				
	add.l a0,d0				
	move.l #1075052545,d1			
	btst d0,d1				
	jbeq _?L82				
_?L72:						
						
	move.l a0,d3				
	muls.l d4,d3				
						
	move.l a0,-(sp)				
	move.l #352800000,-(sp)			
	move.l d5,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
						
	add.l d3,d0				
	jbra _?L65				
_?L70:						
						
	moveq #60,d0				
	add.l a0,d0				
	move.l #5121,d1				
	btst d0,d1				
	jbeq _?L82				
_?L73:						
						
	move.l a0,d0				
	neg.l d0				
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _mad_timer_count			
	lea (12,sp),sp				
						
	addq.l #1,d0				
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d0,d1				
	lsl.l #3,d1				
						
	move.l d1,d2				
	muls.l #1098413215,d0:d2		
	asr.l #8,d0				
	add.l d1,d1				
	subx.l d1,d1				
	sub.l d1,d0				
	jbra _?L65				
_?L69:						
						
	moveq #-30,d1				
	cmp.l a0,d1				
	jbeq _?L73				
	jbgt _?L82				
	lea (25,a0),a1				
	moveq #1,d0				
	cmp.l a1,d0				
	jbcc _?L73				
	jbra _?L82				
_?L67:						
	moveq #10,d1				
	cmp.l a0,d1				
	jbeq _?L72				
	jblt _?L74				
	tst.l a0				
	jbne _?L82				
_?L65:						
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L74:						
						
	cmp.w #8000,a0				
	jbeq _?L72				
	jbgt _?L75				
	moveq #60,d0				
	cmp.l a0,d0				
	jblt _?L76				
	moveq #29,d1				
	cmp.l a0,d1				
	jblt _?L77				
	lea (-24,a0),a1				
	moveq #1,d0				
	cmp.l a1,d0				
	jbcs _?L82				
	jbra _?L72				
_?L76:						
	moveq #100,d1				
	cmp.l a0,d1				
	jbeq _?L72				
	cmp.w #1000,a0				
	jbeq _?L72				
	moveq #75,d0				
	cmp.l a0,d0				
	jbeq _?L72				
	jbra _?L82				
_?L75:						
	cmp.w #24000,a0				
	jbeq _?L72				
	jbgt _?L78				
	cmp.w #16000,a0				
	jbeq _?L72				
	jbgt _?L79				
	cmp.w #11025,a0				
	jbeq _?L72				
	cmp.w #12000,a0				
	jbeq _?L72				
	jbra _?L82				
_?L79:						
	cmp.w #22050,a0				
	jbeq _?L72				
	jbra _?L82				
_?L78:						
	cmp.l #44100,a0				
	jbeq _?L72				
	cmp.l #48000,a0				
	jbeq _?L72				
	cmp.w #32000,a0				
	jbeq _?L72				
	jbra _?L82				
_?L68:						
						
	move.l d4,d1				
	muls.l #-1851608123,d0:d1		
	add.l d4,d0				
	moveq #11,d1				
	asr.l d1,d0				
_?L128:						
						
	add.l d4,d4				
	subx.l d4,d4				
	sub.l d4,d0				
	jbra _?L65				
_?L66:						
	move.l d4,d1				
	muls.l #-2004318071,d0:d1		
	add.l d4,d0				
	asr.l #5,d0				
	jbra _?L128				
						
	.align	2				
	.globl	_mad_timer_fraction		
						
_mad_timer_fraction:				
	move.l d3,-(sp)				
	move.l 16(sp),d3			
						
	move.l 12(sp),-(sp)			
	move.l 12(sp),-(sp)			
	jbsr _mad_timer_abs			
	addq.l #8,sp				
	move.l d1,d0				
						
	tst.l d3				
	jbeq _?L130				
	cmp.l #352800000,d3			
	jbeq _?L129				
						
	move.l d3,16(sp)			
	move.l #352800000,12(sp)		
	move.l d1,8(sp)				
						
	move.l (sp)+,d3				
						
	jbra _scale_rational			
_?L130:						
						
	tst.l d1				
	jbeq _?L133				
						
	move.l #352800000,d2			
	divu.l d0,d2				
	move.l d2,d0				
_?L129:						
						
	move.l (sp)+,d3				
	rts					
_?L133:						
						
	move.l #352800001,d0			
	jbra _?L129				
						
	.align	2				
	.globl	_mad_timer_string		
						
_mad_timer_string:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a4			
	move.l 52(sp),a5			
	move.l 56(sp),a3			
	move.l 60(sp),d3			
	move.l 64(sp),a6			
						
	move.l 44(sp),-(sp)			
	move.l 44(sp),-(sp)			
	jbsr _mad_timer_abs			
	addq.l #8,sp				
	move.l d0,d6				
	move.l d1,d7				
	move.l d1,d4				
						
	move.l d6,d5				
						
	moveq #10,d0				
	cmp.l d3,d0				
	jbeq _?L139				
	jblt _?L140				
	moveq #-60,d1				
	cmp.l d3,d1				
	jbeq _?L141				
	moveq #50,d0				
	add.l d3,d0				
	moveq #26,d2				
	cmp.l d0,d2				
	jbcc _?L249				
_?L167:						
	clr.l d4				
	jbra _?L250				
_?L146:						
	move.l #1075052545,d1			
	moveq #-30,d0				
	add.l d3,d0				
	btst d0,d1				
	jbeq _?L167				
_?L139:						
						
	move.l #352800000,d0			
	divu.l d3,d0				
						
	divul.l d0,d1:d4			
						
	move.l a6,-(sp)				
	move.l d0,-(sp)				
	move.l d1,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
	move.l d0,a6				
_?L142:						
						
	moveq #-1,d0				
	cmp.l a3,d0				
	jbeq _?L150				
	tst.l a3				
	jbge _?L151				
	moveq #-2,d1				
	cmp.l a3,d1				
	jbeq _?L152				
	moveq #-47,d2				
	cmp.l a3,d2				
	jble _?L153				
	moveq #-60,d0				
	cmp.l a3,d0				
	jble _?L154				
_?L138:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L249:						
						
	move.l #101711877,d1			
	btst d0,d1				
	jbeq _?L167				
_?L141:						
						
	move.l d3,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr _mad_timer_count			
	lea (12,sp),sp				
	move.l d0,d2				
						
	move.l d3,d1				
	lsl.l #2,d1				
	add.l d3,d1				
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d0,d1				
	lsl.l #3,d1				
						
	moveq #-18,d0				
	add.l d0,d1				
	move.l d2,d4				
	divul.l d1,d0:d4			
						
	move.l d4,d5				
	lsl.l #3,d5				
	add.l d4,d5				
	add.l d5,d5				
						
	add.l d2,d5				
						
	moveq #2,d2				
	cmp.l d0,d2				
	jbcc _?L149				
						
	subq.l #2,d0				
						
	mulu.l #3435973837,d2:d1		
	lsr.l #3,d2				
						
	divu.l d2,d0				
						
	add.l d0,d0				
						
	add.l d0,d5				
_?L149:						
						
	move.l d3,d4				
	neg.l d4				
						
	divul.l d4,d4:d5			
_?L250:						
						
	sub.l a6,a6				
	jbra _?L142				
_?L140:						
	cmp.l #8000,d3				
	jbeq _?L139				
	jbgt _?L144				
	moveq #60,d0				
	cmp.l d3,d0				
	jblt _?L145				
	moveq #29,d1				
	cmp.l d3,d1				
	jblt _?L146				
	move.w #-24,a0				
	add.l d3,a0				
	moveq #1,d2				
	cmp.l a0,d2				
	jbcs _?L167				
	jbra _?L139				
_?L145:						
	moveq #100,d0				
	cmp.l d3,d0				
	jbeq _?L139				
	cmp.l #1000,d3				
	jbeq _?L139				
	moveq #75,d1				
	cmp.l d3,d1				
	jbne _?L167				
	jbra _?L139				
_?L144:						
	cmp.l #24000,d3				
	jbeq _?L139				
	jbgt _?L147				
	cmp.l #16000,d3				
	jbeq _?L139				
	jbgt _?L148				
	cmp.l #11025,d3				
	jbeq _?L139				
	cmp.l #12000,d3				
	jbeq _?L139				
	jbra _?L167				
_?L148:						
	cmp.l #22050,d3				
	jbne _?L167				
	jbra _?L139				
_?L147:						
	cmp.l #44100,d3				
	jbeq _?L139				
	cmp.l #48000,d3				
	jbeq _?L139				
	cmp.l #32000,d3				
	jbne _?L167				
	jbra _?L139				
_?L162:						
						
	move.l #1075052545,d0			
	moveq #-30,d1				
	add.l a3,d1				
	btst d1,d0				
	jbeq _?L138				
_?L156:						
						
	move.l a3,-(sp)				
	move.l d7,-(sp)				
	move.l d6,-(sp)				
	jbsr _mad_timer_count			
	lea (12,sp),sp				
	move.l a6,52(sp)			
	move.l d0,48(sp)			
	move.l a5,44(sp)			
	move.l a4,40(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
						
	jbra _sprintf				
_?L154:						
						
	move.l #5121,d0				
	moveq #60,d1				
	add.l a3,d1				
	btst d1,d0				
	jbeq _?L138				
_?L157:						
						
	tst.l d3				
	jbge _?L156				
						
	sub.l a6,a6				
	jbra _?L156				
_?L153:						
						
	moveq #-30,d1				
	cmp.l a3,d1				
	jbeq _?L157				
	jbgt _?L138				
	lea (25,a3),a0				
	moveq #1,d2				
	cmp.l a0,d2				
	jbcc _?L157				
	jbra _?L138				
_?L151:						
	moveq #10,d0				
	cmp.l a3,d0				
	jbeq _?L156				
	jblt _?L158				
	tst.l a3				
	jbne _?L138				
						
	move.l a6,56(sp)			
	move.l d4,52(sp)			
	move.l d5,48(sp)			
	move.l a5,44(sp)			
	move.l a4,40(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
						
	jbra _sprintf				
_?L158:						
						
	cmp.w #8000,a3				
	jbeq _?L156				
	jbgt _?L160				
	moveq #60,d1				
	cmp.l a3,d1				
	jblt _?L161				
	moveq #29,d2				
	cmp.l a3,d2				
	jblt _?L162				
	lea (-24,a3),a0				
	moveq #1,d0				
	cmp.l a0,d0				
	jbcs _?L138				
	jbra _?L156				
_?L161:						
	moveq #100,d1				
	cmp.l a3,d1				
	jbeq _?L156				
	cmp.w #1000,a3				
	jbeq _?L156				
	moveq #75,d2				
	cmp.l a3,d2				
	jbeq _?L156				
	jbra _?L138				
_?L160:						
	cmp.w #24000,a3				
	jbeq _?L156				
	jbgt _?L163				
	cmp.w #16000,a3				
	jbeq _?L156				
	jbgt _?L164				
	cmp.w #11025,a3				
	jbeq _?L156				
	cmp.w #12000,a3				
	jbeq _?L156				
	jbra _?L138				
_?L164:						
	cmp.w #22050,a3				
	jbeq _?L156				
	jbra _?L138				
_?L163:						
	cmp.l #44100,a3				
	jbeq _?L156				
	cmp.l #48000,a3				
	jbeq _?L156				
	cmp.w #32000,a3				
	jbeq _?L156				
	jbra _?L138				
_?L152:						
						
	move.l d5,d0				
	mulu.l #2290649225,d1:d0		
	lsr.l #5,d1				
						
	move.l a6,64(sp)			
	move.l d4,60(sp)			
						
	move.l d1,d0				
	lsl.l #4,d0				
	sub.l d1,d0				
	lsl.l #2,d0				
						
	sub.l d0,d5				
	move.l d5,56(sp)			
						
	move.l d1,d2				
	mulu.l #2290649225,d0:d2		
	lsr.l #5,d0				
	move.l d0,d2				
	lsl.l #4,d2				
	sub.l d0,d2				
	lsl.l #2,d2				
						
	sub.l d2,d1				
	move.l d1,52(sp)			
	move.l d0,48(sp)			
	move.l a5,44(sp)			
	move.l a4,40(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
						
	jbra _sprintf				
_?L150:						
						
	move.l a6,60(sp)			
	move.l d4,56(sp)			
						
	move.l d5,d1				
	mulu.l #2290649225,d0:d1		
	lsr.l #5,d0				
	move.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
						
	sub.l d1,d5				
	move.l d5,52(sp)			
	move.l d0,48(sp)			
	move.l a5,44(sp)			
	move.l a4,40(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
						
	jbra _sprintf				
						
	.globl	_mad_timer_zero			
	.data					
	.align	2				
						
						
_mad_timer_zero:				
	.ds.b	8				
						
