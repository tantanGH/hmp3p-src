* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"mp3_decode.c"			
						
						
						
						
						
	.text					
	.align	2				
						
_convert_utf16_to_cp932:			
	movem.l d3/d4/d5/a3/a4/a5/a6,-(sp)	
	move.l 32(sp),a5			
	move.l 36(sp),a6			
						
	move.b (a6),d0				
						
	move.l 40(sp),d3			
	subq.l #2,d3				
						
	lsr.l #1,d3				
						
	jbeq _?L1				
						
	clr.w d4				
	cmp.b #-2,d0				
	jbeq _?L13				
	lea _utf16_to_cp932_map,a4		
	lea _strlen,a3				
	sub.l a0,a0				
_?L3:						
						
	addq.l #1,a0				
	add.l a0,a0				
						
	moveq #0,d1				
	move.b 1(a6,a0.l),d1			
						
	lsl.l #8,d1				
						
	clr.w d0				
	move.b (a6,a0.l),d0			
						
	or.w d1,d0				
						
	and.l #65535,d0				
						
	add.l d0,d0				
	move.w (a4,d0.l),d5			
						
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.w d5,d1				
	lsr.w #8,d1				
	move.b d1,(a5,d0.l)			
						
	move.b d5,1(a5,d0.l)			
						
	clr.b 2(a5,d0.l)			
	addq.w #1,d4				
						
	move.w d4,a0				
	cmp.l a0,d3				
	jbhi _?L3				
_?L1:						
						
	movem.l (sp)+,d3/d4/d5/a3/a4/a5/a6	
	rts					
_?L13:						
	sub.l a0,a0				
	lea _utf16_to_cp932_map,a4		
	lea _strlen,a3				
_?L4:						
						
	addq.l #1,a0				
	add.l a0,a0				
						
	clr.w d0				
	move.b 1(a6,a0.l),d0			
						
	moveq #0,d1				
	move.b (a6,a0.l),d1			
						
	lsl.l #8,d1				
						
	or.w d1,d0				
						
	and.l #65535,d0				
						
	add.l d0,d0				
	move.w (a4,d0.l),d5			
						
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.w d5,d1				
	lsr.w #8,d1				
	move.b d1,(a5,d0.l)			
						
	move.b d5,1(a5,d0.l)			
						
	clr.b 2(a5,d0.l)			
	addq.w #1,d4				
						
	move.w d4,a0				
	cmp.l d3,a0				
	jbcc _?L1				
						
	addq.l #1,a0				
	add.l a0,a0				
						
	clr.w d0				
	move.b 1(a6,a0.l),d0			
						
	moveq #0,d1				
	move.b (a6,a0.l),d1			
						
	lsl.l #8,d1				
						
	or.w d1,d0				
						
	and.l #65535,d0				
						
	add.l d0,d0				
	move.w (a4,d0.l),d5			
						
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	move.w d5,d1				
	lsr.w #8,d1				
	move.b d1,(a5,d0.l)			
						
	move.b d5,1(a5,d0.l)			
						
	clr.b 2(a5,d0.l)			
	addq.w #1,d4				
						
	move.w d4,a0				
	cmp.l d3,a0				
	jbcs _?L4				
	jbra _?L1				
						
	.align	2				
	.globl	_mp3_decode_init		
						
_mp3_decode_init:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
	move.l 12(sp),a3			
						
	clr.l (a3)				
						
	clr.l 4(a3)				
						
	clr.w 8(a3)				
						
	clr.l 10(a3)				
						
	clr.l 14(a3)				
						
	clr.l 18(a3)				
						
	moveq #-1,d0				
	move.l d0,22(a3)			
						
	move.l d0,26(a3)			
						
	clr.l 30(a3)				
						
	pea 64.w				
	clr.l -(sp)				
	pea 38(a3)				
	lea _memset,a4				
	jbsr (a4)				
	lea (12,sp),sp				
						
	pea 9268.w				
	clr.l -(sp)				
	pea 102(a3)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	pea 13324.w				
	clr.l -(sp)				
	pea 9370(a3)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	lea (22694,a3),a0			
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)+				
	clr.b (a0)				
						
	clr.l 34(a3)				
						
	clr.l 22702(a3)				
						
	moveq #0,d0				
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	rts					
						
	.align	2				
	.globl	_mp3_decode_close		
						
_mp3_decode_close:				
	move.l a3,-(sp)				
	move.l 8(sp),a3				
						
	pea 102(a3)				
	jbsr _mad_frame_finish			
	addq.l #4,sp				
						
	pea 38(a3)				
	jbsr _mad_stream_finish			
	addq.l #4,sp				
						
	move.l 10(a3),d0			
						
	jbeq _?L17				
						
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 10(a3)				
_?L17:						
						
	move.l 14(a3),d0			
						
	jbeq _?L18				
						
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 14(a3)				
_?L18:						
						
	move.l 18(a3),d0			
						
	jbeq _?L16				
						
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
						
	clr.l 18(a3)				
_?L16:						
						
	move.l (sp)+,a3				
	rts					
						
	.data					
_?LC0:						
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$72,$65
	.dc.b $61,$64,$20,$6d,$70,$33,$20,$66
	.dc.b $69,$6c,$65,$2e
	.dc.b $00				
_?LC1:						
	.dc.b $30,$30,$30,$30
	.dc.b $00				
_?LC2:						
	.dc.b $5a,$5a,$5a,$5a
	.dc.b $00				
_?LC3:						
	.dc.b $54,$49,$54,$32
	.dc.b $00				
_?LC4:						
	.dc.b $54,$50,$45,$31
	.dc.b $00				
_?LC5:						
	.dc.b $54,$41,$4c,$42
	.dc.b $00				
_?LC6:						
	.dc.b $41,$50,$49,$43
	.dc.b $00				
	.text					
	.align	2				
	.globl	_mp3_decode_parse_tags		
						
_mp3_decode_parse_tags:				
	link.w a6,#-52				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 20(a6),d4			
	move.w 14(a6),d6			
	move.w 18(a6),-44(a6)			
						
	move.l d4,-(sp)				
	pea 10.w				
	pea 1.w					
	pea -36(a6)				
	lea _fread,a3				
	jbsr (a3)				
	lea (16,sp),sp				
						
	moveq #10,d1				
	cmp.l d0,d1				
	jbne _?L72				
						
	moveq #0,d0				
						
	cmp.b #73,-36(a6)			
	jbne _?L31				
						
	cmp.b #68,-35(a6)			
	jbne _?L31				
						
	cmp.b #51,-34(a6)			
	jbne _?L31				
						
	move.b -30(a6),d0			
	lsl.w #5,d0				
	swap d0					
	clr.w d0				
	and.l #266338304,d0			
						
	moveq #0,d1				
	move.b -29(a6),d1			
	moveq #14,d2				
	lsl.l d2,d1				
	and.l #2080768,d1			
						
	or.l d1,d0				
						
	move.b -27(a6),d1			
	and.b #127,d1				
	and.l #255,d1				
						
	or.l d1,d0				
						
	moveq #0,d1				
	move.b -28(a6),d1			
	lsl.l #7,d1				
	and.l #16256,d1				
						
	or.l d1,d0				
	move.l d0,-42(a6)			
						
	clr.w d7				
	move.b -33(a6),d7			
						
	cmp.w #2,d7				
	jble _?L41				
						
	btst #6,-31(a6)				
	jbne _?L73				
_?L35:						
						
	moveq #10,d0				
	cmp.l -42(a6),d0			
	jbcc _?L41				
						
	sub.l a5,a5				
	lea (-26,a6),a4				
						
	move.w d6,-38(a6)			
	move.l -42(a6),d6			
_?L38:						
						
	move.l d4,-(sp)				
	pea 10.w				
	pea 1.w					
	move.l a4,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	cmp.w #3,d7				
	jbeq _?L74				
						
	moveq #0,d3				
	move.b -22(a6),d3			
	lsl.w #5,d3				
	swap d3					
	clr.w d3				
	and.l #266338304,d3			
						
	moveq #0,d0				
	move.b -21(a6),d0			
	moveq #14,d1				
	lsl.l d1,d0				
	and.l #2080768,d0			
						
	or.l d0,d3				
						
	move.b -19(a6),d0			
	and.b #127,d0				
	and.l #255,d0				
						
	or.l d0,d3				
						
	moveq #0,d0				
	move.b -20(a6),d0			
	lsl.l #7,d0				
	and.l #16256,d0				
						
	or.l d0,d3				
_?L40:						
						
	pea 4.w					
	pea _?LC1				
	move.l a4,-(sp)				
	jbsr _memcmp				
	lea (12,sp),sp				
						
	tst.l d0				
	jblt _?L41				
						
	pea 4.w					
	pea _?LC2				
	move.l a4,-(sp)				
	jbsr _memcmp				
	lea (12,sp),sp				
						
	tst.l d0				
	jbgt _?L41				
						
	cmp.b #84,(a4)				
	jbeq _?L75				
_?L55:						
						
	tst.w -38(a6)				
	jble _?L58				
						
	cmp.b #65,(a4)				
	jbeq _?L76				
_?L58:						
						
	pea 1.w					
	move.l d3,-(sp)				
	move.l d4,-(sp)				
	jbsr _fseek				
	lea (12,sp),sp				
						
	lea 10(a5,d3.l),a5			
						
	lea (10,a5),a0				
						
	cmp.l a0,d6				
	jbhi _?L38				
_?L41:						
						
	moveq #10,d0				
	add.l -42(a6),d0			
_?L31:						
						
	movem.l -84(a6),d3/d4/d5/d6/d7/a3/a4/a5	
	unlk a6					
	rts					
_?L75:						
						
	cmp.b #73,-25(a6)			
	jbeq _?L77				
_?L44:						
						
	cmp.b #84,(a4)				
	jbne _?L55				
	cmp.b #80,-25(a6)			
	jbeq _?L78				
_?L50:						
						
	cmp.b #84,(a4)				
	jbne _?L55				
	cmp.b #65,-25(a6)			
	jbne _?L55				
	cmp.b #76,-24(a6)			
	jbne _?L55				
	cmp.b #66,-23(a6)			
	jbne _?L55				
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	jbsr _himem_malloc			
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d5,a1				
	move.b (a1),d0				
						
	jbeq _?L79				
						
	cmp.b #1,d0				
	jbeq _?L80				
_?L61:						
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
_?L82:						
						
	lea 10(a5,d3.l),a5			
						
	lea (10,a5),a0				
						
	cmp.l a0,d6				
	jbhi _?L38				
	jbra _?L41				
_?L77:						
						
	cmp.b #84,-24(a6)			
	jbne _?L44				
	cmp.b #50,-23(a6)			
	jbne _?L44				
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	jbsr _himem_malloc			
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d5,a0				
	move.b (a0),d0				
						
	jbeq _?L81				
						
	cmp.b #1,d0				
	jbne _?L61				
						
	clr.l -(sp)				
	move.l d3,a0				
	pea -2(a0)				
	jbsr _himem_malloc			
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l 8(a6),a1				
	move.l d0,10(a1)			
						
	clr.b (a0)				
						
	move.l d3,a0				
	pea -1(a0)				
	move.l d5,a1				
	pea 1(a1)				
	move.l 8(a6),a0				
	move.l 10(a0),-(sp)			
	jbsr _convert_utf16_to_cp932		
	lea (12,sp),sp				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L76:						
						
	cmp.b #80,-25(a6)			
	jbne _?L58				
	cmp.b #73,-24(a6)			
	jbne _?L58				
	cmp.b #67,-23(a6)			
	jbne _?L58				
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	jbsr _himem_malloc			
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d5,a0				
	addq.l #1,a0				
						
	move.l a0,-(sp)				
	lea _strlen,a1				
	move.l a0,-52(a6)			
	move.l a1,-48(a6)			
	jbsr (a1)				
						
	move.l -52(a6),a0			
	lea 2(a0,d0.l),a0			
						
	move.l a0,(sp)				
	lea _strlen,a1				
	move.l a0,-52(a6)			
	jbsr (a1)				
	addq.l #4,sp				
						
	move.l -52(a6),a0			
	lea 1(a0,d0.l),a0			
						
	cmp.b #-1,(a0)				
	jbne _?L61				
						
	cmp.b #-40,1(a0)			
	jbne _?L61				
						
	move.w -44(a6),a1			
	move.l a1,-(sp)				
	move.w -38(a6),a1			
	move.l a1,-(sp)				
	pea -16(a6)				
	move.l a0,-52(a6)			
	jbsr _jpeg_decode_init			
	lea (12,sp),sp				
						
	move.l -52(a6),a0			
	move.l a0,d0				
	sub.l d5,d0				
						
	move.l d3,d1				
	sub.l d0,d1				
	move.l d1,-(sp)				
	move.l a0,-(sp)				
	pea -16(a6)				
	jbsr _jpeg_decode_exec			
	lea (12,sp),sp				
						
	pea -16(a6)				
	jbsr _jpeg_decode_close			
	addq.l #4,sp				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L74:						
						
	move.l -22(a6),d3			
	jbra _?L40				
_?L78:						
						
	cmp.b #69,-24(a6)			
	jbne _?L50				
	cmp.b #49,-23(a6)			
	jbne _?L50				
						
	moveq #3,d0				
	cmp.l d3,d0				
	jbcc _?L50				
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	lea _himem_malloc,a0			
	move.l a0,-52(a6)			
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,d5				
						
	move.l d4,-(sp)				
	move.l d3,-(sp)				
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	move.l d5,a1				
	move.b (a1),d0				
						
	move.l -52(a6),a0			
	jbeq _?L83				
						
	cmp.b #1,d0				
	jbne _?L61				
						
	clr.l -(sp)				
	move.l d3,a1				
	pea -2(a1)				
	jbsr (a0)				
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l 8(a6),a1				
	move.l d0,14(a1)			
						
	clr.b (a0)				
						
	move.l d3,a0				
	pea -1(a0)				
	move.l d5,a1				
	pea 1(a1)				
	move.l 8(a6),a0				
	move.l 14(a0),-(sp)			
	jbsr _convert_utf16_to_cp932		
	lea (12,sp),sp				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L73:						
						
	move.l d4,-(sp)				
	pea 6.w					
	pea 1.w					
	pea -16(a6)				
	jbsr (a3)				
	lea (16,sp),sp				
						
	cmp.w #3,d7				
	jbeq _?L84				
						
	moveq #0,d0				
	move.b -16(a6),d0			
	lsl.w #5,d0				
	swap d0					
	clr.w d0				
	and.l #266338304,d0			
						
	moveq #0,d1				
	move.b -15(a6),d1			
	moveq #14,d2				
	lsl.l d2,d1				
	and.l #2080768,d1			
						
	or.l d1,d0				
						
	move.b -13(a6),d1			
	and.b #127,d1				
	and.l #255,d1				
						
	or.l d1,d0				
						
	moveq #0,d1				
	move.b -14(a6),d1			
	lsl.l #7,d1				
	and.l #16256,d1				
						
	or.l d1,d0				
						
	move.l d0,d3				
						
	pea 1.w					
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr _fseek				
	lea (12,sp),sp				
	move.l -42(a6),d0			
	subq.l #6,d0				
						
	sub.l d3,d0				
	move.l d0,-42(a6)			
	jbra _?L35				
_?L80:						
						
	clr.l -(sp)				
	move.l d3,a0				
	pea -2(a0)				
	jbsr _himem_malloc			
	addq.l #8,sp				
	move.l d0,a0				
						
	move.l 8(a6),a1				
	move.l d0,18(a1)			
						
	clr.b (a0)				
						
	move.l d3,a0				
	pea -1(a0)				
	move.l d5,a1				
	pea 1(a1)				
	move.l 8(a6),a0				
	move.l 18(a0),-(sp)			
	jbsr _convert_utf16_to_cp932		
	lea (12,sp),sp				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L81:						
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	jbsr _himem_malloc			
	addq.l #8,sp				
						
	move.l 8(a6),a1				
	move.l d0,10(a1)			
						
	move.l d3,d1				
	subq.l #1,d1				
						
	move.l d1,-(sp)				
	move.l d5,a0				
	pea 1(a0)				
	move.l d0,-(sp)				
	move.l d1,-48(a6)			
	jbsr _memcpy				
	lea (12,sp),sp				
						
	move.l 8(a6),a1				
	move.l 10(a1),a0			
	move.l -48(a6),d1			
	clr.b (a0,d1.l)				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L79:						
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	jbsr _himem_malloc			
	addq.l #8,sp				
						
	move.l 8(a6),a0				
	move.l d0,18(a0)			
						
	move.l d3,d1				
	subq.l #1,d1				
						
	move.l d1,-(sp)				
	move.l d5,a1				
	pea 1(a1)				
	move.l d0,-(sp)				
	move.l d1,-48(a6)			
	jbsr _memcpy				
	lea (12,sp),sp				
						
	move.l 8(a6),a1				
	move.l 18(a1),a0			
	move.l -48(a6),d1			
	clr.b (a0,d1.l)				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L83:						
						
	clr.l -(sp)				
	move.l d3,-(sp)				
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l 8(a6),a0				
	move.l d0,14(a0)			
						
	move.l d3,d1				
	subq.l #1,d1				
						
	move.l d1,-(sp)				
	move.l d5,a1				
	pea 1(a1)				
	move.l d0,-(sp)				
	move.l d1,-48(a6)			
	jbsr _memcpy				
	lea (12,sp),sp				
						
	move.l 8(a6),a1				
	move.l 14(a1),a0			
	move.l -48(a6),d1			
	clr.b (a0,d1.l)				
						
	clr.l -(sp)				
	move.l d5,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
	jbra _?L82				
_?L72:						
						
	pea _?LC0				
	jbsr _puts				
	addq.l #4,sp				
						
	moveq #-1,d0				
						
	movem.l -84(a6),d3/d4/d5/d6/d7/a3/a4/a5	
	unlk a6					
	rts					
_?L84:						
						
	move.l -16(a6),d3			
						
	move.l d3,d0				
	pea 1.w					
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr _fseek				
	lea (12,sp),sp				
	move.l -42(a6),d0			
	subq.l #6,d0				
						
	sub.l d3,d0				
	move.l d0,-42(a6)			
	jbra _?L35				
						
	.align	2				
	.globl	_mp3_decode_setup		
						
_mp3_decode_setup:				
	movem.l d3/d4/a3/a4,-(sp)		
	move.l 20(sp),a3			
	move.l 24(sp),d3			
	move.l 28(sp),d4			
	move.l 32(sp),d0			
	move.w d0,d1				
						
	move.l d3,(a3)				
						
	move.l d4,4(a3)				
						
	move.w d0,8(a3)				
						
	moveq #-1,d0				
	move.l d0,22(a3)			
						
	move.l d0,26(a3)			
						
	clr.l 30(a3)				
						
	cmp.w #2,d1				
	jbeq _?L87				
						
	cmp.w #1,d1				
	jbeq _?L91				
						
	moveq #0,d0				
						
	move.l d0,34(a3)			
						
	lea (38,a3),a4				
						
	move.l a4,-(sp)				
	jbsr _mad_stream_init			
	addq.l #4,sp				
						
	pea 102(a3)				
	jbsr _mad_frame_init			
	addq.l #4,sp				
						
	pea 9370(a3)				
	jbsr _mad_synth_init			
						
	move.l _mad_timer_zero,d0		
	move.l _mad_timer_zero+4,d1		
	move.l d0,22694(a3)			
	move.l d1,22698(a3)			
						
	move.l d4,(sp)				
	move.l d3,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_stream_buffer			
	lea (12,sp),sp				
						
	clr.l 22702(a3)				
						
	moveq #0,d0				
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
_?L91:						
						
	moveq #3,d0				
						
	move.l d0,34(a3)			
						
	lea (38,a3),a4				
						
	move.l a4,-(sp)				
	jbsr _mad_stream_init			
	addq.l #4,sp				
						
	pea 102(a3)				
	jbsr _mad_frame_init			
	addq.l #4,sp				
						
	pea 9370(a3)				
	jbsr _mad_synth_init			
						
	move.l _mad_timer_zero,d0		
	move.l _mad_timer_zero+4,d1		
	move.l d0,22694(a3)			
	move.l d1,22698(a3)			
						
	move.l d4,(sp)				
	move.l d3,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_stream_buffer			
	lea (12,sp),sp				
						
	clr.l 22702(a3)				
						
	moveq #0,d0				
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
_?L87:						
						
	moveq #5,d0				
						
	move.l d0,34(a3)			
						
	lea (38,a3),a4				
						
	move.l a4,-(sp)				
	jbsr _mad_stream_init			
	addq.l #4,sp				
						
	pea 102(a3)				
	jbsr _mad_frame_init			
	addq.l #4,sp				
						
	pea 9370(a3)				
	jbsr _mad_synth_init			
						
	move.l _mad_timer_zero,d0		
	move.l _mad_timer_zero+4,d1		
	move.l d0,22694(a3)			
	move.l d1,22698(a3)			
						
	move.l d4,(sp)				
	move.l d3,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_stream_buffer			
	lea (12,sp),sp				
						
	clr.l 22702(a3)				
						
	moveq #0,d0				
	movem.l (sp)+,d3/d4/a3/a4		
	rts					
						
	.data					
_?LC7:						
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$25
	.dc.b $73,$0a
	.dc.b $00				
	.globl	___mulsi3			
	.text					
	.align	2				
	.globl	_mp3_decode_full		
						
_mp3_decode_full:				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 40(sp),a3			
	move.l 48(sp),d3			
						
	move.l 22702(a3),a4			
						
	sub.l a5,a5				
	moveq #0,d7				
						
	move.l #268435455,d6			
						
	move.l #-268435456,d5			
_?L93:						
						
	cmp.w #0,a4				
	jbeq _?L94				
						
	move.w 4(a4),d4				
	moveq #0,d0				
	move.w d4,d0				
_?L95:						
						
	move.w 6(a4),a6				
						
	move.l d0,-(sp)				
	move.w a6,-(sp)				
	clr.w -(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	add.l d0,d0				
						
	add.l d7,d0				
						
	cmp.l d0,d3				
	jbcs _?L97				
_?L131:						
						
	cmp.w #2,d4				
	jbeq _?L101				
						
	clr.w d2				
	cmp.w a6,d2				
	jbeq _?L103				
	lea (8,a4),a1				
	move.l 44(sp),a0			
	add.l d7,a0				
						
	moveq #0,d1				
_?L111:						
						
	move.l (a1)+,d0				
	add.l #4096,d0				
						
	cmp.l #-268435456,d0			
	jbge _?L109				
	move.l d5,d0				
_?L110:						
						
	moveq #13,d2				
	asr.l d2,d0				
	move.w d0,(a0)+				
	move.l d1,a2				
						
	addq.l #1,d1				
						
	moveq #0,d0				
	move.w 6(a4),d0				
						
	cmp.l d0,d1				
	jblt _?L111				
_?L128:						
						
	lea 1(a5,a2.l),a5			
_?L123:						
	move.l a5,d7				
	add.l a5,d7				
_?L103:						
						
	clr.l 22702(a3)				
_?L94:						
						
	lea (38,a3),a6				
						
	lea (102,a3),a4				
						
	move.l a6,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_frame_decode			
	addq.l #8,sp				
						
	cmp.w #-1,d0				
	jbne _?L96				
						
	move.l 98(a3),d0			
						
	moveq #1,d1				
	cmp.l d0,d1				
	jbeq _?L97				
						
	and.l #65280,d0				
						
	jbeq _?L127				
						
	move.l 22702(a3),a4			
	jbra _?L93				
_?L109:						
						
	cmp.l #268435455,d0			
	jble _?L110				
	move.l d6,d0				
	moveq #13,d2				
	asr.l d2,d0				
	move.w d0,(a0)+				
	move.l d1,a2				
						
	addq.l #1,d1				
						
	moveq #0,d0				
	move.w 6(a4),d0				
						
	cmp.l d0,d1				
	jblt _?L111				
	jbra _?L128				
_?L101:						
						
	clr.w d0				
	cmp.w a6,d0				
	jbeq _?L103				
	lea (8,a4),a1				
	move.l 44(sp),a0			
	add.l d7,a0				
						
	moveq #0,d1				
						
	move.l (a1)+,d0				
	add.l #4096,d0				
						
	cmp.l #-268435456,d0			
	jbge _?L104				
_?L129:						
						
	move.l d5,d0				
_?L105:						
						
	moveq #13,d2				
	asr.l d2,d0				
	move.w d0,(a0)				
						
	addq.l #2,a5				
						
	move.l 4604(a1),d0			
	add.l #4096,d0				
						
	cmp.l #-268435456,d0			
	jbge _?L106				
_?L130:						
	move.l d5,d0				
_?L107:						
						
	moveq #13,d2				
	asr.l d2,d0				
	move.w d0,2(a0)				
						
	addq.l #1,d1				
						
	addq.l #4,a0				
						
	moveq #0,d0				
	move.w 6(a4),d0				
						
	cmp.l d0,d1				
	jbge _?L123				
_?L126:						
						
	move.l (a1)+,d0				
	add.l #4096,d0				
						
	cmp.l #-268435456,d0			
	jblt _?L129				
_?L104:						
						
	cmp.l #268435455,d0			
	jble _?L105				
	move.l d6,d0				
	moveq #13,d2				
	asr.l d2,d0				
	move.w d0,(a0)				
						
	addq.l #2,a5				
						
	move.l 4604(a1),d0			
	add.l #4096,d0				
						
	cmp.l #-268435456,d0			
	jblt _?L130				
_?L106:						
						
	cmp.l #268435455,d0			
	jble _?L107				
	move.l d6,d0				
	moveq #13,d2				
	asr.l d2,d0				
	move.w d0,2(a0)				
						
	addq.l #1,d1				
						
	addq.l #4,a0				
						
	moveq #0,d0				
	move.w 6(a4),d0				
						
	cmp.l d0,d1				
	jblt _?L126				
	jbra _?L123				
_?L96:						
						
	move.l 34(a3),146(a3)			
						
	move.l a4,-(sp)				
	pea 9370(a3)				
	jbsr _mad_synth_frame			
						
	addq.l #4,sp				
	move.l 142(a3),(sp)			
	move.l 138(a3),-(sp)			
	pea 22694(a3)				
	jbsr _mad_timer_add			
	lea (12,sp),sp				
						
	lea (13470,a3),a4			
						
	move.l a4,22702(a3)			
						
	tst.l 22(a3)				
	jblt _?L100				
						
	move.w 13474(a3),d4			
	moveq #0,d0				
	move.w d4,d0				
						
	move.w 6(a4),a6				
						
	move.l d0,-(sp)				
	move.w a6,-(sp)				
	clr.w -(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	add.l d0,d0				
						
	add.l d7,d0				
						
	cmp.l d0,d3				
	jbcc _?L131				
_?L97:						
						
	moveq #0,d0				
_?L99:						
						
	move.l 52(sp),a0			
	move.l d7,(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
_?L100:						
						
	move.l 13470(a3),22(a3)			
						
	move.w 13474(a3),d4			
	moveq #0,d0				
	move.w d4,d0				
						
	move.l d0,26(a3)			
	jbra _?L95				
_?L127:						
						
	move.l a6,-(sp)				
	jbsr _mad_stream_errorstr		
	move.l d0,(sp)				
	pea _?LC7				
	jbsr _printf				
	addq.l #8,sp				
						
	moveq #-1,d0				
						
	move.l 52(sp),a0			
	move.l d7,(a0)				
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	rts					
						
	.align	2				
	.globl	_mp3_decode_resample		
						
_mp3_decode_resample:				
	subq.l #8,sp				
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)
	move.l 48(sp),a5			
	move.l 52(sp),a4			
	move.w 62(sp),42(sp)			
						
	move.l 22702(a5),a3			
						
	moveq #0,d3				
						
	move.l #268435455,d6			
						
	move.l #-268435456,d7			
	move.l a4,a6				
						
	move.l d3,d1				
	add.l d3,d1				
	move.l d1,38(sp)			
						
	cmp.w #0,a3				
	jbeq _?L159				
_?L172:						
						
	move.w 4(a3),a4				
	moveq #0,d0				
	move.w a4,d0				
_?L135:						
						
	move.w 6(a3),d5				
	moveq #0,d4				
	move.w d5,d4				
						
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	add.l d0,d0				
						
	add.l 38(sp),d0				
						
	cmp.l 56(sp),d0				
	jbhi _?L137				
_?L174:						
						
	moveq #2,d0				
	cmp.w a4,d0				
	jbeq _?L141				
						
	tst.w d5				
	jbeq _?L160				
	move.l 30(a5),d1			
						
	move.l (a3),a1				
						
	move.w 42(sp),a4			
						
	sub.l a0,a0				
_?L158:						
						
	add.l a4,d1				
						
	cmp.l d1,a1				
	jbhi _?L153				
_?L170:						
						
	move.l d3,d5				
	addq.l #1,d5				
						
	add.l d3,d3				
						
	move.l a0,d0				
	add.l a0,d0				
	add.l d0,d0				
						
	move.l 8(a3,d0.l),d0			
	add.l #65536,d0				
						
	cmp.l #-268435456,d0			
	jbge _?L154				
	move.l d7,d0				
_?L155:						
						
	swap d0					
	asr.w #1,d0				
	ext.l d0				
	move.w d0,(a6,d3.l)			
						
	sub.l a1,d1				
						
	addq.l #1,a0				
						
	moveq #0,d4				
	move.w 6(a3),d4				
						
	cmp.l d4,a0				
	jbge _?L151				
						
	move.l d5,d3				
						
	add.l a4,d1				
						
	cmp.l d1,a1				
	jbls _?L170				
_?L153:						
						
	addq.l #1,a0				
						
	cmp.l d4,a0				
	jblt _?L158				
	move.l d3,d5				
_?L151:						
	move.l d1,30(a5)			
_?L143:						
						
	clr.l 22702(a5)				
						
	move.l d5,d1				
	add.l d5,d1				
	move.l d1,38(sp)			
_?L134:						
						
	lea (38,a5),a3				
						
	lea (102,a5),a4				
						
	move.l a3,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_frame_decode			
	addq.l #8,sp				
						
	cmp.w #-1,d0				
	jbne _?L136				
_?L173:						
						
	move.l 98(a5),d0			
						
	moveq #1,d4				
	cmp.l d0,d4				
	jbeq _?L137				
						
	and.l #65280,d0				
						
	jbeq _?L171				
						
	move.l 22702(a5),a3			
	move.l d5,d3				
						
	move.l d3,d1				
	add.l d3,d1				
	move.l d1,38(sp)			
						
	cmp.w #0,a3				
	jbne _?L172				
_?L159:						
	move.l d3,d5				
						
	lea (38,a5),a3				
						
	lea (102,a5),a4				
						
	move.l a3,-(sp)				
	move.l a4,-(sp)				
	jbsr _mad_frame_decode			
	addq.l #8,sp				
						
	cmp.w #-1,d0				
	jbeq _?L173				
_?L136:						
						
	move.l 34(a5),146(a5)			
						
	move.l a4,-(sp)				
	pea 9370(a5)				
	jbsr _mad_synth_frame			
						
	addq.l #4,sp				
	move.l 142(a5),(sp)			
	move.l 138(a5),-(sp)			
	pea 22694(a5)				
	jbsr _mad_timer_add			
	lea (12,sp),sp				
						
	lea (13470,a5),a3			
						
	move.l a3,22702(a5)			
						
	tst.l 22(a5)				
	jblt _?L140				
						
	move.w 13474(a5),a4			
	moveq #0,d0				
	move.w a4,d0				
	move.l d5,d3				
						
	move.w 6(a3),d5				
	moveq #0,d4				
	move.w d5,d4				
						
	move.l d0,-(sp)				
	move.l d4,-(sp)				
	jbsr ___mulsi3				
	addq.l #8,sp				
	add.l d0,d0				
						
	add.l 38(sp),d0				
						
	cmp.l 56(sp),d0				
	jbls _?L174				
_?L137:						
						
	moveq #0,d0				
_?L139:						
						
	move.l 64(sp),a0			
	move.l 38(sp),(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
_?L154:						
						
	cmp.l #268435455,d0			
	jble _?L155				
	move.l d6,d0				
	jbra _?L155				
_?L141:						
						
	tst.w d5				
	jbeq _?L160				
	move.l 30(a5),d1			
						
	move.l (a3),d2				
						
	move.w 42(sp),a4			
	lea (8,a3),a0				
						
	sub.l a1,a1				
_?L152:						
						
	add.l a4,d1				
						
	cmp.l d1,d2				
	jbhi _?L144				
_?L177:						
						
	move.l d3,a2				
	addq.l #1,a2				
						
	add.l d3,d3				
						
	move.l 4608(a0),d0			
	add.l #4096,d0				
						
	cmp.l #-268435456,d0			
	jbge _?L145				
	move.l d7,d0				
_?L146:						
						
	moveq #13,d4				
	asr.l d4,d0				
						
	move.l (a0),d4				
	add.l #4096,d4				
						
	cmp.l #-268435456,d4			
	jbge _?L147				
	move.l d7,d4				
_?L148:						
						
	moveq #13,d5				
	asr.l d5,d4				
						
	add.l d4,d0				
						
	jbmi _?L175				
_?L149:						
	asr.l #5,d0				
						
	move.w d0,(a6,d3.l)			
						
	sub.l d2,d1				
						
	addq.l #1,a1				
						
	addq.l #4,a0				
						
	moveq #0,d4				
	move.w 6(a3),d4				
						
	cmp.l a1,d4				
	jble _?L176				
_?L161:						
						
	move.l a2,d3				
						
	add.l a4,d1				
						
	cmp.l d1,d2				
	jbls _?L177				
_?L144:						
						
	addq.l #1,a1				
						
	addq.l #4,a0				
	cmp.l d4,a1				
	jblt _?L152				
	move.l d3,d5				
	jbra _?L151				
_?L175:						
						
	moveq #31,d4				
	add.l d4,d0				
	asr.l #5,d0				
						
	move.w d0,(a6,d3.l)			
						
	sub.l d2,d1				
						
	addq.l #1,a1				
						
	addq.l #4,a0				
						
	moveq #0,d4				
	move.w 6(a3),d4				
						
	cmp.l a1,d4				
	jbgt _?L161				
_?L176:						
	move.l a2,d5				
	move.l d1,30(a5)			
	jbra _?L143				
_?L147:						
						
	cmp.l #268435455,d4			
	jble _?L148				
	move.l d6,d4				
	moveq #13,d5				
	asr.l d5,d4				
						
	add.l d4,d0				
						
	jbpl _?L149				
	jbra _?L175				
_?L145:						
						
	cmp.l #268435455,d0			
	jble _?L146				
	move.l d6,d0				
	jbra _?L146				
_?L160:						
						
	move.l d3,d5				
						
	clr.l 22702(a5)				
						
	move.l d5,d1				
	add.l d5,d1				
	move.l d1,38(sp)			
	jbra _?L134				
_?L140:						
						
	move.l 13470(a5),22(a5)			
						
	move.w 13474(a5),a4			
	moveq #0,d0				
	move.w a4,d0				
						
	move.l d0,26(a5)			
	move.l d5,d3				
	jbra _?L135				
_?L171:						
						
	move.l a3,-(sp)				
	jbsr _mad_stream_errorstr		
	move.l d0,(sp)				
	pea _?LC7				
	jbsr _printf				
	addq.l #8,sp				
						
	moveq #-1,d0				
						
	move.l 64(sp),a0			
	move.l 38(sp),(a0)			
						
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6
	addq.l #8,sp				
	rts					
						
						
