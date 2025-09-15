
*     adpcmlib.a (C)Otankonas  ��C���ꂩ��Ăяo�����C�u����   by appyo


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
* short channel;       /* 0:���m���� 1:�X�e���I */
* -----------------------------------------------------------------
__ptoa_init:
	move.w	6(sp),d0
	jsr	ptoa_init
	rts

* -----------------------------------------------------------------
* void _ptoa_exec( pcmsize, pcmbuf, adpcmbuf );
* unsigned int pcmsize;      /* PCM�f�[�^�̎��T�C�Y(�P��:bytes) */
* short *pcmbuf;             /* PCM�f�[�^�̃A�h���X */
* unsigned char *adpcmbuf;   /* ADPCM�f�[�^���i�[����A�h���X */
* -----------------------------------------------------------------
__ptoa_exec:
	move.l	4(sp),d0
	movea.l	8(sp),a0
	movea.l	12(sp),a1
	jsr	ptoa_exec
	rts

* -----------------------------------------------------------------
* void _atop_make_buffer( buffer );
* char *buffer;   /* ADPCM->PCM�ϊ��e�[�u��(�v141312bytes)�A�h���X */
* -----------------------------------------------------------------
__atop_make_buffer:
	movea.l	4(sp),a0
	jsr	atop_make_buffer
	rts

* -----------------------------------------------------------------
* void _atop_init( channel );
* short channel;       /* 0:���m���� 1:�X�e���I */
* -----------------------------------------------------------------
__atop_init:
	move.w	6(sp),d0
	jsr	atop_init
	rts

* -----------------------------------------------------------------
* void _atop_exec( adpcmsize, adpcmbuf, pcmbuf );
* unsigned int adpcmsize;    /* ADPCM�f�[�^�̎��T�C�Y(�P��:bytes) */
* unsigned char *adpcmbuf;   /* PCM�f�[�^�̃A�h���X */
* short *pcmbuf;             /* ADPCM�f�[�^���i�[����A�h���X */
* -----------------------------------------------------------------
__atop_exec:
	move.l	4(sp),d0
	movea.l	8(sp),a0
	movea.l	12(sp),a1
	jsr	atop_exec
	rts
