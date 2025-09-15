* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"picojpeg.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_upsampleCb:					
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
						
	clr.l d0				
	move.b 31(sp),d0			
	add.l d0,d0				
	move.l d0,a6				
						
	add.l #_gCoeffBuf,a6			
						
	clr.l d0				
	move.b 35(sp),d0			
						
	move.l d0,a5				
	add.l #_gMCUBufG,a5			
						
	move.l d0,a4				
	add.l #_gMCUBufB,a4			
	lea (8,a6),a3				
	lea (72,a6),a6				
_?L2:						
	lea (-8,a3),a2				
						
	move.l a4,a1				
	move.l a5,a0				
_?L23:						
						
	move.w (a2)+,d0				
						
	clr.w d2				
	move.b d0,d2				
	clr.l d3				
	move.b d0,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #2,d1				
	sub.l d3,d1				
						
	bfextu d1{#3:#24},d1			
						
	add.w #-44,d1				
						
	clr.w d3				
	move.b (a0),d3				
	sub.w d1,d3				
	clr.w d4				
	move.b 1(a0),d4				
	sub.w d1,d4				
						
	cmp.w #255,d3				
	jbls _?L4				
						
	tst.w d3				
	jbge _?L36				
						
	clr.b d3				
_?L4:						
						
	move.b d3,(a0)				
						
	cmp.w #255,d4				
	jbls _?L8				
						
	tst.w d4				
	jbge _?L9				
						
	clr.b d4				
_?L8:						
						
	move.b d4,1(a0)				
						
	clr.w d3				
	move.b 8(a0),d3				
	sub.w d1,d3				
						
	cmp.w #255,d3				
	jbls _?L12				
						
	tst.w d3				
	jbge _?L6				
						
	clr.b d3				
_?L12:						
						
	move.b d3,8(a0)				
						
	clr.w d3				
	move.b 9(a0),d3				
	sub.w d1,d3				
						
	cmp.w #255,d3				
	jbls _?L10				
						
	tst.w d3				
	sge d3					
_?L10:						
						
	move.b d3,9(a0)				
						
	and.l #65535,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	and.w #255,d0				
						
	add.w #-227,d0				
	add.w d1,d0				
						
	clr.w d1				
	move.b (a1),d1				
	add.w d0,d1				
	clr.w d2				
	move.b 1(a1),d2				
	add.w d0,d2				
						
	cmp.w #255,d1				
	jbls _?L14				
						
	tst.w d1				
	jbge _?L37				
						
	clr.b d1				
_?L14:						
						
	move.b d1,(a1)				
						
	cmp.w #255,d2				
	jbls _?L18				
						
	tst.w d2				
	jbge _?L19				
						
	clr.b d2				
_?L18:						
						
	move.b d2,1(a1)				
						
	clr.w d1				
	move.b 8(a1),d1				
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L22				
						
	tst.w d1				
	jbge _?L16				
						
	clr.b d1				
_?L22:						
						
	move.b d1,8(a1)				
						
	clr.w d1				
	move.b 9(a1),d1				
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L20				
						
	tst.w d0				
	sge d0					
_?L20:						
						
	move.b d0,9(a1)				
						
	addq.l #2,a0				
						
	addq.l #2,a1				
						
	cmp.l a2,a3				
	jbne _?L23				
_?L38:						
	lea (16,a5),a5				
	lea (16,a4),a4				
						
	lea (16,a2),a3				
	cmp.l a6,a3				
	jbne _?L2				
						
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	rts					
_?L37:						
						
	st (a1)					
						
	cmp.w #255,d2				
	jbls _?L18				
_?L19:						
						
	st 1(a1)				
						
	clr.w d1				
	move.b 8(a1),d1				
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L22				
_?L16:						
						
	st 8(a1)				
						
	clr.w d1				
	move.b 9(a1),d1				
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L20				
						
	st d0					
						
	move.b d0,9(a1)				
						
	addq.l #2,a0				
						
	addq.l #2,a1				
						
	cmp.l a2,a3				
	jbne _?L23				
	jbra _?L38				
_?L36:						
						
	st (a0)					
						
	cmp.w #255,d4				
	jbls _?L8				
_?L9:						
						
	st 1(a0)				
						
	clr.w d3				
	move.b 8(a0),d3				
	sub.w d1,d3				
						
	cmp.w #255,d3				
	jbls _?L12				
_?L6:						
						
	st 8(a0)				
						
	clr.w d3				
	move.b 9(a0),d3				
	sub.w d1,d3				
						
	cmp.w #255,d3				
	jbls _?L10				
						
	st d3					
	jbra _?L10				
						
	.align	2				
						
_upsampleCbH:					
	movem.l d3/d4/a3,-(sp)			
						
	clr.l d0				
	move.b 19(sp),d0			
	add.l d0,d0				
						
	move.l d0,a2				
	add.l #_gCoeffBuf,a2			
						
	clr.l d0				
	move.b 23(sp),d0			
						
	move.l d0,a1				
	add.l #_gMCUBufG,a1			
						
	move.l d0,a0				
	add.l #_gMCUBufB,a0			
	lea (64,a0),a3				
_?L72:						
						
	move.w (a2),d0				
						
	clr.w d3				
	move.b d0,d3				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	lsl.l #2,d1				
	sub.l d2,d1				
						
	bfextu d1{#3:#24},d1			
						
	add.w #-44,d1				
						
	clr.w d4				
	move.b (a1),d4				
	sub.w d1,d4				
	clr.w d2				
	move.b 1(a1),d2				
	sub.w d1,d2				
						
	cmp.w #255,d4				
	jbls _?L41				
						
	tst.w d4				
	jbge _?L92				
						
	clr.b d4				
_?L41:						
						
	move.b d4,(a1)				
						
	cmp.w #255,d2				
	jbls _?L42				
						
	tst.w d2				
	sge d2					
_?L42:						
						
	move.b d2,1(a1)				
						
	and.w #255,d0				
						
	add.w #-227,d0				
						
	and.l #65535,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	add.w d1,d0				
						
	clr.w d1				
	move.b (a0),d1				
	add.w d0,d1				
	clr.w d2				
	move.b 1(a0),d2				
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L45				
						
	tst.w d1				
	jbge _?L93				
						
	clr.b d1				
_?L45:						
						
	move.b d1,(a0)				
						
	cmp.w #255,d0				
	jbls _?L46				
						
	tst.w d0				
	sge d0					
_?L46:						
						
	move.b d0,1(a0)				
						
	move.w 2(a2),d0				
						
	clr.w d3				
	move.b d0,d3				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	lsl.l #2,d1				
	sub.l d2,d1				
						
	bfextu d1{#3:#24},d1			
						
	add.w #-44,d1				
						
	clr.w d4				
	move.b 2(a1),d4				
	sub.w d1,d4				
	clr.w d2				
	move.b 3(a1),d2				
	sub.w d1,d2				
						
	cmp.w #255,d4				
	jbls _?L49				
						
	tst.w d4				
	jbge _?L94				
						
	clr.b d4				
_?L49:						
						
	move.b d4,2(a1)				
						
	cmp.w #255,d2				
	jbls _?L50				
						
	tst.w d2				
	sge d2					
_?L50:						
						
	move.b d2,3(a1)				
						
	and.w #255,d0				
						
	add.w #-227,d0				
						
	and.l #65535,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	add.w d1,d0				
						
	clr.w d1				
	move.b 2(a0),d1				
	add.w d0,d1				
	clr.w d2				
	move.b 3(a0),d2				
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L53				
						
	tst.w d1				
	jbge _?L95				
						
	clr.b d1				
_?L53:						
						
	move.b d1,2(a0)				
						
	cmp.w #255,d0				
	jbls _?L54				
						
	tst.w d0				
	sge d0					
_?L54:						
						
	move.b d0,3(a0)				
						
	move.w 4(a2),d0				
						
	clr.w d3				
	move.b d0,d3				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	lsl.l #2,d1				
	sub.l d2,d1				
						
	bfextu d1{#3:#24},d1			
						
	add.w #-44,d1				
						
	clr.w d4				
	move.b 4(a1),d4				
	sub.w d1,d4				
	clr.w d2				
	move.b 5(a1),d2				
	sub.w d1,d2				
						
	cmp.w #255,d4				
	jbls _?L57				
						
	tst.w d4				
	jbge _?L96				
						
	clr.b d4				
_?L57:						
						
	move.b d4,4(a1)				
						
	cmp.w #255,d2				
	jbls _?L58				
						
	tst.w d2				
	sge d2					
_?L58:						
						
	move.b d2,5(a1)				
						
	and.w #255,d0				
						
	add.w #-227,d0				
						
	and.l #65535,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	add.w d1,d0				
						
	clr.w d1				
	move.b 4(a0),d1				
	add.w d0,d1				
	clr.w d2				
	move.b 5(a0),d2				
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L61				
						
	tst.w d1				
	jbge _?L97				
						
	clr.b d1				
_?L61:						
						
	move.b d1,4(a0)				
						
	cmp.w #255,d0				
	jbls _?L62				
						
	tst.w d0				
	sge d0					
_?L62:						
						
	move.b d0,5(a0)				
						
	move.w 6(a2),d0				
						
	clr.w d3				
	move.b d0,d3				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	lsl.l #2,d1				
	sub.l d2,d1				
						
	bfextu d1{#3:#24},d1			
						
	add.w #-44,d1				
						
	clr.w d4				
	move.b 6(a1),d4				
	sub.w d1,d4				
	clr.w d2				
	move.b 7(a1),d2				
	sub.w d1,d2				
						
	cmp.w #255,d4				
	jbls _?L65				
						
	tst.w d4				
	jbge _?L98				
						
	clr.b d4				
_?L65:						
						
	move.b d4,6(a1)				
						
	cmp.w #255,d2				
	jbls _?L66				
						
	tst.w d2				
	sge d2					
_?L66:						
						
	move.b d2,7(a1)				
						
	and.l #65535,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	and.w #255,d0				
						
	add.w #-227,d0				
	add.w d1,d0				
						
	clr.w d1				
	move.b 6(a0),d1				
	add.w d0,d1				
	clr.w d2				
	move.b 7(a0),d2				
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L69				
						
	tst.w d1				
	jbge _?L99				
						
	clr.b d1				
_?L69:						
						
	move.b d1,6(a0)				
						
	cmp.w #255,d0				
	jbls _?L70				
						
	tst.w d0				
	sge d0					
_?L70:						
						
	move.b d0,7(a0)				
						
	addq.l #8,a1				
						
	addq.l #8,a0				
						
	lea (16,a2),a2				
						
	cmp.l a0,a3				
	jbne _?L72				
_?L100:						
						
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L92:						
						
	st (a1)					
						
	cmp.w #255,d2				
	jbls _?L42				
						
	st d2					
	jbra _?L42				
_?L93:						
						
	st (a0)					
						
	cmp.w #255,d0				
	jbls _?L46				
						
	st d0					
	jbra _?L46				
_?L94:						
						
	st 2(a1)				
						
	cmp.w #255,d2				
	jbls _?L50				
						
	st d2					
	jbra _?L50				
_?L95:						
						
	st 2(a0)				
						
	cmp.w #255,d0				
	jbls _?L54				
						
	st d0					
	jbra _?L54				
_?L96:						
						
	st 4(a1)				
						
	cmp.w #255,d2				
	jbls _?L58				
						
	st d2					
	jbra _?L58				
_?L97:						
						
	st 4(a0)				
						
	cmp.w #255,d0				
	jbls _?L62				
						
	st d0					
	jbra _?L62				
_?L98:						
						
	st 6(a1)				
						
	cmp.w #255,d2				
	jbls _?L66				
						
	st d2					
	jbra _?L66				
_?L99:						
						
	st 6(a0)				
						
	cmp.w #255,d0				
	jbls _?L70				
						
	st d0					
						
	move.b d0,7(a0)				
						
	addq.l #8,a1				
						
	addq.l #8,a0				
						
	lea (16,a2),a2				
						
	cmp.l a0,a3				
	jbne _?L72				
	jbra _?L100				
						
	.align	2				
						
_upsampleCbV:					
	movem.l d3/d4/a3/a4/a5/a6,-(sp)		
						
	clr.l d0				
	move.b 35(sp),d0			
						
	move.l d0,a4				
	add.l #_gMCUBufG,a4			
						
	move.l d0,a5				
	add.l #_gMCUBufB,a5			
						
	move.b 31(sp),d0			
	add.l d0,d0				
	move.l d0,a3				
	add.l #_gCoeffBuf+16,a3			
	lea (64,a4),a6				
_?L102:						
	lea (-16,a3),a2				
	lea (8,a5),a1				
						
	move.l a4,a0				
_?L111:						
						
	move.w (a2)+,d0				
						
	clr.w d2				
	move.b d0,d2				
	clr.l d3				
	move.b d0,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #2,d1				
	sub.l d3,d1				
						
	bfextu d1{#3:#24},d1			
						
	add.w #-44,d1				
						
	clr.w d4				
	move.b (a0)+,d4				
	sub.w d1,d4				
	clr.w d3				
	move.b 7(a0),d3				
	sub.w d1,d3				
						
	cmp.w #255,d4				
	jbls _?L104				
						
	tst.w d4				
	jbge _?L120				
						
	clr.b d4				
_?L104:						
						
	move.b d4,-1(a0)			
						
	cmp.w #255,d3				
	jbls _?L105				
						
	tst.w d3				
	sge d3					
_?L105:						
						
	move.b d3,7(a0)				
						
	and.w #255,d0				
						
	add.w #-227,d0				
						
	clr.l d1				
	move.w d2,d1				
	move.l d1,d2				
	add.l d2,d2				
	add.l d1,d2				
	move.l d2,d1				
	lsl.l #5,d1				
	add.l d1,d2				
						
	lsr.l #7,d2				
						
	add.w d2,d0				
						
	clr.w d1				
	move.b -8(a1),d1			
	add.w d0,d1				
	clr.w d2				
	move.b (a1),d2				
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L108				
						
	tst.w d1				
	jbge _?L121				
						
	clr.b d1				
_?L108:						
						
	move.b d1,-8(a1)			
						
	cmp.w #255,d0				
	jbls _?L109				
						
	tst.w d0				
	sge d0					
_?L109:						
						
	move.b d0,(a1)+				
						
	cmp.l a2,a3				
	jbne _?L111				
_?L122:						
						
	lea (16,a4),a4				
						
	lea (16,a5),a5				
						
	lea (16,a2),a3				
	cmp.l a4,a6				
	jbne _?L102				
						
	movem.l (sp)+,d3/d4/a3/a4/a5/a6		
	rts					
_?L120:						
						
	st -1(a0)				
						
	cmp.w #255,d3				
	jbls _?L105				
						
	st d3					
	jbra _?L105				
_?L121:						
						
	st -8(a1)				
						
	cmp.w #255,d0				
	jbls _?L109				
						
	st d0					
						
	move.b d0,(a1)+				
						
	cmp.l a2,a3				
	jbne _?L111				
	jbra _?L122				
						
	.align	2				
						
_upsampleCr:					
	movem.l d3/a3/a4/a5/a6,-(sp)		
						
	clr.l d0				
	move.b 27(sp),d0			
	add.l d0,d0				
	move.l d0,a6				
						
	add.l #_gCoeffBuf,a6			
						
	clr.l d0				
	move.b 31(sp),d0			
						
	move.l d0,a5				
	add.l #_gMCUBufR,a5			
						
	move.l d0,a4				
	add.l #_gMCUBufG,a4			
	lea (8,a6),a3				
	lea (72,a6),a6				
_?L124:						
	lea (-8,a3),a2				
						
	move.l a4,a1				
	move.l a5,a0				
_?L145:						
						
	move.w (a2)+,d0				
						
	clr.w d2				
	move.b d0,d2				
	clr.l d3				
	move.b d0,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #2,d1				
	add.l d3,d1				
	lsl.l #3,d1				
	sub.l d3,d1				
						
	lsr.l #8,d1				
						
	and.w #255,d0				
						
	add.w #-179,d0				
	add.w d1,d0				
						
	clr.w d1				
	move.b (a0),d1				
	add.w d0,d1				
	clr.w d3				
	move.b 1(a0),d3				
	add.w d0,d3				
						
	cmp.w #255,d1				
	jbls _?L126				
						
	tst.w d1				
	jbge _?L158				
						
	clr.b d1				
_?L126:						
						
	move.b d1,(a0)				
						
	cmp.w #255,d3				
	jbls _?L130				
						
	tst.w d3				
	jbge _?L131				
						
	clr.b d3				
_?L130:						
						
	move.b d3,1(a0)				
						
	clr.w d1				
	move.b 8(a0),d1				
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L134				
						
	tst.w d1				
	jbge _?L128				
						
	clr.b d1				
_?L134:						
						
	move.b d1,8(a0)				
						
	clr.w d1				
	move.b 9(a0),d1				
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L132				
						
	tst.w d0				
	sge d0					
_?L132:						
						
	move.b d0,9(a0)				
						
	and.l #65535,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	clr.w d1				
	move.b (a1),d1				
	sub.w d0,d1				
	clr.w d2				
	move.b 1(a1),d2				
	sub.w d0,d2				
						
	cmp.w #255,d1				
	jbls _?L136				
						
	tst.w d1				
	jbge _?L159				
						
	clr.b d1				
_?L136:						
						
	move.b d1,(a1)				
						
	cmp.w #255,d2				
	jbls _?L140				
						
	tst.w d2				
	jbge _?L141				
						
	clr.b d2				
_?L140:						
						
	move.b d2,1(a1)				
						
	clr.w d1				
	move.b 8(a1),d1				
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L144				
						
	tst.w d1				
	jbge _?L138				
						
	clr.b d1				
_?L144:						
						
	move.b d1,8(a1)				
						
	clr.w d1				
	move.b 9(a1),d1				
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L142				
						
	tst.w d1				
	sge d1					
_?L142:						
						
	move.b d1,9(a1)				
						
	addq.l #2,a0				
						
	addq.l #2,a1				
						
	cmp.l a2,a3				
	jbne _?L145				
_?L160:						
	lea (16,a5),a5				
	lea (16,a4),a4				
						
	lea (16,a2),a3				
	cmp.l a6,a3				
	jbne _?L124				
						
	movem.l (sp)+,d3/a3/a4/a5/a6		
	rts					
_?L159:						
						
	st (a1)					
						
	cmp.w #255,d2				
	jbls _?L140				
_?L141:						
						
	st 1(a1)				
						
	clr.w d1				
	move.b 8(a1),d1				
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L144				
_?L138:						
						
	st 8(a1)				
						
	clr.w d1				
	move.b 9(a1),d1				
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L142				
						
	st d1					
						
	move.b d1,9(a1)				
						
	addq.l #2,a0				
						
	addq.l #2,a1				
						
	cmp.l a2,a3				
	jbne _?L145				
	jbra _?L160				
_?L158:						
						
	st (a0)					
						
	cmp.w #255,d3				
	jbls _?L130				
_?L131:						
						
	st 1(a0)				
						
	clr.w d1				
	move.b 8(a0),d1				
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L134				
_?L128:						
						
	st 8(a0)				
						
	clr.w d1				
	move.b 9(a0),d1				
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L132				
						
	st d0					
	jbra _?L132				
						
	.align	2				
						
_upsampleCrH:					
	move.l a3,-(sp)				
	move.l d3,-(sp)				
						
	clr.l d0				
	move.b 15(sp),d0			
	add.l d0,d0				
						
	move.l d0,a2				
	add.l #_gCoeffBuf,a2			
						
	clr.l d0				
	move.b 19(sp),d0			
						
	move.l d0,a1				
	add.l #_gMCUBufR,a1			
						
	move.l d0,a0				
	add.l #_gMCUBufG,a0			
	lea (64,a0),a3				
_?L194:						
						
	move.w (a2),d3				
						
	move.w d3,d1				
	and.w #255,d1				
						
	add.w #-179,d1				
						
	clr.w d2				
	move.b d3,d2				
	and.l #255,d3				
	move.l d3,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
						
	lsr.l #8,d0				
						
	add.w d1,d0				
						
	clr.w d1				
	move.b (a1),d1				
	add.w d0,d1				
	clr.w d3				
	move.b 1(a1),d3				
	add.w d3,d0				
						
	cmp.w #255,d1				
	jbls _?L163				
						
	tst.w d1				
	jbge _?L214				
						
	clr.b d1				
_?L163:						
						
	move.b d1,(a1)				
						
	cmp.w #255,d0				
	jbls _?L164				
						
	tst.w d0				
	sge d0					
_?L164:						
						
	move.b d0,1(a1)				
						
	and.l #65535,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	clr.w d2				
	move.b (a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b 1(a0),d1				
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L167				
						
	tst.w d2				
	jbge _?L215				
						
	clr.b d2				
_?L167:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d1				
	jbls _?L168				
						
	tst.w d1				
	sge d1					
_?L168:						
						
	move.b d1,1(a0)				
						
	move.w 2(a2),d3				
						
	move.w d3,d1				
	and.w #255,d1				
						
	add.w #-179,d1				
						
	clr.w d2				
	move.b d3,d2				
	and.l #255,d3				
	move.l d3,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
						
	lsr.l #8,d0				
						
	add.w d1,d0				
						
	clr.w d1				
	move.b 2(a1),d1				
	add.w d0,d1				
	clr.w d3				
	move.b 3(a1),d3				
	add.w d3,d0				
						
	cmp.w #255,d1				
	jbls _?L171				
						
	tst.w d1				
	jbge _?L216				
						
	clr.b d1				
_?L171:						
						
	move.b d1,2(a1)				
						
	cmp.w #255,d0				
	jbls _?L172				
						
	tst.w d0				
	sge d0					
_?L172:						
						
	move.b d0,3(a1)				
						
	and.l #65535,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	clr.w d2				
	move.b 2(a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b 3(a0),d1				
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L175				
						
	tst.w d2				
	jbge _?L217				
						
	clr.b d2				
_?L175:						
						
	move.b d2,2(a0)				
						
	cmp.w #255,d1				
	jbls _?L176				
						
	tst.w d1				
	sge d1					
_?L176:						
						
	move.b d1,3(a0)				
						
	move.w 4(a2),d3				
						
	move.w d3,d1				
	and.w #255,d1				
						
	add.w #-179,d1				
						
	clr.w d2				
	move.b d3,d2				
	and.l #255,d3				
	move.l d3,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
						
	lsr.l #8,d0				
						
	add.w d1,d0				
						
	clr.w d1				
	move.b 4(a1),d1				
	add.w d0,d1				
	clr.w d3				
	move.b 5(a1),d3				
	add.w d3,d0				
						
	cmp.w #255,d1				
	jbls _?L179				
						
	tst.w d1				
	jbge _?L218				
						
	clr.b d1				
_?L179:						
						
	move.b d1,4(a1)				
						
	cmp.w #255,d0				
	jbls _?L180				
						
	tst.w d0				
	sge d0					
_?L180:						
						
	move.b d0,5(a1)				
						
	and.l #65535,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	clr.w d2				
	move.b 4(a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b 5(a0),d1				
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L183				
						
	tst.w d2				
	jbge _?L219				
						
	clr.b d2				
_?L183:						
						
	move.b d2,4(a0)				
						
	cmp.w #255,d1				
	jbls _?L184				
						
	tst.w d1				
	sge d1					
_?L184:						
						
	move.b d1,5(a0)				
						
	move.w 6(a2),d0				
						
	clr.w d2				
	move.b d0,d2				
	clr.l d3				
	move.b d0,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #2,d1				
	add.l d3,d1				
	lsl.l #3,d1				
	sub.l d3,d1				
						
	lsr.l #8,d1				
						
	and.w #255,d0				
						
	add.w #-179,d0				
	add.w d1,d0				
						
	clr.w d1				
	move.b 6(a1),d1				
	add.w d0,d1				
	clr.w d3				
	move.b 7(a1),d3				
	add.w d3,d0				
						
	cmp.w #255,d1				
	jbls _?L187				
						
	tst.w d1				
	jbge _?L220				
						
	clr.b d1				
_?L187:						
						
	move.b d1,6(a1)				
						
	cmp.w #255,d0				
	jbls _?L188				
						
	tst.w d0				
	sge d0					
_?L188:						
						
	move.b d0,7(a1)				
						
	and.l #65535,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	clr.w d2				
	move.b 6(a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b 7(a0),d1				
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L191				
						
	tst.w d2				
	jbge _?L221				
						
	clr.b d2				
_?L191:						
						
	move.b d2,6(a0)				
						
	cmp.w #255,d1				
	jbls _?L192				
						
	tst.w d1				
	sge d1					
_?L192:						
						
	move.b d1,7(a0)				
						
	addq.l #8,a1				
						
	addq.l #8,a0				
						
	lea (16,a2),a2				
						
	cmp.l a0,a3				
	jbne _?L194				
_?L222:						
						
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
_?L214:						
						
	st (a1)					
						
	cmp.w #255,d0				
	jbls _?L164				
						
	st d0					
	jbra _?L164				
_?L215:						
						
	st (a0)					
						
	cmp.w #255,d1				
	jbls _?L168				
						
	st d1					
	jbra _?L168				
_?L216:						
						
	st 2(a1)				
						
	cmp.w #255,d0				
	jbls _?L172				
						
	st d0					
	jbra _?L172				
_?L217:						
						
	st 2(a0)				
						
	cmp.w #255,d1				
	jbls _?L176				
						
	st d1					
	jbra _?L176				
_?L218:						
						
	st 4(a1)				
						
	cmp.w #255,d0				
	jbls _?L180				
						
	st d0					
	jbra _?L180				
_?L219:						
						
	st 4(a0)				
						
	cmp.w #255,d1				
	jbls _?L184				
						
	st d1					
	jbra _?L184				
_?L220:						
						
	st 6(a1)				
						
	cmp.w #255,d0				
	jbls _?L188				
						
	st d0					
	jbra _?L188				
_?L221:						
						
	st 6(a0)				
						
	cmp.w #255,d1				
	jbls _?L192				
						
	st d1					
						
	move.b d1,7(a0)				
						
	addq.l #8,a1				
						
	addq.l #8,a0				
						
	lea (16,a2),a2				
						
	cmp.l a0,a3				
	jbne _?L194				
	jbra _?L222				
						
	.align	2				
						
_upsampleCrV:					
	movem.l d3/a3/a4/a5/a6,-(sp)		
						
	clr.l d0				
	move.b 31(sp),d0			
						
	move.l d0,a4				
	add.l #_gMCUBufR,a4			
						
	move.l d0,a5				
	add.l #_gMCUBufG,a5			
						
	move.b 27(sp),d0			
	add.l d0,d0				
	move.l d0,a3				
	add.l #_gCoeffBuf+16,a3			
	lea (64,a4),a6				
_?L224:						
	lea (-16,a3),a2				
	lea (8,a5),a1				
						
	move.l a4,a0				
_?L233:						
						
	move.w (a2)+,d3				
						
	move.w d3,d1				
	and.w #255,d1				
						
	add.w #-179,d1				
						
	clr.w d2				
	move.b d3,d2				
	and.l #255,d3				
	move.l d3,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
						
	lsr.l #8,d0				
						
	add.w d0,d1				
						
	clr.w d0				
	move.b (a0)+,d0				
	add.w d1,d0				
	clr.w d3				
	move.b 7(a0),d3				
	add.w d3,d1				
						
	cmp.w #255,d0				
	jbls _?L226				
						
	tst.w d0				
	jbge _?L242				
						
	clr.b d0				
_?L226:						
						
	move.b d0,-1(a0)			
						
	cmp.w #255,d1				
	jbls _?L227				
						
	tst.w d1				
	sge d1					
_?L227:						
						
	move.b d1,7(a0)				
						
	and.l #65535,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	clr.w d2				
	move.b -8(a1),d2			
	sub.w d0,d2				
	clr.w d1				
	move.b (a1),d1				
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L230				
						
	tst.w d2				
	jbge _?L243				
						
	clr.b d2				
_?L230:						
						
	move.b d2,-8(a1)			
						
	cmp.w #255,d1				
	jbls _?L231				
						
	tst.w d1				
	sge d1					
_?L231:						
						
	move.b d1,(a1)+				
						
	cmp.l a2,a3				
	jbne _?L233				
_?L244:						
						
	lea (16,a4),a4				
						
	lea (16,a5),a5				
						
	lea (16,a2),a3				
	cmp.l a4,a6				
	jbne _?L224				
						
	movem.l (sp)+,d3/a3/a4/a5/a6		
	rts					
_?L242:						
						
	st -1(a0)				
						
	cmp.w #255,d1				
	jbls _?L227				
						
	st d1					
	jbra _?L227				
_?L243:						
						
	st -8(a1)				
						
	cmp.w #255,d1				
	jbls _?L231				
						
	st d1					
						
	move.b d1,(a1)+				
						
	cmp.l a2,a3				
	jbne _?L233				
	jbra _?L244				
						
	.align	2				
						
_getBits:					
	movem.l d3/d4/d5/d6/d7/a3,-(sp)		
	move.l 28(sp),d3			
	move.b 35(sp),d5			
						
	move.w _gBitBuf,d4			
						
	move.b _gBitsLeft,d0			
						
	cmp.b #8,d3				
	jbhi _?L308				
	move.w d4,d1				
	move.b d3,d6				
						
	and.l #65535,d1				
						
	clr.l d7				
	move.b d6,d7				
						
	cmp.b d6,d0				
	jbcs _?L309				
_?L260:						
						
	sub.b d6,d0				
	move.b d0,_gBitsLeft			
						
	lsl.l d7,d1				
	move.w d1,_gBitBuf			
						
	clr.l d0				
	move.w d4,d0				
						
	and.l #255,d3				
	moveq #16,d1				
	sub.l d3,d1				
						
	asr.l d1,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3		
	rts					
_?L308:						
						
	move.b d3,d6				
	subq.b #8,d6				
						
	clr.l d1				
	move.w d4,d1				
	and.l #255,d0				
	lsl.l d0,d1				
	move.w d1,_gBitBuf			
						
	move.b _gInBufLeft,d1			
						
	jbne _?L247				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L248				
						
	move.b d0,_gCallbackStatus		
_?L248:						
						
	move.b _gInBufLeft,d1			
						
	jbne _?L247				
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
	move.w #217,d2				
						
	tst.b d0				
	jbeq _?L249				
						
	tst.b d5				
	jbeq _?L251				
	lea _gInBuf,a3				
_?L250:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L253				
						
	move.b d0,_gCallbackStatus		
_?L253:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L257				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d7			
						
	jbne _?L258				
_?L251:						
						
	move.w #255,d2				
_?L249:						
						
	move.b _gBitsLeft,d0			
						
	or.w _gBitBuf,d2			
						
	and.l #65535,d2				
						
	clr.l d7				
	move.b d0,d7				
	moveq #8,d1				
	sub.l d7,d1				
						
	lsl.l d1,d2				
	move.w d2,d1				
						
	lsr.w #8,d2				
	move.b d2,d4				
_?L310:						
						
	and.l #65535,d1				
						
	clr.l d7				
	move.b d6,d7				
						
	cmp.b d6,d0				
	jbcc _?L260				
_?L309:						
						
	and.l #255,d0				
	lsl.l d0,d1				
	move.w d1,_gBitBuf			
						
	move.b _gInBufLeft,d1			
						
	jbne _?L261				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L262				
						
	move.b d0,_gCallbackStatus		
_?L262:						
						
	move.b _gInBufLeft,d1			
						
	jbne _?L261				
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
	move.w #217,d0				
						
	tst.b d1				
	jbeq _?L263				
						
	tst.b d5				
	jbeq _?L265				
	lea _gInBuf,a3				
_?L264:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L267				
						
	move.b d0,_gCallbackStatus		
_?L267:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L271				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d5			
						
	jbne _?L272				
_?L265:						
						
	move.w #255,d0				
_?L263:						
						
	or.w _gBitBuf,d0			
						
	and.l #65535,d0				
						
	clr.l d1				
	move.b _gBitsLeft,d1			
	sub.l d1,d7				
						
	lsl.l d7,d0				
	move.w d0,_gBitBuf			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
	sub.b d6,d0				
	move.b d0,_gBitsLeft			
_?L311:						
						
	clr.l d0				
	move.w d4,d0				
						
	and.l #255,d3				
	moveq #16,d1				
	sub.l d3,d1				
						
	asr.l d1,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3		
	rts					
_?L247:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	lea _gInBuf,a3				
						
	and.l #255,d0				
						
	move.b (a3,d0.l),d0			
						
	tst.b d5				
	jbeq _?L302				
						
	cmp.b #-1,d0				
	jbeq _?L255				
_?L302:						
						
	clr.w d2				
	move.b d0,d2				
						
	move.b _gBitsLeft,d0			
						
	or.w _gBitBuf,d2			
						
	and.l #65535,d2				
						
	clr.l d7				
	move.b d0,d7				
	moveq #8,d1				
	sub.l d7,d1				
						
	lsl.l d1,d2				
	move.w d2,d1				
						
	lsr.w #8,d2				
	move.b d2,d4				
	jbra _?L310				
_?L261:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	lea _gInBuf,a3				
						
	and.l #255,d0				
						
	move.b (a3,d0.l),d0			
						
	tst.b d5				
	jbeq _?L303				
						
	cmp.b #-1,d0				
	jbeq _?L269				
_?L303:						
						
	and.w #255,d0				
						
	or.w _gBitBuf,d0			
						
	and.l #65535,d0				
						
	clr.l d1				
	move.b _gBitsLeft,d1			
	sub.l d1,d7				
						
	lsl.l d7,d0				
	move.w d0,_gBitBuf			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
	sub.b d6,d0				
	move.b d0,_gBitsLeft			
	jbra _?L311				
_?L269:						
						
	tst.b d1				
	jbeq _?L264				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d5			
						
	jbeq _?L265				
	jbra _?L272				
_?L255:						
						
	tst.b d1				
	jbeq _?L250				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d7			
						
	jbeq _?L251				
	jbra _?L258				
_?L271:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L279				
	clr.b d0				
	st d5					
_?L272:						
						
	move.b d5,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L312:						
						
	move.w #255,d0				
	jbra _?L263				
_?L257:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L277				
	clr.b d0				
	st d7					
_?L258:						
						
	move.b d7,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L313:						
						
	move.w #255,d2				
	jbra _?L249				
_?L279:						
	moveq #-39,d5				
						
	move.b d5,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L312				
_?L277:						
						
	moveq #-39,d7				
						
	move.b d7,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L313				
						
	.align	2				
						
_getBits?constprop?1:				
	movem.l d3/d4/d5,-(sp)			
						
	move.w _gBitBuf,d3			
						
	move.b _gBitsLeft,d2			
	clr.l d4				
	move.b d2,d4				
	clr.l d0				
	move.w d3,d0				
	lsl.l d4,d0				
	move.w d0,d5				
	move.w d0,_gBitBuf			
						
	move.b _gInBufLeft,d0			
						
	jbne _?L315				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L316				
						
	move.b d0,_gCallbackStatus		
_?L316:						
						
	move.b _gInBufLeft,d0			
						
	jbeq _?L317				
						
	move.w _gBitBuf,d5			
						
	move.b _gBitsLeft,d2			
	clr.l d4				
	move.b d2,d4				
_?L315:						
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d0				
						
	clr.w d1				
	move.b _gInBuf(d0.l),d1			
_?L318:						
						
	moveq #8,d0				
	sub.l d4,d0				
						
	or.w d5,d1				
						
	and.l #65535,d1				
	lsl.l d0,d1				
	and.w #-256,d3				
						
	move.w d1,d5				
	lsr.w #8,d5				
	or.w d5,d3				
						
	cmp.b #7,d2				
	jbls _?L337				
						
	subq.b #8,d2				
	move.b d2,_gBitsLeft			
						
	lsl.w #8,d1				
						
	move.w d1,_gBitBuf			
						
	move.w d3,d0				
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L337:						
						
	and.l #65535,d1				
	lsl.l d4,d1				
	move.w d1,d2				
	move.w d1,_gBitBuf			
						
	move.b _gInBufLeft,d1			
						
	jbne _?L320				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L321				
						
	move.b d0,_gCallbackStatus		
_?L321:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L322				
						
	move.w _gBitBuf,d2			
						
	clr.l d4				
	move.b _gBitsLeft,d4			
	moveq #8,d0				
	sub.l d4,d0				
_?L320:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d1			
	move.b d1,d4				
	addq.b #1,d4				
	move.b d4,_gInBufOfs			
	and.l #255,d1				
						
	move.b _gInBuf(d1.l),d1			
	and.w #255,d1				
_?L323:						
						
	or.w d2,d1				
						
	and.l #65535,d1				
	lsl.l d0,d1				
_?L338:						
	move.w d1,_gBitBuf			
						
	move.w d3,d0				
	movem.l (sp)+,d3/d4/d5			
	rts					
_?L317:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.w _gBitBuf,d5			
						
	move.b _gBitsLeft,d2			
	clr.l d4				
	move.b d2,d4				
	move.w #217,d1				
						
	tst.b d0				
	jbeq _?L318				
	move.w #255,d1				
	jbra _?L318				
_?L322:						
						
	move.b _gTemFlag,d4			
	not.b d4				
	move.b d4,_gTemFlag			
						
	move.w _gBitBuf,d2			
						
	clr.l d1				
	move.b _gBitsLeft,d1			
	moveq #8,d0				
	sub.l d1,d0				
	move.w #217,d1				
						
	tst.b d4				
	jbeq _?L323				
	move.w #255,d1				
						
	or.w d2,d1				
						
	and.l #65535,d1				
	lsl.l d0,d1				
	jbra _?L338				
						
	.align	2				
						
_getBits?constprop?2:				
	movem.l d3/d4/d5/d6/d7/a3,-(sp)		
	move.l 28(sp),d3			
						
	move.w _gBitBuf,d4			
						
	move.b _gBitsLeft,d0			
						
	cmp.b #8,d3				
	jbhi _?L394				
	move.w d4,d1				
	move.b d3,d5				
						
	and.l #65535,d1				
						
	clr.l d6				
	move.b d5,d6				
						
	cmp.b d5,d0				
	jbcs _?L395				
_?L352:						
						
	sub.b d5,d0				
	move.b d0,_gBitsLeft			
						
	lsl.l d6,d1				
	move.w d1,_gBitBuf			
						
	clr.l d0				
	move.w d4,d0				
						
	and.l #255,d3				
	moveq #16,d1				
	sub.l d3,d1				
						
	asr.l d1,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3		
	rts					
_?L394:						
						
	move.b d3,d5				
	subq.b #8,d5				
						
	clr.l d1				
	move.w d4,d1				
	and.l #255,d0				
	lsl.l d0,d1				
	move.w d1,_gBitBuf			
						
	move.b _gInBufLeft,d1			
						
	jbne _?L341				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L342				
						
	move.b d0,_gCallbackStatus		
_?L342:						
						
	move.b _gInBufLeft,d1			
						
	jbne _?L341				
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
	move.w #217,d2				
						
	tst.b d0				
	jbeq _?L343				
	lea _gInBuf,a3				
_?L347:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L345				
						
	move.b d0,_gCallbackStatus		
_?L345:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L349				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d6			
						
	jbne _?L350				
_?L351:						
						
	move.w #255,d2				
_?L343:						
						
	move.b _gBitsLeft,d0			
						
	or.w _gBitBuf,d2			
						
	and.l #65535,d2				
						
	clr.l d6				
	move.b d0,d6				
	moveq #8,d1				
	sub.l d6,d1				
						
	lsl.l d1,d2				
	move.w d2,d1				
						
	lsr.w #8,d2				
	move.b d2,d4				
_?L396:						
						
	and.l #65535,d1				
						
	clr.l d6				
	move.b d5,d6				
						
	cmp.b d5,d0				
	jbcc _?L352				
_?L395:						
						
	and.l #255,d0				
	lsl.l d0,d1				
	move.w d1,_gBitBuf			
						
	move.b _gInBufLeft,d1			
						
	jbne _?L353				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L354				
						
	move.b d0,_gCallbackStatus		
_?L354:						
						
	move.b _gInBufLeft,d1			
						
	jbne _?L353				
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
	move.w #217,d0				
						
	tst.b d1				
	jbeq _?L355				
	lea _gInBuf,a3				
_?L359:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L357				
						
	move.b d0,_gCallbackStatus		
_?L357:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L361				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d7			
						
	jbne _?L362				
_?L363:						
						
	move.w #255,d0				
_?L355:						
						
	or.w _gBitBuf,d0			
						
	and.l #65535,d0				
						
	clr.l d1				
	move.b _gBitsLeft,d1			
	sub.l d1,d6				
						
	lsl.l d6,d0				
	move.w d0,_gBitBuf			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
	sub.b d5,d0				
	move.b d0,_gBitsLeft			
_?L397:						
						
	clr.l d0				
	move.w d4,d0				
						
	and.l #255,d3				
	moveq #16,d1				
	sub.l d3,d1				
						
	asr.l d1,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3		
	rts					
_?L341:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	lea _gInBuf,a3				
						
	and.l #255,d0				
						
	move.b (a3,d0.l),d0			
						
	cmp.b #-1,d0				
	jbeq _?L346				
						
	clr.w d2				
	move.b d0,d2				
						
	move.b _gBitsLeft,d0			
						
	or.w _gBitBuf,d2			
						
	and.l #65535,d2				
						
	clr.l d6				
	move.b d0,d6				
	moveq #8,d1				
	sub.l d6,d1				
						
	lsl.l d1,d2				
	move.w d2,d1				
						
	lsr.w #8,d2				
	move.b d2,d4				
	jbra _?L396				
_?L353:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	lea _gInBuf,a3				
						
	and.l #255,d0				
						
	move.b (a3,d0.l),d0			
						
	cmp.b #-1,d0				
	jbeq _?L358				
						
	and.w #255,d0				
						
	or.w _gBitBuf,d0			
						
	and.l #65535,d0				
						
	clr.l d1				
	move.b _gBitsLeft,d1			
	sub.l d1,d6				
						
	lsl.l d6,d0				
	move.w d0,_gBitBuf			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
	sub.b d5,d0				
	move.b d0,_gBitsLeft			
	jbra _?L397				
_?L349:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L367				
	clr.b d0				
	st d6					
_?L350:						
						
	move.b d6,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L399:						
						
	move.w #255,d2				
	jbra _?L343				
_?L361:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L369				
	clr.b d0				
	st d7					
_?L362:						
						
	move.b d7,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L398:						
						
	move.w #255,d0				
	jbra _?L355				
_?L358:						
						
	tst.b d1				
	jbeq _?L359				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d7			
						
	jbeq _?L363				
	jbra _?L362				
_?L346:						
						
	tst.b d1				
	jbeq _?L347				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d6			
						
	jbeq _?L351				
	jbra _?L350				
_?L369:						
						
	moveq #-39,d7				
						
	move.b d7,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L398				
_?L367:						
						
	moveq #-39,d6				
						
	move.b d6,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L399				
						
	.align	2				
						
_getBits?constprop?0:				
	movem.l d3/d4/a3,-(sp)			
	move.b 19(sp),d4			
						
	move.b _gBitsLeft,d0			
						
	clr.l d3				
	move.w _gBitBuf,d3			
						
	cmp.b #7,d0				
	jbls _?L433				
						
	subq.b #8,d0				
	move.b d0,_gBitsLeft			
						
	move.w d3,d0				
	lsl.w #8,d0				
						
	move.w d0,_gBitBuf			
						
	bfextu d3{#8:#16},d0			
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L433:						
						
	and.l #255,d0				
	move.l d3,d1				
	lsl.l d0,d1				
	move.w d1,_gBitBuf			
						
	move.b _gInBufLeft,d1			
						
	jbne _?L402				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L403				
						
	move.b d0,_gCallbackStatus		
_?L403:						
						
	move.b _gInBufLeft,d1			
						
	jbne _?L402				
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
	move.w #217,d0				
						
	tst.b d1				
	jbeq _?L404				
						
	tst.b d4				
	jbeq _?L406				
	lea _gInBuf,a3				
_?L405:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L408				
						
	move.b d0,_gCallbackStatus		
_?L408:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L412				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d4			
						
	jbne _?L413				
_?L406:						
						
	move.w #255,d0				
_?L404:						
						
	or.w _gBitBuf,d0			
						
	and.l #65535,d0				
						
	clr.l d2				
	move.b _gBitsLeft,d2			
	moveq #8,d1				
	sub.l d2,d1				
						
	lsl.l d1,d0				
_?L434:						
	move.w d0,_gBitBuf			
						
	bfextu d3{#8:#16},d0			
	movem.l (sp)+,d3/d4/a3			
	rts					
_?L402:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	lea _gInBuf,a3				
						
	and.l #255,d0				
						
	move.b (a3,d0.l),d0			
						
	tst.b d4				
	jbeq _?L429				
						
	cmp.b #-1,d0				
	jbeq _?L410				
_?L429:						
						
	and.w #255,d0				
						
	or.w _gBitBuf,d0			
						
	and.l #65535,d0				
						
	clr.l d2				
	move.b _gBitsLeft,d2			
	moveq #8,d1				
	sub.l d2,d1				
						
	lsl.l d1,d0				
	jbra _?L434				
_?L410:						
						
	tst.b d1				
	jbeq _?L405				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a3,d2.l),d4			
						
	jbeq _?L406				
	jbra _?L413				
_?L412:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L417				
	clr.b d0				
	st d4					
_?L413:						
						
	move.b d4,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L435:						
						
	move.w #255,d0				
	jbra _?L404				
_?L417:						
	moveq #-39,d4				
						
	move.b d4,(a3,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L435				
						
	.align	2				
						
_processMarkers:				
	lea (-24,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	lea (_getBits?constprop?0),a3		
						
	lea _gInBuf,a5				
	move.w #255,d6				
_?L438:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	cmp.b #-1,d0				
	jbne _?L438				
_?L558:						
						
	move.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d1			
_?L445:						
						
	clr.l d3				
	move.w d0,d3				
						
	cmp.b #7,d1				
	jbls _?L555				
						
	subq.b #8,d1				
						
	move.b d1,_gBitsLeft			
						
	move.w d3,d0				
	lsl.w #8,d0				
						
	move.w d0,_gBitBuf			
						
	asr.l #8,d3				
						
	cmp.l #255,d3				
	jbeq _?L445				
_?L559:						
						
	tst.l d3				
	jbeq _?L438				
						
	move.b d3,d0				
						
	cmp.b #-41,d3				
	jbhi _?L447				
	cmp.b #-60,d3				
	jbhi _?L448				
	jbne _?L556				
						
	jbsr (_getBits?constprop?1)		
						
	cmp.w #1,d0				
	jbls _?L438				
						
	move.w d0,d7				
	subq.w #2,d7				
						
	cmp.w #2,d0				
	jbeq _?L438				
_?L480:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.b d0,d4				
	and.b #14,d4				
						
	jbne _?L438				
						
	move.b d0,d1				
	and.b #-16,d1				
	cmp.b #16,d1				
	jbhi _?L438				
						
	move.b d0,d1				
	lsr.b #3,d1				
						
	and.b #2,d1				
						
	and.b #1,d0				
						
	or.b d0,d1				
	move.b d1,43(sp)			
	clr.l d0				
	move.b d1,d0				
	move.l _CSWTCH?316(d0.l*4),a4		
	move.l _CSWTCH?318(d0.l*4),d5		
						
	moveq #1,d1				
	lsl.l d0,d1				
						
	or.b d1,_gValidHuffTables		
	lea (44,sp),a6				
	lea (60,sp),a0				
	move.l a0,38(sp)			
						
	clr.w d3				
_?L458:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b d0,(a6)+				
						
	and.w #255,d0				
	add.w d0,d3				
						
	cmp.l 38(sp),a6				
	jbne _?L458				
						
	move.w #255,d0				
	cmp.b #1,43(sp)				
	jbls _?L557				
_?L459:						
						
	cmp.w d3,d0				
	jbcs _?L438				
						
	tst.w d3				
	jbeq _?L462				
_?L460:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	clr.l d1				
	move.b d4,d1				
						
	move.l d5,a0				
	move.b d0,(a0,d1.l)			
						
	addq.b #1,d4				
						
	clr.w d0				
	move.b d4,d0				
	cmp.w d3,d0				
	jbcs _?L460				
_?L462:						
						
	add.w #17,d3				
						
	cmp.w d7,d3				
	jbhi _?L438				
						
	sub.w d3,d7				
						
	move.b 44(sp),d1			
						
	jbeq _?L502				
						
	clr.w d0				
	move.b d1,d0				
						
	move.w d0,a0				
	subq.w #1,a0				
						
	lsl.w #1,d0				
_?L463:						
						
	clr.w (a4)				
						
	move.w a0,32(a4)			
						
	clr.b 64(a4)				
						
	move.b 45(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L503				
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d2,d4				
	add.b d1,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
_?L464:						
						
	move.w d3,2(a4)				
						
	move.w a1,34(a4)			
						
	move.b d2,65(a4)			
						
	lsl.w #1,d0				
						
	move.b 46(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L504				
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d2,d4				
	add.b d1,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
_?L465:						
						
	move.w d3,4(a4)				
						
	move.w a1,36(a4)			
						
	move.b d2,66(a4)			
						
	lsl.w #1,d0				
						
	move.b 47(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L505				
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d2,d4				
	add.b d1,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,6(a4)				
						
	move.w a1,38(a4)			
						
	move.b d2,67(a4)			
						
	lsl.w #1,d0				
						
	move.b 48(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L506				
_?L563:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d2,d4				
	add.b d1,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,8(a4)				
						
	move.w a1,40(a4)			
						
	move.b d2,68(a4)			
						
	lsl.w #1,d0				
						
	move.b 49(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L507				
_?L564:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,10(a4)			
						
	move.w a1,42(a4)			
						
	move.b d2,69(a4)			
						
	lsl.w #1,d0				
						
	move.b 50(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L508				
_?L565:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,12(a4)			
						
	move.w a1,44(a4)			
						
	move.b d2,70(a4)			
						
	lsl.w #1,d0				
						
	move.b 51(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L509				
_?L566:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,14(a4)			
						
	move.w a1,46(a4)			
						
	move.b d2,71(a4)			
						
	lsl.w #1,d0				
						
	move.b 52(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L510				
_?L567:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,16(a4)			
						
	move.w a1,48(a4)			
						
	move.b d2,72(a4)			
						
	lsl.w #1,d0				
						
	move.b 53(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L511				
_?L568:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,18(a4)			
						
	move.w a1,50(a4)			
						
	move.b d2,73(a4)			
						
	lsl.w #1,d0				
						
	move.b 54(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L512				
_?L569:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,20(a4)			
						
	move.w a1,52(a4)			
						
	move.b d2,74(a4)			
						
	lsl.w #1,d0				
						
	move.b 55(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L513				
_?L570:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
_?L474:						
						
	move.w d3,22(a4)			
						
	move.w a1,54(a4)			
						
	move.b d2,75(a4)			
						
	lsl.w #1,d0				
						
	move.b 56(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L514				
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
_?L475:						
						
	move.w d3,24(a4)			
						
	move.w a1,56(a4)			
						
	move.b d2,76(a4)			
						
	lsl.w #1,d0				
						
	move.b 57(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L515				
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
						
	move.w d3,26(a4)			
						
	move.w a1,58(a4)			
						
	move.b d2,77(a4)			
						
	lsl.w #1,d0				
						
	move.b 58(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbeq _?L516				
_?L562:						
						
	move.b d2,d3				
	move.w d3,a0				
	add.w d0,a0				
						
	move.w a0,a1				
	subq.w #1,a1				
						
	move.b d1,d4				
	add.b d2,d4				
	move.w d0,d3				
	move.b d1,d2				
						
	move.w a0,d0				
						
	move.b d4,d1				
_?L477:						
						
	move.w d3,28(a4)			
						
	move.w a1,60(a4)			
						
	move.b d2,78(a4)			
						
	move.b 59(sp),d2			
						
	jbeq _?L478				
						
	lsl.w #1,d0				
						
	move.w d0,30(a4)			
						
	and.w #255,d2				
						
	move.w d2,a0				
	subq.w #1,a0				
	add.w d0,a0				
	move.w a0,62(a4)			
						
	move.b d1,79(a4)			
						
	tst.w d7				
	jbne _?L480				
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	cmp.b #-1,d0				
	jbne _?L438				
	jbra _?L558				
_?L555:						
						
	clr.l d2				
	move.b d1,d2				
	move.l d3,d0				
	lsl.l d2,d0				
	move.w d0,d4				
	move.w d0,_gBitBuf			
						
	move.b _gInBufLeft,d0			
						
	jbne _?L440				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L441				
						
	move.b d0,_gCallbackStatus		
_?L441:						
						
	move.b _gInBufLeft,d0			
						
	jbeq _?L442				
						
	move.w _gBitBuf,d4			
						
	move.b _gBitsLeft,d1			
	clr.l d2				
	move.b d1,d2				
_?L440:						
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d5				
	addq.b #1,d5				
	move.b d5,_gInBufOfs			
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	and.w #255,d0				
_?L443:						
						
	or.w d4,d0				
						
	and.l #65535,d0				
						
	moveq #8,d4				
	sub.l d2,d4				
						
	lsl.l d4,d0				
_?L560:						
	move.w d0,_gBitBuf			
						
	asr.l #8,d3				
						
	cmp.l #255,d3				
	jbeq _?L445				
	jbra _?L559				
_?L442:						
						
	move.b _gTemFlag,d5			
	not.b d5				
	move.b d5,_gTemFlag			
						
	move.w _gBitBuf,d4			
						
	move.b _gBitsLeft,d1			
	clr.l d2				
	move.b d1,d2				
	move.w d6,d0				
						
	tst.b d5				
	jbne _?L443				
	move.w #217,d0				
						
	or.w d4,d0				
						
	and.l #65535,d0				
						
	moveq #8,d4				
	sub.l d2,d4				
						
	lsl.l d4,d0				
	jbra _?L560				
_?L556:						
						
	cmp.b #1,d3				
	jbeq _?L499				
	add.b #64,d0				
	cmp.b #3,d0				
	jbls _?L452				
_?L451:						
						
	jbsr (_getBits?constprop?1)		
						
	cmp.w #1,d0				
	jbls _?L438				
						
	move.w d0,d3				
	subq.w #2,d3				
						
	cmp.w #2,d0				
	jbeq _?L438				
_?L495:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	subq.w #1,d3				
						
	jbeq _?L438				
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	subq.w #1,d3				
						
	jbne _?L495				
	jbra _?L438				
_?L448:						
						
	move.b d3,d2				
	add.b #59,d2				
	and.l #255,d2				
	moveq #1,d1				
	lsl.l d2,d1				
	move.l d1,d2				
	and.l #522248,d2			
	jbne _?L499				
	and.l #1911,d1				
	jbeq _?L561				
_?L452:						
						
	move.l 64(sp),a0			
	move.b d3,(a0)				
						
	clr.b d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L499:						
						
	moveq #18,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
_?L447:						
						
	cmp.b #-37,d3				
	jbeq _?L453				
	jbls _?L452				
	cmp.b #-35,d3				
	jbne _?L451				
						
	lea (_getBits?constprop?1),a4		
	jbsr (a4)				
						
	cmp.w #4,d0				
	jbne _?L438				
						
	jbsr (a4)				
						
	move.w d0,_gRestartInterval		
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	cmp.b #-1,d0				
	jbne _?L438				
	jbra _?L558				
_?L557:						
						
	moveq #12,d0				
	jbra _?L459				
_?L478:						
						
	clr.w 30(a4)				
						
	move.w #-1,62(a4)			
						
	clr.b 79(a4)				
						
	tst.w d7				
	jbne _?L480				
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	cmp.b #-1,d0				
	jbne _?L438				
	jbra _?L558				
_?L515:						
						
	move.w #-1,a1				
						
	move.w d3,26(a4)			
						
	move.w a1,58(a4)			
						
	move.b d2,77(a4)			
						
	lsl.w #1,d0				
						
	move.b 58(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L562				
_?L516:						
	move.w #-1,a1				
	jbra _?L477				
_?L514:						
	move.w #-1,a1				
	jbra _?L475				
_?L505:						
	move.w #-1,a1				
						
	move.w d3,6(a4)				
						
	move.w a1,38(a4)			
						
	move.b d2,67(a4)			
						
	lsl.w #1,d0				
						
	move.b 48(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L563				
_?L506:						
	move.w #-1,a1				
						
	move.w d3,8(a4)				
						
	move.w a1,40(a4)			
						
	move.b d2,68(a4)			
						
	lsl.w #1,d0				
						
	move.b 49(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L564				
_?L507:						
	move.w #-1,a1				
						
	move.w d3,10(a4)			
						
	move.w a1,42(a4)			
						
	move.b d2,69(a4)			
						
	lsl.w #1,d0				
						
	move.b 50(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L565				
_?L508:						
	move.w #-1,a1				
						
	move.w d3,12(a4)			
						
	move.w a1,44(a4)			
						
	move.b d2,70(a4)			
						
	lsl.w #1,d0				
						
	move.b 51(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L566				
_?L509:						
	move.w #-1,a1				
						
	move.w d3,14(a4)			
						
	move.w a1,46(a4)			
						
	move.b d2,71(a4)			
						
	lsl.w #1,d0				
						
	move.b 52(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L567				
_?L510:						
	move.w #-1,a1				
						
	move.w d3,16(a4)			
						
	move.w a1,48(a4)			
						
	move.b d2,72(a4)			
						
	lsl.w #1,d0				
						
	move.b 53(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L568				
_?L511:						
	move.w #-1,a1				
						
	move.w d3,18(a4)			
						
	move.w a1,50(a4)			
						
	move.b d2,73(a4)			
						
	lsl.w #1,d0				
						
	move.b 54(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L569				
_?L512:						
	move.w #-1,a1				
						
	move.w d3,20(a4)			
						
	move.w a1,52(a4)			
						
	move.b d2,74(a4)			
						
	lsl.w #1,d0				
						
	move.b 55(sp),d2			
						
	clr.w d3				
	tst.b d2				
	jbne _?L570				
_?L513:						
	move.w #-1,a1				
	jbra _?L474				
_?L504:						
	move.w #-1,a1				
	jbra _?L465				
_?L503:						
	move.w #-1,a1				
	jbra _?L464				
_?L502:						
	move.w #-1,a0				
	clr.w d0				
	jbra _?L463				
_?L453:						
						
	jbsr (_getBits?constprop?1)		
						
	cmp.w #1,d0				
	jbls _?L438				
						
	move.w d0,d5				
	subq.w #2,d5				
						
	cmp.w #2,d0				
	jbeq _?L438				
	move.l #_gWinogradQuant+64,d3		
						
	move.w #129,a4				
_?L494:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b d0,d7				
	lsr.b #4,d7				
						
	move.b d0,d1				
	and.b #15,d1				
						
	and.b #14,d0				
	jbne _?L438				
						
	tst.b d1				
	jbeq _?L482				
	or.b #2,_gValidQuantTables		
	lea _gQuant1,a6				
	tst.b d7				
	jbne _?L571				
_?L488:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.w d0,(a6)+				
						
	cmp.l #_gQuant1+128,a6			
	jbne _?L488				
_?L489:						
						
	lea _gQuant1,a0				
	lea _gWinogradQuant,a1			
_?L492:						
						
	clr.w d0				
	move.b (a1)+,d0				
	muls.w (a0),d0				
						
	addq.l #4,d0				
						
	asr.l #3,d0				
						
	move.w d0,(a0)+				
						
	cmp.l d3,a1				
	jbne _?L492				
						
	move.w a4,d0				
						
	tst.b d7				
	jbne _?L493				
						
	moveq #65,d0				
_?L493:						
						
	cmp.w d5,d0				
	jbhi _?L438				
						
	sub.w d0,d5				
						
	jbne _?L494				
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	cmp.b #-1,d0				
	jbne _?L438				
	jbra _?L558				
_?L571:						
	lea _gQuant1,a6				
_?L491:						
						
	clr.l -(sp)				
	jbsr (a3)				
	move.w d0,d4				
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	lsl.w #8,d4				
						
	add.w d0,d4				
	move.w d4,(a6)+				
						
	cmp.l #_gQuant1+128,a6			
	jbeq _?L489				
						
	clr.l -(sp)				
	jbsr (a3)				
	move.w d0,d4				
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	lsl.w #8,d4				
						
	add.w d0,d4				
	move.w d4,(a6)+				
						
	cmp.l #_gQuant1+128,a6			
	jbne _?L491				
	jbra _?L489				
_?L482:						
						
	or.b #1,_gValidQuantTables		
	lea _gQuant0,a6				
	tst.b d7				
	jbne _?L490				
_?L486:						
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.w d0,(a6)+				
						
	cmp.l #_gQuant0+128,a6			
	jbne _?L486				
_?L487:						
						
	lea _gQuant0,a0				
	lea _gWinogradQuant,a1			
	jbra _?L492				
_?L490:						
						
	clr.l -(sp)				
	jbsr (a3)				
	move.w d0,d4				
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	lsl.w #8,d4				
						
	add.w d0,d4				
	move.w d4,(a6)+				
						
	cmp.l #_gQuant0+128,a6			
	jbeq _?L487				
						
	clr.l -(sp)				
	jbsr (a3)				
	move.w d0,d4				
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	lsl.w #8,d4				
						
	add.w d0,d4				
	move.w d4,(a6)+				
						
	cmp.l #_gQuant0+128,a6			
	jbne _?L490				
	jbra _?L487				
_?L561:						
						
	cmp.b #-52,d3				
	jbne _?L451				
						
	moveq #17,d0				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (24,sp),sp				
	rts					
						
	.align	2				
	.globl	_pjpeg_decode_mcu		
						
_pjpeg_decode_mcu:				
	lea (-20,sp),sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
						
	move.b _gCallbackStatus,51(sp)		
						
	jbne _?L572				
						
	move.w _gNumMCUSRemainingX,d0		
	or.w _gNumMCUSRemainingY,d0		
	tst.w d0				
	jbeq _?L880				
						
	tst.w _gRestartInterval			
	jbeq _?L574				
						
	move.w _gRestartsLeft,d0		
						
	jbeq _?L1112				
						
	subq.w #1,d0				
	move.w d0,_gRestartsLeft		
						
	tst.b _gMaxBlocksPerMCU			
	jbeq _?L589				
_?L879:						
						
	clr.b 50(sp)				
						
	lea _gInBuf,a6				
_?L873:						
						
	clr.l d5				
	move.b 50(sp),d5			
	move.l d5,52(sp)			
						
	lea _gMCUOrg,a0				
	clr.l d6				
	move.b (a0,d5.l),d6			
						
	move.b _gCompDCTab(d6.l),d0		
						
	tst.b _gCompQuant(d6.l)			
	jbeq _?L882				
	move.l #_gQuant1,46(sp)			
						
	tst.b d0				
	jbeq _?L883				
_?L1132:					
	lea _gHuffVal1,a4			
	lea _gHuffTab1,a3			
						
	move.w _gBitBuf,d2			
						
	move.w d2,d3				
	moveq #15,d0				
	lsr.w d0,d3				
						
	move.b _gBitsLeft,d0			
						
	jbeq _?L1113				
_?L592:						
						
	subq.b #1,d0				
	move.b d0,_gBitsLeft			
						
	lsl.w #1,d2				
	move.w d2,_gBitBuf			
						
	and.w #255,d3				
	lea (32,a3),a5				
	clr.l d4				
	move.l d6,42(sp)			
_?L619:						
						
	move.w (a5)+,d1				
						
	cmp.w d1,d3				
	jbhi _?L604				
						
	cmp.w #-1,d1				
	jbne _?L605				
_?L604:						
						
	lsl.w #1,d3				
						
	move.w d2,d5				
	moveq #15,d1				
	lsr.w d1,d5				
						
	tst.b d0				
	jbeq _?L1114				
						
	subq.b #1,d0				
	move.b d0,_gBitsLeft			
						
	lsl.w #1,d2				
	move.w d2,_gBitBuf			
						
	or.w d5,d3				
						
	addq.l #1,d4				
	moveq #16,d1				
	cmp.l d4,d1				
	jbne _?L619				
_?L1118:					
	move.l 42(sp),d6			
						
	clr.w d1				
_?L618:						
						
	add.w _gLastDC(d6.l*2),d1		
						
	move.w d1,_gLastDC(d6.l*2)		
						
	move.l 46(sp),a0			
	muls.w (a0),d1				
	lea _gCoeffBuf,a0			
	move.w d1,(a0)				
						
	move.b _gCompACTab(d6.l),d1		
						
	tst.b _gReduce				
	jbeq _?L621				
_?L1120:					
	tst.b d1				
	jbeq _?L622				
	lea _gHuffTab3,a4			
	move.l #_gHuffVal3,d5			
						
	moveq #1,d4				
	lea (32,a4),a1				
	move.l a1,42(sp)			
						
	move.w d2,d1				
	move.b d0,d2				
	move.l d5,46(sp)			
	move.w d1,d0				
_?L659:						
						
	move.w d0,d5				
	moveq #15,d1				
	lsr.w d1,d5				
						
	tst.b d2				
	jbeq _?L1115				
_?L626:						
						
	subq.b #1,d2				
	move.b d2,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	clr.w d1				
	move.b d5,d1				
	move.l 42(sp),a3			
	sub.l a5,a5				
_?L653:						
						
	move.w (a3)+,d3				
						
	cmp.w d3,d1				
	jbhi _?L638				
						
	cmp.w #-1,d3				
	jbne _?L639				
_?L638:						
						
	lsl.w #1,d1				
						
	move.w d0,d3				
	moveq #15,d5				
	lsr.w d5,d3				
						
	tst.b d2				
	jbeq _?L1116				
						
	subq.b #1,d2				
	move.b d2,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	or.w d3,d1				
						
	addq.l #1,a5				
	moveq #16,d3				
	cmp.l a5,d3				
	jbne _?L653				
_?L652:						
						
	lea _gCoeffBuf,a1			
	move.w (a1),a0				
	moveq #64,d0				
	add.l a0,d0				
	asr.l #7,d0				
						
	add.w #128,d0				
						
	cmp.w #255,d0				
	jbls _?L661				
						
	tst.w d0				
	sge d0					
_?L661:						
						
	moveq #4,d1				
	cmp.l _gScanType,d1			
	jbcs _?L669				
	move.l _gScanType,d1			
	add.l d1,d1				
	move.w _?L664(pc,d1.l),d1		
	jmp 2(pc,d1.w)				
	.align 2,0x284c				
						
_?L664:						
	.dc.w _?L668-_?L664			
	.dc.w _?L667-_?L664			
	.dc.w _?L666-_?L664			
	.dc.w _?L665-_?L664			
	.dc.w _?L663-_?L664			
_?L880:						
						
	move.b #1,51(sp)			
_?L572:						
						
	move.b 51(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L574:						
						
	tst.b _gMaxBlocksPerMCU			
	jbne _?L879				
_?L874:						
						
	move.w _gNumMCUSRemainingX,d0		
	subq.w #1,d0				
	move.w d0,_gNumMCUSRemainingX		
						
	jbne _?L572				
						
	move.w _gNumMCUSRemainingY,d0		
	subq.w #1,d0				
	move.w d0,_gNumMCUSRemainingY		
						
	jbeq _?L572				
						
	move.w _gMaxMCUSPerRow,_gNumMCUSRemainingX
						
	move.b 51(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L1114:					
						
	move.b _gInBufLeft,d0			
						
	jbne _?L607				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L608				
						
	move.b d0,_gCallbackStatus		
_?L608:						
						
	move.b _gInBufLeft,d0			
						
	jbeq _?L1117				
_?L607:						
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b _gInBufOfs,d1			
	move.b d1,d6				
	addq.b #1,d6				
	move.b d6,_gInBufOfs			
						
	move.l a6,d7				
						
	and.l #255,d1				
						
	move.b (a6,d1.l),d2			
						
	cmp.b #-1,d2				
	jbeq _?L612				
						
	and.w #255,d2				
_?L609:						
						
	or.w _gBitBuf,d2			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
_?L1119:					
						
	subq.b #1,d0				
	move.b d0,_gBitsLeft			
						
	lsl.w #1,d2				
	move.w d2,_gBitBuf			
						
	or.w d5,d3				
						
	addq.l #1,d4				
	moveq #16,d1				
	cmp.l d4,d1				
	jbne _?L619				
	jbra _?L1118				
_?L1117:					
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
	move.w #217,d2				
						
	tst.b d0				
	jbeq _?L609				
	move.l #_gInBuf,d7			
_?L613:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L611				
						
	move.b d0,_gCallbackStatus		
_?L611:						
						
	move.b _gInBufLeft,d0			
						
	jbeq _?L615				
						
	move.b _gInBufOfs,d6			
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d6,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	clr.l d1				
	move.b d6,d1				
						
	move.l d7,a1				
	move.b (a1,d1.l),d6			
	move.w d6,a0				
						
	jbne _?L616				
_?L617:						
						
	move.w #255,d2				
_?L1130:					
						
	or.w _gBitBuf,d2			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
	jbra _?L1119				
_?L605:						
	move.l 42(sp),d6			
	add.b 64(a3,d4.l),d3			
						
	move.w (a3,d4.l*2),d1			
						
	sub.b d1,d3				
						
	and.l #255,d3				
	move.b (a4,d3.l),d1			
						
	move.b d1,d4				
	and.b #15,d4				
	move.b d1,d3				
	subq.b #1,d3				
						
	bftst d1{#28:#4}			
	jbeq _?L889				
						
	moveq #15,d2				
	and.l d4,d2				
	move.l d2,-(sp)				
	jbsr (_getBits?constprop?2)		
	addq.l #4,sp				
	move.w d0,d1				
						
	move.w _gBitBuf,d2			
						
	move.b _gBitsLeft,d0			
_?L620:						
	cmp.b #14,d3				
	jbhi _?L618				
						
	and.l #255,d3				
	cmp.w _CSWTCH?309(d3.l*2),d1		
	jbcc _?L618				
						
	add.w _CSWTCH?311(d3.l*2),d1		
						
	add.w _gLastDC(d6.l*2),d1		
						
	move.w d1,_gLastDC(d6.l*2)		
						
	move.l 46(sp),a0			
	muls.w (a0),d1				
	lea _gCoeffBuf,a0			
	move.w d1,(a0)				
						
	move.b _gCompACTab(d6.l),d1		
						
	tst.b _gReduce				
	jbne _?L1120				
_?L621:						
	tst.b d1				
	jbeq _?L769				
	lea _gHuffTab3,a3			
	move.l #_gHuffVal3,42(sp)		
						
	moveq #1,d4				
	moveq #32,d6				
	add.l a3,d6				
						
	lea _ZAG,a5				
						
	move.b d0,d1				
	move.w d2,d0				
_?L809:						
						
	move.w d0,d3				
	moveq #15,d5				
	lsr.w d5,d3				
						
	tst.b d1				
	jbeq _?L1121				
_?L773:						
						
	subq.b #1,d1				
	move.b d1,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	and.w #255,d3				
	sub.l a4,a4				
	move.l a3,a0				
	move.l a4,a3				
	move.l d6,a4				
	move.l a0,d7				
_?L800:						
						
	move.w (a4)+,d2				
						
	cmp.w d2,d3				
	jbhi _?L785				
						
	cmp.w #-1,d2				
	jbne _?L786				
_?L785:						
						
	lsl.w #1,d3				
						
	move.w d0,d5				
	moveq #15,d2				
	lsr.w d2,d5				
						
	tst.b d1				
	jbeq _?L1122				
						
	subq.b #1,d1				
	move.b d1,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	or.w d5,d3				
						
	addq.l #1,a3				
	moveq #16,d2				
	cmp.l a3,d2				
	jbne _?L800				
_?L799:						
	clr.l d1				
	move.b d4,d1				
	move.l d1,a0				
	add.l #_ZAG,a0				
	moveq #63,d0				
	sub.b d4,d0				
	and.l #255,d0				
	move.l d1,a2				
	lea _ZAG+1(a2,d0.l),a1			
_?L810:						
						
	move.b (a0)+,d0				
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	cmp.l a0,a1				
	jbne _?L810				
_?L808:						
						
	lea _gCoeffBuf,a0			
_?L811:						
						
	move.w 2(a0),d2				
						
	move.w 4(a0),d3				
						
	move.w 6(a0),a4				
						
	move.w 8(a0),d7				
						
	move.w 10(a0),a1			
						
	move.w 12(a0),d6			
						
	move.w 14(a0),d5			
						
	move.w (a0),d1				
						
	move.w d2,d0				
	or.w d3,d0				
	move.w a4,d4				
	or.w d4,d0				
	or.w d7,d0				
	move.w a1,d4				
	or.w d4,d0				
	or.w d6,d0				
	or.w d5,d0				
						
	tst.w d0				
	jbeq _?L812				
						
	move.w a1,a2				
	sub.w a4,a2				
						
	add.w a1,a4				
						
	move.w d2,a3				
	add.w d5,a3				
						
	move.w a2,a1				
	sub.w d2,a1				
	add.w d5,a1				
						
	move.w a1,a1				
	move.l a1,d0				
	add.l d0,d0				
	add.l a1,d0				
	lsl.l #4,d0				
	add.l a1,d0				
	lsl.l #2,d0				
						
	move.w d2,a1				
	sub.w d5,a1				
						
	move.w a1,a1				
	move.l a1,d2				
	lsl.l #4,d2				
	add.l a1,d2				
	lsl.l #2,d2				
	add.l a1,d2				
	lsl.l #2,d2				
						
	lea 128(a1,d2.l),a1			
	move.l a1,d5				
						
	asr.l #8,d5				
						
	add.l #128,d0				
						
	asr.l #8,d0				
						
	move.w a2,a2				
	move.l a2,d2				
	lsl.l #3,d2				
	sub.l a2,d2				
	lsl.l #5,d2				
	sub.l a2,d2				
	move.l d2,d4				
	lsl.l #2,d4				
	move.l d4,a2				
	sub.l d2,a2				
						
	move.w a4,a1				
	add.w a3,a1				
						
	sub.w a4,a3				
						
	move.w a3,d4				
	ext.l d4				
	move.l d4,d2				
	add.l d2,d2				
	move.l d2,a3				
	add.l d4,a3				
	move.l a3,d2				
	lsl.l #4,d2				
	sub.l a3,d2				
	lsl.l #2,d2				
	add.l d4,d2				
	add.l d2,d2				
	move.w a1,d4				
	sub.w d5,d4				
	add.w d0,d4				
						
	add.l #128,d2				
						
	asr.l #8,d2				
						
	move.w d4,a3				
	add.w d2,a3				
						
	move.l a2,d2				
	add.l #128,d2				
						
	asr.l #8,d2				
						
	move.w d0,a4				
	sub.w d2,a4				
						
	add.w a3,a4				
						
	move.w d1,a2				
	add.w d7,a2				
						
	sub.w d7,d1				
						
	move.w d3,d7				
	add.w d6,d7				
						
	sub.w d6,d3				
						
	ext.l d3				
	move.l d3,d6				
	add.l d6,d6				
	add.l d3,d6				
	move.l d6,d2				
	lsl.l #4,d2				
	sub.l d6,d2				
	lsl.l #2,d2				
	add.l d3,d2				
	add.l d2,d2				
						
	add.l #128,d2				
						
	asr.l #8,d2				
						
	move.w a2,d6				
	add.w d7,d6				
						
	sub.w d7,a2				
						
	move.w d1,d3				
	sub.w d7,d3				
	add.w d2,d3				
						
	add.w d7,d1				
	sub.w d2,d1				
						
	move.w a1,d7				
	add.w d6,d7				
	move.w d7,(a0)				
						
	sub.w a1,d5				
	add.w d3,d5				
	sub.w d0,d5				
	move.w d5,2(a0)				
						
	move.w a3,a5				
	add.w d1,a5				
	move.w a5,4(a0)				
						
	move.w a2,d0				
	sub.w a4,d0				
	move.w d0,6(a0)				
						
	add.w a2,a4				
	move.w a4,8(a0)				
						
	sub.w a3,d1				
	move.w d1,10(a0)			
						
	add.w d3,d4				
	move.w d4,12(a0)			
						
	sub.w a1,d6				
	move.w d6,14(a0)			
						
	lea (16,a0),a0				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbne _?L811				
	lea _gCoeffBuf,a1			
_?L835:						
						
	move.w 16(a1),d2			
						
	move.w 32(a1),d3			
						
	move.w 48(a1),a3			
						
	move.w 64(a1),d7			
						
	move.w 80(a1),d4			
						
	move.w 96(a1),d6			
						
	move.w 112(a1),d5			
						
	move.w (a1)+,a5				
						
	move.w d3,d1				
	or.w d2,d1				
	move.w a3,d0				
	or.w d0,d1				
	or.w d7,d1				
	or.w d4,d1				
	or.w d6,d1				
	or.w d5,d1				
						
	tst.w d1				
	jbne _?L815				
						
	move.w a5,a0				
	moveq #64,d0				
	add.l a0,d0				
	asr.l #7,d0				
						
	add.w #128,d0				
						
	cmp.w #255,d0				
	jbls _?L817				
						
	tst.w d0				
	sge d0					
_?L817:						
						
	and.w #255,d0				
	move.w d0,d7				
	move.w d0,d6				
	move.w d0,d5				
	move.w d0,d3				
	move.w d0,d4				
	move.w d0,d1				
	move.w d0,d2				
	move.w d7,-2(a1)			
						
	move.w d6,14(a1)			
						
	move.w d5,30(a1)			
						
	move.w d3,46(a1)			
						
	move.w d4,62(a1)			
						
	move.w d1,78(a1)			
						
	move.w d2,94(a1)			
						
	move.w d0,110(a1)			
						
	cmp.l #_gCoeffBuf+16,a1			
	jbne _?L835				
_?L1141:					
						
	moveq #4,d0				
	cmp.l _gScanType,d0			
	jbcs _?L669				
	move.l _gScanType,d0			
	add.l d0,d0				
	move.w _?L837(pc,d0.l),d0		
	jmp 2(pc,d0.w)				
	.align 2,0x284c				
						
_?L837:						
	.dc.w _?L930-_?L837			
	.dc.w _?L840-_?L837			
	.dc.w _?L839-_?L837			
	.dc.w _?L838-_?L837			
	.dc.w _?L836-_?L837			
_?L1113:					
						
	move.b _gInBufLeft,d0			
						
	jbne _?L593				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L594				
						
	move.b d0,_gCallbackStatus		
_?L594:						
						
	move.b _gInBufLeft,d0			
						
	jbeq _?L1123				
_?L593:						
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b _gInBufOfs,d2			
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
						
	lea _gInBuf,a5				
						
	and.l #255,d2				
						
	move.b (a5,d2.l),d2			
						
	cmp.b #-1,d2				
	jbeq _?L598				
						
	and.w #255,d2				
_?L595:						
						
	or.w _gBitBuf,d2			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
_?L1144:					
						
	subq.b #1,d0				
	move.b d0,_gBitsLeft			
						
	lsl.w #1,d2				
	move.w d2,_gBitBuf			
						
	and.w #255,d3				
	lea (32,a3),a5				
	clr.l d4				
	move.l d6,42(sp)			
	jbra _?L619				
_?L1116:					
						
	move.b _gInBufLeft,d2			
						
	jbne _?L641				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	move.l d1,54(sp)			
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 38(sp),d1			
	tst.b d0				
	jbeq _?L642				
						
	move.b d0,_gCallbackStatus		
_?L642:						
						
	move.b _gInBufLeft,d2			
						
	jbeq _?L1124				
_?L641:						
						
	subq.b #1,d2				
	move.b d2,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d6				
	addq.b #1,d6				
	move.b d6,_gInBufOfs			
						
	move.l a6,d5				
						
	and.l #255,d0				
						
	move.b (a6,d0.l),d0			
						
	cmp.b #-1,d0				
	jbeq _?L646				
						
	and.w #255,d0				
_?L643:						
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d2			
	addq.b #8,d2				
_?L1125:					
						
	subq.b #1,d2				
	move.b d2,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	or.w d3,d1				
						
	addq.l #1,a5				
	moveq #16,d3				
	cmp.l a5,d3				
	jbne _?L653				
	jbra _?L652				
_?L1124:					
						
	move.b _gTemFlag,d2			
	not.b d2				
	move.b d2,_gTemFlag			
	move.w #217,d0				
						
	tst.b d2				
	jbeq _?L643				
	move.l a6,d5				
_?L647:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	move.l d1,54(sp)			
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 38(sp),d1			
	tst.b d0				
	jbeq _?L645				
						
	move.b d0,_gCallbackStatus		
_?L645:						
						
	move.b _gInBufLeft,d2			
						
	jbeq _?L649				
						
	move.b _gInBufOfs,d6			
						
	move.b d2,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d6,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	and.l #255,d6				
						
	move.l d5,a0				
	move.b (a0,d6.l),d7			
						
	jbne _?L650				
_?L651:						
						
	move.w #255,d0				
_?L1128:					
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d2			
	addq.b #8,d2				
	jbra _?L1125				
_?L639:						
	add.b 64(a4,a5.l),d1			
						
	move.w (a4,a5.l*2),d0			
						
	sub.b d0,d1				
						
	and.l #255,d1				
	move.l 46(sp),a0			
	move.b (a0,d1.l),d0			
						
	move.b d0,d1				
	and.b #15,d1				
						
	move.b d0,d5				
	lsr.b #4,d5				
						
	bftst d0{#28:#4}			
	jbne _?L1126				
						
	cmp.b #15,d5				
	jbne _?L652				
						
	cmp.b #48,d4				
	jbhi _?L658				
						
	add.b #15,d4				
_?L656:						
						
	addq.b #1,d4				
						
	cmp.b #63,d4				
	jbhi _?L652				
						
	move.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d2			
						
	move.w d0,d5				
	moveq #15,d1				
	lsr.w d1,d5				
						
	tst.b d2				
	jbne _?L626				
_?L1115:					
						
	move.b _gInBufLeft,d1			
						
	jbne _?L627				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L628				
						
	move.b d0,_gCallbackStatus		
_?L628:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L1127				
_?L627:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	move.l a6,a5				
						
	and.l #255,d0				
						
	move.b (a6,d0.l),d0			
						
	cmp.b #-1,d0				
	jbeq _?L632				
						
	and.w #255,d0				
_?L629:						
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d2			
	addq.b #8,d2				
_?L1129:					
						
	subq.b #1,d2				
	move.b d2,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	clr.w d1				
	move.b d5,d1				
	move.l 42(sp),a3			
	sub.l a5,a5				
	jbra _?L653				
_?L649:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d2			
	move.b d2,d6				
	subq.b #1,d6				
						
	and.l #255,d6				
						
	tst.b d0				
	jbeq _?L893				
	clr.b d0				
	st d7					
_?L650:						
						
	move.l d5,a1				
	move.b d7,(a1,d6.l)			
						
	subq.b #2,d2				
	move.b d2,_gInBufOfs			
						
	and.l #255,d2				
						
	st _gInBuf(d2.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L1143:					
						
	move.w #255,d0				
	jbra _?L1128				
_?L1127:					
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
	move.w #217,d0				
						
	tst.b d1				
	jbeq _?L629				
	lea _gInBuf,a5				
_?L633:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L631				
						
	move.b d0,_gCallbackStatus		
_?L631:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L635				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a5,d2.l),d6			
						
	jbne _?L636				
_?L637:						
						
	move.w #255,d0				
_?L1131:					
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d2			
	addq.b #8,d2				
	jbra _?L1129				
_?L615:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d2			
	move.b d2,d1				
	subq.b #1,d1				
						
	and.l #255,d1				
						
	tst.b d0				
	jbeq _?L887				
	clr.b d0				
	move.w #-1,a0				
_?L616:						
						
	move.w a0,d6				
	move.l d7,a1				
	move.b d6,(a1,d1.l)			
						
	subq.b #2,d2				
	move.b d2,_gInBufOfs			
						
	and.l #255,d2				
						
	st _gInBuf(d2.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L1149:					
						
	move.w #255,d2				
	jbra _?L1130				
_?L635:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L891				
	clr.b d0				
	st d6					
_?L636:						
						
	move.b d6,(a5,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L1152:					
						
	move.w #255,d0				
	jbra _?L1131				
_?L1126:					
						
	moveq #15,d0				
	and.l d1,d0				
	move.l d0,-(sp)				
	jbsr (_getBits?constprop?2)		
	addq.l #4,sp				
						
	tst.b d5				
	jbeq _?L656				
						
	clr.l d1				
	move.b d4,d1				
	clr.l d0				
	move.b d5,d0				
	add.l d1,d0				
						
	moveq #63,d1				
	cmp.l d0,d1				
	jblt _?L658				
						
	add.b d5,d4				
	jbra _?L656				
_?L646:						
						
	tst.b d2				
	jbeq _?L647				
						
	move.b d2,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d6,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	and.l #255,d6				
						
	move.l d5,a0				
	move.b (a0,d6.l),d7			
						
	jbeq _?L651				
	jbra _?L650				
_?L930:						
						
	lea _gMCUBufB,a3			
						
	lea _gMCUBufG,a2			
						
	lea _gMCUBufR,a1			
						
	lea _gCoeffBuf,a0			
_?L841:						
						
	move.l a0,a4				
	addq.l #2,a0				
	move.w (a4),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbne _?L841				
_?L669:						
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
_?L589:						
						
	move.b _gCallbackStatus,d0		
	jbeq _?L874				
_?L937:						
	move.b d0,51(sp)			
						
	move.b 51(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L882:						
						
	move.l #_gQuant0,46(sp)			
						
	tst.b d0				
	jbne _?L1132				
_?L883:						
	lea _gHuffVal0,a4			
	lea _gHuffTab0,a3			
						
	move.w _gBitBuf,d2			
						
	move.w d2,d3				
	moveq #15,d0				
	lsr.w d0,d3				
						
	move.b _gBitsLeft,d0			
						
	jbne _?L592				
	jbra _?L1113				
_?L1122:					
						
	move.b _gInBufLeft,d1			
						
	jbne _?L788				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L789				
						
	move.b d0,_gCallbackStatus		
_?L789:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L1133				
_?L788:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	move.l a6,a1				
						
	and.l #255,d0				
						
	move.b (a6,d0.l),d0			
						
	cmp.b #-1,d0				
	jbeq _?L793				
						
	and.w #255,d0				
_?L790:						
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d1			
	addq.b #8,d1				
_?L1134:					
						
	subq.b #1,d1				
	move.b d1,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	or.w d5,d3				
						
	addq.l #1,a3				
	moveq #16,d2				
	cmp.l a3,d2				
	jbne _?L800				
	jbra _?L799				
_?L1133:					
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
	move.w #217,d0				
						
	tst.b d1				
	jbeq _?L790				
	move.l a6,a1				
_?L794:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	move.l a1,54(sp)			
	jbsr (a0)				
	lea (16,sp),sp				
						
	move.l 38(sp),a1			
	tst.b d0				
	jbeq _?L792				
						
	move.b d0,_gCallbackStatus		
_?L792:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L796				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.w d1,a2				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a1,d2.l),d1			
	move.w d1,a0				
						
	jbne _?L797				
_?L798:						
						
	move.w #255,d0				
_?L1137:					
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d1			
	addq.b #8,d1				
	jbra _?L1134				
_?L786:						
	move.l a3,a4				
	move.l d7,a3				
	add.b 64(a3,a4.l),d3			
						
	move.w (a3,a4.l*2),d0			
						
	sub.b d0,d3				
						
	and.l #255,d3				
	move.l 42(sp),a0			
	move.b (a0,d3.l),d0			
						
	move.b d0,d3				
	and.b #15,d3				
						
	move.b d0,d5				
	lsr.b #4,d5				
						
	bftst d0{#28:#4}			
	jbne _?L1135				
						
	cmp.b #15,d5				
	jbne _?L799				
						
	cmp.b #48,d4				
	jbhi _?L658				
						
	clr.l d0				
	move.b d4,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #1,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #2,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #3,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #4,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #5,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #6,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #7,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	addq.b #8,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	add.b #9,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	add.b #10,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	add.b #11,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	add.b #12,d0				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	move.b d4,d0				
	add.b #14,d0				
	move.b d4,d1				
	add.b #13,d1				
	and.l #255,d1				
						
	move.b (a5,d1.l),d1			
	extb.l d1				
						
	clr.w _gCoeffBuf(d1.l*2)		
						
	add.b #15,d4				
	and.l #255,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
						
	clr.l d0				
	move.b d4,d0				
						
	move.b (a5,d0.l),d0			
	extb.l d0				
						
	clr.w _gCoeffBuf(d0.l*2)		
_?L807:						
						
	addq.b #1,d4				
						
	cmp.b #63,d4				
	jbhi _?L808				
						
	move.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d1			
						
	move.w d0,d3				
	moveq #15,d5				
	lsr.w d5,d3				
						
	tst.b d1				
	jbne _?L773				
_?L1121:					
						
	move.b _gInBufLeft,d1			
						
	jbne _?L774				
						
	move.b #4,_gInBufOfs			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L775				
						
	move.b d0,_gCallbackStatus		
_?L775:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L1136				
_?L774:						
						
	subq.b #1,d1				
	move.b d1,_gInBufLeft			
						
	move.b _gInBufOfs,d0			
	move.b d0,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
						
	move.l a6,a4				
						
	and.l #255,d0				
						
	move.b (a6,d0.l),d0			
						
	cmp.b #-1,d0				
	jbeq _?L779				
						
	and.w #255,d0				
_?L776:						
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d1			
	addq.b #8,d1				
_?L1138:					
						
	subq.b #1,d1				
	move.b d1,_gBitsLeft			
						
	lsl.w #1,d0				
	move.w d0,_gBitBuf			
						
	and.w #255,d3				
	sub.l a4,a4				
	move.l a3,a0				
	move.l a4,a3				
	move.l d6,a4				
	move.l a0,d7				
	jbra _?L800				
_?L796:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.w d1,a2				
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L929				
	clr.b d0				
	move.w #-1,a0				
_?L797:						
						
	move.w a0,d1				
	move.b d1,(a1,d2.l)			
						
	move.w a2,d1				
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L1142:					
						
	move.w #255,d0				
	jbra _?L1137				
_?L1136:					
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
	move.w #217,d0				
						
	tst.b d1				
	jbeq _?L776				
	lea _gInBuf,a4				
_?L780:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L778				
						
	move.b d0,_gCallbackStatus		
_?L778:						
						
	move.b _gInBufLeft,d1			
						
	jbeq _?L782				
						
	move.b _gInBufOfs,d2			
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a4,d2.l),d7			
						
	jbne _?L783				
_?L784:						
						
	move.w #255,d0				
_?L1139:					
						
	or.w _gBitBuf,d0			
						
	move.b _gBitsLeft,d1			
	addq.b #8,d1				
	jbra _?L1138				
_?L782:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	subq.b #1,d2				
						
	and.l #255,d2				
						
	tst.b d0				
	jbeq _?L927				
	clr.b d0				
	st d7					
_?L783:						
						
	move.b d7,(a4,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L1150:					
						
	move.w #255,d0				
	jbra _?L1139				
_?L1135:					
						
	moveq #15,d0				
	and.l d3,d0				
	move.l d0,-(sp)				
	jbsr (_getBits?constprop?2)		
	addq.l #4,sp				
						
	tst.b d5				
	jbne _?L1140				
_?L803:						
	subq.b #1,d3				
						
	and.l #255,d3				
	cmp.w _CSWTCH?309(d3.l*2),d0		
	jbcc _?L806				
						
	add.w _CSWTCH?311(d3.l*2),d0		
_?L806:						
						
	clr.l d1				
	move.b d4,d1				
	move.b (a5,d1.l),d1			
	extb.l d1				
						
	clr.l d2				
	move.b d4,d2				
						
	move.l 46(sp),a0			
	muls.w (a0,d2.l*2),d0			
	move.w d0,_gCoeffBuf(d1.l*2)		
	jbra _?L807				
_?L1140:					
						
	clr.l d7				
	move.b d4,d7				
	clr.l d1				
	move.b d5,d1				
	add.l d7,d1				
						
	moveq #63,d2				
	cmp.l d1,d2				
	jblt _?L658				
						
	clr.w d1				
	move.b d5,d1				
						
	move.b d4,d2				
	addq.b #1,d2				
						
	move.b (a5,d7.l),d7			
	extb.l d7				
						
	clr.w _gCoeffBuf(d7.l*2)		
						
	cmp.w #1,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	addq.b #2,d7				
	and.l #255,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #2,d1				
	jbeq _?L805				
						
	move.b d4,d2				
	addq.b #3,d2				
	and.l #255,d7				
						
	move.b (a5,d7.l),d7			
	extb.l d7				
						
	clr.w _gCoeffBuf(d7.l*2)		
						
	cmp.w #3,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	addq.b #4,d7				
	and.l #255,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #4,d1				
	jbeq _?L805				
						
	move.b d4,d2				
	addq.b #5,d2				
	and.l #255,d7				
						
	move.b (a5,d7.l),d7			
	extb.l d7				
						
	clr.w _gCoeffBuf(d7.l*2)		
						
	cmp.w #5,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	addq.b #6,d7				
	and.l #255,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #6,d1				
	jbeq _?L805				
						
	move.b d4,d2				
	addq.b #7,d2				
	and.l #255,d7				
						
	move.b (a5,d7.l),d7			
	extb.l d7				
						
	clr.w _gCoeffBuf(d7.l*2)		
						
	cmp.w #7,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	addq.b #8,d7				
	and.l #255,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #8,d1				
	jbeq _?L805				
						
	move.b d4,d2				
	add.b #9,d2				
	move.w d2,a0				
	and.l #255,d7				
						
	move.b (a5,d7.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #9,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	add.b #10,d7				
	move.w d7,a1				
	move.w a0,d7				
	clr.l d2				
	move.b d7,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #10,d1				
	jbeq _?L805				
						
	move.b d4,d2				
	add.b #11,d2				
	move.w d2,a0				
	move.w a1,d2				
	clr.l d7				
	move.b d2,d7				
						
	move.b (a5,d7.l),d7			
	extb.l d7				
						
	clr.w _gCoeffBuf(d7.l*2)		
						
	cmp.w #11,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	add.b #12,d7				
	move.w d7,a1				
	move.w a0,d7				
	clr.l d2				
	move.b d7,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #12,d1				
	jbeq _?L805				
						
	move.b d4,d2				
	add.b #13,d2				
	move.w d2,a0				
	move.w a1,d2				
	clr.l d7				
	move.b d2,d7				
						
	move.b (a5,d7.l),d7			
	extb.l d7				
						
	clr.w _gCoeffBuf(d7.l*2)		
						
	cmp.w #13,d1				
	jbeq _?L805				
						
	move.b d4,d7				
	add.b #14,d7				
	move.w d7,a1				
	move.w a0,d7				
	clr.l d2				
	move.b d7,d2				
						
	move.b (a5,d2.l),d2			
	extb.l d2				
						
	clr.w _gCoeffBuf(d2.l*2)		
						
	cmp.w #14,d1				
	jbeq _?L805				
						
	move.w a1,d1				
	clr.l d7				
	move.b d1,d7				
						
	move.b (a5,d7.l),d1			
	extb.l d1				
						
	clr.w _gCoeffBuf(d1.l*2)		
_?L805:						
						
	add.b d5,d4				
	jbra _?L803				
_?L793:						
						
	tst.b d1				
	jbeq _?L794				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.w d1,a2				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a1,d2.l),d1			
	move.w d1,a0				
						
	jbeq _?L798				
	jbra _?L797				
_?L815:						
						
	move.w d4,a2				
	sub.w a3,a2				
						
	add.w d4,a3				
						
	move.w d5,d1				
	add.w d2,d1				
						
	move.w a2,a0				
	sub.w d2,a0				
	add.w d5,a0				
						
	move.w a0,a0				
	move.l a0,d4				
	add.l d4,d4				
	add.l a0,d4				
	lsl.l #4,d4				
	add.l a0,d4				
	lsl.l #2,d4				
	move.l d4,a4				
						
	move.w d2,a0				
	sub.w d5,a0				
						
	move.w a0,a0				
	move.l a0,d2				
	lsl.l #4,d2				
	add.l a0,d2				
	lsl.l #2,d2				
	add.l a0,d2				
	lsl.l #2,d2				
						
	lea 128(a0,d2.l),a0			
	move.l a0,d4				
						
	asr.l #8,d4				
						
	move.l a4,d2				
	add.l #128,d2				
						
	asr.l #8,d2				
						
	move.w a2,a2				
	move.l a2,d5				
	lsl.l #3,d5				
	sub.l a2,d5				
	lsl.l #5,d5				
	sub.l a2,d5				
	move.l d5,d0				
	lsl.l #2,d0				
	move.l d0,a0				
	sub.l d5,a0				
						
	move.w d1,a2				
	add.w a3,a2				
						
	move.w d4,d5				
	sub.w a2,d5				
	sub.w d2,d5				
						
	sub.w a3,d1				
						
	move.w d1,a3				
	move.l a3,d1				
	add.l d1,d1				
	lea (a3,d1.l),a4			
	move.l a4,d1				
	lsl.l #4,d1				
	sub.l a4,d1				
	lsl.l #2,d1				
	add.l a3,d1				
	add.l d1,d1				
						
	add.l #128,d1				
						
	asr.l #8,d1				
						
	sub.w d4,d1				
	add.w a2,d1				
	add.w d2,d1				
						
	move.l a0,d4				
	add.l #128,d4				
						
	asr.l #8,d4				
						
	sub.w d4,d2				
						
	add.w d1,d2				
						
	move.w d7,a4				
	add.w a5,a4				
						
	move.w a5,d0				
	sub.w d7,d0				
						
	move.w d6,a0				
	add.w d3,a0				
						
	sub.w d6,d3				
						
	ext.l d3				
	move.l d3,d6				
	add.l d6,d6				
	add.l d3,d6				
	move.l d6,d4				
	lsl.l #4,d4				
	sub.l d6,d4				
	lsl.l #2,d4				
	add.l d3,d4				
	add.l d4,d4				
						
	add.l #128,d4				
						
	asr.l #8,d4				
						
	move.w a4,d3				
	sub.w a0,d3				
						
	move.w d0,a3				
	sub.w a0,a3				
	add.w d4,a3				
						
	add.w a0,d0				
	sub.w d4,d0				
						
	add.w a4,a0				
						
	move.w a0,a0				
	move.w a2,a2				
	move.l a2,42(sp)			
	lea 64(a2,a0.l),a2			
	move.l a2,d7				
	asr.l #7,d7				
						
	add.w #128,d7				
						
	cmp.w #255,d7				
	jbls _?L820				
						
	tst.w d7				
	sge d7					
_?L820:						
						
	and.w #255,d7				
						
	move.w a3,a3				
	move.w d5,a4				
	lea 64(a4,a3.l),a2			
	move.l a2,d6				
	asr.l #7,d6				
						
	add.w #128,d6				
						
	cmp.w #255,d6				
	jbls _?L822				
						
	tst.w d6				
	sge d6					
_?L822:						
						
	and.w #255,d6				
						
	move.w d0,a5				
	ext.l d1				
	lea 64(a5,d1.l),a2			
	move.l a2,d5				
	asr.l #7,d5				
						
	add.w #128,d5				
						
	cmp.w #255,d5				
	jbls _?L824				
						
	tst.w d5				
	sge d5					
_?L824:						
						
	and.w #255,d5				
						
	move.w d3,d0				
	ext.l d0				
	ext.l d2				
	move.l d0,d3				
	sub.l d2,d3				
	moveq #64,d4				
	add.l d4,d3				
	asr.l #7,d3				
						
	add.w #128,d3				
						
	cmp.w #255,d3				
	jbls _?L826				
						
	tst.w d3				
	sge d3					
_?L826:						
						
	and.w #255,d3				
						
	move.l d2,a2				
	lea 64(a2,d0.l),a2			
	move.l a2,d4				
	asr.l #7,d4				
						
	add.w #128,d4				
						
	cmp.w #255,d4				
	jbls _?L828				
						
	tst.w d4				
	sge d4					
_?L828:						
						
	and.w #255,d4				
						
	sub.l d1,a5				
	moveq #64,d1				
	add.l a5,d1				
	asr.l #7,d1				
						
	add.w #128,d1				
						
	cmp.w #255,d1				
	jbls _?L830				
						
	tst.w d1				
	sge d1					
_?L830:						
						
	and.w #255,d1				
						
	sub.l a4,a3				
	moveq #64,d2				
	add.l a3,d2				
	asr.l #7,d2				
						
	add.w #128,d2				
						
	cmp.w #255,d2				
	jbls _?L832				
						
	tst.w d2				
	sge d2					
_?L832:						
						
	and.w #255,d2				
						
	sub.l 42(sp),a0				
	moveq #64,d0				
	add.l a0,d0				
	asr.l #7,d0				
						
	add.w #128,d0				
						
	cmp.w #255,d0				
	jbls _?L834				
						
	tst.w d0				
	sge d0					
_?L834:						
						
	and.w #255,d0				
						
	move.w d7,-2(a1)			
						
	move.w d6,14(a1)			
						
	move.w d5,30(a1)			
						
	move.w d3,46(a1)			
						
	move.w d4,62(a1)			
						
	move.w d1,78(a1)			
						
	move.w d2,94(a1)			
						
	move.w d0,110(a1)			
						
	cmp.l #_gCoeffBuf+16,a1			
	jbne _?L835				
	jbra _?L1141				
_?L812:						
						
	move.w d1,2(a0)				
						
	move.w d1,4(a0)				
						
	move.w d1,6(a0)				
						
	move.w d1,8(a0)				
						
	move.w d1,10(a0)			
						
	move.w d1,12(a0)			
						
	move.w d1,14(a0)			
						
	lea (16,a0),a0				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbne _?L811				
	lea _gCoeffBuf,a1			
	jbra _?L835				
_?L929:						
						
	move.w #-39,a0				
						
	move.w a0,d1				
	move.b d1,(a1,d2.l)			
						
	move.w a2,d1				
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L1142				
_?L893:						
						
	moveq #-39,d7				
						
	move.l d5,a1				
	move.b d7,(a1,d6.l)			
						
	subq.b #2,d2				
	move.b d2,_gInBufOfs			
						
	and.l #255,d2				
						
	st _gInBuf(d2.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L1143				
_?L779:						
						
	tst.b d1				
	jbeq _?L780				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a4,d2.l),d7			
						
	jbeq _?L784				
	jbra _?L783				
_?L612:						
						
	tst.b d0				
	jbeq _?L613				
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d6,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	clr.l d1				
	move.b d6,d1				
						
	move.l d7,a1				
	move.b (a1,d1.l),d6			
	move.w d6,a0				
						
	jbeq _?L617				
	jbra _?L616				
_?L632:						
						
	tst.b d1				
	jbeq _?L633				
						
	move.b d1,d0				
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d2,d1				
	addq.b #1,d1				
	move.b d1,_gInBufOfs			
	and.l #255,d2				
						
	move.b (a5,d2.l),d6			
						
	jbeq _?L637				
	jbra _?L636				
_?L658:						
						
	move.b #28,51(sp)			
						
	move.b _gCallbackStatus,d0		
						
	jbne _?L937				
_?L1099:					
						
	move.b 51(sp),d0			
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	lea (20,sp),sp				
	rts					
_?L769:						
	lea _gHuffTab2,a3			
	move.l #_gHuffVal2,42(sp)		
						
	moveq #1,d4				
	moveq #32,d6				
	add.l a3,d6				
						
	lea _ZAG,a5				
						
	move.b d0,d1				
	move.w d2,d0				
	jbra _?L809				
_?L622:						
	lea _gHuffTab2,a4			
	move.l #_gHuffVal2,d5			
						
	moveq #1,d4				
	lea (32,a4),a1				
	move.l a1,42(sp)			
						
	move.w d2,d1				
	move.b d0,d2				
	move.l d5,46(sp)			
	move.w d1,d0				
	jbra _?L659				
_?L840:						
	cmp.b #1,50(sp)				
	jbeq _?L842				
	cmp.b #2,50(sp)				
	jbeq _?L843				
	tst.b 50(sp)				
	jbne _?L669				
						
	lea _gMCUBufB,a3			
						
	lea _gMCUBufG,a2			
						
	lea _gMCUBufR,a1			
						
	lea _gCoeffBuf,a0			
_?L844:						
						
	move.l a0,a5				
	addq.l #2,a0				
	move.w (a5),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbeq _?L669				
						
	move.l a0,a5				
	addq.l #2,a0				
	move.w (a5),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbne _?L844				
	jbra _?L669				
_?L836:						
	cmp.b #5,50(sp)				
	jbhi _?L669				
	move.l 52(sp),d0			
	add.l d0,d0				
	move.w _?L867(pc,d0.l),d0		
	jmp 2(pc,d0.w)				
	.align 2,0x284c				
						
_?L867:						
	.dc.w _?L933-_?L867			
	.dc.w _?L934-_?L867			
	.dc.w _?L935-_?L867			
	.dc.w _?L936-_?L867			
	.dc.w _?L868-_?L867			
	.dc.w _?L866-_?L867			
_?L838:						
	cmp.b #2,50(sp)				
	jbeq _?L856				
	jbhi _?L857				
	tst.b 50(sp)				
	jbeq _?L931				
						
	lea _gMCUBufB+128,a3			
						
	lea _gMCUBufG+128,a2			
						
	lea _gMCUBufR+128,a1			
						
	lea _gCoeffBuf,a0			
_?L859:						
						
	move.l a0,a5				
	addq.l #2,a0				
	move.w (a5),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbeq _?L669				
						
	move.l a0,a5				
	addq.l #2,a0				
	move.w (a5),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbne _?L859				
	jbra _?L669				
_?L839:						
	cmp.b #2,50(sp)				
	jbeq _?L861				
	jbhi _?L862				
	tst.b 50(sp)				
	jbeq _?L932				
						
	lea _gMCUBufB+64,a0			
						
	lea _gMCUBufG+64,a3			
						
	lea _gMCUBufR+64,a2			
						
	lea _gCoeffBuf,a1			
_?L864:						
						
	move.l a1,a5				
	addq.l #2,a1				
	move.w (a5),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	move.b d0,(a0)+				
						
	cmp.l #_gMCUBufB+128,a0			
	jbeq _?L669				
						
	move.l a1,a5				
	addq.l #2,a1				
	move.w (a5),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	move.b d0,(a0)+				
						
	cmp.l #_gMCUBufB+128,a0			
	jbne _?L864				
	jbra _?L669				
_?L665:						
	cmp.b #2,50(sp)				
	jbeq _?L680				
	jbhi _?L681				
	tst.b 50(sp)				
	jbeq _?L728				
_?L726:						
						
	move.b d0,_gMCUBufR+128			
						
	move.b d0,_gMCUBufG+128			
_?L1089:					
						
	move.b d0,_gMCUBufB+128			
_?L1163:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L666:						
	cmp.b #2,50(sp)				
	jbeq _?L701				
	jbhi _?L702				
	tst.b 50(sp)				
	jbeq _?L728				
_?L727:						
						
	move.b d0,_gMCUBufR+64			
						
	move.b d0,_gMCUBufG+64			
_?L1087:					
						
	move.b d0,_gMCUBufB+64			
_?L1166:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L667:						
	cmp.b #1,50(sp)				
	jbeq _?L670				
	cmp.b #2,50(sp)				
	jbeq _?L671				
	tst.b 50(sp)				
	jbne _?L669				
_?L728:						
						
	move.b d0,_gMCUBufR			
						
	move.b d0,_gMCUBufG			
						
	move.b d0,_gMCUBufB			
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L668:						
						
	move.b d0,_gMCUBufR			
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L663:						
	cmp.b #5,50(sp)				
	jbhi _?L669				
	move.l 52(sp),d1			
	add.l d1,d1				
	move.w _?L723(pc,d1.l),d1		
	jmp 2(pc,d1.w)				
	.align 2,0x284c				
						
_?L723:						
	.dc.w _?L728-_?L723			
	.dc.w _?L727-_?L723			
	.dc.w _?L726-_?L723			
	.dc.w _?L725-_?L723			
	.dc.w _?L724-_?L723			
	.dc.w _?L722-_?L723			
_?L1123:					
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
	move.w #217,d2				
						
	tst.b d0				
	jbeq _?L595				
	lea _gInBuf,a5				
_?L599:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L597				
						
	move.b d0,_gCallbackStatus		
_?L597:						
						
	move.b _gInBufLeft,d0			
						
	jbeq _?L601				
						
	move.b _gInBufOfs,d1			
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d1,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	and.l #255,d1				
						
	move.b (a5,d1.l),d4			
						
	jbne _?L602				
_?L603:						
						
	move.w #255,d2				
_?L1151:					
						
	or.w _gBitBuf,d2			
						
	move.b _gBitsLeft,d0			
	addq.b #8,d0				
	jbra _?L1144				
_?L1112:					
						
	move.b _gInBufLeft,d0			
	move.w #1536,d3				
_?L581:						
						
	tst.b d0				
	jbeq _?L579				
_?L576:						
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b _gInBufOfs,d1			
	move.b d1,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	and.l #255,d1				
						
	cmp.b #-1,_gInBuf(d1.l)			
	jbeq _?L578				
						
	subq.w #1,d3				
	jbne _?L581				
_?L588:						
						
	move.b #29,51(sp)			
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1099				
	jbra _?L937				
_?L577:						
						
	move.b _gInBufLeft,d0			
						
	jbne _?L576				
						
	move.b _gTemFlag,d1			
	not.b d1				
	move.b d1,_gTemFlag			
						
	jbne _?L578				
						
	subq.w #1,d3				
	jbeq _?L588				
_?L579:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L577				
						
	move.b d0,_gCallbackStatus		
	jbra _?L577				
_?L578:						
						
	lea _gInBuf,a3				
						
	tst.b d0				
	jbeq _?L585				
_?L582:						
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b _gInBufOfs,d1			
	move.b d1,d4				
	addq.b #1,d4				
	move.b d4,_gInBufOfs			
	and.l #255,d1				
						
	move.b (a3,d1.l),d1			
						
	cmp.b #-1,d1				
	jbne _?L584				
						
	subq.w #1,d3				
						
	jbeq _?L588				
						
	tst.b d0				
	jbne _?L582				
	jbra _?L585				
_?L583:						
						
	move.b _gInBufLeft,d0			
						
	jbne _?L582				
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	jbeq _?L881				
						
	subq.w #1,d3				
						
	jbeq _?L588				
_?L585:						
						
	move.b #4,_gInBufOfs			
						
	clr.b _gInBufLeft			
						
	move.l _g_pCallback_data,-(sp)		
	pea _gInBufLeft				
	pea 252.w				
	pea _gInBuf+4				
	move.l _g_pNeedBytesCallback,a0		
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.b d0				
	jbeq _?L583				
						
	move.b d0,_gCallbackStatus		
	jbra _?L583				
_?L862:						
	cmp.b #3,50(sp)				
	jbne _?L669				
						
	clr.l -(sp)				
	clr.l -(sp)				
	lea _upsampleCrH,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 64.w				
	pea 4.w					
	jbsr (a3)				
	addq.l #8,sp				
_?L1160:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L857:						
	cmp.b #3,50(sp)				
	jbne _?L669				
						
	clr.l -(sp)				
	clr.l -(sp)				
	lea _upsampleCrV,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 128.w				
	pea 32.w				
	jbsr (a3)				
	addq.l #8,sp				
_?L1158:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L681:						
	cmp.b #3,50(sp)				
	jbne _?L669				
						
	clr.w d1				
	move.b d0,d1				
	and.l #255,d0				
	move.l d0,d2				
	add.l d2,d2				
	add.l d0,d2				
	lsl.l #2,d2				
	add.l d0,d2				
	lsl.l #3,d2				
	sub.l d0,d2				
						
	lsr.l #8,d2				
						
	move.w d1,d0				
	add.w #-179,d0				
	add.w d2,d0				
						
	lea _gMCUBufR,a0			
						
	clr.w d2				
	move.b (a0),d2				
	add.w d0,d2				
	clr.w d3				
	move.b _gMCUBufR+128,d3			
	add.w d3,d0				
						
	cmp.w #255,d2				
	jbls _?L694				
						
	tst.w d2				
	jbge _?L1145				
						
	clr.b d2				
_?L694:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d0				
	jbls _?L695				
						
	tst.w d0				
	sge d0					
_?L695:						
						
	move.b d0,_gMCUBufR+128			
						
	and.l #65535,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	lea _gMCUBufG,a0			
						
	clr.w d2				
	move.b (a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b _gMCUBufG+128,d1			
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L698				
						
	tst.w d2				
	jbge _?L1146				
						
	clr.b d2				
_?L698:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d1				
	jbls _?L699				
						
	tst.w d1				
	sge d1					
_?L699:						
						
	move.b d1,_gMCUBufG+128			
_?L1169:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L702:						
	cmp.b #3,50(sp)				
	jbne _?L669				
						
	clr.w d1				
	move.b d0,d1				
	and.l #255,d0				
	move.l d0,d2				
	add.l d2,d2				
	add.l d0,d2				
	lsl.l #2,d2				
	add.l d0,d2				
	lsl.l #3,d2				
	sub.l d0,d2				
						
	lsr.l #8,d2				
						
	move.w d1,d0				
	add.w #-179,d0				
	add.w d2,d0				
						
	lea _gMCUBufR,a0			
						
	clr.w d2				
	move.b (a0),d2				
	add.w d0,d2				
	clr.w d3				
	move.b _gMCUBufR+64,d3			
	add.w d3,d0				
						
	cmp.w #255,d2				
	jbls _?L715				
						
	tst.w d2				
	jbge _?L1147				
						
	clr.b d2				
_?L715:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d0				
	jbls _?L716				
						
	tst.w d0				
	sge d0					
_?L716:						
						
	move.b d0,_gMCUBufR+64			
						
	and.l #65535,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
						
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	lea _gMCUBufG,a0			
						
	clr.w d2				
	move.b (a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b _gMCUBufG+64,d1			
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L719				
						
	tst.w d2				
	jbge _?L1148				
						
	clr.b d2				
_?L719:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d1				
	jbls _?L720				
						
	tst.w d1				
	sge d1					
_?L720:						
						
	move.b d1,_gMCUBufG+64			
_?L1172:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L889:						
						
	clr.w d1				
	jbra _?L620				
_?L887:						
						
	move.w #-39,a0				
						
	move.w a0,d6				
	move.l d7,a1				
	move.b d6,(a1,d1.l)			
						
	subq.b #2,d2				
	move.b d2,_gInBufOfs			
						
	and.l #255,d2				
						
	st _gInBuf(d2.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L1149				
_?L927:						
						
	moveq #-39,d7				
						
	move.b d7,(a4,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L1150				
_?L598:						
						
	tst.b d0				
	jbeq _?L599				
						
	subq.b #1,d0				
	move.b d0,_gInBufLeft			
						
	move.b d1,d2				
	addq.b #1,d2				
	move.b d2,_gInBufOfs			
	and.l #255,d1				
						
	move.b (a5,d1.l),d4			
						
	jbeq _?L603				
	jbra _?L602				
_?L601:						
						
	move.b _gTemFlag,d0			
	not.b d0				
	move.b d0,_gTemFlag			
						
	move.b _gInBufOfs,d2			
	move.b d2,d1				
	subq.b #1,d1				
						
	and.l #255,d1				
						
	tst.b d0				
	jbeq _?L885				
	clr.b d0				
	st d4					
_?L602:						
						
	move.b d4,(a5,d1.l)			
						
	subq.b #2,d2				
	move.b d2,_gInBufOfs			
						
	and.l #255,d2				
						
	st _gInBuf(d2.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
_?L1159:					
						
	move.w #255,d2				
	jbra _?L1151				
_?L891:						
	moveq #-39,d6				
						
	move.b d6,(a5,d2.l)			
						
	subq.b #2,d1				
	move.b d1,_gInBufOfs			
						
	and.l #255,d1				
						
	st _gInBuf(d1.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L1152				
_?L881:						
						
	moveq #-39,d1				
_?L584:						
						
	move.w _gNextRestartNum,d0		
						
	and.l #255,d1				
						
	clr.l d2				
	move.w d0,d2				
	move.l d2,a0				
	lea (208,a0),a0				
						
	cmp.l d1,a0				
	jbne _?L588				
						
	clr.l _gLastDC				
						
	clr.w _gLastDC+4			
						
	move.w _gRestartInterval,_gRestartsLeft	
						
	addq.w #1,d0				
						
	and.w #7,d0				
	move.w d0,_gNextRestartNum		
						
	move.b #8,_gBitsLeft			
						
	pea 1.w					
	lea (_getBits?constprop?0),a3		
	jbsr (a3)				
	moveq #1,d0				
	move.l d0,(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.w _gRestartsLeft,d0		
	subq.w #1,d0				
	move.w d0,_gRestartsLeft		
						
	tst.b _gMaxBlocksPerMCU			
	jbne _?L879				
	jbra _?L589				
_?L868:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	lea _upsampleCb,a3			
						
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 64.w				
	pea 4.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 128.w				
	pea 32.w				
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 192.w				
	pea 36.w				
	jbsr (a3)				
	addq.l #8,sp				
_?L1153:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L936:						
						
	lea _gMCUBufB+192,a3			
						
	lea _gMCUBufG+192,a2			
						
	lea _gMCUBufR+192,a1			
						
	lea _gCoeffBuf,a0			
_?L869:						
						
	move.l a0,a5				
	addq.l #2,a0				
	move.w (a5),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbeq _?L669				
						
	move.l a0,a5				
	addq.l #2,a0				
	move.w (a5),d0				
						
	move.b d0,(a1)+				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gCoeffBuf+128,a0		
	jbne _?L869				
	jbra _?L669				
_?L935:						
						
	lea _gMCUBufB+128,a3			
						
	lea _gMCUBufG+128,a0			
						
	lea _gMCUBufR+128,a2			
						
	lea _gCoeffBuf,a1			
_?L870:						
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a0)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gMCUBufG+192,a0			
	jbeq _?L669				
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a0)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gMCUBufG+192,a0			
	jbne _?L870				
	jbra _?L669				
_?L866:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	lea _upsampleCr,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 64.w				
	pea 4.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 128.w				
	pea 32.w				
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 192.w				
	pea 36.w				
	jbsr (a3)				
	addq.l #8,sp				
	jbra _?L1153				
_?L724:						
						
	clr.w d1				
	move.b d0,d1				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #2,d0				
	sub.l d2,d0				
						
	bfextu d0{#3:#24},d0			
						
	add.w #-44,d0				
						
	lea _gMCUBufG,a0			
						
	clr.w d3				
	move.b (a0),d3				
	sub.w d0,d3				
	clr.w d2				
	move.b _gMCUBufG+64,d2			
	sub.w d0,d2				
						
	cmp.w #255,d3				
	jbls _?L730				
						
	tst.w d3				
	jbge _?L1154				
						
	clr.b d3				
_?L730:						
						
	move.b d3,(a0)				
						
	cmp.w #255,d2				
	jbls _?L734				
						
	tst.w d2				
	jbge _?L735				
						
	clr.b d2				
_?L734:						
						
	move.b d2,_gMCUBufG+64			
						
	clr.w d2				
	move.b _gMCUBufG+128,d2			
	sub.w d0,d2				
						
	cmp.w #255,d2				
	jbls _?L738				
						
	tst.w d2				
	jbge _?L732				
						
	clr.b d2				
_?L738:						
						
	move.b d2,_gMCUBufG+128			
						
	clr.w d2				
	move.b _gMCUBufG+192,d2			
	sub.w d0,d2				
						
	cmp.w #255,d2				
	jbls _?L736				
						
	tst.w d2				
	sge d2					
_?L736:						
						
	move.b d2,_gMCUBufG+192			
						
	clr.l d2				
	move.w d1,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,d2				
	lsl.l #5,d2				
	add.l d0,d2				
						
	lsr.l #7,d2				
						
	move.w d1,d0				
	add.w #-227,d0				
	add.w d2,d0				
						
	lea _gMCUBufB,a0			
						
	clr.w d1				
	move.b (a0),d1				
	move.w d1,d2				
	add.w d0,d2				
	clr.w d1				
	move.b _gMCUBufB+64,d1			
	add.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L740				
						
	tst.w d2				
	jbge _?L1155				
						
	clr.b d2				
_?L740:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d1				
	jbls _?L744				
						
	tst.w d1				
	jbge _?L745				
						
	clr.b d1				
_?L744:						
						
	move.b d1,_gMCUBufB+64			
						
	clr.w d1				
	move.b _gMCUBufB+128,d1			
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L748				
						
	tst.w d1				
	jbge _?L742				
						
	clr.b d1				
_?L748:						
						
	move.b d1,_gMCUBufB+128			
						
	clr.w d1				
	move.b _gMCUBufB+192,d1			
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L746				
						
	tst.w d0				
	sge d0					
_?L746:						
						
	move.b d0,_gMCUBufB+192			
_?L1171:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L725:						
						
	move.b d0,_gMCUBufR+192			
						
	move.b d0,_gMCUBufG+192			
						
	move.b d0,_gMCUBufB+192			
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L722:						
						
	clr.w d1				
	move.b d0,d1				
	and.l #255,d0				
	move.l d0,d2				
	add.l d2,d2				
	add.l d0,d2				
	lsl.l #2,d2				
	add.l d0,d2				
	lsl.l #3,d2				
	sub.l d0,d2				
						
	lsr.l #8,d2				
						
	move.w d1,a0				
	lea (-179,a0),a0			
	move.w a0,d0				
	add.w d2,d0				
						
	lea _gMCUBufR,a0			
						
	clr.w d2				
	move.b (a0),d2				
	move.w d2,d3				
	add.w d0,d3				
	clr.w d2				
	move.b _gMCUBufR+64,d2			
	add.w d0,d2				
						
	cmp.w #255,d3				
	jbls _?L750				
						
	tst.w d3				
	jbge _?L1156				
						
	clr.b d3				
_?L750:						
						
	move.b d3,(a0)				
						
	cmp.w #255,d2				
	jbls _?L754				
						
	tst.w d2				
	jbge _?L755				
						
	clr.b d2				
_?L754:						
						
	move.b d2,_gMCUBufR+64			
						
	clr.w d2				
	move.b _gMCUBufR+128,d2			
	add.w d0,d2				
						
	cmp.w #255,d2				
	jbls _?L758				
						
	tst.w d2				
	jbge _?L752				
						
	clr.b d2				
_?L758:						
						
	move.b d2,_gMCUBufR+128			
						
	clr.w d2				
	move.b _gMCUBufR+192,d2			
	add.w d2,d0				
						
	cmp.w #255,d0				
	jbls _?L756				
						
	tst.w d0				
	sge d0					
_?L756:						
						
	move.b d0,_gMCUBufR+192			
						
	clr.l d0				
	move.w d1,d0				
	move.l d0,d1				
	add.l d1,d1				
	add.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
	lsl.l #3,d1				
	sub.l d0,d1				
						
	move.l d1,d0				
	lsr.l #8,d0				
						
	add.w #-91,d0				
						
	lea _gMCUBufG,a0			
						
	clr.w d2				
	move.b (a0),d2				
	sub.w d0,d2				
	clr.w d1				
	move.b _gMCUBufG+64,d1			
	sub.w d0,d1				
						
	cmp.w #255,d2				
	jbls _?L760				
						
	tst.w d2				
	jbge _?L1157				
						
	clr.b d2				
_?L760:						
						
	move.b d2,(a0)				
						
	cmp.w #255,d1				
	jbls _?L764				
						
	tst.w d1				
	jbge _?L765				
						
	clr.b d1				
_?L764:						
						
	move.b d1,_gMCUBufG+64			
						
	clr.w d1				
	move.b _gMCUBufG+128,d1			
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L768				
						
	tst.w d1				
	jbge _?L762				
						
	clr.b d1				
_?L768:						
						
	move.b d1,_gMCUBufG+128			
						
	clr.w d1				
	move.b _gMCUBufG+192,d1			
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L766				
						
	tst.w d1				
	sge d1					
_?L766:						
						
	move.b d1,_gMCUBufG+192			
_?L1170:					
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L934:						
						
	lea _gMCUBufB+64,a0			
						
	lea _gMCUBufG+64,a3			
						
	lea _gMCUBufR+64,a2			
						
	lea _gCoeffBuf,a1			
_?L871:						
						
	move.l a1,a5				
	addq.l #2,a1				
	move.w (a5),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	move.b d0,(a0)+				
						
	cmp.l #_gMCUBufB+128,a0			
	jbeq _?L669				
						
	move.l a1,a5				
	addq.l #2,a1				
	move.w (a5),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	move.b d0,(a0)+				
						
	cmp.l #_gMCUBufB+128,a0			
	jbne _?L871				
	jbra _?L669				
_?L933:						
						
	lea _gMCUBufB,a3			
						
	lea _gMCUBufG,a0			
						
	lea _gMCUBufR,a2			
						
	lea _gCoeffBuf,a1			
_?L872:						
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a0)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gMCUBufG+64,a0			
	jbeq _?L669				
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a0)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gMCUBufG+64,a0			
	jbne _?L872				
	jbra _?L669				
_?L856:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	lea _upsampleCbV,a3			
						
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 128.w				
	pea 32.w				
	jbsr (a3)				
	addq.l #8,sp				
	jbra _?L1158				
_?L885:						
						
	moveq #-39,d4				
						
	move.b d4,(a5,d1.l)			
						
	subq.b #2,d2				
	move.b d2,_gInBufOfs			
						
	and.l #255,d2				
						
	st _gInBuf(d2.l)			
						
	addq.b #2,d0				
	move.b d0,_gInBufLeft			
	jbra _?L1159				
_?L932:						
						
	lea _gMCUBufB,a0			
						
	lea _gMCUBufG,a3			
						
	lea _gMCUBufR,a2			
						
	lea _gCoeffBuf,a1			
_?L863:						
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	move.b d0,(a0)+				
						
	cmp.l #_gMCUBufB+64,a0			
	jbeq _?L669				
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a3)+				
						
	move.b d0,(a0)+				
						
	cmp.l #_gMCUBufB+64,a0			
	jbne _?L863				
	jbra _?L669				
_?L861:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	lea _upsampleCbH,a3			
						
	jbsr (a3)				
	addq.l #8,sp				
						
	pea 64.w				
	pea 4.w					
	jbsr (a3)				
	addq.l #8,sp				
	jbra _?L1160				
_?L670:						
						
	lea _gMCUBufG,a0			
						
	clr.w d1				
	move.b (a0),d1				
	move.w d1,a1				
	lea (44,a1),a1				
						
	clr.w d1				
	move.b d0,d1				
	and.l #255,d0				
	move.l d0,d2				
	add.l d2,d2				
	add.l d0,d2				
	lsl.l #2,d2				
	sub.l d0,d2				
						
	bfextu d2{#3:#24},d2			
						
	move.w a1,d0				
	sub.w d2,d0				
						
	cmp.w #255,d0				
	jbls _?L673				
						
	tst.w d0				
	sge d0					
_?L673:						
						
	move.b d0,(a0)				
						
	lea _gMCUBufB,a0			
						
	clr.w d0				
	move.b (a0),d0				
	add.w #-227,d0				
	add.w d1,d0				
						
	clr.l d2				
	move.w d1,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L675				
						
	tst.w d0				
	sge d0					
_?L675:						
						
	move.b d0,(a0)				
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L680:						
						
	clr.w d1				
	move.b d0,d1				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #2,d0				
	sub.l d2,d0				
						
	bfextu d0{#3:#24},d0			
						
	add.w #-44,d0				
						
	lea _gMCUBufG,a0			
						
	clr.w d3				
	move.b (a0),d3				
	sub.w d0,d3				
	clr.w d2				
	move.b _gMCUBufG+128,d2			
	sub.w d0,d2				
						
	cmp.w #255,d3				
	jbls _?L686				
						
	tst.w d3				
	jbge _?L1161				
						
	clr.b d3				
_?L686:						
						
	move.b d3,(a0)				
						
	cmp.w #255,d2				
	jbls _?L687				
						
	tst.w d2				
	sge d2					
_?L687:						
						
	move.b d2,_gMCUBufG+128			
						
	clr.l d2				
	move.w d1,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,d2				
	lsl.l #5,d2				
	add.l d0,d2				
						
	lsr.l #7,d2				
						
	move.w d1,d0				
	add.w #-227,d0				
	add.w d2,d0				
						
	lea _gMCUBufB,a0			
						
	clr.w d1				
	move.b (a0),d1				
	add.w d0,d1				
	clr.w d2				
	move.b _gMCUBufB+128,d2			
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L690				
						
	tst.w d1				
	jbge _?L1162				
						
	clr.b d1				
_?L690:						
						
	move.b d1,(a0)				
						
	cmp.w #255,d0				
	jbls _?L1089				
						
	tst.w d0				
	sge d0					
						
	move.b d0,_gMCUBufB+128			
	jbra _?L1163				
_?L931:						
						
	lea _gMCUBufB,a3			
						
	lea _gMCUBufG,a0			
						
	lea _gMCUBufR,a2			
						
	lea _gCoeffBuf,a1			
_?L858:						
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a0)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gMCUBufG+64,a0			
	jbeq _?L669				
						
	move.l a1,a4				
	addq.l #2,a1				
	move.w (a4),d0				
						
	move.b d0,(a2)+				
						
	move.b d0,(a0)+				
						
	move.b d0,(a3)+				
						
	cmp.l #_gMCUBufG+64,a0			
	jbne _?L858				
	jbra _?L669				
_?L701:						
						
	clr.w d1				
	move.b d0,d1				
	clr.l d2				
	move.b d0,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #2,d0				
	sub.l d2,d0				
						
	bfextu d0{#3:#24},d0			
						
	add.w #-44,d0				
						
	lea _gMCUBufG,a0			
						
	clr.w d3				
	move.b (a0),d3				
	sub.w d0,d3				
	clr.w d2				
	move.b _gMCUBufG+64,d2			
	sub.w d0,d2				
						
	cmp.w #255,d3				
	jbls _?L707				
						
	tst.w d3				
	jbge _?L1164				
						
	clr.b d3				
_?L707:						
						
	move.b d3,(a0)				
						
	cmp.w #255,d2				
	jbls _?L708				
						
	tst.w d2				
	sge d2					
_?L708:						
						
	move.b d2,_gMCUBufG+64			
						
	clr.l d2				
	move.w d1,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	move.l d0,d2				
	lsl.l #5,d2				
	add.l d0,d2				
						
	lsr.l #7,d2				
						
	move.w d1,d0				
	add.w #-227,d0				
	add.w d2,d0				
						
	lea _gMCUBufB,a0			
						
	clr.w d1				
	move.b (a0),d1				
	add.w d0,d1				
	clr.w d2				
	move.b _gMCUBufB+64,d2			
	add.w d2,d0				
						
	cmp.w #255,d1				
	jbls _?L711				
						
	tst.w d1				
	jbge _?L1165				
						
	clr.b d1				
_?L711:						
						
	move.b d1,(a0)				
						
	cmp.w #255,d0				
	jbls _?L1087				
						
	tst.w d0				
	sge d0					
						
	move.b d0,_gMCUBufB+64			
	jbra _?L1166				
_?L671:						
						
	lea _gMCUBufR,a0			
						
	clr.w d2				
	move.b (a0),d2				
	move.w d2,a1				
	lea (-179,a1),a1			
						
	clr.w d1				
	move.b d0,d1				
						
	add.w d1,a1				
						
	clr.l d2				
	move.w d1,d2				
	move.l d2,d0				
	add.l d0,d0				
	add.l d2,d0				
	lsl.l #2,d0				
	add.l d2,d0				
	lsl.l #3,d0				
	sub.l d2,d0				
						
	lsr.l #8,d0				
						
	add.w a1,d0				
						
	cmp.w #255,d0				
	jbls _?L677				
						
	tst.w d0				
	sge d0					
_?L677:						
						
	move.b d0,(a0)				
						
	lea _gMCUBufG,a0			
						
	clr.w d0				
	move.b (a0),d0				
	move.w d0,a1				
	lea (91,a1),a1				
						
	and.l #65535,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
						
	lsr.l #8,d0				
						
	move.w a1,d1				
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L679				
						
	tst.w d1				
	sge d1					
_?L679:						
						
	move.b d1,(a0)				
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L843:						
	lea _gMCUBufG,a1			
						
	lea _gMCUBufR,a0			
						
	lea _gCoeffBuf,a2			
_?L855:						
						
	move.w (a2)+,d3				
						
	move.w d3,d2				
	and.w #255,d2				
						
	add.w #-179,d2				
						
	clr.w d1				
	move.b d3,d1				
	and.l #255,d3				
	move.l d3,d0				
	add.l d0,d0				
	add.l d3,d0				
	lsl.l #2,d0				
	add.l d3,d0				
	lsl.l #3,d0				
	sub.l d3,d0				
						
	lsr.l #8,d0				
						
	add.w d2,d0				
	clr.w d2				
	move.b (a0)+,d2				
	add.w d2,d0				
						
	cmp.w #255,d0				
	jbls _?L852				
						
	tst.w d0				
	sge d0					
_?L852:						
						
	move.b d0,-1(a0)			
						
	and.l #65535,d1				
	move.l d1,d0				
	add.l d0,d0				
	add.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
	lsl.l #3,d0				
	sub.l d1,d0				
						
	lsr.l #8,d0				
						
	moveq #91,d1				
	sub.w d0,d1				
	clr.w d0				
	move.b (a1),d0				
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L853				
						
	move.w d1,d0				
	not.w d0				
	moveq #15,d2				
	lsr.w d2,d0				
	neg.b d0				
	move.b d0,(a1)+				
						
	cmp.l #_gMCUBufR+64,a0			
	jbne _?L855				
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L853:						
						
	move.b d1,(a1)+				
						
	cmp.l #_gMCUBufR+64,a0			
	jbne _?L855				
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L842:						
	lea _gMCUBufB,a1			
						
	lea _gMCUBufG,a0			
						
	lea _gCoeffBuf,a2			
_?L850:						
						
	move.w (a2)+,d0				
						
	clr.w d2				
	move.b d0,d2				
	clr.l d3				
	move.b d0,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #2,d1				
	sub.l d3,d1				
						
	bfextu d1{#3:#24},d1			
						
	moveq #44,d3				
	sub.w d1,d3				
	clr.w d1				
	move.b (a0)+,d1				
	add.w d1,d3				
						
	cmp.w #255,d3				
	jbls _?L846				
_?L1167:					
						
	tst.w d3				
	sge d1					
						
	move.b d1,-1(a0)			
						
	and.w #255,d0				
						
	add.w #-227,d0				
						
	and.l #65535,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	add.w d1,d0				
	clr.w d1				
	move.b (a1),d1				
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L848				
_?L1168:					
						
	not.w d0				
	moveq #15,d1				
	lsr.w d1,d0				
	neg.b d0				
	move.b d0,(a1)+				
						
	cmp.l #_gMCUBufG+64,a0			
	jbeq _?L669				
						
	move.w (a2)+,d0				
						
	clr.w d2				
	move.b d0,d2				
	clr.l d3				
	move.b d0,d3				
	move.l d3,d1				
	add.l d1,d1				
	add.l d3,d1				
	lsl.l #2,d1				
	sub.l d3,d1				
						
	bfextu d1{#3:#24},d1			
						
	moveq #44,d3				
	sub.w d1,d3				
	clr.w d1				
	move.b (a0)+,d1				
	add.w d1,d3				
						
	cmp.w #255,d3				
	jbhi _?L1167				
_?L846:						
						
	move.b d3,d1				
						
	move.b d1,-1(a0)			
						
	and.w #255,d0				
						
	add.w #-227,d0				
						
	and.l #65535,d2				
	move.l d2,d1				
	add.l d1,d1				
	add.l d2,d1				
	move.l d1,d2				
	lsl.l #5,d2				
	add.l d2,d1				
						
	lsr.l #7,d1				
						
	add.w d1,d0				
	clr.w d1				
	move.b (a1),d1				
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbhi _?L1168				
_?L848:						
						
	move.b d0,(a1)+				
						
	cmp.l #_gMCUBufG+64,a0			
	jbne _?L850				
						
	addq.b #1,50(sp)			
						
	move.b 50(sp),d1			
	cmp.b _gMaxBlocksPerMCU,d1		
	jbcs _?L873				
	jbra _?L589				
_?L1156:					
						
	st _gMCUBufR				
						
	cmp.w #255,d2				
	jbls _?L754				
_?L755:						
						
	st _gMCUBufR+64				
						
	clr.w d2				
	move.b _gMCUBufR+128,d2			
	add.w d0,d2				
						
	cmp.w #255,d2				
	jbls _?L758				
_?L752:						
						
	st _gMCUBufR+128			
						
	clr.w d2				
	move.b _gMCUBufR+192,d2			
	add.w d2,d0				
						
	cmp.w #255,d0				
	jbls _?L756				
						
	st d0					
	jbra _?L756				
_?L1146:					
						
	st _gMCUBufG				
						
	cmp.w #255,d1				
	jbls _?L699				
						
	st d1					
						
	move.b d1,_gMCUBufG+128			
	jbra _?L1169				
_?L1157:					
						
	st _gMCUBufG				
						
	cmp.w #255,d1				
	jbls _?L764				
_?L765:						
						
	st _gMCUBufG+64				
						
	clr.w d1				
	move.b _gMCUBufG+128,d1			
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L768				
_?L762:						
						
	st _gMCUBufG+128			
						
	clr.w d1				
	move.b _gMCUBufG+192,d1			
	sub.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L766				
						
	st d1					
						
	move.b d1,_gMCUBufG+192			
	jbra _?L1170				
_?L1155:					
						
	st _gMCUBufB				
						
	cmp.w #255,d1				
	jbls _?L744				
_?L745:						
						
	st _gMCUBufB+64				
						
	clr.w d1				
	move.b _gMCUBufB+128,d1			
	add.w d0,d1				
						
	cmp.w #255,d1				
	jbls _?L748				
_?L742:						
						
	st _gMCUBufB+128			
						
	clr.w d1				
	move.b _gMCUBufB+192,d1			
	add.w d1,d0				
						
	cmp.w #255,d0				
	jbls _?L746				
						
	st d0					
						
	move.b d0,_gMCUBufB+192			
	jbra _?L1171				
_?L1165:					
						
	st _gMCUBufB				
						
	cmp.w #255,d0				
	jbls _?L1087				
						
	st d0					
						
	move.b d0,_gMCUBufB+64			
	jbra _?L1166				
_?L1145:					
						
	st _gMCUBufR				
						
	cmp.w #255,d0				
	jbls _?L695				
						
	st d0					
	jbra _?L695				
_?L1162:					
						
	st _gMCUBufB				
						
	cmp.w #255,d0				
	jbls _?L1089				
						
	st d0					
						
	move.b d0,_gMCUBufB+128			
	jbra _?L1163				
_?L1154:					
						
	st _gMCUBufG				
						
	cmp.w #255,d2				
	jbls _?L734				
_?L735:						
						
	st _gMCUBufG+64				
						
	clr.w d2				
	move.b _gMCUBufG+128,d2			
	sub.w d0,d2				
						
	cmp.w #255,d2				
	jbls _?L738				
_?L732:						
						
	st _gMCUBufG+128			
						
	clr.w d2				
	move.b _gMCUBufG+192,d2			
	sub.w d0,d2				
						
	cmp.w #255,d2				
	jbls _?L736				
						
	st d2					
	jbra _?L736				
_?L1148:					
						
	st _gMCUBufG				
						
	cmp.w #255,d1				
	jbls _?L720				
						
	st d1					
						
	move.b d1,_gMCUBufG+64			
	jbra _?L1172				
_?L1147:					
						
	st _gMCUBufR				
						
	cmp.w #255,d0				
	jbls _?L716				
						
	st d0					
	jbra _?L716				
_?L1161:					
						
	st _gMCUBufG				
						
	cmp.w #255,d2				
	jbls _?L687				
						
	st d2					
	jbra _?L687				
_?L1164:					
						
	st _gMCUBufG				
						
	cmp.w #255,d2				
	jbls _?L708				
						
	st d2					
	jbra _?L708				
						
	.align	2				
	.globl	_pjpeg_decode_init		
						
_pjpeg_decode_init:				
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a4			
						
	clr.l (a4)				
						
	clr.l 4(a4)				
						
	clr.l 8(a4)				
						
	clr.l 12(a4)				
						
	clr.l 16(a4)				
						
	clr.l 20(a4)				
						
	clr.l 24(a4)				
						
	clr.l 28(a4)				
						
	clr.l 32(a4)				
						
	clr.l 36(a4)				
						
	clr.l 40(a4)				
						
	move.l 52(sp),_g_pNeedBytesCallback	
						
	move.l 56(sp),_g_pCallback_data		
						
	clr.b _gCallbackStatus			
						
	move.b 63(sp),_gReduce			
						
	clr.w _gImageXSize			
						
	clr.w _gImageYSize			
						
	clr.b _gCompsInFrame			
						
	clr.w _gRestartInterval			
						
	clr.b _gCompsInScan			
						
	clr.b _gValidHuffTables			
						
	clr.b _gValidQuantTables		
						
	clr.b _gTemFlag				
						
	clr.b _gInBufOfs			
						
	clr.b _gInBufLeft			
						
	clr.w _gBitBuf				
						
	move.b #8,_gBitsLeft			
						
	clr.l -(sp)				
	lea (_getBits?constprop?0),a3		
	jbsr (a3)				
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b _gCallbackStatus,d7		
	jbeq _?L1300				
_?L1173:					
						
	move.b d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L1300:					
						
	clr.l -(sp)				
	jbsr (a3)				
	move.w d0,d5				
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b d0,d4				
	move.w #4095,d3				
						
	cmp.b #-1,d5				
	jbeq _?L1301				
_?L1178:					
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.b d4,d1				
						
	move.b d0,d4				
						
	cmp.b #-1,d1				
	jbeq _?L1302				
						
	subq.w #1,d3				
	jbne _?L1178				
_?L1219:					
	moveq #19,d7				
_?L1196:					
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
_?L1304:					
						
	move.b d0,d7				
						
	move.b d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L1302:					
						
	cmp.b #-40,d0				
	jbeq _?L1180				
						
	cmp.b #-39,d0				
	jbeq _?L1219				
						
	subq.w #1,d3				
	jbne _?L1178				
	jbra _?L1219				
_?L1301:					
						
	cmp.b #-40,d0				
	jbne _?L1178				
_?L1181:					
						
	pea 43(sp)				
	lea _processMarkers,a5			
	jbsr (a5)				
	addq.l #4,sp				
	move.b d0,d7				
						
	jbne _?L1196				
						
	move.b 43(sp),d0			
	cmp.b #-62,d0				
	jbeq _?L1220				
	cmp.b #-55,d0				
	jbeq _?L1221				
	cmp.b #-64,d0				
	jbeq _?L1303				
						
	moveq #20,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1180:					
						
	clr.w d0				
	move.b _gBitBuf,d0			
						
	cmp.w #255,d0				
	jbeq _?L1181				
	moveq #19,d7				
	jbra _?L1196				
_?L1221:					
						
	moveq #17,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1303:					
						
	lea (_getBits?constprop?1),a6		
	jbsr (a6)				
	move.w d0,d3				
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	cmp.w #8,d0				
	jbne _?L1223				
						
	jbsr (a6)				
						
	move.w d0,_gImageYSize			
						
	subq.w #1,d0				
						
	cmp.w #16383,d0				
	jbhi _?L1224				
						
	jbsr (a6)				
						
	move.w d0,_gImageXSize			
						
	subq.w #1,d0				
						
	cmp.w #16383,d0				
	jbhi _?L1225				
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b d0,d2				
						
	move.b d0,_gCompsInFrame		
						
	cmp.b #3,d0				
	jbhi _?L1226				
						
	and.l #65535,d3				
						
	and.l #255,d0				
	move.l d0,d4				
	add.l d4,d4				
						
	move.l d0,a1				
	lea 8(a1,d4.l),a0			
						
	cmp.l d3,a0				
	jbne _?L1227				
						
	tst.b d2				
	jbeq _?L1182				
	move.l #_getBits,d4			
	move.l #_gCompHSamp,d6			
	move.l #_gCompVSamp,d5			
_?L1183:					
						
	clr.l -(sp)				
	jbsr (a3)				
						
	clr.l d3				
	move.b d7,d3				
						
	move.b d0,_gCompIdent(d3.l)		
						
	clr.l (sp)				
	pea 4.w					
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l d6,a1				
	move.b d0,(a1,d3.l)			
						
	clr.l -(sp)				
	pea 4.w					
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l d5,a1				
	move.b d0,(a1,d3.l)			
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b d0,_gCompQuant(d3.l)		
						
	cmp.b #1,d0				
	jbhi _?L1228				
						
	addq.b #1,d7				
						
	cmp.b _gCompsInFrame,d7			
	jbcs _?L1183				
						
	move.b _gCallbackStatus,d7		
	jbne _?L1173				
						
	move.b _gCompsInFrame,d0		
						
	cmp.b #1,d0				
	jbeq _?L1305				
						
	cmp.b #3,d0				
	jbne _?L1188				
						
	cmp.b #1,_gCompHSamp+1			
	jbne _?L1237				
						
	cmp.b #1,_gCompVSamp+1			
	jbne _?L1237				
						
	cmp.b #1,_gCompHSamp+2			
	jbne _?L1237				
						
	cmp.b #1,_gCompVSamp+2			
	jbne _?L1237				
						
	move.l d6,a0				
	move.b (a0),d0				
						
	cmp.b #1,d0				
	jbeq _?L1306				
						
	cmp.b #2,d0				
	jbne _?L1237				
						
	move.l d5,a0				
	move.b (a0),d0				
						
	cmp.b #1,d0				
	jbeq _?L1307				
						
	cmp.b #2,d0				
	jbne _?L1237				
						
	moveq #4,d0				
	move.l d0,_gScanType			
						
	move.b #6,_gMaxBlocksPerMCU		
						
	clr.l _gMCUOrg				
						
	move.w #258,_gMCUOrg+4			
						
	move.w #15,a0				
	moveq #16,d2				
						
	move.b #16,_gMaxMCUXSize		
						
	move.b d2,_gMaxMCUYSize			
						
	clr.l d1				
	move.w _gImageXSize,d1			
	moveq #15,d0				
	add.l d0,d1				
						
	moveq #4,d0				
_?L1213:					
						
	asr.l d0,d1				
						
	move.w d1,_gMaxMCUSPerRow		
						
	clr.l d0				
	move.w _gImageYSize,d0			
	add.l a0,d0				
						
	cmp.b #8,d2				
	jbeq _?L1308				
	moveq #4,d2				
_?L1194:					
						
	asr.l d2,d0				
						
	move.w d0,_gMaxMCUSPerCol		
						
	move.w d1,_gNumMCUSRemainingX		
						
	move.w d0,_gNumMCUSRemainingY		
						
	pea 43(sp)				
	jbsr (a5)				
	addq.l #4,sp				
	move.b d0,d7				
						
	jbne _?L1196				
						
	cmp.b #-38,43(sp)			
	jbne _?L1309				
						
	jbsr (a6)				
	move.w d0,d5				
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b d0,_gCompsInScan			
						
	subq.w #3,d5				
						
	clr.l d2				
	move.w d5,d2				
						
	clr.l d1				
	move.b d0,d1				
	add.l d1,d1				
						
	addq.l #3,d1				
						
	cmp.l d2,d1				
	jbne _?L1199				
						
	subq.b #1,d0				
	cmp.b #2,d0				
	jbhi _?L1199				
						
	clr.b d7				
						
	move.l #_gCompList,d6			
						
	lea _gCompDCTab,a5			
						
	lea _gCompACTab,a6			
_?L1202:					
						
	clr.l -(sp)				
	jbsr (a3)				
						
	move.b d0,d3				
						
	clr.l (sp)				
	jbsr (a3)				
	addq.l #4,sp				
	move.w d5,a0				
						
	subq.w #2,d5				
						
	move.b _gCompsInFrame,d1		
	jbeq _?L1200				
						
	cmp.b _gCompIdent,d3			
	jbeq _?L1239				
						
	cmp.b #1,d1				
	jbeq _?L1200				
						
	cmp.b _gCompIdent+1,d3			
	jbeq _?L1240				
						
	cmp.b #2,d1				
	jbeq _?L1200				
						
	cmp.b _gCompIdent+2,d3			
	jbeq _?L1310				
_?L1200:					
	moveq #15,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1310:					
						
	moveq #2,d1				
						
	moveq #2,d3				
_?L1201:					
						
	clr.l d2				
	move.b d7,d2				
						
	move.l d6,a1				
	move.b d3,(a1,d2.l)			
						
	move.b d0,d2				
	lsr.b #4,d2				
	move.b d2,(a5,d1.l)			
						
	and.b #15,d0				
	move.b d0,(a6,d1.l)			
						
	addq.b #1,d7				
						
	cmp.b _gCompsInScan,d7			
	jbcs _?L1202				
						
	clr.l -(sp)				
	move.l a0,42(sp)			
	jbsr (a3)				
	clr.l (sp)				
	jbsr (a3)				
	clr.l (sp)				
	pea 4.w					
	move.l d4,a1				
	jbsr (a1)				
	addq.l #4,sp				
	clr.l (sp)				
	pea 4.w					
	move.l d4,a1				
	jbsr (a1)				
	addq.l #8,sp				
						
	move.l 38(sp),a0			
	move.w a0,d3				
	subq.w #5,d3				
						
	moveq #5,d0				
	cmp.w a0,d0				
	jbeq _?L1203				
_?L1204:					
						
	clr.l -(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	subq.w #1,d3				
						
	jbne _?L1204				
_?L1203:					
						
	move.b _gCompsInScan,d1			
	jbeq _?L1205				
						
	clr.l d2				
	move.b _gValidHuffTables,d2		
						
	move.l d6,a0				
	clr.l d4				
	move.b (a0),d4				
						
	move.b (a6,d4.l),d5			
	addq.b #2,d5				
						
	and.l #255,d5				
	moveq #1,d0				
	move.l d0,d3				
	lsl.l d5,d3				
						
	clr.l d6				
	move.b (a5,d4.l),d6			
	move.l d0,d5				
	lsl.l d6,d5				
	or.l d5,d3				
						
	move.l d2,d5				
	and.l d3,d5				
	cmp.l d5,d3				
	jbne _?L1243				
						
	cmp.b #1,d1				
	jbeq _?L1206				
						
	clr.l d6				
	move.b _gCompList+1,d6			
						
	move.b (a6,d6.l),d5			
	addq.b #2,d5				
						
	and.l #255,d5				
	move.l d0,d3				
	lsl.l d5,d3				
						
	move.b (a5,d6.l),d6			
	and.l #255,d6				
	move.l d0,d5				
	lsl.l d6,d5				
	or.l d5,d3				
						
	move.l d2,d5				
	and.l d3,d5				
	cmp.l d5,d3				
	jbne _?L1243				
						
	cmp.b #2,d1				
	jbeq _?L1206				
						
	clr.l d6				
	move.b _gCompList+2,d6			
						
	move.b (a6,d6.l),d5			
	addq.b #2,d5				
						
	and.l #255,d5				
	move.l d0,d3				
	lsl.l d5,d3				
						
	clr.l d5				
	move.b (a5,d6.l),d5			
	lsl.l d5,d0				
	or.l d3,d0				
						
	and.l d0,d2				
	cmp.l d2,d0				
	jbne _?L1243				
_?L1206:					
						
	move.b _gValidQuantTables,d0		
						
	tst.b _gCompQuant(d4.l)			
	jbeq _?L1244				
	moveq #2,d2				
_?L1207:					
						
	and.b d0,d2				
						
	jbeq _?L1249				
						
	cmp.b #1,d1				
	jbeq _?L1205				
						
	clr.l d2				
	move.b _gCompList+1,d2			
						
	tst.b _gCompQuant(d2.l)			
	jbeq _?L1246				
	moveq #2,d2				
_?L1208:					
						
	and.b d0,d2				
						
	jbeq _?L1249				
						
	cmp.b #2,d1				
	jbeq _?L1205				
						
	clr.l d1				
	move.b _gCompList+2,d1			
						
	tst.b _gCompQuant(d1.l)			
	jbeq _?L1248				
	moveq #2,d1				
						
	and.b d1,d0				
						
	jbeq _?L1249				
_?L1205:					
						
	clr.l _gLastDC				
						
	clr.w _gLastDC+4			
						
	move.w _gRestartInterval,d0		
						
	jbeq _?L1210				
						
	move.w d0,_gRestartsLeft		
						
	clr.w _gNextRestartNum			
_?L1210:					
						
	move.w _gBitBuf,d1			
						
	move.b _gInBufOfs,d0			
						
	move.b _gInBufLeft,d2			
						
	tst.b _gBitsLeft			
	jbne _?L1292				
	lea _gInBuf,a0				
_?L1211:					
						
	subq.b #1,d0				
	move.b d0,_gInBufOfs			
						
	and.l #255,d0				
						
	lsr.w #8,d1				
	move.b d1,(a0,d0.l)			
						
	addq.b #1,d2				
	move.b d2,_gInBufLeft			
						
	move.b #8,_gBitsLeft			
						
	pea 1.w					
	jbsr (a3)				
	moveq #1,d0				
	move.l d0,(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.b _gCallbackStatus,d7		
	jbne _?L1173				
						
	clr.l d0				
	move.w _gImageXSize,d0			
	move.l d0,(a4)				
						
	move.w _gImageYSize,d0			
	move.l d0,4(a4)				
						
	clr.l d0				
	move.b _gCompsInFrame,d0		
	move.l d0,8(a4)				
						
	move.l _gScanType,20(a4)		
						
	move.w _gMaxMCUSPerRow,d0		
	move.l d0,12(a4)			
						
	move.w _gMaxMCUSPerCol,d0		
	move.l d0,16(a4)			
						
	clr.l d0				
	move.b _gMaxMCUXSize,d0			
	move.l d0,24(a4)			
						
	move.b _gMaxMCUYSize,d0			
	move.l d0,28(a4)			
						
	move.l #_gMCUBufR,32(a4)		
						
	move.l #_gMCUBufG,36(a4)		
						
	move.l #_gMCUBufB,40(a4)		
						
	move.b d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L1237:					
						
	moveq #27,d7				
						
	move.b d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L1305:					
						
	cmp.b #1,_gCompHSamp			
	jbne _?L1237				
						
	cmp.b #1,_gCompVSamp			
	jbne _?L1237				
						
	clr.l _gScanType			
						
	move.b #1,_gMaxBlocksPerMCU		
						
	clr.b _gMCUOrg				
						
	move.w #7,a0				
	moveq #8,d2				
_?L1191:					
						
	move.b #8,_gMaxMCUXSize			
						
	move.b d2,_gMaxMCUYSize			
						
	clr.l d1				
	move.w _gImageXSize,d1			
	addq.l #7,d1				
						
	moveq #3,d0				
	jbra _?L1213				
_?L1220:					
						
	moveq #37,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1182:					
						
	move.b _gCallbackStatus,d7		
	jbne _?L1173				
_?L1188:					
						
	moveq #26,d7				
						
	move.b d7,d0				
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L1309:					
	moveq #18,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1223:					
						
	moveq #7,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1308:					
						
	moveq #3,d2				
	jbra _?L1194				
_?L1199:					
	moveq #14,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1224:					
						
	moveq #8,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1246:					
						
	moveq #1,d2				
	jbra _?L1208				
_?L1244:					
	moveq #1,d2				
	jbra _?L1207				
_?L1248:					
	moveq #1,d1				
						
	and.b d1,d0				
						
	jbne _?L1205				
	jbra _?L1249				
_?L1292:					
						
	subq.b #1,d0				
						
	addq.b #1,d2				
						
	lea _gInBuf,a0				
						
	clr.l d3				
	move.b d0,d3				
						
	move.b d1,(a0,d3.l)			
						
	jbra _?L1211				
_?L1225:					
						
	moveq #9,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1306:					
						
	move.l d5,a1				
	move.b (a1),d0				
						
	cmp.b #1,d0				
	jbeq _?L1311				
						
	cmp.b #2,d0				
	jbne _?L1237				
						
	moveq #3,d0				
	move.l d0,_gScanType			
						
	move.b #4,_gMaxBlocksPerMCU		
						
	move.l #258,_gMCUOrg			
						
	move.w #15,a0				
	moveq #16,d2				
						
	move.b #8,_gMaxMCUXSize			
						
	move.b d2,_gMaxMCUYSize			
						
	clr.l d1				
	move.w _gImageXSize,d1			
	addq.l #7,d1				
						
	moveq #3,d0				
	jbra _?L1213				
_?L1240:					
						
	moveq #1,d1				
						
	moveq #1,d3				
	jbra _?L1201				
_?L1227:					
						
	moveq #11,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1239:					
						
	clr.b d3				
						
	clr.l d1				
	jbra _?L1201				
_?L1311:					
						
	moveq #1,d0				
	move.l d0,_gScanType			
						
	move.b #3,_gMaxBlocksPerMCU		
						
	move.w #1,_gMCUOrg			
						
	move.b #2,_gMCUOrg+2			
						
	move.w #7,a0				
	moveq #8,d2				
	jbra _?L1191				
_?L1243:					
						
	moveq #24,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1249:					
						
	moveq #23,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1307:					
						
	moveq #2,d0				
	move.l d0,_gScanType			
						
	move.b #4,_gMaxBlocksPerMCU		
						
	move.l #258,_gMCUOrg			
						
	move.w #7,a0				
	moveq #8,d2				
						
	move.b #16,_gMaxMCUXSize		
						
	move.b d2,_gMaxMCUYSize			
						
	clr.l d1				
	move.w _gImageXSize,d1			
	moveq #15,d0				
	add.l d0,d1				
						
	moveq #4,d0				
	jbra _?L1213				
_?L1226:					
						
	moveq #10,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
_?L1228:					
						
	moveq #36,d7				
						
	move.b _gCallbackStatus,d0		
						
	jbeq _?L1173				
	jbra _?L1304				
						
	.data					
	.align	2				
						
						
_CSWTCH?318:					
	.dc.l	_gHuffVal0			
	.dc.l	_gHuffVal1			
	.dc.l	_gHuffVal2			
	.dc.l	_gHuffVal3			
	.align	2				
						
						
_CSWTCH?316:					
	.dc.l	_gHuffTab0			
	.dc.l	_gHuffTab1			
	.dc.l	_gHuffTab2			
	.dc.l	_gHuffTab3			
	.align	2				
						
						
_CSWTCH?311:					
	.dc.w	-1				
	.dc.w	-3				
	.dc.w	-7				
	.dc.w	-15				
	.dc.w	-31				
	.dc.w	-63				
	.dc.w	-127				
	.dc.w	-255				
	.dc.w	-511				
	.dc.w	-1023				
	.dc.w	-2047				
	.dc.w	-4095				
	.dc.w	-8191				
	.dc.w	-16383				
	.dc.w	-32767				
	.align	2				
						
						
_CSWTCH?309:					
	.dc.w	1				
	.dc.w	2				
	.dc.w	4				
	.dc.w	8				
	.dc.w	16				
	.dc.w	32				
	.dc.w	64				
	.dc.w	128				
	.dc.w	256				
	.dc.w	512				
	.dc.w	1024				
	.dc.w	2048				
	.dc.w	4096				
	.dc.w	8192				
	.dc.w	16384				
	.globl	_gWinogradQuant			
						
						
_gWinogradQuant:				
	.dc.b $80,$b2,$b2,$a7,$f6,$a7,$97,$e8
	.dc.b $e8,$97,$80,$d1,$db,$d1,$80	
	.dc.b $65,$b2,$c5,$c5,$b2,$65,$45,$8b
	.dc.b $a7,$b1,$a7,$8b,$45,$23,$60,$83
	.dc.b $97,$97,$83,$60,$23		
	.dc.b $31,$5b,$76,$80,$76,$5b,$31,$2e
	.dc.b $51,$65,$65,$51,$2e,$2a,$45,$4f
	.dc.b $45,$2a,$23,$36,$36,$23,$1c,$25
	.dc.b $1c,$13,$13,$0a			
						
	.comm	_gReduce,1			
						
	.comm	_gCallbackStatus,1		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_pCallback_data,4		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_pNeedBytesCallback,4		
						
	.align 4	* workaround for 3 args .comm directive.
	.comm	_gMCUOrg,6			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gNumMCUSRemainingY,2		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gNumMCUSRemainingX,2		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gMaxMCUSPerCol,2		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gMaxMCUSPerRow,2		
						
	.comm	_gMaxMCUYSize,1			
						
	.comm	_gMaxMCUXSize,1			
						
	.comm	_gMaxBlocksPerMCU,1		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gScanType,4			
						
	.comm	_gCompACTab,3			
						
	.comm	_gCompDCTab,3			
						
	.comm	_gCompList,3			
						
	.comm	_gCompsInScan,1			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gRestartsLeft,2		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gNextRestartNum,2		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gRestartInterval,2		
						
	.comm	_gCompQuant,3			
						
	.comm	_gCompVSamp,3			
						
	.comm	_gCompHSamp,3			
						
	.comm	_gCompIdent,3			
						
	.comm	_gCompsInFrame,1		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gImageYSize,2			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gImageXSize,2			
						
	.comm	_gBitsLeft,1			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gBitBuf,2			
						
	.comm	_gInBufLeft,1			
						
	.comm	_gInBufOfs,1			
						
	.comm	_gInBuf,256			
						
	.comm	_gTemFlag,1			
						
	.comm	_gValidQuantTables,1		
						
	.comm	_gValidHuffTables,1		
						
	.comm	_gHuffVal3,256			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gHuffTab3,80			
						
	.comm	_gHuffVal2,256			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gHuffTab2,80			
						
	.comm	_gHuffVal1,16			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gHuffTab1,80			
						
	.comm	_gHuffVal0,16			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gHuffTab0,80			
						
	.align 4	* workaround for 3 args .comm directive.
	.comm	_gLastDC,6			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gQuant1,128			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gQuant0,128			
						
	.comm	_gMCUBufB,256			
						
	.comm	_gMCUBufG,256			
						
	.comm	_gMCUBufR,256			
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_gCoeffBuf,128			
						
						
_ZAG:						

	.dc.b $00				
	.dc.b $01,$08,$10,$09,$02,$03,$0a,$11
	.dc.b $18,$20,$19,$12,$0b,$04,$05,$0c
	.dc.b $13,$1a				
	.dc.b $21,$28,$30,$29,$22,$1b,$14,$0d
	.dc.b $06,$07,$0e,$15,$1c,$23,$2a,$31
	.dc.b $38,$39,$32,$2b,$24,$1d,$16,$0f
	.dc.b $17				
	.dc.b $1e,$25,$2c,$33,$3a,$3b,$34,$2d
	.dc.b $26,$1f,$27,$2e,$35,$3c,$3d,$36
	.dc.b $2f,$37,$3e,$3f			
						
