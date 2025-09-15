* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68030
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"jpeg_decode.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_pjpeg_need_bytes_callback:			
	move.l a3,-(sp)				
	move.l d3,-(sp)				
	move.l 24(sp),a3			
						
	move.l 8(a3),d1				
						
	clr.l d0				
	move.b 19(sp),d0			
						
	move.l 4(a3),d3				
	sub.l d1,d3				
	cmp.l d3,d0				
	jbcc _?L2				
	move.l d0,d3				
_?L2:						
						
	tst.l d3				
	jbne _?L9				
						
	move.l 20(sp),a0			
	move.b d3,(a0)				
						
	add.l d3,8(a3)				
						
	clr.b d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
_?L9:						
						
	move.l d3,-(sp)				
	add.l (a3),d1				
	move.l d1,-(sp)				
	move.l 20(sp),-(sp)			
	jbsr _memcpy				
	lea (12,sp),sp				
						
	move.l 20(sp),a0			
	move.b d3,(a0)				
						
	add.l d3,8(a3)				
						
	clr.b d0				
	move.l (sp)+,d3				
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_jpeg_decode_init		
						
_jpeg_decode_init:				
	movem.l d3/d4/d5/a3/a4,-(sp)		
	move.l 24(sp),a3			
	move.l 28(sp),d3			
						
	move.w d3,(a3)				
						
	move.w 34(sp),2(a3)			
						
	pea 1.w					
	pea 512.w				
	lea _himem_malloc,a4			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d0,4(a3)				
						
	pea 1.w					
	pea 512.w				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d0,8(a3)				
						
	pea 1.w					
	pea 512.w				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a1				
						
	move.l d0,12(a3)			
						
	move.l 4(a3),a0				
						
	tst.l a0				
	jbeq _?L15				
						
	move.l 8(a3),a2				
						
	tst.l a2				
	jbeq _?L15				
						
	tst.l d0				
	jbeq _?L15				
	ext.l d3				
	lsl.l #5,d3				
	move.l a0,d4				
	add.l #512,d4				
						
	clr.l d2				
_?L12:						
						
	move.l d2,d0				
	muls.l #1374389535,d1:d0		
	asr.l #5,d1				
	move.l d2,d0				
	add.l d0,d0				
	subx.l d0,d0				
	sub.l d0,d1				
						
	lsr.l #8,d1				
						
	move.w d1,d0				
	lsl.w #6,d0				
						
	addq.w #1,d0				
	move.w d0,(a0)+				
						
	move.w d1,d0				
	moveq #11,d5				
	lsl.w d5,d0				
						
	addq.w #1,d0				
	move.w d0,(a2)+				
						
	lsl.w #1,d1				
						
	addq.w #1,d1				
	move.w d1,(a1)+				
						
	add.l d3,d2				
	cmp.l d4,a0				
	jbne _?L12				
						
	clr.l d0				
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
_?L15:						
						
	moveq #-1,d0				
_?L11:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4		
	rts					
						
	.align	2				
	.globl	_jpeg_decode_close		
						
_jpeg_decode_close:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	move.l 4(a3),d0				
						
	jbeq _?L20				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 4(a3)				
_?L20:						
						
	move.l 8(a3),d0				
						
	jbeq _?L21				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 8(a3)				
_?L21:						
						
	move.l 12(a3),d0			
						
	jbeq _?L19				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 12(a3)				
_?L19:						
						
	move.l (sp)+,a3				
	rts					
						
	.align	2				
	.globl	_jpeg_decode_exec		
						
_jpeg_decode_exec:				
	link.w a6,#-160				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 8(a6),a3				
	move.l 12(a6),d1			
	move.l 16(a6),d0			
						
	tst.w 2(a3)				
	jbne _?L96				
_?L36:						
						
	move.l d1,-56(a6)			
						
	move.l d0,-52(a6)			
						
	clr.l -48(a6)				
						
	clr.l -44(a6)				
	clr.l -40(a6)				
	clr.l -36(a6)				
	clr.l -32(a6)				
	clr.l -28(a6)				
	clr.l -24(a6)				
	clr.l -20(a6)				
	clr.l -16(a6)				
	clr.l -12(a6)				
	clr.l -8(a6)				
	clr.l -4(a6)				
						
	clr.l -(sp)				
	pea -56(a6)				
	pea _pjpeg_need_bytes_callback		
	pea -44(a6)				
	jbsr _pjpeg_decode_init			
	lea (16,sp),sp				
						
	clr.l d1				
	move.b d0,d1				
	move.l d1,-80(a6)			
						
	tst.b d0				
	jbne _?L34				
						
	move.l #512,d0				
	sub.l -40(a6),d0			
						
	move.l d0,d0				
	jbpl _?L99				
	addq.l #1,d0				
_?L99:						
	asr.l #1,d0				
	move.l d0,-64(a6)			
						
	move.l #512,d0				
	sub.l -44(a6),d0			
						
	move.l d0,d0				
	jbpl _?L100				
	addq.l #1,d0				
_?L100:						
	asr.l #1,d0				
	move.l d0,-92(a6)			
						
	clr.l -96(a6)				
						
	clr.l -88(a6)				
	move.l #_pjpeg_decode_mcu,-72(a6)	
	moveq #-8,d3				
	sub.l d0,d3				
	move.l d3,-60(a6)			
_?L59:						
						
	move.l -72(a6),a0			
	jbsr (a0)				
						
	cmp.b #1,d0				
	jbeq _?L34				
						
	tst.b d0				
	jbne _?L93				
						
	move.l -88(a6),d1			
	cmp.l -28(a6),d1			
	jbge _?L34				
						
	move.l -16(a6),d3			
						
	jble _?L68				
	move.l d1,d2				
						
	move.l -40(a6),a0			
	muls.l d3,d2				
						
	move.l -20(a6),d0			
						
	move.l -12(a6),-124(a6)			
						
	move.l -8(a6),-120(a6)			
						
	move.l -4(a6),-116(a6)			
						
	move.l -44(a6),d1			
	move.l -96(a6),d4			
	muls.l d0,d4				
	move.l d4,-84(a6)			
	tst.l d0				
	jble _?L68				
	sub.l d2,a0				
	move.l a0,-104(a6)			
	subq.l #1,d3				
	lsr.l #3,d3				
	move.l d3,-76(a6)			
	subq.l #1,d0				
	moveq #-8,d5				
	and.l d5,d0				
	move.l -60(a6),a0			
	sub.l d0,a0				
	sub.l d4,a0				
	move.l a0,-112(a6)			
	clr.l -100(a6)				
						
	add.l -64(a6),d2			
	move.l d2,-68(a6)			
	add.l -92(a6),d1			
	move.l d1,-108(a6)			
_?L71:						
						
	move.l -104(a6),-148(a6)		
	moveq #8,d0				
	cmp.l -104(a6),d0			
	jbge _?L65				
	moveq #8,d1				
	move.l d1,-148(a6)			
_?L65:						
	tst.l -104(a6)				
	jble _?L67				
	move.b -97(a6),d3			
	lsl.b #7,d3				
	move.b d3,-128(a6)			
	move.l -92(a6),d4			
	add.l -84(a6),d4			
	move.l d4,-140(a6)			
	move.l d4,d6				
	neg.l d6				
						
	move.l -100(a6),d0			
	lsl.l #3,d0				
	add.l -68(a6),d0			
	move.l d0,-144(a6)			
_?L77:						
						
	clr.l d1				
	move.b -128(a6),d1			
						
	move.l -124(a6),d2			
	add.l d1,d2				
						
	move.l -120(a6),d3			
	add.l d1,d3				
						
	add.l -116(a6),d1			
						
	move.l -108(a6),d5			
	add.l d6,d5				
	moveq #8,d0				
	cmp.l d5,d0				
	jbge _?L69				
	moveq #8,d5				
_?L69:						
						
	move.w d5,-136(a6)			
	move.l -140(a6),d4			
	add.l d4,d4				
	move.l d4,-132(a6)			
						
	clr.w d4				
						
	clr.l d0				
						
	move.w #8,a4				
	sub.w d5,a4				
	subq.w #1,d5				
	and.l #65535,d5				
	move.l -140(a6),a0			
	lea 1(a0,d5.l),a2			
	addq.l #1,d5				
	move.l d5,-152(a6)			
_?L70:						
						
	add.l -144(a6),d0			
						
	cmp.l #511,d0				
	jbls _?L72				
						
	addq.l #8,d2				
						
	addq.l #8,d3				
						
	addq.l #8,d1				
	addq.w #1,d4				
						
	clr.l d0				
	move.w d4,d0				
	cmp.l -148(a6),d0			
	jblt _?L70				
_?L97:						
						
	add.b #64,-128(a6)			
	addq.l #8,-140(a6)			
	subq.l #8,d6				
	cmp.l -112(a6),d6			
	jbne _?L77				
_?L67:						
						
	move.l -100(a6),d0			
	addq.l #1,d0				
	subq.l #8,-104(a6)			
	move.l -76(a6),d1			
	cmp.l -100(a6),d1			
	jbeq _?L68				
	move.l d0,-100(a6)			
	jbra _?L71				
_?L93:						
						
	and.l #255,d0				
	move.l d0,-80(a6)			
_?L34:						
						
	move.l -80(a6),d0			
	movem.l -192(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L72:						
						
	moveq #10,d5				
	lsl.l d5,d0				
						
	move.l -140(a6),a0			
						
	tst.w -136(a6)				
	jble _?L74				
	move.l -132(a6),a5			
	lea 12582912(a5,d0.l),a1		
						
	move.l d3,d5				
	add.l d6,d5				
						
	move.l d1,a5				
	add.l d6,a5				
	move.l a5,-156(a6)			
						
	move.l d2,a5				
	add.l d6,a5				
	move.l d2,d7				
	move.l a4,d2				
	move.l a5,-160(a6)			
	move.l d5,a5				
_?L76:						
						
	cmp.w #511,a0				
	jbhi _?L75				
						
	clr.l d5				
	move.b (a5,a0.l),d5			
	add.l d5,d5				
						
	move.l -156(a6),a4			
	clr.l d0				
	move.b (a4,a0.l),d0			
	add.l d0,d0				
						
	move.l 12(a3),a4			
	move.w (a4,d0.l),d0			
	move.l 8(a3),a4				
	or.w (a4,d5.l),d0			
						
	move.l -160(a6),a4			
	clr.l d5				
	move.b (a4,a0.l),d5			
	add.l d5,d5				
						
	move.l 4(a3),a4				
	or.w (a4,d5.l),d0			
	or.w #1,d0				
	move.w d0,(a1)				
_?L75:						
						
	addq.l #1,a0				
						
	addq.l #2,a1				
	cmp.l a0,a2				
	jbne _?L76				
						
	move.l d2,a4				
	move.l d7,d2				
	add.l -152(a6),d2			
						
	add.l -152(a6),d3			
						
	add.l -152(a6),d1			
_?L74:						
						
	add.l a4,d2				
						
	add.l a4,d3				
						
	add.l a4,d1				
	addq.w #1,d4				
						
	clr.l d0				
	move.w d4,d0				
	cmp.l -148(a6),d0			
	jblt _?L70				
	jbra _?L97				
_?L68:						
						
	addq.l #1,-96(a6)			
	move.l -96(a6),d3			
	cmp.l -32(a6),d3			
	jbne _?L59				
						
	addq.l #1,-88(a6)			
						
	clr.l -96(a6)				
	jbra _?L59				
_?L96:						
						
	move.l d1,-56(a6)			
						
	move.l d0,-52(a6)			
						
	clr.l -48(a6)				
						
	clr.l -44(a6)				
	clr.l -40(a6)				
	clr.l -36(a6)				
	clr.l -32(a6)				
	clr.l -28(a6)				
	clr.l -24(a6)				
	clr.l -20(a6)				
	clr.l -16(a6)				
	clr.l -12(a6)				
	clr.l -8(a6)				
	clr.l -4(a6)				
						
	clr.l -(sp)				
	pea -56(a6)				
	pea _pjpeg_need_bytes_callback		
	pea -44(a6)				
	jbsr _pjpeg_decode_init			
	lea (16,sp),sp				
						
	clr.l d1				
	move.b d0,d1				
	move.l d1,-80(a6)			
						
	tst.b d0				
	jbne _?L34				
						
	move.l -40(a6),d1			
	jbpl _?L101				
	addq.l #1,d1				
_?L101:						
	asr.l #1,d1				
						
	move.l #512,d0				
	sub.l d1,d0				
						
	move.l d0,d0				
	jbpl _?L102				
	addq.l #1,d0				
_?L102:						
	move.l d0,d7				
	asr.l #1,d7				
						
	move.l -44(a6),d1			
	jbpl _?L103				
	addq.l #1,d1				
_?L103:						
	asr.l #1,d1				
						
	move.l #512,d0				
	sub.l d1,d0				
						
	move.l d0,d0				
	jbpl _?L104				
	addq.l #1,d0				
_?L104:						
	asr.l #1,d0				
	move.l d0,-136(a6)			
						
	clr.l -108(a6)				
						
	clr.l -104(a6)				
	move.l #_pjpeg_decode_mcu,-72(a6)	
	move.l d7,-84(a6)			
_?L37:						
						
	move.l -72(a6),a0			
	jbsr (a0)				
						
	cmp.b #1,d0				
	jbeq _?L34				
						
	tst.b d0				
	jbne _?L93				
						
	move.l -104(a6),d1			
	cmp.l -28(a6),d1			
	jbge _?L34				
						
	move.l -16(a6),d1			
						
	jble _?L46				
						
	move.l -40(a6),-92(a6)			
	move.l -104(a6),d2			
	muls.l d1,d2				
						
	move.l -20(a6),d0			
						
	move.l -12(a6),-132(a6)			
						
	move.l -8(a6),-128(a6)			
						
	move.l -4(a6),-124(a6)			
						
	move.l -44(a6),-120(a6)			
	move.l -108(a6),d4			
	muls.l d0,d4				
	move.l d4,-96(a6)			
	tst.l d0				
	jble _?L46				
	move.l -92(a6),d5			
	sub.l d2,d5				
	move.l d5,-112(a6)			
	subq.l #1,d1				
	lsr.l #3,d1				
	addq.l #1,d1				
	lsl.l #4,d1				
	move.l d1,-88(a6)			
	clr.l -100(a6)				
	subq.l #1,d0				
	moveq #-8,d1				
	and.l d1,d0				
	move.l d4,a0				
	lea 8(a0,d0.l),a0			
	move.l a0,-116(a6)			
_?L49:						
						
	move.l -92(a6),d0			
	sub.l -112(a6),d0			
	move.l d0,-152(a6)			
						
	move.l -112(a6),a4			
	moveq #8,d1				
	cmp.l a4,d1				
	jbge _?L43				
	move.w #8,a4				
_?L43:						
	tst.l -112(a6)				
	jble _?L45				
	move.b -97(a6),d0			
	neg.b d0				
	lsl.b #3,d0				
	move.b d0,-140(a6)			
	move.l -96(a6),-148(a6)			
	move.l -84(a6),a5			
_?L57:						
						
	clr.l d0				
	move.b -140(a6),d0			
						
	move.l -132(a6),a2			
	add.l d0,a2				
						
	move.l -128(a6),a0			
	add.l d0,a0				
	move.l a0,-76(a6)			
						
	move.l -124(a6),a1			
	add.l d0,a1				
						
	move.l -120(a6),d1			
	sub.l -148(a6),d1			
	moveq #8,d0				
	cmp.l d1,d0				
	jbge _?L47				
	moveq #8,d1				
_?L47:						
						
	move.w d1,d4				
						
	move.l -148(a6),d0			
	jbpl _?L105				
	addq.l #1,d0				
_?L105:						
	asr.l #1,d0				
						
	add.l -136(a6),d0			
	move.l d0,-144(a6)			
						
	clr.l d0				
						
	clr.w d2				
						
	move.w #8,a0				
	sub.w d1,a0				
	move.l a0,d6				
	subq.w #1,d1				
	clr.l d5				
	move.w d1,d5				
	addq.l #1,d5				
	move.l d5,d7				
_?L48:						
						
	btst #0,d2				
	jbne _?L92				
						
	add.l -152(a6),d0			
						
	move.l d0,d0				
	jbpl _?L106				
	addq.l #1,d0				
_?L106:						
	asr.l #1,d0				
						
	add.l a5,d0				
						
	cmp.l #511,d0				
	jbls _?L52				
_?L92:						
						
	addq.l #8,a2				
						
	addq.l #8,-76(a6)			
						
	addq.l #8,a1				
	addq.w #1,d2				
						
	clr.l d0				
	move.w d2,d0				
	cmp.l a4,d0				
	jblt _?L48				
_?L98:						
						
	add.b #64,-140(a6)			
	addq.l #8,-148(a6)			
	move.l -148(a6),d0			
	cmp.l -116(a6),d0			
	jbne _?L57				
_?L45:						
						
	subq.l #8,-112(a6)			
	moveq #16,d0				
	add.l d0,-100(a6)			
	move.l -100(a6),a0			
	cmp.l -88(a6),a0			
	jbne _?L49				
_?L46:						
						
	addq.l #1,-108(a6)			
	move.l -108(a6),d3			
	cmp.l -32(a6),d3			
	jbne _?L37				
						
	addq.l #1,-104(a6)			
						
	clr.l -108(a6)				
	jbra _?L37				
_?L52:						
						
	moveq #10,d1				
	lsl.l d1,d0				
	move.l d0,a0				
						
	tst.w d4				
	jble _?L53				
						
	move.l -144(a6),d1			
						
	clr.l d0				
	move.l a4,-68(a6)			
_?L56:						
						
	btst #0,d0				
	jbne _?L54				
						
	cmp.l #511,d1				
	jbhi _?L55				
						
	move.l -76(a6),a4			
	clr.l d5				
	move.b (a4,d0.l),d5			
	add.l d5,d5				
						
	clr.l d3				
	move.b (a1,d0.l),d3			
	add.l d3,d3				
						
	move.l 12(a3),a4			
	move.w (a4,d3.l),d3			
	move.l 8(a3),a4				
	or.w (a4,d5.l),d3			
						
	clr.l d5				
	move.b (a2,d0.l),d5			
	add.l d5,d5				
						
	move.l 4(a3),a4				
	or.w (a4,d5.l),d3			
	or.w #1,d3				
	move.w d3,12582912(a0,d1.l*2)		
_?L55:						
						
	addq.l #1,d1				
_?L54:						
						
	addq.l #1,d0				
	cmp.w d4,d0				
	jblt _?L56				
						
	move.l -68(a6),a4			
	add.l d7,a2				
						
	add.l d7,-76(a6)			
						
	add.l d7,a1				
_?L53:						
						
	add.l d6,a2				
						
	add.l d6,-76(a6)			
						
	add.l d6,a1				
	addq.w #1,d2				
						
	clr.l d0				
	move.w d2,d0				
	cmp.l a4,d0				
	jblt _?L48				
	jbra _?L98				
						
						
