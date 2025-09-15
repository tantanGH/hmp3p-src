* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"main.c"			
						
						
						
						
						
	.text					
	.data					
_?LC0:						
	.dc.b $48,$4d,$50,$33,$50,$2e,$58,$20
	.dc.b $2d,$20,$48,$69,$67,$68,$20,$4d
	.dc.b $65,$6d,$6f,$72,$79,$20,$4d,$50
	.dc.b $33,$20,$70,$6c,$61,$79,$65,$72
	.dc.b $20,$66,$6f,$72,$20,$58,$36,$38
	.dc.b $30,$78,$30,$20,$2b,$20,$4d,$65
	.dc.b $72,$63,$75,$72,$79,$2d,$55,$4e
	.dc.b $49,$54,$20,$76,$65,$72,$73,$69
	.dc.b $6f,$6e,$20,$30,$2e,$33,$2e,$30
	.dc.b $20,$28,$32,$30,$32,$35,$2f,$30
	.dc.b $39,$2f,$31,$35,$29,$20,$62,$79
	.dc.b $20,$74,$61,$6e,$74,$61,$6e
	.dc.b $00				
_?LC1:						
	.dc.b $75,$73,$61,$67,$65,$3a,$20,$68
	.dc.b $6d,$70,$33,$70,$20,$5b,$6f,$70
	.dc.b $74,$69,$6f,$6e,$73,$5d,$20,$3c
	.dc.b $69,$6e,$70,$75,$74,$2d,$66,$69
	.dc.b $6c,$65,$2e,$6d,$70,$33,$3e
	.dc.b $00				
_?LC2:						
	.dc.b $6f,$70,$74,$69,$6f,$6e,$73,$3a
	.dc.b $00				
_?LC3:						
	.dc.b $20,$20,$20,$20,$20,$2d,$6c,$5b
	.dc.b $6e,$5d,$20,$2e,$2e,$2e,$20,$6c
	.dc.b $6f,$6f,$70,$20,$63,$6f,$75,$6e
	.dc.b $74,$20,$28,$6e,$6f,$6e,$65,$3a
	.dc.b $65,$6e,$64,$6c,$65,$73,$73,$2c
	.dc.b $20,$64,$65,$66,$61,$75,$6c,$74
	.dc.b $3a,$31,$29
	.dc.b $00				
_?LC4:						
	.dc.b $20,$20,$20,$20,$20,$2d,$76,$3c
	.dc.b $6e,$3e,$20,$2e,$2e,$2e,$20,$76
	.dc.b $6f,$6c,$75,$6d,$65,$20,$28,$31
	.dc.b $2d,$31,$35,$2c,$20,$64,$65,$66
	.dc.b $61,$75,$6c,$74,$3a,$25,$64,$29
	.dc.b $0a
	.dc.b $00				
_?LC5:						
	.dc.b $20,$20,$20,$20,$20,$2d,$71,$3c
	.dc.b $6e,$3e,$20,$2e,$2e,$2e,$20,$6d
	.dc.b $70,$33,$20,$71,$75,$61,$6c,$69
	.dc.b $74,$79,$20,$28,$30,$3a,$68,$69
	.dc.b $67,$68,$2c,$20,$31,$3a,$6e,$6f
	.dc.b $72,$6d,$61,$6c,$2c,$20,$64,$65
	.dc.b $66,$61,$75,$6c,$74,$3a,$30,$29
	.dc.b $00				
_?LC6:						
	.dc.b $20,$20,$20,$20,$20,$2d,$74,$3c
	.dc.b $6e,$3e,$20,$2e,$2e,$2e,$20,$61
	.dc.b $6c,$62,$75,$6d,$20,$61,$72,$74
	.dc.b $20,$64,$69,$73,$70,$6c,$61,$79
	.dc.b $20,$62,$72,$69,$67,$68,$74,$6e
	.dc.b $65,$73,$73,$20,$28,$31,$2d,$31
	.dc.b $30,$30,$2c,$20,$64,$65,$66,$61
	.dc.b $75,$6c,$74,$3a,$6f,$66,$66,$29
	.dc.b $00				
_?LC7:						
	.dc.b $20,$20,$20,$20,$20,$2d,$62,$3c
	.dc.b $6e,$3e,$20,$2e,$2e,$2e,$20,$62
	.dc.b $75,$66,$66,$65,$72,$20,$73,$69
	.dc.b $7a,$65,$20,$5b,$78,$20,$36,$34
	.dc.b $4b,$42,$5d,$20,$28,$33,$2d,$33
	.dc.b $32,$2c,$64,$65,$66,$61,$75,$6c
	.dc.b $74,$3a,$25,$64,$29,$0a
	.dc.b $00				
_?LC8:						
	.dc.b $20,$20,$20,$20,$20,$2d,$6e,$20
	.dc.b $20,$20,$20,$2e,$2e,$2e,$20,$6e
	.dc.b $6f,$20,$70,$72,$6f,$67,$72,$65
	.dc.b $73,$73,$20,$62,$61,$72
	.dc.b $00				
_?LC9:						
	.dc.b $20,$20,$20,$20,$20,$2d,$73,$20
	.dc.b $20,$20,$20,$2e,$2e,$2e,$20,$75
	.dc.b $73,$65,$20,$6d,$61,$69,$6e,$20
	.dc.b $6d,$65,$6d,$6f,$72,$79,$20,$66
	.dc.b $6f,$72,$20,$66,$69,$6c,$65,$20
	.dc.b $72,$65,$61,$64,$69,$6e,$67,$20
	.dc.b $28,$53,$43,$53,$49,$20,$64,$69
	.dc.b $73,$6b,$29
	.dc.b $00				
_?LC10:						
	.dc.b $20,$20,$20,$20,$20,$2d,$68,$20
	.dc.b $20,$20,$20,$2e,$2e,$2e,$20,$73
	.dc.b $68,$6f,$77,$20,$68,$65,$6c,$70
	.dc.b $20,$6d,$65,$73,$73,$61,$67,$65
	.dc.b $00				
	.text					
	.align	2				
						
_show_help_message:				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
						
	pea _?LC0				
	lea _puts,a3				
	jbsr (a3)				
						
	move.l #_?LC1,(sp)			
	jbsr (a3)				
						
	move.l #_?LC2,(sp)			
	jbsr (a3)				
						
	move.l #_?LC3,(sp)			
	jbsr (a3)				
						
	moveq #6,d0				
	move.l d0,(sp)				
	pea _?LC4				
	lea _printf,a4				
	jbsr (a4)				
						
	addq.l #4,sp				
	move.l #_?LC5,(sp)			
	jbsr (a3)				
						
	move.l #_?LC6,(sp)			
	jbsr (a3)				
						
	moveq #4,d1				
	move.l d1,(sp)				
	pea _?LC7				
	jbsr (a4)				
						
	addq.l #4,sp				
	move.l #_?LC8,(sp)			
	jbsr (a3)				
						
	move.l #_?LC9,(sp)			
	jbsr (a3)				
						
	move.l #_?LC10,(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	move.l (sp)+,a3				
	move.l (sp)+,a4				
	rts					
						
	.data					
_?LC11:						
	.dc.b $41,$62,$6f,$72,$74,$65,$64,$2e
	.dc.b $00				
	.text					
	.align	2				
						
_abort_application:				
	movem.l d3/a3/a4/a5,-(sp)		
						
	move.l _g_abort_vector1,-(sp)		
	move.l #65521,-(sp)			
	lea _INTVCS,a3				
	jbsr (a3)				
						
	addq.l #4,sp				
	move.l _g_abort_vector2,(sp)		
	move.l #65522,-(sp)			
	jbsr (a3)				
	addq.l #8,sp				
						
	lea _pcm8a_isavailable,a3		
	jbsr (a3)				
						
	tst.l d0				
	jbne _?L43				
						
	lea _pcm8pp_isavailable,a5		
	jbsr (a5)				
						
	tst.l d0				
	jbne _?L44				
_?L5:						
						
	jbsr (a3)				
						
	tst.l d0				
	jbeq _?L6				
						
	move.l _g_init_chain_table,a3		
						
	cmp.w #0,a3				
	jbeq _?L7				
	lea _himem_free,a4			
_?L10:						
						
	move.l (a3),d0				
						
	jbeq _?L8				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
_?L8:						
						
	move.l 6(a3),d3				
						
	pea 1.w					
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d3				
	jbeq _?L7				
						
	move.l d3,a3				
	jbra _?L10				
_?L7:						
						
	clr.l _g_init_chain_table		
_?L6:						
						
	jbsr (a5)				
						
	tst.l d0				
	jbeq _?L11				
						
	move.l _g_init_chain_table_ex,a3	
						
	cmp.w #0,a3				
	jbeq _?L12				
	lea _himem_free,a4			
_?L15:						
						
	move.l (a3),d0				
						
	jbeq _?L13				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
_?L13:						
						
	move.l 8(a3),d3				
						
	pea 1.w					
	move.l a3,-(sp)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d3				
	jbeq _?L12				
						
	move.l d3,a3				
	jbra _?L15				
_?L12:						
						
	clr.l _g_init_chain_table_ex		
_?L11:						
						
	jbsr _C_CURON				
						
	move.l _g_funckey_mode,d0		
						
	jbpl _?L45				
						
	pea 255.w				
	jbsr _KFLUSHIO				
						
	move.l #_?LC11,(sp)			
	jbsr _puts				
						
	moveq #1,d0				
	move.l d0,(sp)				
	jbsr _exit				
_?L45:						
						
	move.l d0,-(sp)				
	jbsr _C_FNKMOD				
	addq.l #4,sp				
						
	pea 255.w				
	jbsr _KFLUSHIO				
						
	move.l #_?LC11,(sp)			
	jbsr _puts				
						
	moveq #1,d0				
	move.l d0,(sp)				
	jbsr _exit				
_?L44:						
						
	jbsr _pcm8pp_pause			
						
	jbsr _pcm8pp_stop			
						
	move.w _g_original_pcm8pp_frequency_mode+2,a0
	move.l a0,-(sp)				
	jbsr _pcm8pp_set_frequency_mode		
	addq.l #4,sp				
	jbra _?L5				
_?L43:						
						
	jbsr _pcm8a_pause			
						
	jbsr _pcm8a_stop			
						
	lea _pcm8pp_isavailable,a5		
	jbsr (a5)				
						
	tst.l d0				
	jbeq _?L5				
	jbra _?L44				
						
	.data					
_?LC12:						
	.dc.b $6d,$6f,$6e,$6f
	.dc.b $00				
_?LC13:						
	.dc.b $73,$74,$65,$72,$65,$6f
	.dc.b $00				
_?LC14:						
	.dc.b $2e,$6d,$70,$33
	.dc.b $00				
_?LC15:						
	.dc.b $50,$43,$4d,$38,$41
	.dc.b $00				
_?LC16:						
	.dc.b $50,$43,$4d,$38,$50,$50
	.dc.b $00				
_?LC17:						
	.dc.b $6e,$6f,$72,$6d,$61,$6c
	.dc.b $00				
_?LC18:						
	.dc.b $68,$69,$67,$68
	.dc.b $00				
_?LC19:						
	.dc.b $72,$62
	.dc.b $00				
_?LC20:						
	.dc.b $0d,$4c,$6f,$61,$64,$69,$6e,$67
	.dc.b $20,$4d,$50,$33,$20,$66,$69,$6c
	.dc.b $65,$2e,$2e,$2e,$1b,$5b,$30,$4b
	.dc.b $00				
_?LC21:						
	.dc.b $0d,$1b,$5b,$30,$4b
	.dc.b $00				
_?LC22:						
	.dc.b $46,$69,$6c,$65,$20,$6e,$61,$6d
	.dc.b $65,$20,$20,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC23:						
	.dc.b $44,$61,$74,$61,$20,$73,$69,$7a
	.dc.b $65,$20,$20,$20,$20,$20,$3a,$20
	.dc.b $25,$64,$20,$5b,$62,$79,$74,$65
	.dc.b $73,$5d,$0a
	.dc.b $00				
_?LC24:						
	.dc.b $4d,$50,$33
	.dc.b $00				
_?LC25:						
	.dc.b $44,$61,$74,$61,$20,$66,$6f,$72
	.dc.b $6d,$61,$74,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC26:						
	.dc.b $50,$43,$4d,$20,$64,$72,$69,$76
	.dc.b $65,$72,$20,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$20,$28,$76,$6f,$6c,$75
	.dc.b $6d,$65,$3a,$25,$64,$29,$0a
	.dc.b $00				
_?LC27:						
	.dc.b $4d,$50,$33,$20,$71,$75,$61,$6c
	.dc.b $69,$74,$79,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC28:						
	.dc.b $4d,$50,$33,$20,$74,$69,$74,$6c
	.dc.b $65,$20,$20,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC29:						
	.dc.b $4d,$50,$33,$20,$61,$72,$74,$69
	.dc.b $73,$74,$20,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC30:						
	.dc.b $4d,$50,$33,$20,$61,$6c,$62,$75
	.dc.b $6d,$20,$20,$20,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC31:						
	.dc.b $0d,$4e,$6f,$77,$20,$62,$75,$66
	.dc.b $66,$65,$72,$69,$6e,$67,$20,$28
	.dc.b $25,$64,$2f,$25,$64,$29,$20,$2e
	.dc.b $2e,$2e,$20,$5b,$53,$48,$49,$46
	.dc.b $54,$5d,$20,$6b,$65,$79,$20,$74
	.dc.b $6f,$20,$63,$61,$6e,$63,$65,$6c
	.dc.b $2e
	.dc.b $00				
_?LC32:						
	.dc.b $0d,$1b,$5b,$4b,$43,$61,$6e,$63
	.dc.b $65,$6c,$65,$64,$2e
	.dc.b $00				
_?LC33:						
	.dc.b $0d,$1b,$5b,$30,$4b,$1b,$4d
	.dc.b $00				
_?LC34:						
	.dc.b $4d,$50,$33,$20,$66,$72,$65,$71
	.dc.b $75,$65,$6e,$63,$79,$20,$3a,$20
	.dc.b $25,$64,$20,$5b,$48,$7a,$5d,$0a
	.dc.b $00				
_?LC35:						
	.dc.b $4d,$50,$33,$20,$63,$68,$61,$6e
	.dc.b $6e,$65,$6c,$73,$20,$20,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00				
_?LC36:						
	.dc.b $0a,$4e,$6f,$77,$20,$70,$6c,$61
	.dc.b $79,$69,$6e,$67,$20,$2e,$2e,$2e
	.dc.b $20,$70,$75,$73,$68,$20,$5b,$45
	.dc.b $53,$43,$5d,$2f,$5b,$51,$5d,$20
	.dc.b $6b,$65,$79,$20,$74,$6f,$20,$71
	.dc.b $75,$69,$74,$2e,$20,$5b,$53,$50
	.dc.b $41,$43,$45,$5d,$20,$74,$6f,$20
	.dc.b $70,$61,$75,$73,$65,$2e,$1b,$5b
	.dc.b $30,$4b
	.dc.b $00				
_?LC37:						
	.dc.b $0d,$0a,$53,$74,$6f,$70,$70,$65
	.dc.b $64,$2e
	.dc.b $00				
_?LC38:						
	.dc.b $0d,$0a,$46,$69,$6e,$69,$73,$68
	.dc.b $65,$64,$2e,$0d,$0a
	.dc.b $00				
_?LC39:						
	.dc.b $0a,$25,$73,$0a
	.dc.b $00				
_?LC40:						
	.dc.b $7c
	.dc.b $00				
_?LC41:						
	.dc.b $3e
	.dc.b $00				
_?LC42:						
	.dc.b $2a
	.dc.b $00				
_?LC43:						
	.dc.b $0d,$0a
	.dc.b $00				
_?LC44:						
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$25
	.dc.b $73,$0a
	.dc.b $00				
	.text					
	.align	2				
	.xref __main	* workaround for libc.
	.globl	_main				
						
_main:						
	link.w a6,#-23048			
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)	
	move.l 8(a6),d4				
	move.l 12(a6),d5			
						
	pea _abort_application			
	move.l #65521,-(sp)			
	jbsr _INTVCS				
	addq.l #8,sp				
						
	move.l d0,_g_abort_vector1		
						
	pea _abort_application			
	move.l #65522,-(sp)			
	jbsr _INTVCS				
	addq.l #8,sp				
						
	move.l d0,_g_abort_vector2		
						
	pea -1.w				
	jbsr _C_FNKMOD				
	addq.l #4,sp				
						
	move.l d0,_g_funckey_mode		
						
	clr.b -22962(a6)			
						
	moveq #1,d0				
	cmp.l d4,d0				
	jbge _?L382				
						
	moveq #1,d3				
						
	clr.w -23018(a6)			
						
	clr.w -23040(a6)			
						
	clr.w -23016(a6)			
						
	move.w #4,-23020(a6)			
						
	clr.w -23022(a6)			
						
	move.w #1,-23038(a6)			
						
	move.w #6,-23028(a6)			
						
	moveq #0,d7				
	move.w #1,a0				
						
	lea _strlen,a3				
						
	lea _stricmp,a4				
	move.l #_?L56,d6			
_?L47:						
						
	add.l a0,a0				
	add.l a0,a0				
	add.l d5,a0				
	move.l a0,-23036(a6)			
	move.l (a0),a5				
						
	cmp.b #45,(a5)				
	jbeq _?L383				
_?L49:						
						
	tst.l d7				
	jbne _?L384				
						
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #4,d2				
	cmp.l d0,d2				
	jbcc _?L66				
						
	pea _?LC14				
	pea -4(a5,d0.l)				
	jbsr (a4)				
	addq.l #8,sp				
						
	tst.l d0				
	jbne _?L66				
						
	move.l a5,d7				
_?L52:						
	addq.w #1,d3				
						
	move.w d3,a0				
	cmp.l a0,d4				
	jbgt _?L47				
_?L389:						
						
	tst.l d7				
	jbeq _?L67				
						
	move.l d7,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #4,d2				
	cmp.l d0,d2				
	jbcs _?L68				
_?L67:						
						
	jbsr _show_help_message			
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
_?L53:						
						
	tst.w -23040(a6)			
	jbgt _?L385				
_?L48:						
						
	jbsr _C_CURON				
						
	move.l _g_funckey_mode,d0		
						
	jbpl _?L386				
_?L235:						
						
	move.l _g_abort_vector1,-(sp)		
	move.l #65521,-(sp)			
	jbsr _INTVCS				
						
	addq.l #4,sp				
	move.l _g_abort_vector2,(sp)		
	move.l #65522,-(sp)			
	jbsr _INTVCS				
	addq.l #8,sp				
						
	pea 255.w				
	jbsr _KFLUSHIO				
	addq.l #4,sp				
						
	tst.b -22962(a6)			
	jbne _?L387				
_?L46:						
						
	move.l -23032(a6),d0			
	movem.l -23080(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L383:						
						
	move.l a5,-(sp)				
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #1,d2				
	cmp.l d0,d2				
	jbcc _?L49				
						
	move.b 1(a5),d1				
						
	cmp.b #118,d1				
	jbeq _?L388				
	move.b d1,d0				
	add.b #-98,d0				
	cmp.b #18,d0				
	jbhi _?L54				
	and.l #255,d0				
	add.l d0,d0				
	move.l d0,a0				
	move.w (a0,d6.l),d0			
	jmp 2(pc,d0.w)				
	.align 2,0x284c				
						
_?L56:						
	.dc.w _?L60-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L59-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L245-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L58-_?L56			
	.dc.w _?L54-_?L56			
	.dc.w _?L57-_?L56			
	.dc.w _?L55-_?L56			
_?L54:						
						
	cmp.b #104,d1				
	jbeq _?L371				
						
	move.l a5,-(sp)				
	pea _cp932rsc_unknown_option		
	pea -22962(a6)				
	jbsr _sprintf				
	lea (12,sp),sp				
						
	moveq #1,d2				
	move.l d2,-23032(a6)			
						
	tst.w -23040(a6)			
	jble _?L48				
	jbra _?L385				
_?L55:						
						
	pea 2(a5)				
	jbsr _atoi				
	addq.l #4,sp				
						
	move.w d0,-23040(a6)			
						
	cmp.w #100,d0				
	jbhi _?L62				
						
	move.l -23036(a6),a0			
	move.l (a0),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #2,d1				
	cmp.l d0,d1				
	jbcs _?L52				
_?L62:						
						
	jbsr _show_help_message			
						
	moveq #1,d2				
	move.l d2,-23032(a6)			
						
	tst.w -23040(a6)			
	jble _?L48				
	jbra _?L385				
_?L58:						
						
	pea 2(a5)				
	jbsr _atoi				
	addq.l #4,sp				
						
	move.w d0,-23022(a6)			
						
	cmp.w #1,d0				
	jbhi _?L62				
						
	move.l -23036(a6),a1			
	move.l (a1),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #2,d1				
	cmp.l d0,d1				
	jbcc _?L62				
	addq.w #1,d3				
						
	move.w d3,a0				
	cmp.l a0,d4				
	jbgt _?L47				
	jbra _?L389				
_?L59:						
						
	pea 2(a5)				
	jbsr _atoi				
	addq.l #4,sp				
						
	move.w d0,-23038(a6)			
	addq.w #1,d3				
						
	move.w d3,a0				
	cmp.l a0,d4				
	jbgt _?L47				
	jbra _?L389				
_?L60:						
						
	pea 2(a5)				
	jbsr _atoi				
	addq.l #4,sp				
						
	move.w d0,-23020(a6)			
						
	subq.w #3,d0				
						
	cmp.w #29,d0				
	jbls _?L52				
_?L371:						
						
	jbsr _show_help_message			
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
						
	tst.w -23040(a6)			
	jble _?L48				
	jbra _?L385				
_?L388:						
						
	pea 2(a5)				
	jbsr _atoi				
	addq.l #4,sp				
						
	move.w d0,-23028(a6)			
						
	subq.w #1,d0				
						
	cmp.w #14,d0				
	jbhi _?L62				
						
	move.l -23036(a6),a0			
	move.l (a0),-(sp)			
	jbsr (a3)				
	addq.l #4,sp				
						
	moveq #2,d1				
	cmp.l d0,d1				
	jbcs _?L52				
	jbra _?L62				
_?L66:						
						
	pea _cp932rsc_not_mp3_file		
						
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
_?L410:						
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
	jbra _?L53				
_?L386:						
						
	move.l d0,-(sp)				
	jbsr _C_FNKMOD				
	addq.l #4,sp				
						
	move.l _g_abort_vector1,-(sp)		
	move.l #65521,-(sp)			
	jbsr _INTVCS				
						
	addq.l #4,sp				
	move.l _g_abort_vector2,(sp)		
	move.l #65522,-(sp)			
	jbsr _INTVCS				
	addq.l #8,sp				
						
	pea 255.w				
	jbsr _KFLUSHIO				
	addq.l #4,sp				
						
	tst.b -22962(a6)			
	jbeq _?L46				
	jbra _?L387				
_?L385:						
						
	clr.l -(sp)				
	clr.l -(sp)				
	clr.l -(sp)				
	lea _SCROLL,a3				
	jbsr (a3)				
						
	addq.l #8,sp				
	clr.l (sp)				
	clr.l -(sp)				
	pea 1.w					
	jbsr (a3)				
						
	addq.l #8,sp				
	clr.l (sp)				
	clr.l -(sp)				
	pea 2.w					
	jbsr (a3)				
						
	addq.l #8,sp				
	clr.l (sp)				
	clr.l -(sp)				
	pea 3.w					
	jbsr (a3)				
	lea (12,sp),sp				
						
	move.w #2,-22974(a6)			
	clr.w -22972(a6)			
	clr.w -22970(a6)			
	move.w #768,-22968(a6)			
	move.w #512,-22966(a6)			
	clr.w -22964(a6)			
						
	pea -22974(a6)				
	jbsr _TXFILL				
						
	moveq #-2,d0				
	move.l d0,(sp)				
	pea 4.w					
	lea _TPALET2,a3				
	jbsr (a3)				
	addq.l #8,sp				
						
	pea -2.w				
	pea 5.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	pea -2.w				
	pea 6.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	pea -2.w				
	pea 7.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	jbsr _C_CLS_AL				
						
	jbsr _G_CLR_ON				
						
	jbsr _C_CURON				
						
	move.l _g_funckey_mode,d0		
						
	jbmi _?L235				
	jbra _?L386				
_?L387:						
						
	pea -22962(a6)				
	pea _?LC44				
	jbsr _printf				
	addq.l #8,sp				
						
	move.l -23032(a6),d0			
	movem.l -23080(a6),d3/d4/d5/d6/d7/a3/a4/a5
	unlk a6					
	rts					
_?L68:						
						
	jbsr _himem_isavailable			
						
	tst.l d0				
	jbeq _?L70				
						
	jbsr _pcm8a_isavailable			
						
	tst.l d0				
	jbeq _?L390				
						
	tst.w -23040(a6)			
	jbeq _?L391				
						
	jbsr _pcm8a_pause			
						
	jbsr _pcm8a_stop			
						
	clr.w d6				
_?L80:						
						
	jbsr _C_CUROFF				
						
	tst.w -23040(a6)			
	jble _?L79				
						
	clr.l -(sp)				
	jbsr _B_SUPER				
	addq.l #4,sp				
_?L79:						
	cmp.w #1,d6				
	jbeq _?L85				
	move.l #_?LC15,-22982(a6)		
_?L86:						
	move.l #_?LC18,-22990(a6)		
	cmp.w #1,-23022(a6)			
	jbeq _?L392				
_?L88:						
						
	move.w #1,-22996(a6)			
	clr.l -23036(a6)			
	moveq #1,d1				
	move.l d1,-23032(a6)			
						
	move.l d7,-23006(a6)			
_?L232:						
						
	tst.w -23040(a6)			
	jbgt _?L393				
_?L89:						
						
	pea 22706.w				
	clr.l -(sp)				
	pea -22706(a6)				
	jbsr _memset				
	lea (12,sp),sp				
						
	pea -22706(a6)				
	jbsr _mp3_decode_init			
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L394				
_?L90:						
						
	pea _?LC19				
	move.l -23006(a6),-(sp)			
	jbsr _fopen				
	addq.l #8,sp				
	move.l d0,d3				
						
	jbeq _?L395				
						
	move.l d0,-(sp)				
	clr.l -(sp)				
	move.w -23040(a6),a0			
	move.l a0,-(sp)				
	pea -22706(a6)				
	jbsr _mp3_decode_parse_tags		
	lea (16,sp),sp				
	move.l d0,d5				
						
	jbmi _?L396				
						
	tst.w -23040(a6)			
	jbgt _?L397				
_?L94:						
						
	pea 2.w					
	clr.l -(sp)				
	move.l d3,-(sp)				
	lea _fseek,a3				
	jbsr (a3)				
						
	addq.l #8,sp				
	move.l d3,(sp)				
	jbsr _ftell				
						
	move.l d0,d4				
	sub.l d5,d4				
						
	clr.l (sp)				
	move.l d5,-(sp)				
	move.l d3,-(sp)				
	jbsr (a3)				
						
	addq.l #8,sp				
	moveq #1,d2				
	move.l d2,(sp)				
	move.l d4,-(sp)				
	lea _himem_malloc,a4			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a3				
						
	tst.l d0				
	jbeq _?L398				
						
	tst.w -23016(a6)			
	jbeq _?L246				
						
	pea _?LC20				
	move.l #_printf,-23014(a6)		
	lea _printf,a1				
	jbsr (a1)				
						
	clr.l (sp)				
	move.l #524288,-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,d7				
						
	jbeq _?L399				
						
	moveq #0,d5				
	lea _fread,a5				
_?L97:						
						
	move.l d3,-(sp)				
	move.l #524288,-(sp)			
	pea 1.w					
	move.l d7,-(sp)				
	jbsr (a5)				
	lea (16,sp),sp				
	move.l d0,-23026(a6)			
						
	move.l d0,-(sp)				
	move.l d7,-(sp)				
	pea (a3,d5.l)				
	jbsr _memcpy				
	lea (12,sp),sp				
						
	add.l -23026(a6),d5			
						
	cmp.l d4,d5				
	jbcs _?L97				
						
	clr.l -(sp)				
	move.l d7,-(sp)				
	jbsr _himem_free			
						
	addq.l #4,sp				
	move.l #_?LC21,(sp)			
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
_?L98:						
						
	move.l d3,-(sp)				
	jbsr _fclose				
						
	move.w -23022(a6),a1			
	move.l a1,(sp)				
	move.l d4,-(sp)				
	move.l a3,-(sp)				
	pea -22706(a6)				
	jbsr _mp3_decode_setup			
	lea (16,sp),sp				
						
	tst.l d0				
	jbne _?L400				
						
	tst.w -22996(a6)			
	jbne _?L101				
						
	tst.w -23040(a6)			
	jble _?L102				
_?L101:						
						
	pea 10.w				
	lea _putchar,a5				
	jbsr (a5)				
						
	move.l -23006(a6),(sp)			
	pea _?LC22				
	move.l #_printf,-23014(a6)		
	lea _printf,a0				
	jbsr (a0)				
						
	addq.l #4,sp				
	move.l d4,(sp)				
	pea _?LC23				
	move.l -23014(a6),a1			
	jbsr (a1)				
						
	addq.l #4,sp				
	move.l #_?LC24,(sp)			
	pea _?LC25				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	move.w -23028(a6),a1			
	move.l a1,-23010(a6)			
	move.l a1,-(sp)				
	move.l -22982(a6),-(sp)			
	pea _?LC26				
	move.l -23014(a6),a0			
	jbsr (a0)				
						
	addq.l #8,sp				
	move.l -22990(a6),(sp)			
	pea _?LC27				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #8,sp				
						
	move.l -22696(a6),d0			
						
	jbeq _?L103				
						
	move.l d0,-(sp)				
	pea _?LC28				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
_?L103:						
						
	move.l -22692(a6),d0			
						
	jbeq _?L104				
						
	move.l d0,-(sp)				
	pea _?LC29				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #8,sp				
_?L104:						
						
	move.l -22688(a6),d0			
						
	jbeq _?L105				
						
	move.l d0,-(sp)				
	pea _?LC30				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
_?L105:						
						
	pea 10.w				
	jbsr (a5)				
	addq.l #4,sp				
						
	tst.w -23020(a6)			
	jble _?L248				
_?L242:						
						
	move.w -23020(a6),a5			
	move.l -23036(a6),d4			
	addq.l #1,d4				
	moveq #1,d3				
	moveq #0,d5				
	clr.l -23026(a6)			
						
	move.l #_mp3_decode_full,d7		
	move.l a3,-23010(a6)			
	move.l d4,d1				
	subq.l #1,d1				
	move.l d1,-23036(a6)			
						
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	pea _?LC31				
	move.l -23014(a6),a0			
	jbsr (a0)				
	lea (12,sp),sp				
						
	tst.w d6				
	jbeq _?L401				
_?L107:						
						
	pea 1.w					
	pea 12.w				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a3				
						
	tst.l d0				
	jbeq _?L119				
						
	pea 12.w				
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr _memset				
						
	addq.l #8,sp				
	moveq #1,d0				
	move.l d0,(sp)				
	move.l #176400,-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d0,(a3)				
						
	jbeq _?L119				
						
	pea -22974(a6)				
	move.l #176400,-(sp)			
	move.l d0,-(sp)				
	pea -22706(a6)				
	move.l d7,a0				
	jbsr (a0)				
	lea (16,sp),sp				
						
	tst.l d0				
	jbne _?L402				
						
	move.l -22974(a6),d0			
						
	jbeq _?L403				
						
	move.l d0,4(a3)				
						
	tst.l _g_init_chain_table_ex		
	jbeq _?L404				
_?L122:						
						
	tst.l d5				
	jbeq _?L123				
						
	move.l d5,a1				
	move.l a3,8(a1)				
_?L123:						
						
	move.l d4,-23036(a6)			
						
	move.l a3,d5				
_?L115:						
						
	jbsr _B_SFTSNS				
						
	btst #0,d0				
	jbne _?L405				
						
	move.l d3,d0				
	addq.l #1,d0				
	addq.l #1,d4				
	cmp.l d3,a5				
	jbeq _?L406				
	move.l d0,d3				
	move.l d4,d1				
	subq.l #1,d1				
	move.l d1,-23036(a6)			
						
	move.l a5,-(sp)				
	move.l d3,-(sp)				
	pea _?LC31				
	move.l -23014(a6),a0			
	jbsr (a0)				
	lea (12,sp),sp				
						
	tst.w d6				
	jbne _?L107				
_?L401:						
						
	pea 1.w					
	pea 10.w				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,a3				
						
	tst.l d0				
	jbeq _?L110				
						
	pea 10.w				
	clr.l -(sp)				
	move.l d0,-(sp)				
	jbsr _memset				
						
	addq.l #8,sp				
	moveq #1,d1				
	move.l d1,(sp)				
	pea 31250.w				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l d0,(a3)				
						
	jbeq _?L110				
						
	pea -22974(a6)				
	pea 15625.w				
	pea 31250.w				
	move.l d0,-(sp)				
	pea -22706(a6)				
	jbsr _mp3_decode_resample		
	lea (20,sp),sp				
						
	tst.l d0				
	jbne _?L407				
						
	move.l -22974(a6),d0			
						
	jbeq _?L408				
						
	move.w d0,4(a3)				
						
	tst.l _g_init_chain_table		
	jbeq _?L409				
_?L113:						
						
	tst.l -23026(a6)			
	jbeq _?L114				
						
	move.l -23026(a6),a1			
	move.l a3,6(a1)				
_?L114:						
						
	move.l d4,-23036(a6)			
						
	move.l a3,-23026(a6)			
	jbra _?L115				
_?L245:						
						
	move.w #1,-23018(a6)			
	addq.w #1,d3				
						
	move.w d3,a0				
	cmp.l a0,d4				
	jbgt _?L47				
	jbra _?L389				
_?L57:						
						
	move.w #1,-23016(a6)			
	addq.w #1,d3				
						
	move.w d3,a0				
	cmp.l a0,d4				
	jbgt _?L47				
	jbra _?L389				
_?L384:						
						
	pea _cp932rsc_too_many_files		
						
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
	jbra _?L410				
_?L393:						
						
	jbsr _G_CLR_ON				
						
	clr.l -(sp)				
	jbsr _crtc_set_extra_mode		
						
	moveq #3,d3				
	move.l d3,(sp)				
	jbsr _C_FNKMOD				
	addq.l #4,sp				
						
	jbsr _C_CLS_AL				
						
	pea 1.w					
	pea 4.w					
	lea _TPALET2,a3				
	jbsr (a3)				
	addq.l #8,sp				
						
	pea -1.w				
	pea 1.w					
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,(sp)				
	pea 5.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	pea -1.w				
	pea 2.w					
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,(sp)				
	pea 6.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	pea -1.w				
	pea 3.w					
	jbsr (a3)				
	addq.l #4,sp				
	move.l d0,(sp)				
	pea 7.w					
	jbsr (a3)				
	addq.l #8,sp				
						
	move.w #2,-22974(a6)			
	clr.w -22972(a6)			
	clr.w -22970(a6)			
	move.w #768,-22968(a6)			
	move.w #512,-22966(a6)			
	move.w #-1,-22964(a6)			
						
	pea -22974(a6)				
	jbsr _TXFILL				
	addq.l #4,sp				
						
	pea 22706.w				
	clr.l -(sp)				
	pea -22706(a6)				
	jbsr _memset				
	lea (12,sp),sp				
						
	pea -22706(a6)				
	jbsr _mp3_decode_init			
	addq.l #4,sp				
						
	tst.l d0				
	jbeq _?L90				
_?L394:						
						
	pea _cp932rsc_mp3_decoder_init_error	
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
						
	sub.l a3,a3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
_?L91:						
						
	tst.w d6				
	jbeq _?L116				
_?L124:						
						
	jbsr _pcm8pp_pause			
						
	jbsr _pcm8pp_stop			
_?L217:						
						
	jbsr (a5)				
						
	move.w #19,a4				
	add.l d0,a4				
_?L218:						
						
	jbsr (a5)				
						
	cmp.l d0,a4				
	jbge _?L218				
						
	tst.l d3				
	jbeq _?L219				
						
	move.l d3,-(sp)				
	jbsr _fclose				
	addq.l #4,sp				
_?L219:						
						
	cmp.w #0,a3				
	jbeq _?L220				
						
	pea 1.w					
	move.l a3,-(sp)				
	jbsr _himem_free			
	addq.l #8,sp				
_?L220:						
						
	pea -22706(a6)				
	jbsr _mp3_decode_close			
	addq.l #4,sp				
						
	tst.w d6				
	jbeq _?L411				
						
	move.l _g_init_chain_table_ex,a3	
	lea _himem_free,a5			
						
	cmp.w #0,a3				
	jbeq _?L229				
_?L227:						
						
	move.l (a3),d0				
						
	jbeq _?L228				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
_?L228:						
						
	move.l 8(a3),d3				
						
	pea 1.w					
	move.l a3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d3				
	jbeq _?L229				
						
	move.l d3,a3				
	jbra _?L227				
_?L397:						
						
	clr.l -(sp)				
	pea 384.w				
	clr.l -(sp)				
	lea _SCROLL,a3				
	jbsr (a3)				
						
	addq.l #8,sp				
	clr.l (sp)				
	pea 384.w				
	pea 1.w					
	jbsr (a3)				
						
	addq.l #8,sp				
	clr.l (sp)				
	pea 384.w				
	pea 2.w					
	jbsr (a3)				
						
	addq.l #8,sp				
	clr.l (sp)				
	pea 384.w				
	pea 3.w					
	jbsr (a3)				
	lea (12,sp),sp				
						
	move.w #2,-22974(a6)			
	move.w #128,-22972(a6)			
	clr.w -22970(a6)			
	move.w #512,-22968(a6)			
	move.w #512,-22966(a6)			
	clr.w -22964(a6)			
						
	pea -22974(a6)				
	jbsr _TXFILL				
	addq.l #4,sp				
	jbra _?L94				
_?L404:						
						
	move.l a3,_g_init_chain_table_ex	
	jbra _?L122				
_?L102:						
	move.l #_printf,-23014(a6)		
						
	tst.w -23020(a6)			
	jbgt _?L242				
						
	move.l -22684(a6),-22994(a6)		
						
	move.l -22680(a6),d4			
						
	pea _?LC33				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
	clr.l -23026(a6)			
	moveq #0,d5				
	move.w -23028(a6),a1			
	move.l a1,-23010(a6)			
_?L128:						
						
	move.l -23010(a6),d3			
	swap d3					
	clr.w d3				
						
	move.l d3,d1				
	or.w #5123,d1				
	move.l d1,-22978(a6)			
						
	tst.w d6				
	jbeq _?L131				
						
	cmp.l #22050,-22994(a6)			
	jbeq _?L412				
	cmp.l #24000,-22994(a6)			
	jbeq _?L413				
	cmp.l #32000,-22994(a6)			
	jbeq _?L414				
	cmp.l #44100,-22994(a6)			
	jbeq _?L415				
_?L154:						
	cmp.l #48000,-22994(a6)			
	jbeq _?L416				
	cmp.l #24000,-22994(a6)			
	jbne _?L160				
						
	cmp.w #2,d4				
	jbne _?L160				
						
	or.w #6915,d3				
	move.l d3,-23000(a6)			
						
	cmp.w #1,d6				
	jbeq _?L163				
_?L148:						
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
_?L168:						
						
	jbsr (a5)				
						
	cmp.l -23010(a6),d0			
	jble _?L168				
	move.w -23020(a6),-23002(a6)		
						
	clr.l -22986(a6)			
						
	clr.w d3				
	move.l #_B_KEYSNS,d7			
	move.l #_B_PRINT,-23010(a6)		
						
	move.w -22996(a6),d4			
						
	move.l d7,a1				
	jbsr (a1)				
						
	tst.l d0				
	jbne _?L417				
_?L170:						
						
	tst.w d3				
	jbne _?L180				
						
	tst.w d6				
	jbeq _?L174				
_?L175:						
						
	clr.l -(sp)				
	jbsr _pcm8pp_get_data_length		
	addq.l #4,sp				
						
	tst.l d0				
	jbeq _?L181				
						
	tst.w d4				
	jbne _?L367				
	clr.w d3				
_?L179:						
						
	pea 1.w					
	pea 12.w				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,-23048(a6)			
						
	jbeq _?L203				
						
	pea 12.w				
	clr.l -(sp)				
	move.l -23048(a6),-(sp)			
	jbsr _memset				
						
	addq.l #8,sp				
	moveq #1,d1				
	move.l d1,(sp)				
	move.l #176400,-(sp)			
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -23048(a6),a0			
	move.l d0,(a0)				
						
	jbeq _?L203				
						
	pea -22974(a6)				
	move.l #176400,-(sp)			
	move.l d0,-(sp)				
	pea -22706(a6)				
	jbsr _mp3_decode_full			
	lea (16,sp),sp				
						
	tst.l d0				
	jbne _?L418				
						
	move.l -22974(a6),d0			
						
	jbeq _?L376				
						
	move.l -23048(a6),a1			
	move.l d0,4(a1)				
						
	move.l d5,a0				
	move.l a1,8(a0)				
						
	addq.l #1,-23036(a6)			
						
	move.w -23034(a6),d5			
						
	clr.l -(sp)				
	jbsr _pcm8pp_get_block_counter		
	addq.l #4,sp				
						
	move.w -23034(a6),d4			
	sub.w -22984(a6),d4			
	sub.w d0,d4				
						
	cmp.w -23002(a6),d4			
	jblt _?L207				
						
	tst.w -23018(a6)			
	jbeq _?L419				
						
	move.w -23002(a6),d4			
_?L210:						
						
	clr.l -(sp)				
	jbsr _pcm8pp_get_data_length		
	addq.l #4,sp				
						
	tst.l d0				
	jbeq _?L420				
_?L214:						
	move.w d4,-23002(a6)			
	move.l -23048(a6),d5			
	clr.w d4				
_?L444:						
						
	move.l d7,a1				
	jbsr (a1)				
						
	tst.l d0				
	jbeq _?L170				
	jbra _?L417				
_?L390:						
						
	jbsr _pcm8pp_isavailable		
						
	tst.l d0				
	jbeq _?L73				
						
	jbsr _pcm8pp_get_frequency_mode		
						
	move.l d0,_g_original_pcm8pp_frequency_mode
						
	cmp.w #1,-23022(a6)			
	jbeq _?L421				
_?L352:						
						
	tst.w -23040(a6)			
	jbeq _?L422				
						
	jbsr _pcm8pp_pause			
						
	jbsr _pcm8pp_stop			
	moveq #1,d6				
	jbra _?L80				
_?L392:						
	move.l #_?LC17,-22990(a6)		
						
	move.w #1,-22996(a6)			
	clr.l -23036(a6)			
	moveq #1,d1				
	move.l d1,-23032(a6)			
						
	move.l d7,-23006(a6)			
	jbra _?L232				
_?L422:						
						
	pea _?LC0				
	jbsr _puts				
	addq.l #4,sp				
						
	jbsr _pcm8pp_pause			
						
	jbsr _pcm8pp_stop			
						
	jbsr _C_CUROFF				
	moveq #1,d6				
_?L85:						
	move.l #_?LC16,-22982(a6)		
	move.l #_?LC18,-22990(a6)		
	cmp.w #1,-23022(a6)			
	jbne _?L88				
	jbra _?L392				
_?L421:						
						
	jbsr _pcm8pp_get_mercury_version	
						
	moveq #52,d2				
	cmp.l d0,d2				
	jblt _?L352				
						
	pea _cp932rsc_half_rate_mercury35	
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
	jbra _?L53				
_?L415:						
						
	cmp.w #1,d4				
	jbne _?L240				
						
	or.w #3331,d3				
	move.l d3,-23000(a6)			
_?L135:						
						
	jbsr _pcm8pp_get_frequency_mode		
						
	subq.l #1,d0				
	jbeq _?L163				
						
	pea 1.w					
	jbsr _pcm8pp_set_frequency_mode		
	addq.l #4,sp				
_?L163:						
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
_?L438:						
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L417:						
						
	jbsr _B_KEYINP				
						
	asr.l #8,d0				
						
	move.w d0,d1				
						
	and.w #-17,d0				
	cmp.w #1,d0				
	jbeq _?L423				
						
	cmp.w #53,d1				
	jbne _?L170				
						
	tst.w d3				
	jbeq _?L172				
						
	tst.w d6				
	jbne _?L173				
						
	jbsr _pcm8a_resume			
_?L174:						
						
	clr.l -(sp)				
	jbsr _pcm8a_get_data_length		
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L424				
_?L181:						
						
	tst.w d4				
	jbne _?L425				
						
	pea _cp932rsc_buffer_underrun		
	pea _?LC39				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #8,sp				
	clr.w d3				
_?L184:						
						
	tst.w d6				
	jbne _?L179				
_?L177:						
						
	pea 1.w					
	pea 10.w				
	jbsr (a4)				
	addq.l #8,sp				
	move.l d0,-23048(a6)			
						
	jbeq _?L187				
						
	pea 10.w				
	clr.l -(sp)				
	move.l -23048(a6),-(sp)			
	jbsr _memset				
						
	addq.l #8,sp				
	moveq #1,d2				
	move.l d2,(sp)				
	pea 31250.w				
	jbsr (a4)				
	addq.l #8,sp				
						
	move.l -23048(a6),a0			
	move.l d0,(a0)				
						
	jbeq _?L187				
						
	pea -22974(a6)				
	pea 15625.w				
	pea 31250.w				
	move.l d0,-(sp)				
	pea -22706(a6)				
	jbsr _mp3_decode_resample		
	lea (20,sp),sp				
	move.l d0,d4				
						
	jbne _?L426				
						
	move.l -22974(a6),d0			
						
	jbne _?L189				
_?L376:						
						
	pea 1.w					
	move.l -23048(a6),a1			
	move.l (a1),-(sp)			
	move.l #_himem_free,d4			
	move.l d4,a0				
	jbsr (a0)				
	addq.l #8,sp				
						
	pea 1.w					
	move.l -23048(a6),-(sp)			
	move.l d4,a1				
	jbsr (a1)				
	addq.l #8,sp				
						
	tst.w -23018(a6)			
	jbeq _?L427				
						
	moveq #1,d4				
_?L429:						
						
	move.l d7,a1				
	jbsr (a1)				
						
	tst.l d0				
	jbeq _?L170				
	jbra _?L417				
_?L424:						
						
	tst.w d4				
	jbne _?L367				
	clr.w d3				
	jbra _?L177				
_?L189:						
						
	move.l -23048(a6),a1			
	move.w d0,4(a1)				
						
	move.l -23026(a6),a0			
	move.l a1,6(a0)				
						
	addq.l #1,-23036(a6)			
						
	clr.l -(sp)				
	jbsr _pcm8a_get_access_address		
	addq.l #4,sp				
						
	move.l _g_init_chain_table,a0		
						
	cmp.w #0,a0				
	jbeq _?L191				
_?L193:						
						
	move.l (a0),d1				
						
	cmp.l d1,d0				
	jbcs _?L192				
						
	moveq #0,d2				
	move.w 4(a0),d2				
	add.l d2,d2				
						
	add.l d2,d1				
						
	cmp.l d0,d1				
	jbhi _?L191				
_?L192:						
						
	addq.l #1,d4				
						
	move.l 6(a0),a0				
						
	cmp.w #0,a0				
	jbne _?L193				
_?L191:						
						
	move.w -23034(a6),a1			
	sub.w d4,a1				
	move.w a1,-23026(a6)			
						
	move.w a1,d1				
	cmp.w -23002(a6),d1			
	jblt _?L194				
						
	tst.w -23018(a6)			
	jbeq _?L428				
_?L196:						
						
	clr.l -(sp)				
	move.l a0,-23044(a6)			
	jbsr _pcm8a_get_data_length		
	addq.l #4,sp				
						
	move.l -23044(a6),a0			
	tst.l d0				
	jbne _?L200				
						
	move.l -23036(a6),d0			
	sub.l d4,d0				
						
	moveq #6,d1				
	cmp.l d0,d1				
	jbge _?L200				
						
	cmp.w #0,a0				
	jbeq _?L200				
						
	move.l a0,-(sp)				
	move.l -22978(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8a_play_linked_array_chain	
	lea (12,sp),sp				
						
	move.w -23026(a6),-23002(a6)		
_?L200:						
	move.l -23048(a6),-23026(a6)		
	clr.w d4				
						
	move.l d7,a1				
	jbsr (a1)				
						
	tst.l d0				
	jbeq _?L170				
	jbra _?L417				
_?L427:						
						
	pea _?LC40				
	move.l -23010(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
						
	moveq #1,d4				
	jbra _?L429				
_?L420:						
						
	clr.l -(sp)				
	move.l d0,-23044(a6)			
	jbsr _pcm8pp_get_block_counter		
	addq.l #4,sp				
						
	move.l -22986(a6),a1			
	add.l d0,a1				
						
	move.l -23036(a6),d0			
	sub.l a1,d0				
						
	move.l -23044(a6),d1			
	moveq #6,d2				
	cmp.l d0,d2				
	jbge _?L214				
						
	move.l _g_init_chain_table_ex,a0	
_?L215:						
						
	cmp.l d1,a1				
	jble _?L430				
						
	move.l 8(a0),a0				
						
	cmp.w #0,a0				
	jbeq _?L214				
						
	addq.l #1,d1				
	jbra _?L215				
_?L428:						
						
	pea _?LC41				
	move.l a0,-23044(a6)			
	move.l -23010(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
	move.l -23044(a6),a0			
	jbra _?L196				
_?L419:						
						
	pea _?LC41				
	move.l -23010(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
						
	move.w -23002(a6),d4			
	jbra _?L210				
_?L248:						
						
	moveq #0,d5				
	clr.l -23026(a6)			
						
	clr.w d3				
						
	move.l -22684(a6),-22994(a6)		
						
	move.l -22680(a6),d4			
						
	pea _?LC33				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
						
	tst.w -22996(a6)			
	jbne _?L127				
_?L130:						
						
	move.w d3,-22996(a6)			
	jbra _?L128				
_?L127:						
						
	move.l -22684(a6),-(sp)			
	pea _?LC34				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
						
	move.l #_?LC13,d0			
	moveq #1,d1				
	cmp.l -22680(a6),d1			
	jbeq _?L431				
						
	move.l d0,-(sp)				
	pea _?LC35				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
_?L432:						
						
	move.w d3,-22996(a6)			
	jbra _?L128				
_?L431:						
						
	move.l #_?LC12,d0			
	move.l d0,-(sp)				
	pea _?LC35				
	move.l -23014(a6),a0			
	jbsr (a0)				
	addq.l #8,sp				
	jbra _?L432				
_?L180:						
						
	tst.w d4				
	jbeq _?L184				
_?L178:						
						
	moveq #1,d3				
	moveq #1,d4				
						
	move.l d7,a1				
	jbsr (a1)				
						
	tst.l d0				
	jbeq _?L170				
	jbra _?L417				
_?L409:						
						
	move.l a3,_g_init_chain_table		
	jbra _?L113				
_?L367:						
						
	clr.w d3				
						
	move.l d7,a1				
	jbsr (a1)				
						
	tst.l d0				
	jbeq _?L170				
	jbra _?L417				
_?L110:						
						
	move.l -23010(a6),a3			
	pea _cp932rsc_himem_shortage		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
_?L116:						
						
	jbsr _pcm8a_pause			
						
	jbsr _pcm8a_stop			
_?L439:						
						
	jbsr (a5)				
						
	move.w #19,a4				
	add.l d0,a4				
	jbra _?L218				
_?L229:						
						
	clr.l _g_init_chain_table_ex		
_?L223:						
						
	tst.l -23032(a6)			
	jbne _?L230				
						
	tst.w -23038(a6)			
	jbeq _?L231				
						
	subq.w #1,-23038(a6)			
						
	tst.w -23038(a6)			
	jble _?L230				
_?L231:						
						
	pea _?LC43				
	move.l -23010(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
						
	tst.w -23040(a6)			
	jble _?L89				
	jbra _?L393				
_?L230:						
						
	pea _?LC43				
	move.l -23010(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
						
	tst.w -23040(a6)			
	jble _?L48				
	jbra _?L385				
_?L411:						
						
	move.l _g_init_chain_table,a3		
	lea _himem_free,a5			
						
	cmp.w #0,a3				
	jbeq _?L226				
_?L222:						
						
	move.l (a3),d0				
						
	jbeq _?L224				
						
	pea 1.w					
	move.l d0,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
_?L224:						
						
	move.l 6(a3),d3				
						
	pea 1.w					
	move.l a3,-(sp)				
	jbsr (a5)				
	addq.l #8,sp				
						
	tst.l d3				
	jbeq _?L226				
						
	move.l d3,a3				
	jbra _?L222				
_?L226:						
						
	clr.l _g_init_chain_table		
	jbra _?L223				
_?L246:						
						
	moveq #0,d7				
	lea _fread,a5				
						
	move.l #16777216,d5			
_?L96:						
						
	move.l d3,-(sp)				
						
	move.l d4,d0				
	sub.l d7,d0				
						
	cmp.l #16777216,d0			
	jbls _?L99				
	move.l d5,d0				
_?L99:						
						
	move.l d0,-(sp)				
	pea 1.w					
	pea (a3,d7.l)				
	jbsr (a5)				
	lea (16,sp),sp				
						
	add.l d0,d7				
						
	cmp.l d4,d7				
	jbcs _?L96				
	jbra _?L98				
_?L400:						
						
	pea _cp932rsc_mp3_decoder_setup_error	
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
						
	tst.w d6				
	jbne _?L124				
	jbra _?L116				
_?L172:						
						
	tst.w d6				
	jbne _?L176				
						
	jbsr _pcm8a_pause			
						
	tst.w d4				
	jbne _?L178				
						
	moveq #1,d3				
	jbra _?L177				
_?L395:						
						
	pea _cp932rsc_file_open_error		
						
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	sub.l a3,a3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
_?L433:						
						
	tst.w d6				
	jbne _?L124				
	jbra _?L116				
_?L194:						
						
	tst.w -23018(a6)			
	jbeq _?L198				
						
	move.w -23026(a6),-23002(a6)		
	jbra _?L196				
_?L198:						
						
	pea _?LC42				
	move.l a0,-23044(a6)			
	move.l -23010(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
	move.l -23044(a6),a0			
						
	move.w -23026(a6),-23002(a6)		
	jbra _?L196				
_?L396:						
						
	pea _cp932rsc_id3tag_read_error		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	sub.l a3,a3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
	jbra _?L433				
_?L176:						
						
	jbsr _pcm8pp_pause			
						
	tst.w d4				
	jbne _?L178				
						
	move.w d6,d3				
	jbra _?L179				
_?L173:						
						
	jbsr _pcm8pp_resume			
	jbra _?L175				
_?L207:						
						
	tst.w -23018(a6)			
	jbne _?L210				
						
	pea _?LC42				
	move.l -23010(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
						
	clr.l -(sp)				
	jbsr _pcm8pp_get_data_length		
	addq.l #4,sp				
						
	tst.l d0				
	jbne _?L214				
	jbra _?L420				
_?L70:						
						
	pea _cp932rsc_himem_not_available	
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
	jbra _?L410				
_?L399:						
						
	pea _cp932rsc_mainmem_shortage		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
_?L434:						
						
	tst.w d6				
	jbne _?L124				
	jbra _?L116				
_?L398:						
						
	pea _cp932rsc_himem_shortage		
						
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
	jbra _?L434				
_?L406:						
						
	move.l -23010(a6),a3			
	clr.w d3				
	move.w -23028(a6),a0			
	move.l a0,-23010(a6)			
						
	move.l -22684(a6),-22994(a6)		
						
	move.l -22680(a6),d4			
						
	pea _?LC33				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
						
	tst.w -22996(a6)			
	jbeq _?L130				
	jbra _?L127				
_?L405:						
						
	pea _?LC32				
	jbsr _puts				
	addq.l #4,sp				
						
	tst.w -23040(a6)			
	jble _?L48				
	jbra _?L385				
_?L382:						
						
	jbsr _show_help_message			
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
						
	jbsr _C_CURON				
						
	move.l _g_funckey_mode,d0		
						
	jbmi _?L235				
	jbra _?L386				
_?L423:						
						
	pea _?LC37				
	move.l -23010(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
						
	moveq #0,d3				
						
	clr.w -22996(a6)			
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
						
	tst.w d6				
	jbne _?L124				
	jbra _?L116				
_?L119:						
						
	move.l -23010(a6),a3			
	pea _cp932rsc_himem_shortage		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
_?L440:						
						
	jbsr _pcm8pp_pause			
						
	jbsr _pcm8pp_stop			
	jbra _?L217				
_?L391:						
						
	pea _?LC0				
	jbsr _puts				
	addq.l #4,sp				
						
	jbsr _pcm8a_pause			
						
	jbsr _pcm8a_stop			
						
	jbsr _C_CUROFF				
	clr.w d6				
	move.l #_?LC15,-22982(a6)		
	jbra _?L86				
_?L131:						
						
	pea 1.w					
	jbsr _pcm8a_set_polyphonic_mode		
						
	move.l _g_init_chain_table,(sp)		
	move.l -22978(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8a_play_linked_array_chain	
	lea (12,sp),sp				
						
	cmp.l #22050,-22994(a6)			
	jbeq _?L435				
						
	cmp.l #24000,-22994(a6)			
	jbeq _?L436				
						
	cmp.l #32000,-22994(a6)			
	jbeq _?L437				
	cmp.l #44100,-22994(a6)			
	jbne _?L154				
						
	cmp.w #1,d4				
	jbne _?L238				
						
	or.w #3331,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L412:						
						
	cmp.w #1,d4				
	jbeq _?L133				
						
	cmp.w #2,d4				
	jbeq _?L134				
_?L240:						
						
	or.w #7427,d3				
	move.l d3,-23000(a6)			
	jbra _?L135				
_?L134:						
	or.w #6659,d3				
	move.l d3,-23000(a6)			
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L187:						
						
	pea _cp932rsc_himem_shortage		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
						
	clr.w -22996(a6)			
_?L442:						
						
	jbsr _pcm8a_pause			
						
	jbsr _pcm8a_stop			
	jbra _?L439				
_?L407:						
						
	move.l -23010(a6),a3			
	pea _cp932rsc_mp3_decode_error		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
	jbra _?L116				
_?L73:						
						
	pea _cp932rsc_pcm8_not_available	
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #1,d1				
	move.l d1,-23032(a6)			
	jbra _?L53				
_?L403:						
						
	move.l a3,-23000(a6)			
	move.l -23010(a6),a3			
	pea 1.w					
	move.l -23000(a6),a1			
	move.l (a1),-(sp)			
	lea _himem_free,a5			
	jbsr (a5)				
	addq.l #8,sp				
						
	pea 1.w					
	move.l -23000(a6),-(sp)			
	jbsr (a5)				
	addq.l #8,sp				
						
	move.w d6,d3				
	move.w -23028(a6),a0			
	move.l a0,-23010(a6)			
						
	move.l -22684(a6),-22994(a6)		
						
	move.l -22680(a6),d4			
						
	pea _?LC33				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
						
	tst.w -22996(a6)			
	jbeq _?L130				
	jbra _?L127				
_?L402:						
						
	move.l -23010(a6),a3			
	pea _cp932rsc_mp3_decode_error		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
	lea _ONTIME,a5				
	move.l #_B_PRINT,-23010(a6)		
	jbra _?L440				
_?L408:						
						
	move.l a3,-23000(a6)			
	move.l -23010(a6),a3			
	pea 1.w					
	move.l -23000(a6),a1			
	move.l (a1),-(sp)			
	lea _himem_free,a5			
	jbsr (a5)				
	addq.l #8,sp				
						
	pea 1.w					
	move.l -23000(a6),-(sp)			
	jbsr (a5)				
	addq.l #8,sp				
						
	moveq #1,d3				
	move.w -23028(a6),a0			
	move.l a0,-23010(a6)			
						
	move.l -22684(a6),-22994(a6)		
						
	move.l -22680(a6),d4			
						
	pea _?LC33				
	move.l -23014(a6),a1			
	jbsr (a1)				
	addq.l #4,sp				
						
	tst.w -22996(a6)			
	jbeq _?L130				
	jbra _?L127				
_?L413:						
						
	cmp.w #1,d4				
	jbne _?L141				
						
	or.w #2819,d3				
	move.l d3,-23000(a6)			
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L414:						
						
	cmp.w #1,d4				
	jbne _?L441				
						
	or.w #3075,d3				
	move.l d3,-23000(a6)			
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L203:						
						
	pea _cp932rsc_himem_shortage		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
						
	clr.w -22996(a6)			
_?L448:						
						
	jbsr _pcm8pp_pause			
						
	jbsr _pcm8pp_stop			
	jbra _?L217				
_?L426:						
						
	pea _cp932rsc_mp3_decode_error		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
						
	clr.w -22996(a6)			
	jbra _?L442				
_?L160:						
						
	or.w #7427,d3				
	move.l d3,-23000(a6)			
						
	cmp.w #1,d6				
	jbeq _?L135				
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L435:						
						
	cmp.w #1,d4				
	jbeq _?L443				
						
	cmp.w #2,d4				
	jbeq _?L237				
_?L238:						
						
	or.w #7427,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L237:						
						
	or.w #6659,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L430:						
						
	cmp.w #0,a0				
	jbeq _?L214				
						
	move.l a0,-(sp)				
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	move.l a1,-23044(a6)			
	jbsr _pcm8pp_play_ex_linked_array_chain	
						
	lea (16,sp),sp				
	clr.l (sp)				
	jbsr _pcm8pp_get_block_counter		
	addq.l #4,sp				
						
	move.l -23044(a6),a1			
	sub.w a1,d5				
	move.w d5,d4				
	sub.w d0,d4				
						
	move.l a1,-22986(a6)			
	move.w d4,-23002(a6)			
	move.l -23048(a6),d5			
	clr.w d4				
	jbra _?L444				
_?L425:						
						
	pea _?LC38				
	move.l -23010(a6),a0			
	jbsr (a0)				
	addq.l #4,sp				
						
	clr.l -23032(a6)			
						
	moveq #0,d3				
						
	clr.w -22996(a6)			
						
	tst.w d6				
	jbne _?L124				
	jbra _?L116				
_?L416:						
						
	cmp.w #1,d4				
	jbne _?L445				
						
	or.w #3587,d3				
	move.l d3,-23000(a6)			
						
	cmp.w #1,d6				
	jbne _?L148				
						
	jbsr _pcm8pp_get_frequency_mode		
						
	subq.l #2,d0				
	jbeq _?L163				
_?L165:						
						
	pea 2.w					
	jbsr _pcm8pp_set_frequency_mode		
	addq.l #4,sp				
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L436:						
						
	cmp.w #1,d4				
	jbne _?L446				
						
	or.w #2819,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L141:						
						
	cmp.w #2,d4				
	jbne _?L240				
						
	or.w #6915,d3				
	move.l d3,-23000(a6)			
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L133:						
						
	or.w #2563,d3				
	move.l d3,-23000(a6)			
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L437:						
						
	cmp.w #1,d4				
	jbne _?L447				
						
	or.w #3075,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L445:						
						
	cmp.w #2,d4				
	jbne _?L160				
						
	or.w #7683,d3				
	move.l d3,-23000(a6)			
						
	cmp.w #1,d6				
	jbne _?L148				
						
	jbsr _pcm8pp_get_frequency_mode		
						
	subq.l #2,d0				
	jbne _?L165				
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L418:						
						
	pea _cp932rsc_mp3_decode_error		
	pea -22962(a6)				
	jbsr _strcpy				
	addq.l #8,sp				
						
	moveq #0,d3				
						
	clr.w -22996(a6)			
	jbra _?L448				
_?L443:						
						
	or.w #2563,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L441:						
						
	cmp.w #2,d4				
	jbne _?L240				
						
	or.w #7171,d3				
	move.l d3,-23000(a6)			
						
	move.l _g_init_chain_table_ex,-(sp)	
						
	move.l -22994(a6),d0			
	lsl.l #8,d0				
						
	move.l d0,-(sp)				
	pea 1.w					
	move.l -23000(a6),-(sp)			
	clr.l -(sp)				
	jbsr _pcm8pp_play_ex_linked_array_chain	
	lea (20,sp),sp				
	jbra _?L438				
_?L446:						
						
	cmp.w #2,d4				
	jbne _?L238				
						
	or.w #6915,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
_?L447:						
						
	cmp.w #2,d4				
	jbne _?L238				
						
	or.w #7171,d3				
	move.l d3,-23000(a6)			
						
	pea _?LC36				
	jbsr _puts				
	addq.l #4,sp				
						
	lea _ONTIME,a5				
	jbsr (a5)				
	move.w #19,a0				
	add.l d0,a0				
	move.l a0,-23010(a6)			
	jbra _?L168				
						
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_original_pcm8pp_frequency_mode,4
	.data					
	.align	2				
						
						
_g_funckey_mode:				
	.dc.l	-1				
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_init_chain_table_ex,4	
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_init_chain_table,4		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_abort_vector2,4		
						
	.align 2	* workaround for 3 args .comm directive.
	.comm	_g_abort_vector1,4		
						
