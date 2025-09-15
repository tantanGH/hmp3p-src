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
	move.l 16(sp),d5			
	move.l 20(sp),d0			
	move.l 24(sp),d3			
						
	tst.l d0				
	jbeq _?L2				
	move.l d0,d1				
	move.l d5,d2				
_?L3:						
	move.l d1,a0				
						
	divul.l d1,d1:d2			
	move.l a0,d2				
						
	tst.l d1				
	jbne _?L3				
						
	divu.l d2,d5				
						
	move.l d0,d4				
	divu.l d2,d4				
						
	cmp.l d0,a0				
	jbhi _?L2				
						
	move.l d4,d1				
						
	move.l d3,d2				
_?L5:						
	move.l d1,a0				
						
	divul.l d1,d1:d2			
	move.l a0,d2				
						
	tst.l d1				
	jbne _?L5				
						
	tst.l a0				
	jbeq _?L2				
						
	divu.l d2,d3				
						
	move.l d4,d1				
	divu.l d2,d1				
						
	cmp.l a0,d4				
	jbcs _?L2				
						
	cmp.l d3,d1				
	jbcs _?L20				
						
	cmp.l d1,d5				
	jbhi _?L21				
						
	muls.l d5,d3				
						
	move.l d3,d0				
	divu.l d1,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L21:						
	move.l d5,d4				
	divul.l d1,d0:d4			
						
	muls.l d3,d0				
						
	divu.l d1,d0				
						
	muls.l d3,d4				
						
	add.l d4,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L20:						
	divul.l d1,d0:d3			
						
	muls.l d5,d0				
						
	divu.l d1,d0				
						
	muls.l d5,d3				
						
	add.l d3,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L2:						
						
	jbsr _abort				
						
	.align	2				
	.globl	_mad_timer_compare		
						
_mad_timer_compare:				
	move.l 8(sp),d0				
	move.l 16(sp),a0			
						
	move.l 4(sp),d1				
	sub.l 12(sp),d1				
						
	jbmi _?L26				
						
	jbne _?L25				
						
	sub.l a0,d0				
						
	jbmi _?L26				
						
	sne d0					
	extb.l d0				
	neg.l d0				
						
	rts					
_?L25:						
						
	moveq #1,d0				
						
	rts					
_?L26:						
						
	moveq #-1,d0				
						
	rts					
						
	.align	2				
	.globl	_mad_timer_negate		
						
_mad_timer_negate:				
	move.l 4(sp),a0				
						
	move.l (a0),d1				
						
	move.l d1,d0				
	neg.l d0				
	move.l d0,(a0)				
						
	move.l 4(a0),d0				
						
	jbeq _?L29				
						
	not.l d1				
	move.l d1,(a0)				
						
	move.l #352800000,d1			
	sub.l d0,d1				
	move.l d1,4(a0)				
_?L29:						
						
	rts					
						
	.align	2				
	.globl	_mad_timer_abs			
						
_mad_timer_abs:					
	move.l 4(sp),d0				
	move.l 8(sp),d1				
						
	tst.l d0				
	jblt _?L41				
						
	rts					
_?L41:						
						
	tst.l d1				
	jbne _?L38				
						
	neg.l d0				
						
	rts					
_?L38:						
	not.l d0				
						
	move.l #352800000,d2			
	sub.l d1,d2				
	move.l d2,d1				
						
	rts					
						
	.align	2				
	.globl	_mad_timer_set			
						
_mad_timer_set:					
	move.l a3,-(sp)				
	move.l 8(sp),a3				
	move.l 16(sp),d0			
	move.l 20(sp),d1			
						
	move.l 12(sp),(a3)			
						
	cmp.l d0,d1				
	jbhi _?L43				
						
	tst.l d1				
	jbeq _?L44				
	divul.l d1,d2:d0			
						
	add.l 12(sp),d0				
	move.l d0,(a3)				
						
	move.l d2,d0				
_?L43:						
						
	cmp.l #22050,d1				
	jbeq _?L45				
	jbhi _?L46				
	cmp.l #11025,d1				
	jbeq _?L47				
	jbhi _?L48				
	cmp.l #1000,d1				
	jbeq _?L49				
	jbls _?L70				
	cmp.l #8000,d1				
	jbne _?L51				
						
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
	lsl.l #2,d0				
_?L60:						
						
	move.l d0,4(a3)				
						
	cmp.l #352799999,d0			
	jbls _?L42				
						
	move.l d0,d2				
	mulu.l #3267918097,d1:d2		
	moveq #28,d2				
	lsr.l d2,d1				
						
	add.l d1,(a3)				
						
	muls.l #352800000,d1			
	sub.l d1,d0				
	move.l d0,4(a3)				
_?L42:						
						
	move.l (sp)+,a3				
	rts					
_?L48:						
						
	cmp.l #12000,d1				
	jbeq _?L53				
	cmp.l #16000,d1				
	jbne _?L51				
						
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
	add.l d0,d0				
						
	jbra _?L60				
_?L46:						
						
	cmp.l #44100,d1				
	jbeq _?L55				
	jbls _?L71				
	cmp.l #48000,d1				
	jbeq _?L59				
	cmp.l #352800000,d1			
	jbeq _?L60				
_?L51:						
						
	move.l #352800000,-(sp)			
	move.l d1,-(sp)				
	move.l d0,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
						
	jbra _?L60				
_?L71:						
						
	cmp.l #24000,d1				
	jbeq _?L57				
	cmp.l #32000,d1				
	jbne _?L51				
						
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
						
	jbra _?L60				
_?L70:						
						
	moveq #1,d2				
	cmp.l d1,d2				
	jbcs _?L51				
_?L44:						
						
	clr.l 4(a3)				
						
	move.l (sp)+,a3				
	rts					
_?L57:						
						
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
	lsl.l #2,d0				
						
	jbra _?L60				
_?L53:						
						
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
						
	jbra _?L60				
_?L59:						
						
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
	add.l d0,d0				
						
	jbra _?L60				
_?L45:						
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d1,d0				
	lsl.l #7,d0				
						
	jbra _?L60				
_?L55:						
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d1,d0				
	lsl.l #6,d0				
						
	jbra _?L60				
_?L47:						
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
	add.l d1,d0				
	lsl.l #8,d0				
						
	jbra _?L60				
_?L49:						
						
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
						
	jbra _?L60				
						
	.align	2				
	.globl	_mad_timer_add			
						
_mad_timer_add:					
	move.l 4(sp),a0				
						
	move.l (a0),a1				
	add.l 8(sp),a1				
	move.l a1,(a0)				
						
	move.l 4(a0),d0				
	add.l 12(sp),d0				
	move.l d0,4(a0)				
						
	cmp.l #352799999,d0			
	jbls _?L72				
						
	move.l d0,d2				
	mulu.l #3267918097,d1:d2		
	moveq #28,d2				
	lsr.l d2,d1				
						
	add.l d1,a1				
	move.l a1,(a0)				
						
	muls.l #352800000,d1			
	sub.l d1,d0				
	move.l d0,4(a0)				
_?L72:						
						
	rts					
						
	.align	2				
	.globl	_mad_timer_multiply		
						
_mad_timer_multiply:				
	movem.l d3/d4/d5,-(sp)			
	move.l 16(sp),a0			
	move.l 20(sp),d1			
						
	move.l (a0),d2				
						
	move.l 4(a0),d0				
						
	tst.l d1				
	jblt _?L89				
						
	clr.l (a0)				
	clr.l 4(a0)				
						
	tst.l d1				
	jbeq _?L76				
_?L84:						
						
	btst #0,d1				
	jbeq _?L81				
						
	move.l d2,a1				
	add.l (a0),a1				
	move.l a1,(a0)				
						
	move.l d0,d3				
	add.l 4(a0),d3				
	move.l d3,4(a0)				
						
	cmp.l #352799999,d3			
	jbls _?L81				
						
	move.l d3,d5				
	mulu.l #3267918097,d4:d5		
	moveq #28,d5				
	lsr.l d5,d4				
						
	add.l d4,a1				
	move.l a1,(a0)				
						
	muls.l #352800000,d4			
	sub.l d4,d3				
	move.l d3,4(a0)				
_?L81:						
						
	add.l d2,d2				
						
	add.l d0,d0				
						
	cmp.l #352799999,d0			
	jbls _?L83				
						
	move.l d0,d4				
	mulu.l #3267918097,d3:d4		
	moveq #28,d4				
	lsr.l d4,d3				
						
	add.l d3,d2				
						
	muls.l #352800000,d3			
	sub.l d3,d0				
_?L83:						
						
	lsr.l #1,d1				
						
	jbne _?L84				
_?L76:						
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L89:						
						
	neg.l d1				
						
	tst.l d0				
	jbne _?L78				
						
	neg.l d2				
						
	clr.l (a0)				
	jbra _?L84				
_?L78:						
	not.l d2				
						
	move.l #352800000,d3			
	sub.l d0,d3				
	move.l d3,d0				
						
	clr.l (a0)				
	clr.l 4(a0)				
	jbra _?L84				
						
	.align	2				
	.globl	_mad_timer_count		
						
_mad_timer_count:				
	movem.l d3/d4/d5,-(sp)			
	move.l 16(sp),d4			
	move.l 20(sp),d5			
	move.l 24(sp),a0			
	move.l d4,d0				
						
	moveq #25,d1				
	cmp.l a0,d1				
	jblt _?L91				
	moveq #-30,d1				
	cmp.l a0,d1				
	jbgt _?L147				
	lea (30,a0),a1				
	moveq #55,d1				
	cmp.l a1,d1				
	jbcs _?L106				
	move.l a1,d1				
	add.l d1,d1				
	move.w _?L97(pc,d1.l),d1		
	jmp 2(pc,d1.w)				
	.align 2,0x284c				
						
_?L97:						
	.dc.w _?L100-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L100-_?L97			
	.dc.w _?L100-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L99-_?L97			
	.dc.w _?L98-_?L97			
	.dc.w _?L90-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L95-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L106-_?L97			
	.dc.w _?L95-_?L97			
	.dc.w _?L95-_?L97			
_?L150:						
	moveq #-30,d0				
	add.l a0,d0				
	moveq #30,d1				
	cmp.l d0,d1				
	jbcs _?L106				
	move.l #1075052545,d1			
	btst d0,d1				
	jbne _?L95				
_?L106:						
						
	clr.l d0				
_?L90:						
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L147:						
						
	moveq #60,d0				
	add.l a0,d0				
	moveq #12,d1				
	cmp.l d0,d1				
	jbcs _?L106				
	move.l #5121,d1				
	btst d0,d1				
	jbeq _?L106				
_?L100:						
						
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
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L91:						
						
	cmp.w #11025,a0				
	jbeq _?L95				
	jble _?L148				
	cmp.w #24000,a0				
	jbeq _?L95				
	jble _?L149				
	cmp.l #44100,a0				
	jbeq _?L95				
	cmp.l #48000,a0				
	jbeq _?L95				
	cmp.w #32000,a0				
	jbne _?L106				
_?L95:						
						
	move.l a0,d3				
	muls.l d4,d3				
						
	move.l a0,-(sp)				
	move.l #352800000,-(sp)			
	move.l d5,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
						
	add.l d3,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L148:						
						
	moveq #75,d0				
	cmp.l a0,d0				
	jbeq _?L95				
	jbge _?L150				
	cmp.w #1000,a0				
	jbeq _?L95				
	cmp.w #8000,a0				
	jbeq _?L95				
	moveq #100,d0				
	cmp.l a0,d0				
	jbeq _?L95				
						
	clr.l d0				
	jbra _?L90				
_?L149:						
						
	cmp.w #16000,a0				
	jbeq _?L95				
	cmp.w #22050,a0				
	jbeq _?L95				
	cmp.w #12000,a0				
	jbeq _?L95				
						
	clr.l d0				
	jbra _?L90				
_?L99:						
						
	move.l d4,d1				
	muls.l #-1851608123,d0:d1		
	add.l d4,d0				
	moveq #11,d1				
	asr.l d1,d0				
	add.l d4,d4				
	subx.l d4,d4				
	sub.l d4,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L98:						
						
	move.l d4,d1				
	muls.l #-2004318071,d0:d1		
	add.l d4,d0				
	asr.l #5,d0				
	add.l d4,d4				
	subx.l d4,d4				
	sub.l d4,d0				
						
	movem.l (sp)+,d3/d4/d5			
	rts					
						
	.align	2				
	.globl	_mad_timer_fraction		
						
_mad_timer_fraction:				
	move.l 12(sp),d1			
	move.l 8(sp),d0				
						
	tst.l 4(sp)				
	jblt _?L166				
						
	tst.l d1				
	jbeq _?L156				
_?L155:						
	cmp.l #352800000,d1			
	jbeq _?L151				
						
	move.l d1,12(sp)			
	move.l #352800000,8(sp)			
	move.l d0,4(sp)				
						
						
	jbra _scale_rational			
_?L156:						
						
	tst.l d0				
	jbeq _?L159				
						
	move.l #352800000,d2			
	divu.l d0,d2				
	move.l d2,d0				
_?L151:						
						
	rts					
_?L166:						
						
	tst.l d0				
	jbne _?L153				
						
	tst.l d1				
	jbne _?L155				
_?L159:						
						
	move.l #352800001,d0			
						
	rts					
_?L153:						
						
	move.l #352800000,d2			
	sub.l d0,d2				
	move.l d2,d0				
						
	tst.l d1				
	jbne _?L155				
	jbra _?L156				
						
	.align	2				
	.globl	_mad_timer_string		
						
_mad_timer_string:				
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),d6			
	move.l 52(sp),d7			
	move.l 56(sp),a5			
	move.l 60(sp),a6			
	move.l 64(sp),a4			
	move.l 68(sp),a3			
	move.l 72(sp),d3			
	move.l d6,d1				
	move.l d7,a1				
						
	jbmi _?L283				
_?L168:						
						
	move.l d1,d5				
						
	moveq #10,d0				
	cmp.l a3,d0				
	jbeq _?L170				
	jblt _?L171				
	moveq #-60,d2				
	cmp.l a3,d2				
	jbeq _?L172				
	moveq #50,d0				
	add.l a3,d0				
	moveq #26,d3				
	cmp.l d0,d3				
	jbcs _?L197				
	move.l #101711877,d2			
	btst d0,d2				
	jbne _?L172				
_?L197:						
	clr.l d4				
	clr.l d3				
_?L173:						
						
	moveq #25,d0				
	cmp.l a4,d0				
	jblt _?L181				
_?L287:						
	moveq #-30,d2				
	cmp.l a4,d2				
	jbgt _?L284				
	lea (30,a4),a0				
	moveq #55,d0				
	cmp.l a0,d0				
	jbcs _?L167				
	move.l a0,d0				
	add.l d0,d0				
	move.w _?L186(pc,d0.l),d0		
	jmp 2(pc,d0.w)				
	.align 2,0x284c				
						
_?L186:						
	.dc.w _?L190-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L190-_?L186			
	.dc.w _?L190-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L189-_?L186			
	.dc.w _?L188-_?L186			
	.dc.w _?L187-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L185-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L167-_?L186			
	.dc.w _?L185-_?L186			
	.dc.w _?L185-_?L186			
_?L171:						
						
	cmp.w #8000,a3				
	jbeq _?L170				
	jble _?L285				
	cmp.w #24000,a3				
	jbeq _?L170				
	jble _?L286				
	cmp.l #44100,a3				
	jbeq _?L170				
	cmp.l #48000,a3				
	jbeq _?L170				
	cmp.w #32000,a3				
	jbne _?L197				
_?L170:						
						
	move.l #352800000,d0			
	move.l a3,d4				
	divu.l d4,d0				
						
	move.l a1,d4				
	divul.l d0,d2:d4			
						
	move.l d3,-(sp)				
	move.l d0,-(sp)				
	move.l d2,-(sp)				
	move.l d1,52(sp)			
	move.l a1,48(sp)			
	jbsr _scale_rational			
	lea (12,sp),sp				
	move.l d0,d3				
						
	move.l 40(sp),d1			
	move.l 36(sp),a1			
_?L291:						
						
	moveq #25,d0				
	cmp.l a4,d0				
	jbge _?L287				
_?L181:						
	cmp.w #11025,a4				
	jbeq _?L185				
	jble _?L288				
	cmp.w #24000,a4				
	jbeq _?L185				
	jble _?L289				
	cmp.l #44100,a4				
	jbeq _?L185				
	cmp.l #48000,a4				
	jbeq _?L185				
	cmp.w #32000,a4				
	jbeq _?L185				
_?L167:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L284:						
						
	moveq #60,d0				
	add.l a4,d0				
	moveq #12,d4				
	cmp.l d0,d4				
	jbcs _?L167				
	move.l #5121,d2				
	btst d0,d2				
	jbeq _?L167				
_?L190:						
						
	tst.l a3				
	jbge _?L185				
						
	clr.l d3				
_?L185:						
						
	move.l a4,-(sp)				
	move.l a1,-(sp)				
	move.l d1,-(sp)				
	jbsr _mad_timer_count			
	lea (12,sp),sp				
	move.l d3,60(sp)			
	move.l d0,56(sp)			
	move.l a6,52(sp)			
	move.l a5,48(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
						
	jbra _sprintf				
_?L286:						
						
	cmp.w #16000,a3				
	jbeq _?L170				
	jble _?L290				
	cmp.w #22050,a3				
	jbeq _?L170				
	clr.l d4				
	clr.l d3				
	jbra _?L173				
_?L285:						
	moveq #60,d4				
	cmp.l a3,d4				
	jblt _?L176				
	moveq #29,d0				
	cmp.l a3,d0				
	jblt _?L177				
	lea (-24,a3),a0				
	moveq #1,d2				
	cmp.l a0,d2				
	jbcc _?L170				
	clr.l d4				
	clr.l d3				
	jbra _?L173				
_?L290:						
	cmp.w #11025,a3				
	jbeq _?L170				
	cmp.w #12000,a3				
	jbne _?L197				
						
	move.l #352800000,d0			
	move.l a3,d4				
	divu.l d4,d0				
						
	move.l a1,d4				
	divul.l d0,d2:d4			
						
	move.l d3,-(sp)				
	move.l d0,-(sp)				
	move.l d2,-(sp)				
	move.l d1,52(sp)			
	move.l a1,48(sp)			
	jbsr _scale_rational			
	lea (12,sp),sp				
	move.l d0,d3				
						
	move.l 40(sp),d1			
	move.l 36(sp),a1			
	jbra _?L291				
_?L177:						
						
	move.l #1075052545,d2			
	moveq #-30,d0				
	add.l a3,d0				
	btst d0,d2				
	jbne _?L170				
	clr.l d4				
	clr.l d3				
	jbra _?L173				
_?L176:						
	moveq #100,d4				
	cmp.l a3,d4				
	jbeq _?L170				
	cmp.w #1000,a3				
	jbeq _?L170				
	moveq #75,d0				
	cmp.l a3,d0				
	jbeq _?L170				
	clr.l d4				
	clr.l d3				
	jbra _?L173				
_?L289:						
						
	cmp.w #16000,a4				
	jbeq _?L185				
	cmp.w #22050,a4				
	jbeq _?L185				
	cmp.w #12000,a4				
	jbeq _?L185				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L288:						
						
	moveq #75,d2				
	cmp.l a4,d2				
	jbeq _?L185				
	jbge _?L292				
	cmp.w #1000,a4				
	jbeq _?L185				
	cmp.w #8000,a4				
	jbeq _?L185				
	moveq #100,d0				
	cmp.l a4,d0				
	jbeq _?L185				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L292:						
						
	moveq #-30,d0				
	add.l a4,d0				
	moveq #30,d4				
	cmp.l d0,d4				
	jbcs _?L167				
	move.l #1075052545,d2			
	btst d0,d2				
	jbne _?L185				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L283:						
						
	tst.l d7				
	jbne _?L169				
						
	neg.l d1				
	jbra _?L168				
_?L172:						
						
	move.l a3,-(sp)				
	move.l a1,-(sp)				
	move.l d1,-(sp)				
	move.l d1,52(sp)			
	move.l a1,48(sp)			
	jbsr _mad_timer_count			
	lea (12,sp),sp				
						
	move.l a3,d2				
	lsl.l #2,d2				
	add.l a3,d2				
	move.l d2,d3				
	lsl.l #4,d3				
	sub.l d3,d2				
	lsl.l #3,d2				
						
	moveq #-18,d3				
	add.l d3,d2				
	move.l d0,d4				
	divul.l d2,d3:d4			
						
	move.l d4,d5				
	lsl.l #3,d5				
	add.l d4,d5				
	add.l d5,d5				
						
	add.l d0,d5				
						
	move.l 40(sp),d1			
	move.l 36(sp),a1			
	moveq #2,d4				
	cmp.l d3,d4				
	jbcc _?L180				
						
	subq.l #2,d3				
						
	mulu.l #3435973837,d0:d2		
	lsr.l #3,d0				
						
	divu.l d0,d3				
						
	add.l d3,d3				
						
	add.l d3,d5				
_?L180:						
						
	move.l a3,d4				
	neg.l d4				
						
	divul.l d4,d4:d5			
						
	clr.l d3				
						
	jbra _?L173				
_?L169:						
	not.l d1				
						
	move.l #352800000,a0			
	sub.l d7,a0				
	move.l a0,a1				
	jbra _?L168				
_?L189:						
						
	move.l d5,d1				
	mulu.l #2290649225,d0:d1		
	lsr.l #5,d0				
						
	move.l d3,72(sp)			
	move.l d4,68(sp)			
						
	move.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
						
	sub.l d1,d5				
	move.l d5,64(sp)			
						
	move.l d0,d2				
	mulu.l #2290649225,d1:d2		
	lsr.l #5,d1				
	move.l d1,d2				
	lsl.l #4,d2				
	sub.l d1,d2				
	lsl.l #2,d2				
						
	sub.l d2,d0				
	move.l d0,60(sp)			
	move.l d1,56(sp)			
	move.l a6,52(sp)			
	move.l a5,48(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
						
	jbra _sprintf				
_?L188:						
						
	move.l d3,68(sp)			
	move.l d4,64(sp)			
						
	move.l d5,d1				
	mulu.l #2290649225,d0:d1		
	lsr.l #5,d0				
	move.l d0,d1				
	lsl.l #4,d1				
	sub.l d0,d1				
	lsl.l #2,d1				
						
	sub.l d1,d5				
	move.l d5,60(sp)			
	move.l d0,56(sp)			
	move.l a6,52(sp)			
	move.l a5,48(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
						
	jbra _sprintf				
_?L187:						
						
	move.l d3,64(sp)			
	move.l d4,60(sp)			
	move.l d5,56(sp)			
	move.l a6,52(sp)			
	move.l a5,48(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
						
	jbra _sprintf				
						
	.globl	_mad_timer_zero			
	.data					
	.align	2				
						
						
_mad_timer_zero:				
	.ds.b	8				
						
