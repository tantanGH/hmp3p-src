/* ***** BEGIN LICENSE BLOCK ***** 
 * Version: RCSL 1.0/RPSL 1.0 
 *  
 * Portions Copyright (c) 1995-2002 RealNetworks, Inc. All Rights Reserved. 
 *      
 * The contents of this file, and the files included with this file, are 
 * subject to the current version of the RealNetworks Public Source License 
 * Version 1.0 (the "RPSL") available at 
 * http://www.helixcommunity.org/content/rpsl unless you have licensed 
 * the file under the RealNetworks Community Source License Version 1.0 
 * (the "RCSL") available at http://www.helixcommunity.org/content/rcsl, 
 * in which case the RCSL will apply. You may also obtain the license terms 
 * directly from RealNetworks.  You may not use this file except in 
 * compliance with the RPSL or, if you have a valid RCSL with RealNetworks 
 * applicable to this file, the RCSL.  Please see the applicable RPSL or 
 * RCSL for the rights, obligations and limitations governing use of the 
 * contents of the file.  
 *  
 * This file is part of the Helix DNA Technology. RealNetworks is the 
 * developer of the Original Code and owns the copyrights in the portions 
 * it created. 
 *  
 * This file, and the files included with this file, is distributed and made 
 * available on an 'AS IS' basis, WITHOUT WARRANTY OF ANY KIND, EITHER 
 * EXPRESS OR IMPLIED, AND REALNETWORKS HEREBY DISCLAIMS ALL SUCH WARRANTIES, 
 * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY, FITNESS 
 * FOR A PARTICULAR PURPOSE, QUIET ENJOYMENT OR NON-INFRINGEMENT. 
 * 
 * Technology Compatibility Kit Test Suite(s) Location: 
 *    http://www.helixcommunity.org/content/tck 
 * 
 * Contributor(s): 
 *  
 * ***** END LICENSE BLOCK ***** */ 

/**************************************************************************************
 * Fixed-point MP3 decoder
 * Jon Recker (jrecker@real.com), Ken Cooke (kenc@real.com)
 * June 2003
 *
 * assembly.h - assembly language functions and prototypes for supported platforms
 *
 * - inline rountines with access to 64-bit multiply results 
 * - x86 (_WIN32) and ARM (ARM_ADS, _WIN32_WCE) versions included
 * - some inline functions are mix of asm and C for speed
 * - some functions are in native asm files, so only the prototype is given here
 *
 * MULSHIFT32(x, y)    signed multiply of two 32-bit integers (x and y), returns top 32 bits of 64-bit result
 * FASTABS(x)          branchless absolute value of signed integer x
 * CLZ(x)              count leading zeros in x
 * MADD64(sum, x, y)   (Windows only) sum [64-bit] += x [32-bit] * y [32-bit]
 * SHL64(sum, x, y)    (Windows only) 64-bit left shift using __int64
 * SAR64(sum, x, y)    (Windows only) 64-bit right shift using __int64
 */

#ifndef _ASSEMBLY_H
#define _ASSEMBLY_H

#if (defined _WIN32 && !defined _WIN32_WCE) || (defined __WINS__ && defined _SYMBIAN) || defined(_OPENWAVE_SIMULATOR) || defined(WINCE_EMULATOR)    /* Symbian emulator for Ix86 */

#pragma warning( disable : 4035 )	/* complains about inline asm not returning a value */

static __inline int MULSHIFT32(int x, int y)	
{
    __asm {
		mov		eax, x
	    imul	y
	    mov		eax, edx
	}
}

static __inline int FASTABS(int x) 
{
	int sign;

	sign = x >> (sizeof(int) * 8 - 1);
	x ^= sign;
	x -= sign;

	return x;
}

static __inline int CLZ(int x)
{
	int numZeros;

	if (!x)
		return (sizeof(int) * 8);

	numZeros = 0;
	while (!(x & 0x80000000)) {
		numZeros++;
		x <<= 1;
	} 

	return numZeros;
}

/* MADD64, SHL64, SAR64:
 * write in assembly to avoid dependency on run-time lib for 64-bit shifts, muls
 *  (sometimes compiler thunks to function calls instead of code generating)
 * required for Symbian emulator
 */
#ifdef __CW32__
typedef long long Word64;
#else
typedef __int64 Word64;
#endif

static __inline Word64 MADD64(Word64 sum, int x, int y)
{
	unsigned int sumLo = ((unsigned int *)&sum)[0];
	int sumHi = ((int *)&sum)[1];

	__asm {
		mov		eax, x
		imul	y
		add		eax, sumLo
		adc		edx, sumHi
	}

	/* equivalent to return (sum + ((__int64)x * y)); */
}

static __inline Word64 SHL64(Word64 x, int n)
{
	unsigned int xLo = ((unsigned int *)&x)[0];
	int xHi = ((int *)&x)[1];
	unsigned char nb = (unsigned char)n;

	if (n < 32) {
		__asm {
			mov		edx, xHi
			mov		eax, xLo
			mov		cl, nb
			shld    edx, eax, cl
			shl     eax, cl
		}
	} else if (n < 64) {
		/* shl masks cl to 0x1f */
		__asm {
			mov		edx, xLo
			mov		cl, nb
			xor     eax, eax
			shl     edx, cl
		}
	} else {
		__asm {
			xor		edx, edx
			xor		eax, eax
		}
	}
}

static __inline Word64 SAR64(Word64 x, int n)
{
	unsigned int xLo = ((unsigned int *)&x)[0];
	int xHi = ((int *)&x)[1];
	unsigned char nb = (unsigned char)n;

	if (n < 32) {
		__asm {
			mov		edx, xHi
			mov		eax, xLo
			mov		cl, nb
			shrd	eax, edx, cl
			sar		edx, cl
		}
	} else if (n < 64) {
		/* sar masks cl to 0x1f */
		__asm {
			mov		edx, xHi
			mov		eax, xHi
			mov		cl, nb
			sar		edx, 31
			sar		eax, cl
		}
	} else {
		__asm {
			sar		xHi, 31
			mov		eax, xHi
			mov		edx, xHi
		}
	}
}

#elif (defined _WIN32) && (defined _WIN32_WCE)

/* use asm function for now (EVC++ 3.0 does horrible job compiling __int64 version) */
#define MULSHIFT32	xmp3_MULSHIFT32
int MULSHIFT32(int x, int y);

static __inline int FASTABS(int x) 
{
	int sign;

	sign = x >> (sizeof(int) * 8 - 1);
	x ^= sign;
	x -= sign;

	return x;
}

static __inline int CLZ(int x)
{
	int numZeros;

	if (!x)
		return (sizeof(int) * 8);

	numZeros = 0;
	while (!(x & 0x80000000)) {
		numZeros++;
		x <<= 1;
	} 

	return numZeros;
}

#elif defined ARM_ADS

typedef long long Word64;

#define MULSHIFT32	xmp3_MULSHIFT32
extern int MULSHIFT32(int x, int y);


#define FASTABS	xmp3_FASTABS
int FASTABS(int x);


static __inline int CLZ(int x)
{
	int numZeros;

	if (!x)
		return (sizeof(int) * 8);

	numZeros = 0;
	while (!(x & 0x80000000)) {
		numZeros++;
		x <<= 1;
	} 

	return numZeros;
}

#elif defined(__GNUC__) && defined(ARM)

typedef long long Word64;

#define MULSHIFT32	xmp3_MULSHIFT32
extern int MULSHIFT32(int x, int y);


#define FASTABS	xmp3_FASTABS
int FASTABS(int x);


static __inline int CLZ(int x)
{
	int numZeros;

	if (!x)
		return (sizeof(int) * 8);

	numZeros = 0;
	while (!(x & 0x80000000)) {
		numZeros++;
		x <<= 1;
	} 

	return numZeros;
}

#elif defined(__m68k__)

#include <stdint.h>

#define Word64 int64_t
#define Word32 int32_t
#define Word16 int16_t

/* 1. MULSHIFT32 (32bit同士の積の上位32bitを返す) */
/* 現代のGCCなら (int64_t) キャストで Big/Little 問わず正しく上位32bitが取れます */
static inline int32_t MULSHIFT32x(int32_t x, int32_t y) {
    return (int32_t)(((int64_t)x * (int64_t)y) >> 32);
}
static inline int32_t MULSHIFT32(int32_t x, int32_t y) {
    int32_t res_high;
    int32_t res_low;

    __asm__ __volatile__ (
        "move.l  %2,%0\n\t"     /* 下位レジスタ Dl に x をセット */
        "muls.l  %3,%1:%0"      /* Dh:Dl = Dl * y */
        : "=&d"(res_low), "=d"(res_high)
        : "d"(x), "d"(y)        /* 全てデータレジスタに限定(重要) */
        : "cc"
    );

    return res_high;
}

/* 2. FASTABS (絶対値) */
/* 標準的な三項演算子。現代のGCCなら分岐なし命令(smi等)に自動最適化されることが多いです */
/*
static inline int32_t FASTABS(int32_t x) {
    return (x < 0) ? -x : x;
}
*/
static inline int FASTABS(int x) {
    int res = x;
    int temp;
    __asm__ (
        "move.l %0,%1\n\t"
        "smi    %1\n\t"
        "extb.l %1\n\t"
        "eor.l  %1,%0\n\t"
        "sub.l  %1,%0"
        : "+d"(res), "=d"(temp)
        :
        : "cc"
    );
    return res;
}

/* 3. CLZ (先頭のゼロの数を数える) */
/* GCC 組み込み関数を使用します。これが最も確実で高速です */
/* 060用ならコンパイラが自動的に bfffo 命令等に変換してくれる可能性があります */
/*
static inline int32_t CLZ(int32_t x) {
    if (x == 0) return 32;
    return __builtin_clz(x);
}
*/
static inline int CLZ(int x) {
    int res;
    if (x == 0) return 32;
    __asm__ (
        "bfffo %1{#0:#32},%0"
        : "=d"(res)
        : "d"(x)
        : "cc"
    );
    return res;
}

/* 4. MADD64 / SHL64 / SAR64 (64bit 累積演算) */
/* Helixの内部で long long の演算エラーを防ぐために標準的な記述で定義します */
#define MADD64(sum, x, y) (sum += (int64_t)(x) * (int64_t)(y))
#define SHL64(sum, n)     ((int64_t)(sum) << (n))
#define SAR64(sum, n)     ((int64_t)(sum) >> (n))

#endif

#else

#error Unsupported platform in assembly.h

#endif	/* platforms */

#endif /* _ASSEMBLY_H */