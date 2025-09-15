                                                       .comment        comend
───────────────────────────────────────────
  '16bit PCM driver for MercuryUnit version 0.88+1 Copyright 1994-1999 BEL./nenetto'

                                  Mercury Driver
                                        for
                      16bit PCM board 'Mercury Unit' V2 or later
                         Copyright 1994-1999 BEL./nenetto
───────────────────────────────────────────

                        -1      _M_IOCS         IOCS乗っ取り制御

                        00      _PCMOUT         PCMデータ出力
                        02      _PCMAOUT        PCMデータ出力(アレイチェーンモード)
                        03      _PCMLOUT        PCMデータ出力(リンクアレイチェーンモード)
                        06      _PCMSNS         状態の調査
                        07      _PCMMOD         PCM実行制御
                        08      _MUSTAT         Mercury Unit Status

                        09      _MUCHECK        Mercury Unit version CHECK
                        0A      _OPNSET         FM音源レジスタデータの書き込み
                        0B      _OPNSNS         FM音源ステータス読み込み
                        0C      _OPNINTST       FM音源ICによる割り込み設定

									comend

							.include	DOSCALL.MAC
							.include	IOCSCALL.MAC
							.include	Mercury.mac
							.cpu		68000
							.text
							.quad

A_dma_ch2	equ	$e84080

A_pcm_data	equ	$ecc080
A_pcm_mode	equ	$ecc090
A_pcm_command	equ	$ecc091
A_pcm_status	equ	$ecc0a1

A_merc_vec	equ	$ecc0b1

A_opnM0_reg	equ	$ecc0c1
A_opnM0_data	equ	$ecc0c3
A_opnM1_reg	equ	$ecc0c5
A_opnM1_data	equ	$ecc0c7

A_opnS0_reg	equ	$ecc0c9
A_opnS0_data	equ	$ecc0cb
A_opnS1_reg	equ	$ecc0cd
A_opnS2_data	equ	$ecc0cf

version		.reg	'*MD*/08a'
version2	.reg	'0.88+1'

vwait		macro	num
	.local	_w_v0
	.local	_w_v1
		move.l	d0,-(sp)
		move.l	#num,d0
	  _w_v0:
		btst	#4,$e88001
		beq	_w_v0
	  _w_v1:btst	#4,$e88001
		bne	_w_v1
		dbra	d0,_w_v0
		move.l	(sp)+,d0
		endm

;──────────────────────────────────────────
device_header:
	.dc.l	device_header2
	.dc.w	$8020
	.dc.l	strategy_entry_s32
	.dc.l	interrupt_entry_s32
	.dc.b	'S32     '

request_header_s32:
	.dc.l	0

jump_table_s32:
	.dc.l	init
	.dc.l	notcmd
	.dc.l	notcmd
	.dc.l	ioctrl_in
	.dc.l	input
	.dc.l	sense
	.dc.l	inpstat
	.dc.l	flush
	.dc.l	output_s32
	.dc.l	voutput_s32
	.dc.l	outstat
	.dc.l	notcmd
	.dc.l	ioctrl_out

strategy_entry_s32:
	move.l	a5,request_header_s32
	rts

interrupt_entry_s32:
	movem.l	d0/a4-a5,-(sp)
	movea.l	request_header_s32,a5
	moveq.l	#0,d0
	move.b	2(a5),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	jump_table_s32(pc),a4
	adda.l	d0,a4
	movea.l	(a4),a4
	jsr	(a4)
	move.b	d0,3(a5)
	lsr.w	#8,d0
	move.b	d0,4(a5)
	movem.l	(sp)+,d0/a4-a5
	rts

;──────────────────────────────────────────
device_header2:
	.dc.l	device_header3
	.dc.w	$8020
	.dc.l	strategy_entry_s44
	.dc.l	interrupt_entry_s44
	.dc.b	'S44     '

request_header_s44:
	.dc.l	0

jump_table_s44:
	.dc.l	init
	.dc.l	notcmd
	.dc.l	notcmd
	.dc.l	ioctrl_in
	.dc.l	input
	.dc.l	sense
	.dc.l	inpstat
	.dc.l	flush
	.dc.l	output_s44
	.dc.l	voutput_s44
	.dc.l	outstat
	.dc.l	notcmd
	.dc.l	ioctrl_out

strategy_entry_s44:
	move.l	a5,request_header_s44
	rts

interrupt_entry_s44:
	movem.l	d0/a4-a5,-(sp)
	movea.l	request_header_s44,a5
	moveq.l	#0,d0
	move.b	2(a5),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	jump_table_s44(pc),a4
	adda.l	d0,a4
	movea.l	(a4),a4
	jsr	(a4)
	move.b	d0,3(a5)
	lsr.w	#8,d0
	move.b	d0,4(a5)
	movem.l	(sp)+,d0/a4-a5
	rts

;──────────────────────────────────────────
device_header3:
	.dc.l	device_header4
	.dc.w	$8020
	.dc.l	strategy_entry_s48
	.dc.l	interrupt_entry_s48
	.dc.b	'S48     '

request_header_s48:
	.dc.l	0

jump_table_s48:
	.dc.l	init
	.dc.l	notcmd
	.dc.l	notcmd
	.dc.l	ioctrl_in
	.dc.l	input
	.dc.l	sense
	.dc.l	inpstat
	.dc.l	flush
	.dc.l	output_s48
	.dc.l	voutput_s48
	.dc.l	outstat
	.dc.l	notcmd
	.dc.l	ioctrl_out

strategy_entry_s48:
	move.l	a5,request_header_s48
	rts

interrupt_entry_s48:
	movem.l	d0/a4-a5,-(sp)
	movea.l	request_header_s48,a5
	moveq.l	#0,d0
	move.b	2(a5),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	jump_table_s48(pc),a4
	adda.l	d0,a4
	movea.l	(a4),a4
	jsr	(a4)
	move.b	d0,3(a5)
	lsr.w	#8,d0
	move.b	d0,4(a5)
	movem.l	(sp)+,d0/a4-a5
	rts

;──────────────────────────────────────────
device_header4:
	.dc.l	device_header5
	.dc.w	$8020
	.dc.l	strategy_entry_p32
	.dc.l	interrupt_entry_p32
	.dc.b	'M32     '

request_header_p32:
	.dc.l	0

jump_table_p32:
	.dc.l	init
	.dc.l	notcmd
	.dc.l	notcmd
	.dc.l	ioctrl_in
	.dc.l	input
	.dc.l	sense
	.dc.l	inpstat
	.dc.l	flush
	.dc.l	output_p32
	.dc.l	voutput_p32
	.dc.l	outstat
	.dc.l	notcmd
	.dc.l	ioctrl_out

strategy_entry_p32:
	move.l	a5,request_header_p32
	rts

interrupt_entry_p32:
	movem.l	d0/a4-a5,-(sp)
	movea.l	request_header_p32,a5
	moveq.l	#0,d0
	move.b	2(a5),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	jump_table_p32(pc),a4
	adda.l	d0,a4
	movea.l	(a4),a4
	jsr	(a4)
	move.b	d0,3(a5)
	lsr.w	#8,d0
	move.b	d0,4(a5)
	movem.l	(sp)+,d0/a4-a5
	rts

;──────────────────────────────────────────
device_header5:
	.dc.l	device_header6
	.dc.w	$8020
	.dc.l	strategy_entry_p44
	.dc.l	interrupt_entry_p44
	.dc.b	'M44     '

request_header_p44:
	.dc.l	0

jump_table_p44:
	.dc.l	init
	.dc.l	notcmd
	.dc.l	notcmd
	.dc.l	ioctrl_in
	.dc.l	input
	.dc.l	sense
	.dc.l	inpstat
	.dc.l	flush
	.dc.l	output_p44
	.dc.l	voutput_p44
	.dc.l	outstat
	.dc.l	notcmd
	.dc.l	ioctrl_out

strategy_entry_p44:
	move.l	a5,request_header_p44
	rts

interrupt_entry_p44:
	movem.l	d0/a4-a5,-(sp)
	movea.l	request_header_p44,a5
	moveq.l	#0,d0
	move.b	2(a5),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	jump_table_p44(pc),a4
	adda.l	d0,a4
	movea.l	(a4),a4
	jsr	(a4)
	move.b	d0,3(a5)
	lsr.w	#8,d0
	move.b	d0,4(a5)
	movem.l	(sp)+,d0/a4-a5
	rts

;──────────────────────────────────────────
device_header6:
	.dc.l	-1
	.dc.w	$8020
	.dc.l	strategy_entry_p48
	.dc.l	interrupt_entry_p48
	.dc.b	'M48     '

request_header_p48:
	.dc.l	0

jump_table_p48:
	.dc.l	init
	.dc.l	notcmd
	.dc.l	notcmd
	.dc.l	ioctrl_in
	.dc.l	input
	.dc.l	sense
	.dc.l	inpstat
	.dc.l	flush
	.dc.l	output_p48
	.dc.l	voutput_p48
	.dc.l	outstat
	.dc.l	notcmd
	.dc.l	ioctrl_out

strategy_entry_p48:
	move.l	a5,request_header_p48
	rts

interrupt_entry_p48:
	movem.l	d0/a4-a5,-(sp)
	movea.l	request_header_p48,a5
	moveq.l	#0,d0
	move.b	2(a5),d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	jump_table_p48(pc),a4
	adda.l	d0,a4
	movea.l	(a4),a4
	jsr	(a4)
	move.b	d0,3(a5)
	lsr.w	#8,d0
	move.b	d0,4(a5)
	movem.l	(sp)+,d0/a4-a5
	rts

;──────────────────────────────────────────
notcmd:
	move.w	#$5003,d0			; 無効コマンド
	rts

sense:
flush:
outstat:
inpstat:
input:
ioctrl_in:
ioctrl_out:
	bra	done				; 一応無効（使用しない）

;──────────────────────────────────────────
output_s32:
voutput_s32:
	movem.l	d0-d3/a1,-(sp)
	move.l	#3*256+3,d2
	bra	pcm_out_main
;──────────────────────────────────────────
output_s44:
voutput_s44:
	movem.l	d0-d3/a1,-(sp)
	move.l	#4*256+3,d2
	bra	pcm_out_main
;──────────────────────────────────────────
output_s48:
voutput_s48:
	movem.l	d0-d3/a1,-(sp)
	move.l	#5*256+3,d2
	bra	pcm_out_main
;──────────────────────────────────────────
output_p32:
voutput_p32:
	movem.l	d0-d3/a1,-(sp)
	move.l	#0*256+3,d2
	bra	pcm_out_main
;──────────────────────────────────────────
output_p44:
voutput_p44:
	movem.l	d0-d3/a1,-(sp)
	move.l	#1*256+3,d2
	bra	pcm_out_main
;──────────────────────────────────────────
output_p48:
voutput_p48:
	movem.l	d0-d3/a1,-(sp)
	move.l	#2*256+3,d2
;──────────────────────────────────────────
pcm_out_main:
	move.b	A_pcm_mode,d3			; (V4)
	or.b	#3,d3
	move.b	d3,A_pcm_mode

	move.l	18(a5),d3			; 出力要求バイト数
	move.l	14(a5),a1			; 出力データのポインタ
	MERC	_PCMOUT
	bsr	_wait_complete

	move.b	#0,A_pcm_mode			; (V4)

	movem.l	(sp)+,d0-d3/a1
done:
	moveq.l	#0,d0
	rts

;──────────────────────────────────────────
うに:
	move.l	#$8000,d1
	move.l	#$10000,d2

	move.l	size,d0
	lsr.l	#1,d0
	divu	d1,d0
	addq.w	#1,d0
	move.w	d0,total_block
	move.w	d0,$e8409a		; btc

	lea.l	aray_table(pc),a0
	move.l	a0,$e8409c		; bar
	movea.l	data_adr,a1
	subq.l	#1,d0
_mk_chain_tbl:
	move.l	a1,(a0)+
	move.w	d1,(a0)+
	adda.l	d2,a1
	dbra.w	d0,_mk_chain_tbl
	swap	d0
	move.w	d0,-2(a0)
	rts

_mercury_unit_set:
	move.b	d0,A_pcm_command
	rts


_dmac_int_set:
	move.w	sr,-(sp)
	ori.w	#$700,sr
	movem.l	d0/a0,-(sp)

	move.b	A_pcm_mode,d0			; (V4)
	or.b	#3,d0
	move.b	d0,A_pcm_mode

	movea.l	#$1a0,a0
	move.l	(a0),P_dma_end_org
	move.l	#_dma_end,(a0)

	movem.l	(sp)+,d0/a0
	move.w	(sp)+,sr
	rts

_dma_end:
	move.w	sr,-(sp)
	ori.w	#$700,sr
	move.l	a0,-(sp)

	movea.l	#$1a0,a0
	move.l	P_dma_end_org,(a0)
	move.b	#0,A_pcm_mode			; (V4)

	move.l	(sp)+,a0
	move.w	(sp)+,sr
	rte

P_dma_end_org:	.dc.l	0

_init_dmac:
	movea.l	#$e84080,a0			; DMAC ch2
	move.b	#%1111_1111,(a0)		; CSR error clear
	move.b	#%1000_1000,4(a0)		; DCR
	move.b	#%0001_1010,5(a0)		; OCR
	move.b	#%0000_0100,6(a0)		; SCR
	move.b	#%0000_1000,7(a0)		; CCR
	move.l	#$ecc080,20(a0)			; DAR
	rts

_pcm_play_start:
	movea.l	#$e84080,a0
1:	btst	#0,(a0)
	beq	1b
1:	btst	#0,(a0)
	bne	1b
	move.b	#%1000_0000,7(a0)		; DMAC start
	rts

_wait_complete:
	move.b	$e84080,d0
	and.b	#$80,d0
	beq	_wait_complete
	move.b	#%0001_0000,$e84087		; soft abort
	rts


;────────────────────────────────────────────
;	Mercury IOCS
;							Sat Jun  1 09:39 JST 1996 (saori)
;────────────────────────────────────────────
										.even
	.dc.b	version					; 認識ヘッダ

iocs_vector_f4:
	movem.l	d1-d7/a0-a6,-(sp)

	cmpi.b	#-1,d1
	bne	1f
	bsr	_merc_iocs
	bra	_iocs_end
1:
	cmpi.b	#$10,d1
	bcc	_iocs_end

	moveq.l	#0,d0
	move.b	d1,d0
	add.w	d0,d0
	add.w	d0,d0
	lea.l	_IOCS_jump_table(pc),a0
	movea.l	(a0,d0.l),a0
	jsr	(a0)

_iocs_end:
	movem.l	(sp)+,d1-d7/a0-a6
	rts

_IOCS_jump_table:
	.dc.l	_merc_pcm_out			; 0
	.dc.l	_nop				; 1
	.dc.l	_merc_pcm_aout			; 2
	.dc.l	_merc_pcm_lout			; 3
	.dc.l	_nop				; 4
	.dc.l	_nop				; 5
	.dc.l	_merc_pcm_sns			; 6
	.dc.l	_merc_pcm_mod			; 7
	.dc.l	_merc_unit_status		; 8
	.dc.l	_merc_unit_check		; 9
	.dc.l	_merc_opn_set			; A
	.dc.l	_merc_opn_sns			; B
	.dc.l	_merc_opn_intst			; C
	.dc.l	_nop
	.dc.l	_merc_start			; E
	.dc.l	_merc_stop			; F

_nop:
	rts

;──────────────────────────────────────────
_merc_start:
	move.b	A_pcm_mode,d0
	or.b	#3,d0
	move.b	d0,A_pcm_mode
	rts

;──────────────────────────────────────────
_merc_stop:
	move.b	#0,A_pcm_mode
	rts

;──────────────────────────────────────────
_merc_unit_status:
	moveq.l	#0,d0
	move.b	A_pcm_status,d0
	rts

;──────────────────────────────────────────
_merc_unit_check:
	bsr	_ver_check
	tst.l	d0
	beq	1f
	moveq.l	#0,d0
	rts
1:
	move.b	A_pcm_mode,d0
	bset	#0,A_pcm_mode
	btst	#0,A_pcm_mode
	beq	1f
	move.b	d0,A_pcm_mode
	moveq.l	#1,d0
	rts
1:
	move.b	d0,A_pcm_mode
	moveq.l	#2,d0
	rts


_ver_check
	move.b	#%0101_0011,A_pcm_command
	btst	#6,A_pcm_status
	beq	1f
	move.b	#%0001_0011,A_pcm_command
	btst	#6,A_pcm_status
	bne	1f
	moveq	#0,d0
	btst	#7,A_pcm_status
	beq	1f
	moveq	#1,d0
	bra	1f
1:
	rts


;──────────────────────────────────────────
_merc_iocs:
	tst.w	d2
	beq	_m_iocs_fuck
	subq.w	#1,d2
	beq	_m_iocs_unfuck

_m_iocs_check:
	moveq	#-1,d0
	tst.w	F_adpcm_hook
	bne	1f
	moveq.l	#0,d0
1:
	rts

_m_iocs_fuck:
	moveq.l	#-1,d0
	tst.w	F_adpcm_hook
	beq	1f
	rts

1:
	move.w	#$0160,d1
	lea.l	iocs_vector_60(pc),a1
	IOCS	_B_INTVCS
	move.l	d0,V_iocs_60_org
	
	move.w	#$0162,d1
	lea.l	iocs_vector_62(pc),a1
	IOCS	_B_INTVCS
	move.l	d0,V_iocs_62_org
	
	move.w	#$0163,d1
	lea.l	iocs_vector_63(pc),a1
	IOCS	_B_INTVCS
	move.l	d0,V_iocs_63_org

	move.w	#$0166,d1
	lea.l	iocs_vector_66(pc),a1
	IOCS	_B_INTVCS
	move.l	d0,V_iocs_66_org
	
	move.w	#$0167,d1
	lea.l	iocs_vector_67(pc),a1
	IOCS	_B_INTVCS
	move.l	d0,V_iocs_67_org

	move.w	#-1,F_adpcm_hook
	moveq.l	#0,d0
	rts


_m_iocs_unfuck:
	moveq.l	#-1,d0
	tst.w	F_adpcm_hook
	bne	1f
	rts

1:
	move.w	#$0160,d1
	movea.l	V_iocs_60_org,a1
	IOCS	_B_INTVCS
	
	move.w	#$0162,d1
	movea.l	V_iocs_62_org,a1
	IOCS	_B_INTVCS

	move.w	#$0163,d1
	movea.l	V_iocs_63_org,a1
	IOCS	_B_INTVCS	

	move.w	#$0166,d1
	movea.l	V_iocs_66_org,a1
	IOCS	_B_INTVCS
	
	move.w	#$0167,d1
	movea.l	V_iocs_67_org,a1
	IOCS	_B_INTVCS

	moveq.l	#0,d0
	move.w	d0,F_adpcm_hook
	rts


;──────────────────────────────────────────
iocs_vector_60:
	movem.l	d2-d7/a0-a6,-(sp)
	move.l	d2,d3
	move.w	d1,d2
	bsr	_merc_pcm_out		; _PCMOUT
	movem.l	(sp)+,d2-d7/a0-a6
	rts

;──────────────────────────────────────────
iocs_vector_62:
	movem.l	d2-d7/a0-a6,-(sp)
	move.l	d2,d3
	move.w	d1,d2
	bsr	_merc_pcm_aout		; _PCMAOUT
	movem.l	(sp)+,d2-d7/a0-a6
	rts

;──────────────────────────────────────────
iocs_vector_63:
	movem.l	d2-d7/a0-a6,-(sp)
	move.l	d2,d3
	move.w	d1,d2
	bsr	_merc_pcm_lout		; _PCMLOUT
	movem.l	(sp)+,d2-d7/a0-a6
	rts

;──────────────────────────────────────────
iocs_vector_66:
	movem.l	d2-d7/a0-a6,-(sp)
	bsr	_merc_pcm_sns		; _PCMSNS
	movem.l	(sp)+,d2-d7/a0-a6
	rts

;──────────────────────────────────────────
iocs_vector_67:
	movem.l	d2-d7/a0-a6,-(sp)
	move.l	d1,d2
	bsr	_merc_pcm_mod		; _PCMMOD
	movem.l	(sp)+,d2-d7/a0-a6
	rts

F_adpcm_hook:		dc.w	0	; 1 で、既に自身によってフックされている.
V_iocs_60_org:		dc.l	0
V_iocs_62_org:		dc.l	0
V_iocs_63_org:		dc.l	0
V_iocs_66_org:		dc.l	0
V_iocs_67_org:		dc.l	0

;──────────────────────────────────────────

_merc_pcm_sns:					; _PCMSNS
	clr.l	d0
	btst	#3,$e84080
	beq	@f
	move.l	D_pcm_mode,d0			; 動作状態
	@@:
	rts

;──────────────────────────────────────────
_merc_pcm_mod:					; _PCMMOD
	tst.b	d2
	beq	pcm_終了
	subq.b	#1,d2
	beq	pcm_中断
	subq.b	#1,d2
	beq	pcm_再開
	subq.b	#1,d2
	beq	pcm_スルー
	subq.b	#1,d2
	beq	pcm_スルー止め
pcm_終了:					; 番号あわないと終了（仕様
	move.b	#%0001_0000,$e84087		; soft abort
	rts

pcm_中断:
	move.b	#%0010_0000,$e84087		; dma halt
	rts

pcm_再開:
	move.b	#%0000_0000,$e84087		; release halt
	rts

pcm_スルー:
	clr.l	d0
	move.b	$ecc0a1,d0
	andi.b	#%0100_0000,d0
	or.b	#%0000_1110,d0
	move.b	d0,A_pcm_command
	rts

pcm_スルー止め:
	clr.l	d0
	move.b	$ecc0a1,d0
	or.b	#%0000_0001,d0
	move.b	d0,A_pcm_command
	rts

;──────────────────────────────────────────
_merc_pcm_aout:					; _ADPCMAOUT
	move.l	a1,data_adr
	bsr	d2展開

	move.b	A_pcm_mode,d3
	or.b	#3,d3
	move.b	d3,A_pcm_mode

	bsr	_init_dmac

	move.w	d3,total_block
	move.w	d3,$e8409a		; btc
	move.l	a1,$e8409c		; bar

	move.b	#$ff,$e84080
	bsr	_pcm_play_start
	
	move.l	#$12,D_pcm_mode
	rts

;──────────────────────────────────────────
_merc_pcm_lout:					; _ADPCMLOUT
	move.l	a1,data_adr
	bsr	d2展開

	move.b	A_pcm_mode,d3
	or.b	#3,d3
	move.b	d3,A_pcm_mode

	bsr	_init_dmac

	move.w	d3,total_block
	move.w	d3,$e8409a		; btc
	move.l	a1,$e8409c		; bar

	move.b	#$ff,$e84080
	bsr	_pcm_play_start
	
	move.l	#$12,D_pcm_mode
	rts

;──────────────────────────────────────────
_merc_pcm_out:					; _PCMOUT
	move.l	a1,data_adr
	move.l	d3,size
	bsr	d2展開

	move.b	A_pcm_mode,d3
	or.b	#3,d3
	move.b	d3,A_pcm_mode

	bsr	_init_dmac
	bsr	うに

	move.b	#$ff,$e84080
	bsr	_pcm_play_start
	
	move.l	#2,D_pcm_mode
	rts


d2展開:
	moveq.l	#0,d0
	move.l	d0,d1
	bset	#7,d1

	move.w	d2,d0
	lsr.w	#8,d0

	cmp.b	#9,d0
	bcs	@f
	bset	#1,d1		; stereo
	bclr	#7,d1
	sub	#9,d0
	bra	1f
@@:
	cmp.b	#6,d0
	bcs	@f
	bclr	#7,d1
	subq	#6,d0
	bra	1f
@@:
	cmp.b	#3,d0
	bcs	1f
	subq	#3,d0
	bset	#1,d1		; stereo
1:
	andi.b	#%0011,d0	; 0:32kHz 1:44.1kHz 2:48kHz
	addq	#1,d0
	lsl.b	#4,d0
	or.b	d0,d1

	lsl.w	#2,d2		; pan
	andi.w	#%1100,d2
	or.b	d2,d1

	bset	#0,d1		; output
	move.b	d1,A_pcm_command
	rts

;──────────────────────────────────────────
_merc_opn_set:					; _OPNSET
	moveq.l	#0,d0
	move.w	d2,d0
	and.w	#$300,d0
	lsr.l	#6,d0
	lea.l	_opn_table(pc),a0
	movea.l	(a0,d0.l),a0
	bsr	_opn_write
	rts

;──────────────────────────────────────────
_merc_opn_sns:					; _OPNSNS
	moveq.l	#0,d0
	move.b	d2,d0
	lsl.l	#2,d0
	lea.l	_opn_table(pc),a0
	movea.l	(a0,d0.l),a0
	move.b	(a0),d0
	rts

;──────────────────────────────────────────
_merc_opn_intst:				; _OPNINTST
	move.b	d2,A_merc_vec
	moveq.l	#0,d1
	move.b	d2,d1
	IOCS	_B_INTVCS
	rts

;──────────────────────────────────────────
_opn_table:
	.dc.l	A_opnM0_reg
	.dc.l	A_opnM1_reg
	.dc.l	A_opnS0_reg
	.dc.l	A_opnS1_reg


;──────────────────────────────────────────
_opn_write:
	bsr	_opn_wait
	move.b	d2,(a0)
	bsr	_opn_wait
	move.b	d3,2(a0)
	rts

_opn_wait:
	tst.b	(a0)
	tst.b	(a0)
	bmi	_opn_wait
	rts

_opn_vector:	rte

		.even
size:		.dc.l	0
data_adr:	.dc.l	0
total_block:	.dc.w	0
time:		.dc.w	0
F_coaxial:	.dc.w	0		; 1 で同軸入力
D_pcm_mode:	.dc.l	0		; _pcmsns での返り値
aray_table:
		.ds.b	1024*2

;──────────────────────────────────────
;               ドライバ常駐時に呼ばれる初期化ルーチン
;──────────────────────────────────────
                                                                        .even
init:
	movem.l	a0-a6,-(sp)

	bsr	unit_check
	bne	ボードがね〜

	pea	タイトル(pc)
	DOS	_PRINT
	pea	タイトル2(pc)
	DOS	_PRINT
	addq.l	#8,sp

	bsr	IOCS拡張

	move.b	#$FF,A_merc_vec
	move.l	#_opn_vector,($0003fc)

	movem.l	(sp)+,a0-a6

	move.b	#%1000_1110,A_pcm_command		; 光入力
	vwait	6
	btst	#0,A_pcm_status
	bne	同軸入力

	pea	おぷちかる(pc)
	DOS	_PRINT
	addq.l	#4,sp
	bra	@f
同軸入力:
	move.w	#1,F_coaxial
	move.b	#%1100_1110,A_pcm_command		; 同軸入力
	vwait	6
	btst	#0,A_pcm_status
	bne	入力エラー

	pea	こあきしゃる(pc)
	DOS	_PRINT
	addq.l	#4,sp
	bra	@f
入力エラー:
	move.b	#%1010_1111,A_pcm_command		; モニタしない
@@:
	move.l	#init,14(a5)	; デバイスドライバで使用するメモリの最終アドレス
	bra	done

ボードがね〜:
	movem.l	(sp)+,a0-a6

	pea	ユニット無い(pc)
	DOS	_PRINT
	addq.l	#4,sp

	moveq.l	#-1,d0
	rts


IOCS拡張:
	moveq.l	#0,d1
	move.w	#$01f4,d1
	lea.l	iocs_vector_f4(pc),a1
	IOCS	_B_INTVCS

	pea	拡張した(pc)
	DOS	_PRINT
	addq.l	#4,sp
	rts


unit_check:
	move.l	sp,a6
	lea.l	@f(pc),a1
	move.l	8.w,a2
	move.l	a1,8.w
	move.w	$ecc080,d0
	move.l	a2,8.w
	moveq.l	#0,d0
	rts

@@:	move.l	a6,sp
	move.l	a2,8.w
	moveq.l	#$FF,d0
	rts

;──────────────────────────────────────
タイトル:	.dc.b	13,10
		.dc.b	'16bit PCM driver version '
		.dc.b	version2
		.dc.b	' Copyright 1994-1999 by BEL./nenetto',13,10,0
タイトル2:	.dc.b	"S32,S44,S48 / M32,M44,M48 の各ファイル名で出力可能です",13,10,0
拡張した:	.dc.b	'Mercury-IOCS を拡張しました。',13,10,0
おぷちかる:	.dc.b	'optical input mode.',13,10,0
こあきしゃる:	.dc.b	'coaxial input mode.',13,10,0
ユニット無い:	.dc.b	13,10,'Mercury-Unit がありませんので',0

		.end
