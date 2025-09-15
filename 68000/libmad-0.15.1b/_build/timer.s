* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"timer.c"			
						
						
						
						
						
	.text					
	.globl	___umodsi3			
	.globl	___udivsi3			
	.globl	___mulsi3			
	.align	2				
						
_scale_rational:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 36(sp),d6			
	move.l 40(sp),d4			
	move.l 44(sp),d5			
						
	tst.l d4				
	jbeq _?L2				
	move.l d4,d0				
	move.l d6,a5				
	lea ___umodsi3,a3			
_?L3:						
	move.l d0,d3				
						
	move.l d0,-(sp)				
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d3,a5				
						
	tst.l d0				
	jbne _?L3				
						
	lea ___udivsi3,a4			
	move.l d3,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d7				
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d6				
						
	cmp.l d4,d3				
	jbhi _?L2				
	move.l d5,d4				
_?L5:						
	move.l d0,d3				
						
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d3,d4				
						
	tst.l d0				
	jbne _?L5				
						
	tst.l d3				
	jbeq _?L2				
						
	move.l d3,-(sp)				
	move.l d5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l d3,-(sp)				
	move.l d6,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d3				
						
	cmp.l d4,d6				
	jbcs _?L2				
						
	cmp.l d5,d0				
	jbcs _?L20				
						
	cmp.l d0,d7				
	jbhi _?L21				
						
	move.l d7,-(sp)				
	move.l d5,-(sp)				
	jbsr ___mulsi3				
						
	addq.l #4,sp				
	move.l d3,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	rts					
_?L21:						
						
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
						
	lea ___mulsi3,a3			
	move.l d5,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	addq.l #4,sp				
	move.l d3,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l d3,-(sp)				
	move.l d7,-(sp)				
	jbsr (a4)				
						
	addq.l #4,sp				
	move.l d5,(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
						
	add.l d4,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	rts					
_?L20:						
						
	move.l d0,-(sp)				
	move.l d5,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
						
	lea ___mulsi3,a3			
	move.l d7,-(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
						
	addq.l #4,sp				
	move.l d3,(sp)				
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l d3,-(sp)				
	move.l d5,-(sp)				
	jbsr (a4)				
						
	addq.l #4,sp				
	move.l d7,(sp)				
	move.l d0,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
						
	add.l d4,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
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
	ext.w d0				
	ext.l d0				
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
	movem.l d3/d4/a3,-(sp)			
	move.l 16(sp),a3			
	move.l 24(sp),d4			
	move.l 28(sp),d3			
						
	move.l 20(sp),(a3)			
						
	cmp.l d4,d3				
	jbhi _?L43				
						
	tst.l d3				
	jbeq _?L44				
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	add.l 20(sp),d0				
	move.l d0,(a3)				
						
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
	move.l d0,d4				
_?L43:						
						
	cmp.l #22050,d3				
	jbeq _?L45				
	jbhi _?L46				
	cmp.l #11025,d3				
	jbeq _?L47				
	jbhi _?L48				
	cmp.l #1000,d3				
	jbeq _?L49				
	jbls _?L70				
	cmp.l #8000,d3				
	jbne _?L51				
						
	move.l #44100,-(sp)			
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
_?L60:						
						
	move.l d4,4(a3)				
						
	cmp.l #352799999,d4			
	jbls _?L42				
						
	move.l #352800000,-(sp)			
	move.l d4,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	add.l d0,(a3)				
						
	move.l #352800000,-(sp)			
	move.l d4,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
	move.l d0,4(a3)				
_?L42:						
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L48:						
						
	cmp.l #12000,d3				
	jbeq _?L53				
	cmp.l #16000,d3				
	jbne _?L51				
						
	pea 22050.w				
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	jbra _?L60				
_?L46:						
						
	cmp.l #44100,d3				
	jbeq _?L55				
	jbls _?L71				
	cmp.l #48000,d3				
	jbeq _?L59				
	cmp.l #352800000,d3			
	jbeq _?L60				
_?L51:						
						
	move.l #352800000,-(sp)			
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
	move.l d0,d4				
						
	jbra _?L60				
_?L71:						
						
	cmp.l #24000,d3				
	jbeq _?L57				
	cmp.l #32000,d3				
	jbne _?L51				
						
	move.l d4,d0				
	add.l d4,d0				
	add.l d4,d0				
	lsl.l #3,d0				
	add.l d4,d0				
	move.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	move.l d1,d4				
	lsl.l #6,d4				
	sub.l d1,d4				
						
	jbra _?L60				
_?L70:						
						
	moveq #1,d0				
	cmp.l d3,d0				
	jbcs _?L51				
_?L44:						
						
	clr.l 4(a3)				
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L57:						
						
	pea 14700.w				
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	jbra _?L60				
_?L53:						
						
	pea 29400.w				
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	jbra _?L60				
_?L59:						
						
	pea 7350.w				
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	jbra _?L60				
_?L45:						
						
	move.l d4,d0				
	lsl.l #5,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d4				
	lsl.l #7,d4				
						
	jbra _?L60				
_?L55:						
						
	move.l d4,d0				
	lsl.l #5,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d4				
	lsl.l #6,d4				
						
	jbra _?L60				
_?L47:						
						
	move.l d4,d0				
	lsl.l #5,d0				
	sub.l d4,d0				
	add.l d0,d0				
	add.l d0,d0				
	add.l d0,d4				
	lsl.l #8,d4				
						
	jbra _?L60				
_?L49:						
						
	move.l #352800,-(sp)			
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	jbra _?L60				
						
	.align	2				
	.globl	_mad_timer_add			
						
_mad_timer_add:					
	movem.l d3/d4/a3,-(sp)			
	move.l 16(sp),a3			
						
	move.l (a3),d4				
	add.l 20(sp),d4				
	move.l d4,(a3)				
						
	move.l 4(a3),d3				
	add.l 24(sp),d3				
	move.l d3,4(a3)				
						
	cmp.l #352799999,d3			
	jbls _?L72				
						
	move.l #352800000,-(sp)			
	move.l d3,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	add.l d4,d0				
	move.l d0,(a3)				
						
	move.l #352800000,-(sp)			
	move.l d3,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
	move.l d0,4(a3)				
_?L72:						
						
	movem.l (sp)+,d3/d4/a3			
	rts					
						
	.align	2				
	.globl	_mad_timer_multiply		
						
_mad_timer_multiply:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 36(sp),a3			
	move.l 40(sp),d5			
						
	move.l (a3),d4				
						
	move.l 4(a3),d3				
						
	tst.l d5				
	jblt _?L89				
						
	clr.l (a3)				
	clr.l 4(a3)				
						
	tst.l d5				
	jbeq _?L76				
						
	lea ___udivsi3,a5			
						
	lea ___umodsi3,a4			
_?L84:						
						
	btst #0,d5				
	jbeq _?L81				
						
	move.l d4,d7				
	add.l (a3),d7				
	move.l d7,(a3)				
						
	move.l d3,d6				
	add.l 4(a3),d6				
	move.l d6,4(a3)				
						
	cmp.l #352799999,d6			
	jbls _?L81				
						
	move.l #352800000,-(sp)			
	move.l d6,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	add.l d7,d0				
	move.l d0,(a3)				
						
	move.l #352800000,-(sp)			
	move.l d6,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,4(a3)				
_?L81:						
						
	add.l d4,d4				
						
	add.l d3,d3				
						
	cmp.l #352799999,d3			
	jbls _?L83				
						
	move.l #352800000,-(sp)			
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	add.l d0,d4				
						
	move.l #352800000,-(sp)			
	move.l d3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d3				
_?L83:						
						
	lsr.l #1,d5				
						
	jbne _?L84				
_?L76:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5	
	rts					
_?L89:						
						
	neg.l d5				
						
	tst.l d3				
	jbne _?L78				
						
	neg.l d4				
						
	clr.l (a3)				
						
	lea ___udivsi3,a5			
						
	lea ___umodsi3,a4			
	jbra _?L84				
_?L78:						
	not.l d4				
						
	move.l #352800000,d0			
	sub.l d3,d0				
	move.l d0,d3				
						
	clr.l (a3)				
	clr.l 4(a3)				
						
	lea ___udivsi3,a5			
						
	lea ___umodsi3,a4			
	jbra _?L84				
						
	.globl	___divsi3			
	.align	2				
	.globl	_mad_timer_count		
						
_mad_timer_count:				
	movem.l d4/d5/a3,-(sp)			
	move.l 16(sp),d4			
	move.l 20(sp),d5			
	move.l 24(sp),a3			
	move.l d4,d0				
						
	moveq #25,d1				
	cmp.l a3,d1				
	jblt _?L91				
	moveq #-30,d1				
	cmp.l a3,d1				
	jbgt _?L147				
	lea (30,a3),a0				
	moveq #55,d1				
	cmp.l a0,d1				
	jbcs _?L106				
	move.l a0,d1				
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
	add.l a3,d0				
	moveq #30,d1				
	cmp.l d0,d1				
	jbcs _?L106				
	move.l #1075052545,d1			
	btst d0,d1				
	jbne _?L95				
_?L106:						
						
	moveq #0,d0				
_?L90:						
						
	movem.l (sp)+,d4/d5/a3			
	rts					
_?L147:						
						
	moveq #60,d0				
	add.l a3,d0				
	moveq #12,d1				
	cmp.l d0,d1				
	jbcs _?L106				
	move.l #5121,d1				
	btst d0,d1				
	jbeq _?L106				
_?L100:						
						
	move.l a3,d1				
	neg.l d1				
	move.l d1,-(sp)				
	move.l d5,-(sp)				
	move.l d4,-(sp)				
	jbsr _mad_timer_count			
	lea (12,sp),sp				
						
	addq.l #1,d0				
						
	move.l d0,d1				
	lsl.l #5,d1				
	sub.l d0,d1				
	add.l d1,d1				
	add.l d1,d1				
	add.l d1,d0				
	lsl.l #3,d0				
						
	pea 1001.w				
	move.l d0,-(sp)				
	jbsr ___divsi3				
	addq.l #8,sp				
						
	movem.l (sp)+,d4/d5/a3			
	rts					
_?L91:						
						
	cmp.w #11025,a3				
	jbeq _?L95				
	jble _?L148				
	cmp.w #24000,a3				
	jbeq _?L95				
	jble _?L149				
	cmp.l #44100,a3				
	jbeq _?L95				
	cmp.l #48000,a3				
	jbeq _?L95				
	cmp.w #32000,a3				
	jbne _?L106				
_?L95:						
						
	move.l d4,-(sp)				
	move.l a3,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l a3,-(sp)				
	move.l #352800000,-(sp)			
	move.l d5,-(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
						
	add.l d4,d0				
						
	movem.l (sp)+,d4/d5/a3			
	rts					
_?L148:						
						
	moveq #75,d0				
	cmp.l a3,d0				
	jbeq _?L95				
	jbge _?L150				
	cmp.w #1000,a3				
	jbeq _?L95				
	cmp.w #8000,a3				
	jbeq _?L95				
	moveq #100,d0				
	cmp.l a3,d0				
	jbeq _?L95				
						
	moveq #0,d0				
	jbra _?L90				
_?L149:						
						
	cmp.w #16000,a3				
	jbeq _?L95				
	cmp.w #22050,a3				
	jbeq _?L95				
	cmp.w #12000,a3				
	jbeq _?L95				
						
	moveq #0,d0				
	jbra _?L90				
_?L99:						
						
	pea 3600.w				
	move.l d4,-(sp)				
	jbsr ___divsi3				
	addq.l #8,sp				
						
	movem.l (sp)+,d4/d5/a3			
	rts					
_?L98:						
						
	pea 60.w				
	move.l d4,-(sp)				
	jbsr ___divsi3				
	addq.l #8,sp				
						
	movem.l (sp)+,d4/d5/a3			
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
						
	move.l d0,-(sp)				
	move.l #352800000,-(sp)			
	jbsr ___udivsi3				
	addq.l #8,sp				
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
						
	.globl	___modsi3			
	.align	2				
	.globl	_mad_timer_string		
						
_mad_timer_string:				
	lea (-16,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 56(sp),a0			
	move.l 60(sp),a1			
	move.l 64(sp),48(sp)			
	move.l 68(sp),d7			
	move.l 72(sp),a6			
	move.l 76(sp),a3			
	move.l 80(sp),d3			
	move.l a0,d6				
	move.l a1,d4				
						
	tst.l d6				
	jblt _?L283				
_?L168:						
						
	move.l d6,d5				
						
	moveq #10,d1				
	cmp.l a3,d1				
	jbeq _?L170				
	jblt _?L171				
	moveq #-60,d0				
	cmp.l a3,d0				
	jbeq _?L172				
	moveq #50,d0				
	add.l a3,d0				
	moveq #26,d1				
	cmp.l d0,d1				
	jbcs _?L197				
	move.l #101711877,d2			
	btst d0,d2				
	jbne _?L172				
_?L197:						
	sub.l a4,a4				
	moveq #0,d3				
_?L173:						
						
	moveq #25,d0				
	cmp.l a6,d0				
	jblt _?L181				
_?L287:						
	moveq #-30,d1				
	cmp.l a6,d1				
	jbgt _?L284				
	lea (30,a6),a5				
	moveq #55,d0				
	cmp.l a5,d0				
	jbcs _?L167				
	move.l a5,d2				
	add.l d2,d2				
	move.w _?L186(pc,d2.l),d0		
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
						
	lea ___udivsi3,a4			
	move.l a3,-(sp)				
	move.l #352800000,-(sp)			
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a5				
						
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a4				
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	move.l a5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___umodsi3				
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
	move.l d0,d3				
_?L291:						
						
	moveq #25,d0				
	cmp.l a6,d0				
	jbge _?L287				
_?L181:						
	cmp.w #11025,a6				
	jbeq _?L185				
	jble _?L288				
	cmp.w #24000,a6				
	jbeq _?L185				
	jble _?L289				
	cmp.l #44100,a6				
	jbeq _?L185				
	cmp.l #48000,a6				
	jbeq _?L185				
	cmp.w #32000,a6				
	jbeq _?L185				
_?L167:						
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L284:						
						
	moveq #60,d0				
	add.l a6,d0				
	moveq #12,d1				
	cmp.l d0,d1				
	jbcs _?L167				
	move.l #5121,d2				
	btst d0,d2				
	jbeq _?L167				
_?L190:						
						
	cmp.w #0,a3				
	jbge _?L185				
						
	moveq #0,d3				
_?L185:						
						
	move.l a6,-(sp)				
	move.l d4,-(sp)				
	move.l d6,-(sp)				
	jbsr _mad_timer_count			
	lea (12,sp),sp				
	move.l d3,68(sp)			
	move.l d0,64(sp)			
	move.l d7,60(sp)			
	move.l 48(sp),56(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
						
	jbra _sprintf				
_?L286:						
						
	cmp.w #16000,a3				
	jbeq _?L170				
	jble _?L290				
	cmp.w #22050,a3				
	jbeq _?L170				
	sub.l a4,a4				
	moveq #0,d3				
	jbra _?L173				
_?L285:						
	moveq #60,d0				
	cmp.l a3,d0				
	jblt _?L176				
	moveq #29,d1				
	cmp.l a3,d1				
	jblt _?L177				
	lea (-24,a3),a4				
	moveq #1,d0				
	cmp.l a4,d0				
	jbcc _?L170				
	sub.l a4,a4				
	moveq #0,d3				
	jbra _?L173				
_?L290:						
	cmp.w #11025,a3				
	jbeq _?L170				
	cmp.w #12000,a3				
	jbne _?L197				
						
	lea ___udivsi3,a4			
	move.l a3,-(sp)				
	move.l #352800000,-(sp)			
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a5				
						
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a4				
						
	move.l d3,-(sp)				
	move.l a5,-(sp)				
	move.l a5,-(sp)				
	move.l d4,-(sp)				
	jbsr ___umodsi3				
	addq.l #4,sp				
	move.l d0,(sp)				
	jbsr _scale_rational			
	lea (12,sp),sp				
	move.l d0,d3				
	jbra _?L291				
_?L177:						
						
	move.l #1075052545,d0			
	moveq #-30,d2				
	add.l a3,d2				
	btst d2,d0				
	jbne _?L170				
	sub.l a4,a4				
	moveq #0,d3				
	jbra _?L173				
_?L176:						
	moveq #100,d1				
	cmp.l a3,d1				
	jbeq _?L170				
	cmp.w #1000,a3				
	jbeq _?L170				
	moveq #75,d0				
	cmp.l a3,d0				
	jbeq _?L170				
	sub.l a4,a4				
	moveq #0,d3				
	jbra _?L173				
_?L289:						
						
	cmp.w #16000,a6				
	jbeq _?L185				
	cmp.w #22050,a6				
	jbeq _?L185				
	cmp.w #12000,a6				
	jbeq _?L185				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L288:						
						
	moveq #75,d1				
	cmp.l a6,d1				
	jbeq _?L185				
	jbge _?L292				
	cmp.w #1000,a6				
	jbeq _?L185				
	cmp.w #8000,a6				
	jbeq _?L185				
	moveq #100,d0				
	cmp.l a6,d0				
	jbeq _?L185				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L292:						
						
	moveq #-30,d0				
	add.l a6,d0				
	moveq #30,d1				
	cmp.l d0,d1				
	jbcs _?L167				
	move.l #1075052545,d2			
	btst d0,d2				
	jbne _?L185				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
	rts					
_?L283:						
						
	cmp.w #0,a1				
	jbne _?L169				
						
	neg.l d6				
	jbra _?L168				
_?L172:						
						
	move.l a3,-(sp)				
	move.l d4,-(sp)				
	move.l d6,-(sp)				
	move.l d6,52(sp)			
	move.l d4,48(sp)			
	jbsr _mad_timer_count			
	lea (12,sp),sp				
	move.l d0,d5				
						
	move.l a3,d0				
	add.l a3,d0				
	add.l d0,d0				
	add.l a3,d0				
	move.l d0,d2				
	lsl.l #4,d2				
	sub.l d2,d0				
	lsl.l #3,d0				
						
	move.w #-18,a4				
	add.l d0,a4				
						
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
	move.l d0,44(sp)			
						
	lea ___udivsi3,a5			
	move.l a4,-(sp)				
	move.l d5,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	move.l d0,d3				
	lsl.l #3,d3				
	add.l d3,d0				
	add.l d0,d0				
						
	move.l d0,d3				
	add.l d5,d3				
						
	move.l 40(sp),a0			
	move.l 36(sp),a1			
	moveq #2,d1				
	cmp.l 44(sp),d1				
	jbcc _?L180				
						
	move.l 44(sp),d5			
	subq.l #2,d5				
						
	pea 10.w				
	move.l a4,-(sp)				
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr (a5)				
						
	addq.l #4,sp				
	move.l d0,(sp)				
	move.l d5,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	add.l d0,d0				
						
	add.l d0,d3				
	move.l 36(sp),a1			
	move.l 40(sp),a0			
_?L180:						
						
	move.l a3,d5				
	neg.l d5				
						
	move.l d5,-(sp)				
	move.l d3,-(sp)				
	move.l a0,48(sp)			
	move.l a1,44(sp)			
	jbsr ___umodsi3				
	addq.l #8,sp				
	move.l d0,a4				
						
	move.l d5,-(sp)				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
	move.l d0,d5				
						
	moveq #0,d3				
						
	jbra _?L173				
_?L169:						
	not.l d6				
						
	move.l #352800000,d0			
	sub.l a1,d0				
	move.l d0,d4				
	jbra _?L168				
_?L189:						
						
	lea ___udivsi3,a3			
	pea 60.w				
	move.l d5,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l d3,80(sp)			
	move.l a4,76(sp)			
						
	lea ___umodsi3,a4			
	pea 60.w				
	move.l d5,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d0,72(sp)			
						
	pea 60.w				
	move.l d4,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d0,68(sp)			
						
	pea 60.w				
	move.l d4,-(sp)				
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l d0,64(sp)			
	move.l d7,60(sp)			
	move.l 48(sp),56(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
						
	jbra _sprintf				
_?L188:						
						
	move.l d3,76(sp)			
	move.l a4,72(sp)			
						
	pea 60.w				
	move.l d5,-(sp)				
	jbsr ___umodsi3				
	addq.l #8,sp				
						
	move.l d0,68(sp)			
						
	pea 60.w				
	move.l d5,-(sp)				
	jbsr ___udivsi3				
	addq.l #8,sp				
						
	move.l d0,64(sp)			
	move.l d7,60(sp)			
	move.l 48(sp),56(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
						
	jbra _sprintf				
_?L187:						
						
	move.l d3,72(sp)			
	move.l a4,68(sp)			
	move.l d5,64(sp)			
	move.l d7,60(sp)			
	move.l 48(sp),56(sp)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (16,sp),sp				
						
	jbra _sprintf				
						
	.globl	_mad_timer_zero			
	.data					
	.align	2				
						
						
_mad_timer_zero:				
	.ds.b	8				
						
