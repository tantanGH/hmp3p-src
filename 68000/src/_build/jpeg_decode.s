* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
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
						
	moveq #0,d0				
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
						
	.globl	___divsi3			
	.align	2				
	.globl	_jpeg_decode_init		
						
_jpeg_decode_init:				
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 32(sp),a5			
	move.l 36(sp),d3			
						
	move.w d3,(a5)				
						
	move.w 42(sp),2(a5)			
						
	pea 1.w					
	pea 512.w				
	lea _himem_malloc,a3			
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l d0,4(a5)				
						
	pea 1.w					
	pea 512.w				
	jbsr (a3)				
	addq.l #8,sp				
						
	move.l d0,8(a5)				
						
	pea 1.w					
	pea 512.w				
	jbsr (a3)				
	addq.l #8,sp				
	move.l d0,a4				
						
	move.l d0,12(a5)			
						
	move.l 4(a5),a3				
						
	cmp.w #0,a3				
	jbeq _?L15				
						
	move.l 8(a5),a6				
						
	cmp.w #0,a6				
	jbeq _?L15				
						
	tst.l d0				
	jbeq _?L15				
	ext.l d3				
	move.l d3,d4				
	lsl.l #5,d4				
	move.l a3,d5				
	add.l #512,d5				
						
	moveq #0,d3				
	lea ___divsi3,a5			
_?L12:						
						
	pea 100.w				
	move.l d3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	lsr.l #8,d0				
						
	move.w d0,d1				
	lsl.w #6,d1				
						
	addq.w #1,d1				
	move.w d1,(a3)+				
						
	move.w d0,d1				
	moveq #11,d2				
	lsl.w d2,d1				
						
	addq.w #1,d1				
	move.w d1,(a6)+				
						
	add.w d0,d0				
						
	addq.w #1,d0				
	move.w d0,(a4)+				
						
	add.l d4,d3				
	cmp.l d5,a3				
	jbne _?L12				
						
	moveq #0,d0				
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	rts					
_?L15:						
						
	moveq #-1,d0				
_?L11:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
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
						
	.globl	___mulsi3			
	.align	2				
	.globl	_jpeg_decode_exec		
						
_jpeg_decode_exec:				
	link.w a6,#-168				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 12(a6),d1			
	move.l 16(a6),d0			
						
	move.l 8(a6),a0				
	tst.w 2(a0)				
	jbne _?L95				
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
						
	moveq #0,d1				
	move.b d0,d1				
	move.l d1,-72(a6)			
						
	tst.b d0				
	jbne _?L34				
						
	move.l #512,d0				
	sub.l -40(a6),d0			
						
	move.l d0,d0				
	jbpl _?L101				
	addq.l #1,d0				
_?L101:						
	asr.l #1,d0				
	move.l d0,-60(a6)			
						
	move.l #512,d0				
	sub.l -44(a6),d0			
						
	move.l d0,d0				
	jbpl _?L102				
	addq.l #1,d0				
_?L102:						
	asr.l #1,d0				
	move.l d0,-88(a6)			
						
	clr.l -92(a6)				
						
	clr.l -84(a6)				
	move.l #_pjpeg_decode_mcu,-68(a6)	
						
	move.l 8(a6),a3				
_?L59:						
						
	move.l -68(a6),a0			
	jbsr (a0)				
						
	cmp.b #1,d0				
	jbeq _?L34				
_?L97:						
						
	tst.b d0				
	jbne _?L96				
						
	move.l -84(a6),a1			
	cmp.l -28(a6),a1			
	jbge _?L34				
						
	move.l -16(a6),d7			
						
	jble _?L68				
						
	move.l -40(a6),d3			
	move.l d7,-(sp)				
	move.l -84(a6),-(sp)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l -20(a6),d6			
						
	move.l -12(a6),-120(a6)			
						
	move.l -8(a6),-116(a6)			
						
	move.l -4(a6),-112(a6)			
						
	move.l -44(a6),d5			
	move.l d6,-(sp)				
	move.l -92(a6),-(sp)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,-80(a6)			
	tst.l d6				
	jble _?L68				
	move.l d3,d0				
	sub.l d4,d0				
	move.l d0,-100(a6)			
	move.l d7,d0				
	subq.l #1,d0				
	lsr.l #3,d0				
	addq.l #1,d0				
	lsl.l #4,d0				
	move.l d0,-76(a6)			
	clr.l -96(a6)				
	move.l d6,d0				
	subq.l #1,d0				
	moveq #-8,d1				
	and.l d1,d0				
	move.l -88(a6),a1			
	lea 8(a1,d0.l),a0			
	add.l -80(a6),a0			
	move.l a0,-108(a6)			
	add.l a1,d5				
	move.l d5,-104(a6)			
	add.l -60(a6),d3			
	move.l d3,-64(a6)			
_?L71:						
						
	move.l -100(a6),-140(a6)		
	moveq #8,d0				
	cmp.l -100(a6),d0			
	jbge _?L65				
	moveq #8,d1				
	move.l d1,-140(a6)			
_?L65:						
	tst.l -100(a6)				
	jble _?L67				
	move.b -93(a6),d0			
	lsl.b #3,d0				
	neg.b d0				
	move.b d0,-124(a6)			
	move.l -80(a6),a0			
	add.l -88(a6),a0			
	move.l a0,-144(a6)			
	move.l a0,d6				
	neg.l d6				
						
	move.l -64(a6),d0			
	sub.l -100(a6),d0			
	move.l d0,-136(a6)			
_?L77:						
						
	moveq #0,d1				
	move.b -124(a6),d1			
						
	move.l -120(a6),d2			
	add.l d1,d2				
						
	move.l -116(a6),d3			
	add.l d1,d3				
						
	add.l -112(a6),d1			
						
	move.l -104(a6),d5			
	add.l d6,d5				
	moveq #8,d7				
	cmp.l d5,d7				
	jbge _?L69				
	moveq #8,d5				
_?L69:						
						
	move.w d5,-132(a6)			
	move.l -144(a6),a0			
	add.l a0,a0				
	move.l a0,-128(a6)			
						
	clr.w d4				
						
	moveq #0,d0				
						
	move.w #8,a4				
	sub.w d5,a4				
	subq.w #1,d5				
	and.l #65535,d5				
	move.l -144(a6),a1			
	lea 1(a1,d5.l),a2			
	addq.l #1,d5				
	move.l d5,-148(a6)			
_?L70:						
						
	add.l -136(a6),d0			
						
	cmp.l #511,d0				
	jbls _?L72				
						
	addq.l #8,d2				
						
	addq.l #8,d3				
						
	addq.l #8,d1				
	addq.w #1,d4				
						
	moveq #0,d0				
	move.w d4,d0				
	cmp.l -140(a6),d0			
	jblt _?L70				
_?L98:						
						
	add.b #64,-124(a6)			
	addq.l #8,-144(a6)			
	subq.l #8,d6				
	move.l -108(a6),a5			
	cmp.l -144(a6),a5			
	jbne _?L77				
_?L67:						
						
	subq.l #8,-100(a6)			
	moveq #16,d0				
	add.l d0,-96(a6)			
	move.l -76(a6),d1			
	cmp.l -96(a6),d1			
	jbne _?L71				
_?L68:						
						
	addq.l #1,-92(a6)			
	move.l -92(a6),a4			
	cmp.l -32(a6),a4			
	jbne _?L59				
						
	addq.l #1,-84(a6)			
						
	clr.l -92(a6)				
						
	move.l -68(a6),a0			
	jbsr (a0)				
						
	cmp.b #1,d0				
	jbne _?L97				
_?L34:						
						
	move.l -72(a6),d0			
	movem.l -200(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L72:						
						
	moveq #10,d5				
	lsl.l d5,d0				
						
	move.l -144(a6),a0			
						
	tst.w -132(a6)				
	jble _?L74				
	add.l -128(a6),d0			
	move.l d0,a1				
	add.l #12582912,a1			
						
	move.l d3,d5				
	add.l d6,d5				
						
	move.l d1,a5				
	add.l d6,a5				
	move.l a5,-152(a6)			
						
	move.l d2,a5				
	add.l d6,a5				
	move.l d2,d7				
	move.l a4,d2				
	move.l a5,-164(a6)			
	move.l d5,a5				
_?L76:						
						
	cmp.w #511,a0				
	jbhi _?L75				
						
	moveq #0,d5				
	move.b (a5,a0.l),d5			
	add.l d5,d5				
						
	move.l -152(a6),a4			
	moveq #0,d0				
	move.b (a4,a0.l),d0			
	add.l d0,d0				
						
	move.l 8(a3),a4				
	move.w (a4,d5.l),d5			
	move.l 12(a3),a4			
	or.w (a4,d0.l),d5			
						
	move.l -164(a6),a4			
	moveq #0,d0				
	move.b (a4,a0.l),d0			
	add.l d0,d0				
						
	move.l 4(a3),a4				
	or.w (a4,d0.l),d5			
	or.w #1,d5				
	move.w d5,(a1)				
_?L75:						
						
	addq.l #1,a0				
						
	addq.l #2,a1				
	cmp.l a0,a2				
	jbne _?L76				
						
	move.l d2,a4				
	move.l d7,d2				
	add.l -148(a6),d2			
						
	add.l -148(a6),d3			
						
	add.l -148(a6),d1			
_?L74:						
						
	add.l a4,d2				
						
	add.l a4,d3				
						
	add.l a4,d1				
	addq.w #1,d4				
						
	moveq #0,d0				
	move.w d4,d0				
	cmp.l -140(a6),d0			
	jblt _?L70				
	jbra _?L98				
_?L95:						
						
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
						
	moveq #0,d1				
	move.b d0,d1				
	move.l d1,-72(a6)			
						
	tst.b d0				
	jbne _?L34				
						
	move.l -40(a6),d1			
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
	move.l d0,-144(a6)			
						
	move.l -44(a6),d1			
	jbpl _?L105				
	addq.l #1,d1				
_?L105:						
	asr.l #1,d1				
						
	move.l #512,d0				
	sub.l d1,d0				
						
	move.l d0,d0				
	jbpl _?L106				
	addq.l #1,d0				
_?L106:						
	asr.l #1,d0				
	move.l d0,-124(a6)			
						
	clr.l -92(a6)				
						
	clr.l -88(a6)				
	move.l #_pjpeg_decode_mcu,-68(a6)	
						
	move.l 8(a6),-148(a6)			
_?L37:						
						
	move.l -68(a6),a0			
	jbsr (a0)				
	move.b d0,-96(a6)			
						
	cmp.b #1,d0				
	jbeq _?L34				
						
	tst.b d0				
	jbne _?L99				
						
	move.l -88(a6),d5			
	cmp.l -28(a6),d5			
	jbge _?L34				
						
	move.l -16(a6),d5			
						
	jble _?L46				
						
	move.l -40(a6),-84(a6)			
	move.l -88(a6),-(sp)			
	move.l d5,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,d4				
						
	move.l -20(a6),d3			
						
	move.l -12(a6),-120(a6)			
						
	move.l -8(a6),-116(a6)			
						
	move.l -4(a6),-112(a6)			
						
	move.l -44(a6),-108(a6)			
	move.l d3,-(sp)				
	move.l -92(a6),-(sp)			
	jbsr ___mulsi3				
	addq.l #8,sp				
	move.l d0,-80(a6)			
	tst.l d3				
	jble _?L46				
	move.l d0,a0				
	move.l -84(a6),d1			
	sub.l d4,d1				
	move.l d1,-100(a6)			
	move.l d5,d0				
	subq.l #1,d0				
	moveq #-8,d5				
	and.l d5,d0				
	move.l -84(a6),d1			
	subq.l #8,d1				
	sub.l d0,d1				
	sub.l d4,d1				
	move.l d1,-76(a6)			
	move.l d3,d0				
	subq.l #1,d0				
	and.l d5,d0				
	lea 8(a0,d0.l),a0			
	move.l a0,-104(a6)			
_?L49:						
						
	move.l -84(a6),d1			
	sub.l -100(a6),d1			
	move.l d1,-140(a6)			
						
	move.l -100(a6),d5			
	moveq #8,d7				
	cmp.l d5,d7				
	jbge _?L43				
	moveq #8,d5				
_?L43:						
	tst.l -100(a6)				
	jble _?L45				
	move.l -80(a6),-136(a6)			
	move.b -96(a6),-128(a6)			
	move.l -148(a6),d4			
_?L57:						
						
	moveq #0,d0				
	move.b -128(a6),d0			
						
	move.l -120(a6),a4			
	add.l d0,a4				
						
	move.l -116(a6),a5			
	add.l d0,a5				
						
	move.l -112(a6),a2			
	add.l d0,a2				
						
	move.l -108(a6),d1			
	sub.l -136(a6),d1			
	moveq #8,d0				
	cmp.l d1,d0				
	jbge _?L47				
	moveq #8,d1				
_?L47:						
						
	move.w d1,d3				
						
	move.l -136(a6),d0			
	jbpl _?L107				
	addq.l #1,d0				
_?L107:						
	asr.l #1,d0				
						
	add.l -124(a6),d0			
	move.l d0,-132(a6)			
						
	moveq #0,d0				
						
	clr.w d2				
						
	move.w #8,a0				
	sub.w d1,a0				
	move.l a0,d6				
	subq.w #1,d1				
	and.l #65535,d1				
	addq.l #1,d1				
	move.l d1,-148(a6)			
_?L48:						
						
	btst #0,d2				
	jbne _?L92				
						
	add.l -140(a6),d0			
						
	move.l d0,d1				
	jbpl _?L108				
	addq.l #1,d1				
_?L108:						
	asr.l #1,d1				
						
	add.l -144(a6),d1			
						
	cmp.l #511,d1				
	jbls _?L52				
_?L92:						
						
	addq.l #8,a4				
						
	addq.l #8,a5				
						
	addq.l #8,a2				
	addq.w #1,d2				
						
	moveq #0,d0				
	move.w d2,d0				
	cmp.l d5,d0				
	jblt _?L48				
_?L100:						
						
	add.b #64,-128(a6)			
	addq.l #8,-136(a6)			
	move.l -136(a6),a4			
	cmp.l -104(a6),a4			
	jbne _?L57				
	move.l d4,-148(a6)			
_?L45:						
						
	subq.l #8,-100(a6)			
	add.b #-128,-96(a6)			
	move.l -100(a6),a1			
	cmp.l -76(a6),a1			
	jbne _?L49				
_?L46:						
						
	addq.l #1,-92(a6)			
	move.l -92(a6),d7			
	cmp.l -32(a6),d7			
	jbne _?L37				
						
	addq.l #1,-88(a6)			
						
	clr.l -92(a6)				
	jbra _?L37				
_?L52:						
						
	moveq #10,d0				
	lsl.l d0,d1				
						
	tst.w d3				
	jble _?L53				
						
	move.l -132(a6),a0			
						
	moveq #0,d0				
	move.l d4,-64(a6)			
_?L56:						
						
	btst #0,d0				
	jbne _?L54				
						
	cmp.w #511,a0				
	jbhi _?L55				
						
	lea (a0,a0.l),a1			
	lea (a1,d1.l),a3			
	add.l #12582912,a3			
						
	moveq #0,d4				
	move.b (a5,d0.l),d4			
	add.l d4,d4				
	move.l -64(a6),a1			
	move.l 8(a1),-156(a6)			
						
	moveq #0,d7				
	move.b (a2,d0.l),d7			
	move.l d7,a1				
	add.l a1,d7				
	move.l -64(a6),a1			
	move.l 12(a1),a1			
						
	move.w (a1,d7.l),d7			
	move.l -156(a6),a1			
	or.w (a1,d4.l),d7			
						
	moveq #0,d4				
	move.b (a4,d0.l),d4			
	add.l d4,d4				
	move.l -64(a6),a1			
	move.l 4(a1),a1				
						
	or.w (a1,d4.l),d7			
	or.w #1,d7				
	move.w d7,(a3)				
_?L55:						
						
	addq.l #1,a0				
_?L54:						
						
	addq.l #1,d0				
	cmp.w d3,d0				
	jblt _?L56				
						
	move.l -64(a6),d4			
	add.l -148(a6),a4			
						
	add.l -148(a6),a5			
						
	add.l -148(a6),a2			
_?L53:						
						
	add.l d6,a4				
						
	add.l d6,a5				
						
	add.l d6,a2				
	addq.w #1,d2				
						
	moveq #0,d0				
	move.w d2,d0				
	cmp.l d5,d0				
	jblt _?L48				
	jbra _?L100				
_?L96:						
						
	and.l #255,d0				
	move.l d0,-72(a6)			
						
	move.l -72(a6),d0			
	movem.l -200(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L99:						
						
	moveq #0,d1				
	move.b d0,d1				
	move.l d1,-72(a6)			
						
	move.l -72(a6),d0			
	movem.l -200(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
						
						
