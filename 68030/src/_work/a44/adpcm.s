
*     adpcmlib.a (C)Otankonas  をC言語から呼び出すライブラリ   by appyo


	.cpu	68000

	.text
	.even

	.xref	ptoa_make_buffer
	.xref	ptoa_init
	.xref	ptoa_exec
	.xref	atop_make_buffer
	.xref	atop_init
	.xref	atop_exec

	.xdef	__ptoa_make_buffer
	.xdef	__ptoa_init
	.xdef	__ptoa_exec
	.xdef	__atop_make_buffer
	.xdef	__atop_init
	.xdef	__atop_exec

* -----------------------------------------------------------------
* void _ptoa_make_buffer();
* -----------------------------------------------------------------
__ptoa_make_buffer:
	jsr	ptoa_make_buffer
	rts

* -----------------------------------------------------------------
* void _ptoa_init( channel );
* short channel;       /* 0:モノラル 1:ステレオ */
* -----------------------------------------------------------------
__ptoa_init:
	move.w	6(sp),d0
	jsr	ptoa_init
	rts

* -----------------------------------------------------------------
* void _ptoa_exec( pcmsize, pcmbuf, adpcmbuf );
* unsigned int pcmsize;      /* PCMデータの実サイズ(単位:bytes) */
* short *pcmbuf;             /* PCMデータのアドレス */
* unsigned char *adpcmbuf;   /* ADPCMデータを格納するアドレス */
* -----------------------------------------------------------------
__ptoa_exec:
	move.l	4(sp),d0
	movea.l	8(sp),a0
	movea.l	12(sp),a1
	jsr	ptoa_exec
	rts

* -----------------------------------------------------------------
* void _atop_make_buffer( buffer );
* char *buffer;   /* ADPCM->PCM変換テーブル(要141312bytes)アドレス */
* -----------------------------------------------------------------
__atop_make_buffer:
	movea.l	4(sp),a0
	jsr	atop_make_buffer
	rts

* -----------------------------------------------------------------
* void _atop_init( channel );
* short channel;       /* 0:モノラル 1:ステレオ */
* -----------------------------------------------------------------
__atop_init:
	move.w	6(sp),d0
	jsr	atop_init
	rts

* -----------------------------------------------------------------
* void _atop_exec( adpcmsize, adpcmbuf, pcmbuf );
* unsigned int adpcmsize;    /* ADPCMデータの実サイズ(単位:bytes) */
* unsigned char *adpcmbuf;   /* PCMデータのアドレス */
* short *pcmbuf;             /* ADPCMデータを格納するアドレス */
* -----------------------------------------------------------------
__atop_exec:
	move.l	4(sp),d0
	movea.l	8(sp),a0
	movea.l	12(sp),a1
	jsr	atop_exec
	rts
