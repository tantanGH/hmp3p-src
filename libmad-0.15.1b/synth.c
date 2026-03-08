/*
 * libmad - MPEG audio decoder library
 * Copyright (C) 2000-2004 Underbit Technologies, Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * $Id: synth.c,v 1.25 2004/01/23 09:41:33 rob Exp $
 */

# ifdef HAVE_CONFIG_H
#  include "config.h"
# endif

# include "global.h"

# include "fixed.h"
# include "frame.h"
# include "synth.h"

/*
 * NAME:	synth->init()
 * DESCRIPTION:	initialize synth struct
 */
void mad_synth_init(struct mad_synth *synth)
{
  mad_synth_mute(synth);

  synth->phase = 0;

  synth->pcm.samplerate = 0;
  synth->pcm.channels   = 0;
  synth->pcm.length     = 0;
}

/*
 * NAME:	synth->mute()
 * DESCRIPTION:	zero all polyphase filterbank values, resetting synthesis
 */
void mad_synth_mute(struct mad_synth *synth)
{
  unsigned int ch, s, v;

  for (ch = 0; ch < 2; ++ch) {
    for (s = 0; s < 16; ++s) {
      for (v = 0; v < 8; ++v) {
	synth->filter[ch][0][0][s][v] = synth->filter[ch][0][1][s][v] =
	synth->filter[ch][1][0][s][v] = synth->filter[ch][1][1][s][v] = 0;
      }
    }
  }
}

/*
 * An optional optimization called here the Subband Synthesis Optimization
 * (SSO) improves the performance of subband synthesis at the expense of
 * accuracy.
 *
 * The idea is to simplify 32x32->64-bit multiplication to 32x32->32 such
 * that extra scaling and rounding are not necessary. This often allows the
 * compiler to use faster 32-bit multiply-accumulate instructions instead of
 * explicit 64-bit multiply, shift, and add instructions.
 *
 * SSO works like this: a full 32x32->64-bit multiply of two mad_fixed_t
 * values requires the result to be right-shifted 28 bits to be properly
 * scaled to the same fixed-point format. Right shifts can be applied at any
 * time to either operand or to the result, so the optimization involves
 * careful placement of these shifts to minimize the loss of accuracy.
 *
 * First, a 14-bit shift is applied with rounding at compile-time to the D[]
 * table of coefficients for the subband synthesis window. This only loses 2
 * bits of accuracy because the lower 12 bits are always zero. A second
 * 12-bit shift occurs after the DCT calculation. This loses 12 bits of
 * accuracy. Finally, a third 2-bit shift occurs just before the sample is
 * saved in the PCM buffer. 14 + 12 + 2 == 28 bits.
 */

/* FPM_DEFAULT without OPT_SSO will actually lose accuracy and performance */

# if defined(FPM_DEFAULT) && !defined(OPT_SSO)
#  define OPT_SSO
# endif

/* second SSO shift, with rounding */

# if defined(OPT_SSO)
#  define SHIFT(x)  (((x) + (1L << 11)) >> 12)
# else
#  define SHIFT(x)  (x)
# endif

/* possible DCT speed optimization */
# if defined(OPT_SPEED) && defined(MAD_F_MLX)
#  pragma message "OPT_SPEED & MAD_F_MLX"
#  define OPT_DCTO
#  define MUL(x, y)  \
    ({ mad_fixed64hi_t hi;  \
       mad_fixed64lo_t lo;  \
       MAD_F_MLX(hi, lo, (x), (y));  \
       hi << (32 - MAD_F_SCALEBITS - 3);  \
    })
# else
#  undef OPT_DCTO
#  define MUL(x, y)  mad_f_mul((x), (y))
# endif

/*
 * NAME:	dct32()
 * DESCRIPTION:	perform fast in[32]->out[32] DCT
 */
static
void dct32(mad_fixed_t const in[32], unsigned int slot,
	   mad_fixed_t lo[16][8], mad_fixed_t hi[16][8])
{
  mad_fixed_t t0,   t1,   t2,   t3,   t4,   t5,   t6,   t7;
  mad_fixed_t t8,   t9,   t10,  t11,  t12,  t13,  t14,  t15;
  mad_fixed_t t16,  t17,  t18,  t19,  t20,  t21,  t22,  t23;
  mad_fixed_t t24,  t25,  t26,  t27,  t28,  t29,  t30,  t31;
  mad_fixed_t t32,  t33,  t34,  t35,  t36,  t37,  t38,  t39;
  mad_fixed_t t40,  t41,  t42,  t43,  t44,  t45,  t46,  t47;
  mad_fixed_t t48,  t49,  t50,  t51,  t52,  t53,  t54,  t55;
  mad_fixed_t t56,  t57,  t58,  t59,  t60,  t61,  t62,  t63;
  mad_fixed_t t64,  t65,  t66,  t67,  t68,  t69,  t70,  t71;
  mad_fixed_t t72,  t73,  t74,  t75,  t76,  t77,  t78,  t79;
  mad_fixed_t t80,  t81,  t82,  t83,  t84,  t85,  t86,  t87;
  mad_fixed_t t88,  t89,  t90,  t91,  t92,  t93,  t94,  t95;
  mad_fixed_t t96,  t97,  t98,  t99,  t100, t101, t102, t103;
  mad_fixed_t t104, t105, t106, t107, t108, t109, t110, t111;
  mad_fixed_t t112, t113, t114, t115, t116, t117, t118, t119;
  mad_fixed_t t120, t121, t122, t123, t124, t125, t126, t127;
  mad_fixed_t t128, t129, t130, t131, t132, t133, t134, t135;
  mad_fixed_t t136, t137, t138, t139, t140, t141, t142, t143;
  mad_fixed_t t144, t145, t146, t147, t148, t149, t150, t151;
  mad_fixed_t t152, t153, t154, t155, t156, t157, t158, t159;
  mad_fixed_t t160, t161, t162, t163, t164, t165, t166, t167;
  mad_fixed_t t168, t169, t170, t171, t172, t173, t174, t175;
  mad_fixed_t t176;

  /* costab[i] = cos(PI / (2 * 32) * i) */

# if defined(OPT_DCTO)
#  define costab1	MAD_F(0x7fd8878e)
#  define costab2	MAD_F(0x7f62368f)
#  define costab3	MAD_F(0x7e9d55fc)
#  define costab4	MAD_F(0x7d8a5f40)
#  define costab5	MAD_F(0x7c29fbee)
#  define costab6	MAD_F(0x7a7d055b)
#  define costab7	MAD_F(0x78848414)
#  define costab8	MAD_F(0x7641af3d)
#  define costab9	MAD_F(0x73b5ebd1)
#  define costab10	MAD_F(0x70e2cbc6)
#  define costab11	MAD_F(0x6dca0d14)
#  define costab12	MAD_F(0x6a6d98a4)
#  define costab13	MAD_F(0x66cf8120)
#  define costab14	MAD_F(0x62f201ac)
#  define costab15	MAD_F(0x5ed77c8a)
#  define costab16	MAD_F(0x5a82799a)
#  define costab17	MAD_F(0x55f5a4d2)
#  define costab18	MAD_F(0x5133cc94)
#  define costab19	MAD_F(0x4c3fdff4)
#  define costab20	MAD_F(0x471cece7)
#  define costab21	MAD_F(0x41ce1e65)
#  define costab22	MAD_F(0x3c56ba70)
#  define costab23	MAD_F(0x36ba2014)
#  define costab24	MAD_F(0x30fbc54d)
#  define costab25	MAD_F(0x2b1f34eb)
#  define costab26	MAD_F(0x25280c5e)
#  define costab27	MAD_F(0x1f19f97b)
#  define costab28	MAD_F(0x18f8b83c)
#  define costab29	MAD_F(0x12c8106f)
#  define costab30	MAD_F(0x0c8bd35e)
#  define costab31	MAD_F(0x0647d97c)
# else
#  define costab1	MAD_F(0x0ffb10f2)  /* 0.998795456 */
#  define costab2	MAD_F(0x0fec46d2)  /* 0.995184727 */
#  define costab3	MAD_F(0x0fd3aac0)  /* 0.989176510 */
#  define costab4	MAD_F(0x0fb14be8)  /* 0.980785280 */
#  define costab5	MAD_F(0x0f853f7e)  /* 0.970031253 */
#  define costab6	MAD_F(0x0f4fa0ab)  /* 0.956940336 */
#  define costab7	MAD_F(0x0f109082)  /* 0.941544065 */
#  define costab8	MAD_F(0x0ec835e8)  /* 0.923879533 */
#  define costab9	MAD_F(0x0e76bd7a)  /* 0.903989293 */
#  define costab10	MAD_F(0x0e1c5979)  /* 0.881921264 */
#  define costab11	MAD_F(0x0db941a3)  /* 0.857728610 */
#  define costab12	MAD_F(0x0d4db315)  /* 0.831469612 */
#  define costab13	MAD_F(0x0cd9f024)  /* 0.803207531 */
#  define costab14	MAD_F(0x0c5e4036)  /* 0.773010453 */
#  define costab15	MAD_F(0x0bdaef91)  /* 0.740951125 */
#  define costab16	MAD_F(0x0b504f33)  /* 0.707106781 */
#  define costab17	MAD_F(0x0abeb49a)  /* 0.671558955 */
#  define costab18	MAD_F(0x0a267993)  /* 0.634393284 */
#  define costab19	MAD_F(0x0987fbfe)  /* 0.595699304 */
#  define costab20	MAD_F(0x08e39d9d)  /* 0.555570233 */
#  define costab21	MAD_F(0x0839c3cd)  /* 0.514102744 */
#  define costab22	MAD_F(0x078ad74e)  /* 0.471396737 */
#  define costab23	MAD_F(0x06d74402)  /* 0.427555093 */
#  define costab24	MAD_F(0x061f78aa)  /* 0.382683432 */
#  define costab25	MAD_F(0x0563e69d)  /* 0.336889853 */
#  define costab26	MAD_F(0x04a5018c)  /* 0.290284677 */
#  define costab27	MAD_F(0x03e33f2f)  /* 0.242980180 */
#  define costab28	MAD_F(0x031f1708)  /* 0.195090322 */
#  define costab29	MAD_F(0x0259020e)  /* 0.146730474 */
#  define costab30	MAD_F(0x01917a6c)  /* 0.098017140 */
#  define costab31	MAD_F(0x00c8fb30)  /* 0.049067674 */
# endif

  t0   = in[0]  + in[31];  t16  = MUL(in[0]  - in[31], costab1);
  t1   = in[15] + in[16];  t17  = MUL(in[15] - in[16], costab31);

  t41  = t16 + t17;
  t59  = MUL(t16 - t17, costab2);
  t33  = t0  + t1;
  t50  = MUL(t0  - t1,  costab2);

  t2   = in[7]  + in[24];  t18  = MUL(in[7]  - in[24], costab15);
  t3   = in[8]  + in[23];  t19  = MUL(in[8]  - in[23], costab17);

  t42  = t18 + t19;
  t60  = MUL(t18 - t19, costab30);
  t34  = t2  + t3;
  t51  = MUL(t2  - t3,  costab30);

  t4   = in[3]  + in[28];  t20  = MUL(in[3]  - in[28], costab7);
  t5   = in[12] + in[19];  t21  = MUL(in[12] - in[19], costab25);

  t43  = t20 + t21;
  t61  = MUL(t20 - t21, costab14);
  t35  = t4  + t5;
  t52  = MUL(t4  - t5,  costab14);

  t6   = in[4]  + in[27];  t22  = MUL(in[4]  - in[27], costab9);
  t7   = in[11] + in[20];  t23  = MUL(in[11] - in[20], costab23);

  t44  = t22 + t23;
  t62  = MUL(t22 - t23, costab18);
  t36  = t6  + t7;
  t53  = MUL(t6  - t7,  costab18);

  t8   = in[1]  + in[30];  t24  = MUL(in[1]  - in[30], costab3);
  t9   = in[14] + in[17];  t25  = MUL(in[14] - in[17], costab29);

  t45  = t24 + t25;
  t63  = MUL(t24 - t25, costab6);
  t37  = t8  + t9;
  t54  = MUL(t8  - t9,  costab6);

  t10  = in[6]  + in[25];  t26  = MUL(in[6]  - in[25], costab13);
  t11  = in[9]  + in[22];  t27  = MUL(in[9]  - in[22], costab19);

  t46  = t26 + t27;
  t64  = MUL(t26 - t27, costab26);
  t38  = t10 + t11;
  t55  = MUL(t10 - t11, costab26);

  t12  = in[2]  + in[29];  t28  = MUL(in[2]  - in[29], costab5);
  t13  = in[13] + in[18];  t29  = MUL(in[13] - in[18], costab27);

  t47  = t28 + t29;
  t65  = MUL(t28 - t29, costab10);
  t39  = t12 + t13;
  t56  = MUL(t12 - t13, costab10);

  t14  = in[5]  + in[26];  t30  = MUL(in[5]  - in[26], costab11);
  t15  = in[10] + in[21];  t31  = MUL(in[10] - in[21], costab21);

  t48  = t30 + t31;
  t66  = MUL(t30 - t31, costab22);
  t40  = t14 + t15;
  t57  = MUL(t14 - t15, costab22);

  t69  = t33 + t34;  t89  = MUL(t33 - t34, costab4);
  t70  = t35 + t36;  t90  = MUL(t35 - t36, costab28);
  t71  = t37 + t38;  t91  = MUL(t37 - t38, costab12);
  t72  = t39 + t40;  t92  = MUL(t39 - t40, costab20);
  t73  = t41 + t42;  t94  = MUL(t41 - t42, costab4);
  t74  = t43 + t44;  t95  = MUL(t43 - t44, costab28);
  t75  = t45 + t46;  t96  = MUL(t45 - t46, costab12);
  t76  = t47 + t48;  t97  = MUL(t47 - t48, costab20);

  t78  = t50 + t51;  t100 = MUL(t50 - t51, costab4);
  t79  = t52 + t53;  t101 = MUL(t52 - t53, costab28);
  t80  = t54 + t55;  t102 = MUL(t54 - t55, costab12);
  t81  = t56 + t57;  t103 = MUL(t56 - t57, costab20);

  t83  = t59 + t60;  t106 = MUL(t59 - t60, costab4);
  t84  = t61 + t62;  t107 = MUL(t61 - t62, costab28);
  t85  = t63 + t64;  t108 = MUL(t63 - t64, costab12);
  t86  = t65 + t66;  t109 = MUL(t65 - t66, costab20);

  t113 = t69  + t70;
  t114 = t71  + t72;

  /*  0 */ hi[15][slot] = SHIFT(t113 + t114);
  /* 16 */ lo[ 0][slot] = SHIFT(MUL(t113 - t114, costab16));

  t115 = t73  + t74;
  t116 = t75  + t76;

  t32  = t115 + t116;

  /*  1 */ hi[14][slot] = SHIFT(t32);

  t118 = t78  + t79;
  t119 = t80  + t81;

  t58  = t118 + t119;

  /*  2 */ hi[13][slot] = SHIFT(t58);

  t121 = t83  + t84;
  t122 = t85  + t86;

  t67  = t121 + t122;

  t49  = (t67 * 2) - t32;

  /*  3 */ hi[12][slot] = SHIFT(t49);

  t125 = t89  + t90;
  t126 = t91  + t92;

  t93  = t125 + t126;

  /*  4 */ hi[11][slot] = SHIFT(t93);

  t128 = t94  + t95;
  t129 = t96  + t97;

  t98  = t128 + t129;

  t68  = (t98 * 2) - t49;

  /*  5 */ hi[10][slot] = SHIFT(t68);

  t132 = t100 + t101;
  t133 = t102 + t103;

  t104 = t132 + t133;

  t82  = (t104 * 2) - t58;

  /*  6 */ hi[ 9][slot] = SHIFT(t82);

  t136 = t106 + t107;
  t137 = t108 + t109;

  t110 = t136 + t137;

  t87  = (t110 * 2) - t67;

  t77  = (t87 * 2) - t68;

  /*  7 */ hi[ 8][slot] = SHIFT(t77);

  t141 = MUL(t69 - t70, costab8);
  t142 = MUL(t71 - t72, costab24);
  t143 = t141 + t142;

  /*  8 */ hi[ 7][slot] = SHIFT(t143);
  /* 24 */ lo[ 8][slot] =
	     SHIFT((MUL(t141 - t142, costab16) * 2) - t143);

  t144 = MUL(t73 - t74, costab8);
  t145 = MUL(t75 - t76, costab24);
  t146 = t144 + t145;

  t88  = (t146 * 2) - t77;

  /*  9 */ hi[ 6][slot] = SHIFT(t88);

  t148 = MUL(t78 - t79, costab8);
  t149 = MUL(t80 - t81, costab24);
  t150 = t148 + t149;

  t105 = (t150 * 2) - t82;

  /* 10 */ hi[ 5][slot] = SHIFT(t105);

  t152 = MUL(t83 - t84, costab8);
  t153 = MUL(t85 - t86, costab24);
  t154 = t152 + t153;

  t111 = (t154 * 2) - t87;

  t99  = (t111 * 2) - t88;

  /* 11 */ hi[ 4][slot] = SHIFT(t99);

  t157 = MUL(t89 - t90, costab8);
  t158 = MUL(t91 - t92, costab24);
  t159 = t157 + t158;

  t127 = (t159 * 2) - t93;

  /* 12 */ hi[ 3][slot] = SHIFT(t127);

  t160 = (MUL(t125 - t126, costab16) * 2) - t127;

  /* 20 */ lo[ 4][slot] = SHIFT(t160);
  /* 28 */ lo[12][slot] =
	     SHIFT((((MUL(t157 - t158, costab16) * 2) - t159) * 2) - t160);

  t161 = MUL(t94 - t95, costab8);
  t162 = MUL(t96 - t97, costab24);
  t163 = t161 + t162;

  t130 = (t163 * 2) - t98;

  t112 = (t130 * 2) - t99;

  /* 13 */ hi[ 2][slot] = SHIFT(t112);

  t164 = (MUL(t128 - t129, costab16) * 2) - t130;

  t166 = MUL(t100 - t101, costab8);
  t167 = MUL(t102 - t103, costab24);
  t168 = t166 + t167;

  t134 = (t168 * 2) - t104;

  t120 = (t134 * 2) - t105;

  /* 14 */ hi[ 1][slot] = SHIFT(t120);

  t135 = (MUL(t118 - t119, costab16) * 2) - t120;

  /* 18 */ lo[ 2][slot] = SHIFT(t135);

  t169 = (MUL(t132 - t133, costab16) * 2) - t134;

  t151 = (t169 * 2) - t135;

  /* 22 */ lo[ 6][slot] = SHIFT(t151);

  t170 = (((MUL(t148 - t149, costab16) * 2) - t150) * 2) - t151;

  /* 26 */ lo[10][slot] = SHIFT(t170);
  /* 30 */ lo[14][slot] =
	     SHIFT((((((MUL(t166 - t167, costab16) * 2) -
		       t168) * 2) - t169) * 2) - t170);

  t171 = MUL(t106 - t107, costab8);
  t172 = MUL(t108 - t109, costab24);
  t173 = t171 + t172;

  t138 = (t173 * 2) - t110;

  t123 = (t138 * 2) - t111;

  t139 = (MUL(t121 - t122, costab16) * 2) - t123;

  t117 = (t123 * 2) - t112;

  /* 15 */ hi[ 0][slot] = SHIFT(t117);

  t124 = (MUL(t115 - t116, costab16) * 2) - t117;

  /* 17 */ lo[ 1][slot] = SHIFT(t124);

  t131 = (t139 * 2) - t124;

  /* 19 */ lo[ 3][slot] = SHIFT(t131);

  t140 = (t164 * 2) - t131;

  /* 21 */ lo[ 5][slot] = SHIFT(t140);

  t174 = (MUL(t136 - t137, costab16) * 2) - t138;

  t155 = (t174 * 2) - t139;

  t147 = (t155 * 2) - t140;

  /* 23 */ lo[ 7][slot] = SHIFT(t147);

  t156 = (((MUL(t144 - t145, costab16) * 2) - t146) * 2) - t147;

  /* 25 */ lo[ 9][slot] = SHIFT(t156);

  t175 = (((MUL(t152 - t153, costab16) * 2) - t154) * 2) - t155;

  t165 = (t175 * 2) - t156;

  /* 27 */ lo[11][slot] = SHIFT(t165);

  t176 = (((((MUL(t161 - t162, costab16) * 2) -
	     t163) * 2) - t164) * 2) - t165;

  /* 29 */ lo[13][slot] = SHIFT(t176);
  /* 31 */ lo[15][slot] =
	     SHIFT((((((((MUL(t171 - t172, costab16) * 2) -
			 t173) * 2) - t174) * 2) - t175) * 2) - t176);

  /*
   * Totals:
   *  80 multiplies
   *  80 additions
   * 119 subtractions
   *  49 shifts (not counting SSO)
   */
}

# undef MUL
# undef SHIFT

/* third SSO shift and/or D[] optimization preshift */

# if defined(OPT_SSO)
#  if MAD_F_FRACBITS != 28
#   error "MAD_F_FRACBITS must be 28 to use OPT_SSO"
#  endif
#  define ML0(hi, lo, x, y)	((lo)  = (x) * (y))
#  define MLA(hi, lo, x, y)	((lo) += (x) * (y))
#  define MLN(hi, lo)		((lo)  = -(lo))
#  define MLZ(hi, lo)		((void) (hi), (mad_fixed_t) (lo))
#  define SHIFT(x)		((x) >> 2)
#  define PRESHIFT(x)		((MAD_F(x) + (1L << 13)) >> 14)
# else
#  define ML0(hi, lo, x, y)	MAD_F_ML0((hi), (lo), (x), (y))
#  define MLA(hi, lo, x, y)	MAD_F_MLA((hi), (lo), (x), (y))
#  define MLN(hi, lo)		MAD_F_MLN((hi), (lo))
#  define MLZ(hi, lo)		MAD_F_MLZ((hi), (lo))
#  define SHIFT(x)		(x)
#  if defined(MAD_F_SCALEBITS)
#   undef  MAD_F_SCALEBITS
#   define MAD_F_SCALEBITS	(MAD_F_FRACBITS - 12)
#   define PRESHIFT(x)		(MAD_F(x) >> 12)
#  else
#   define PRESHIFT(x)		MAD_F(x)
#  endif
# endif

static
mad_fixed_t const D[17][32] = {
# include "D.dat"
};

# if defined(ASO_SYNTH)
void synth_full(struct mad_synth *, struct mad_frame const *,
		unsigned int, unsigned int);
# else


#ifdef __OPT_X68K_INTERLEAVED_16BIT_DIRECT__

//
//  inline helper: 24bit signed int to 16bit signed int
//
static inline int16_t scale_16bit(mad_fixed_t sample) {

  // round
  sample += (1L << (MAD_F_FRACBITS - 16));

  // clip
  if (sample >= MAD_F_ONE)
    sample = MAD_F_ONE - 1;
  else if (sample < -MAD_F_ONE)
    sample = -MAD_F_ONE;

  // quantize
  return sample >> (MAD_F_FRACBITS + 1 - 16);
}

/*
 * SHIFT(12bit) と scale_16bit(13bit) を統合
 * 合計 25bit 右シフトして 16bit 整数を得る
 */
static inline int16_t scale_mad_to_16bit(mad_fixed64hi_t hi, mad_fixed64lo_t lo) {

  //#  define SHIFT(x)  (((x) + (1L << 11)) >> 12)
    mad_fixed_t sample = SHIFT(MLZ(hi,lo));

    /* クリッピング (28bit fracベース) */
    if (sample >= MAD_F_ONE)
        sample = MAD_F_ONE - 1;
    else if (sample < -MAD_F_ONE)
        sample = -MAD_F_ONE;

    /* 最終量子化 (13bitシフト) */
    return (int16_t)(sample >> 13);
}

static inline int16_t scale_mad_to_16bit_direct(mad_fixed64hi_t hi, mad_fixed64lo_t lo) {
    /* 1. MLZで得た値を 28bit frac -> 15bit frac 相当へ丸めながらシフト */
    /* 28 - 15 = 13bit シフト。丸めのため (1 << 12) を加算 */
    mad_fixed_t sample = (mad_fixed_t) ((MLZ(hi, lo) + (1L << 13)) >> 14);

    /* 2. クリッピング (15bit frac 範囲は 32768) */
    /* MAD_F_ONE は 28bit frac (0x10000000) なので、ここでは直接 32767/ -32768 を使うのが正解 */
    if (sample >= 32767)
        sample = 32767;
    else if (sample < -32768)
        sample = -32768;

    return (int16_t)sample;
}

static void synth_full(struct mad_synth *synth, struct mad_frame const *frame,
                       unsigned int nch, unsigned int ns)
{
    unsigned int phase, s, sb, pe, po;
    register mad_fixed64hi_t hi;
    register mad_fixed64lo_t lo;
    int16_t *out16 = synth->pcm_16bit;

    if (nch == 2) {
        mad_fixed_t const (*sbsampleL)[36][32] = &frame->sbsample[0];
        mad_fixed_t const (*sbsampleR)[36][32] = &frame->sbsample[1];
        mad_fixed_t (*filterL)[2][2][16][8] = &synth->filter[0];
        mad_fixed_t (*filterR)[2][2][16][8] = &synth->filter[1];
        phase = synth->phase;

        for (s = 0; s < ns; ++s) {
            dct32((*sbsampleL)[s], phase >> 1, (*filterL)[0][phase & 1], (*filterL)[1][phase & 1]);
            dct32((*sbsampleR)[s], phase >> 1, (*filterR)[0][phase & 1], (*filterR)[1][phase & 1]);

            pe = phase & ~1;
            po = ((phase - 1) & 0xf) | 1;

            register mad_fixed_t (*feL)[8] = &(*filterL)[0][phase & 1][0];
            register mad_fixed_t (*fxL)[8] = &(*filterL)[0][~phase & 1][0];
            register mad_fixed_t (*foL)[8] = &(*filterL)[1][~phase & 1][0];
            register mad_fixed_t (*feR)[8] = &(*filterR)[0][phase & 1][0];
            register mad_fixed_t (*fxR)[8] = &(*filterR)[0][~phase & 1][0];
            register mad_fixed_t (*foR)[8] = &(*filterR)[1][~phase & 1][0];

            const mad_fixed_t (*Dptr)[32] = &D[0];
            const mad_fixed_t *ptr;

            /* ---- sb=0 (Sample 0) ---- */
            ptr = *Dptr + po;
            // L-ch
            ML0(hi, lo, (*fxL)[0], ptr[0]);  MLA(hi, lo, (*fxL)[1], ptr[14]);
            MLA(hi, lo, (*fxL)[2], ptr[12]); MLA(hi, lo, (*fxL)[3], ptr[10]);
            MLA(hi, lo, (*fxL)[4], ptr[8]);  MLA(hi, lo, (*fxL)[5], ptr[6]);
            MLA(hi, lo, (*fxL)[6], ptr[4]);  MLA(hi, lo, (*fxL)[7], ptr[2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*feL)[0], ptr[0]);  MLA(hi, lo, (*feL)[1], ptr[14]);
            MLA(hi, lo, (*feL)[2], ptr[12]); MLA(hi, lo, (*feL)[3], ptr[10]);
            MLA(hi, lo, (*feL)[4], ptr[8]);  MLA(hi, lo, (*feL)[5], ptr[6]);
            MLA(hi, lo, (*feL)[6], ptr[4]);  MLA(hi, lo, (*feL)[7], ptr[2]);
            out16[0] = scale_mad_to_16bit(hi,lo);

            ptr = *Dptr + po;
            // R-ch
            ML0(hi, lo, (*fxR)[0], ptr[0]);  MLA(hi, lo, (*fxR)[1], ptr[14]);
            MLA(hi, lo, (*fxR)[2], ptr[12]); MLA(hi, lo, (*fxR)[3], ptr[10]);
            MLA(hi, lo, (*fxR)[4], ptr[8]);  MLA(hi, lo, (*fxR)[5], ptr[6]);
            MLA(hi, lo, (*fxR)[6], ptr[4]);  MLA(hi, lo, (*fxR)[7], ptr[2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*feR)[0], ptr[0]);  MLA(hi, lo, (*feR)[1], ptr[14]);
            MLA(hi, lo, (*feR)[2], ptr[12]); MLA(hi, lo, (*feR)[3], ptr[10]);
            MLA(hi, lo, (*feR)[4], ptr[8]);  MLA(hi, lo, (*feR)[5], ptr[6]);
            MLA(hi, lo, (*feR)[6], ptr[4]);  MLA(hi, lo, (*feR)[7], ptr[2]);
            out16[1] = scale_mad_to_16bit(hi,lo);

            /* ---- sb=1..15 (Samples 1..15 and 31..17) ---- */
            for (sb = 1; sb < 16; ++sb) {
                ++feL; ++feR; ++Dptr;
                const mad_fixed_t *dpo = *Dptr + po;
                const mad_fixed_t *dpe = *Dptr + pe;
                const mad_fixed_t *dnpo = *Dptr - po;
                const mad_fixed_t *dnpe = *Dptr - pe;

                /* PCM1 (Sample sb) */
                // L
                ML0(hi, lo, (*foL)[0], dpo[0]);  MLA(hi, lo, (*foL)[1], dpo[14]);
                MLA(hi, lo, (*foL)[2], dpo[12]); MLA(hi, lo, (*foL)[3], dpo[10]);
                MLA(hi, lo, (*foL)[4], dpo[8]);  MLA(hi, lo, (*foL)[5], dpo[6]);
                MLA(hi, lo, (*foL)[6], dpo[4]);  MLA(hi, lo, (*foL)[7], dpo[2]);
                MLN(hi, lo);
                MLA(hi, lo, (*feL)[7], dpe[2]);  MLA(hi, lo, (*feL)[6], dpe[4]);
                MLA(hi, lo, (*feL)[5], dpe[6]);  MLA(hi, lo, (*feL)[4], dpe[8]);
                MLA(hi, lo, (*feL)[3], dpe[10]); MLA(hi, lo, (*feL)[2], dpe[12]);
                MLA(hi, lo, (*feL)[1], dpe[14]); MLA(hi, lo, (*feL)[0], dpe[0]);
                out16[sb * 2] = scale_mad_to_16bit(hi,lo);
                // R
                ML0(hi, lo, (*foR)[0], dpo[0]);  MLA(hi, lo, (*foR)[1], dpo[14]);
                MLA(hi, lo, (*foR)[2], dpo[12]); MLA(hi, lo, (*foR)[3], dpo[10]);
                MLA(hi, lo, (*foR)[4], dpo[8]);  MLA(hi, lo, (*foR)[5], dpo[6]);
                MLA(hi, lo, (*foR)[6], dpo[4]);  MLA(hi, lo, (*foR)[7], dpo[2]);
                MLN(hi, lo);
                MLA(hi, lo, (*feR)[7], dpe[2]);  MLA(hi, lo, (*feR)[6], dpe[4]);
                MLA(hi, lo, (*feR)[5], dpe[6]);  MLA(hi, lo, (*feR)[4], dpe[8]);
                MLA(hi, lo, (*feR)[3], dpe[10]); MLA(hi, lo, (*feR)[2], dpe[12]);
                MLA(hi, lo, (*feR)[1], dpe[14]); MLA(hi, lo, (*feR)[0], dpe[0]);
                out16[sb * 2 + 1] = scale_mad_to_16bit(hi,lo);

                /* PCM2 (Sample 32 - sb) */
                int p2_idx = (32 - sb) * 2;
                // L
                ML0(hi, lo, (*foL)[7], dnpo[29]); MLA(hi, lo, (*foL)[6], dnpo[27]);
                MLA(hi, lo, (*foL)[5], dnpo[25]); MLA(hi, lo, (*foL)[4], dnpo[23]);
                MLA(hi, lo, (*foL)[3], dnpo[21]); MLA(hi, lo, (*foL)[2], dnpo[19]);
                MLA(hi, lo, (*foL)[1], dnpo[17]); MLA(hi, lo, (*foL)[0], dnpo[15]);
                MLA(hi, lo, (*feL)[0], dnpe[15]); MLA(hi, lo, (*feL)[1], dnpe[17]);
                MLA(hi, lo, (*feL)[2], dnpe[19]); MLA(hi, lo, (*feL)[3], dnpe[21]);
                MLA(hi, lo, (*feL)[4], dnpe[23]); MLA(hi, lo, (*feL)[5], dnpe[25]);
                MLA(hi, lo, (*feL)[6], dnpe[27]); MLA(hi, lo, (*feL)[7], dnpe[29]);
                out16[p2_idx] = scale_mad_to_16bit(hi,lo);
                // R
                ML0(hi, lo, (*foR)[7], dnpo[29]); MLA(hi, lo, (*foR)[6], dnpo[27]);
                MLA(hi, lo, (*foR)[5], dnpo[25]); MLA(hi, lo, (*foR)[4], dnpo[23]);
                MLA(hi, lo, (*foR)[3], dnpo[21]); MLA(hi, lo, (*foR)[2], dnpo[19]);
                MLA(hi, lo, (*foR)[1], dnpo[17]); MLA(hi, lo, (*foR)[0], dnpo[15]);
                MLA(hi, lo, (*feR)[0], dnpe[15]); MLA(hi, lo, (*feR)[1], dnpe[17]);
                MLA(hi, lo, (*feR)[2], dnpe[19]); MLA(hi, lo, (*feR)[3], dnpe[21]);
                MLA(hi, lo, (*feR)[4], dnpe[23]); MLA(hi, lo, (*feR)[5], dnpe[25]);
                MLA(hi, lo, (*feR)[6], dnpe[27]); MLA(hi, lo, (*feR)[7], dnpe[29]);
                out16[p2_idx + 1] = scale_mad_to_16bit(hi,lo);

                ++foL; ++foR;
            }

            /* ---- sb=16 (Sample 16) ---- */
            ++Dptr; ptr = *Dptr + po;
            // L
            ML0(hi, lo, (*foL)[0], ptr[0]);  MLA(hi, lo, (*foL)[1], ptr[14]);
            MLA(hi, lo, (*foL)[2], ptr[12]); MLA(hi, lo, (*foL)[3], ptr[10]);
            MLA(hi, lo, (*foL)[4], ptr[8]);  MLA(hi, lo, (*foL)[5], ptr[6]);
            MLA(hi, lo, (*foL)[6], ptr[4]);  MLA(hi, lo, (*foL)[7], ptr[2]);
            out16[16 * 2] = scale_mad_to_16bit(-hi,-lo);
            // R
            ML0(hi, lo, (*foR)[0], ptr[0]);  MLA(hi, lo, (*foR)[1], ptr[14]);
            MLA(hi, lo, (*foR)[2], ptr[12]); MLA(hi, lo, (*foR)[3], ptr[10]);
            MLA(hi, lo, (*foR)[4], ptr[8]);  MLA(hi, lo, (*foR)[5], ptr[6]);
            MLA(hi, lo, (*foR)[6], ptr[4]);  MLA(hi, lo, (*foR)[7], ptr[2]);
            out16[16 * 2 + 1] = scale_mad_to_16bit(-hi,-lo);

            out16 += 64; // 32 samples * 2 channels
            phase = (phase + 1) % 16;
        }
    } else {
        /* モノラル版は以前提示した内容と同じですが、ここにも完全版を置きます */
        mad_fixed_t (*filter)[2][2][16][8] = &synth->filter[0];
        mad_fixed_t const (*sbsample)[36][32] = &frame->sbsample[0];
        phase = synth->phase;

        for (s = 0; s < ns; ++s) {
            dct32((*sbsample)[s], phase >> 1, (*filter)[0][phase & 1], (*filter)[1][phase & 1]);
            pe = phase & ~1; po = ((phase - 1) & 0xf) | 1;
            register mad_fixed_t (*fe)[8] = &(*filter)[0][phase & 1][0];
            register mad_fixed_t (*fx)[8] = &(*filter)[0][~phase & 1][0];
            register mad_fixed_t (*fo)[8] = &(*filter)[1][~phase & 1][0];
            const mad_fixed_t (*Dptr)[32] = &D[0];
            const mad_fixed_t *ptr;

            /* sb=0 */
            ptr = *Dptr + po;
            ML0(hi, lo, (*fx)[0], ptr[0]);  MLA(hi, lo, (*fx)[1], ptr[14]);
            MLA(hi, lo, (*fx)[2], ptr[12]); MLA(hi, lo, (*fx)[3], ptr[10]);
            MLA(hi, lo, (*fx)[4], ptr[8]);  MLA(hi, lo, (*fx)[5], ptr[6]);
            MLA(hi, lo, (*fx)[6], ptr[4]);  MLA(hi, lo, (*fx)[7], ptr[2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*fe)[0], ptr[0]);  MLA(hi, lo, (*fe)[1], ptr[14]);
            MLA(hi, lo, (*fe)[2], ptr[12]); MLA(hi, lo, (*fe)[3], ptr[10]);
            MLA(hi, lo, (*fe)[4], ptr[8]);  MLA(hi, lo, (*fe)[5], ptr[6]);
            MLA(hi, lo, (*fe)[6], ptr[4]);  MLA(hi, lo, (*fe)[7], ptr[2]);
            out16[0] = scale_mad_to_16bit(hi,lo);

            for (sb = 1; sb < 16; ++sb) {
                ++fe; ++Dptr;
                const mad_fixed_t *dpo = *Dptr + po;
                const mad_fixed_t *dpe = *Dptr + pe;
                const mad_fixed_t *dnpo = *Dptr - po;
                const mad_fixed_t *dnpe = *Dptr - pe;

                ML0(hi, lo, (*fo)[0], dpo[0]);   MLA(hi, lo, (*fo)[1], dpo[14]);
                MLA(hi, lo, (*fo)[2], dpo[12]);  MLA(hi, lo, (*fo)[3], dpo[10]);
                MLA(hi, lo, (*fo)[4], dpo[8]);   MLA(hi, lo, (*fo)[5], dpo[6]);
                MLA(hi, lo, (*fo)[6], dpo[4]);   MLA(hi, lo, (*fo)[7], dpo[2]);
                MLN(hi, lo);
                MLA(hi, lo, (*fe)[7], dpe[2]);   MLA(hi, lo, (*fe)[6], dpe[4]);
                MLA(hi, lo, (*fe)[5], dpe[6]);   MLA(hi, lo, (*fe)[4], dpe[8]);
                MLA(hi, lo, (*fe)[3], dpe[10]);  MLA(hi, lo, (*fe)[2], dpe[12]);
                MLA(hi, lo, (*fe)[1], dpe[14]);  MLA(hi, lo, (*fe)[0], dpe[0]);
                out16[sb] = scale_mad_to_16bit(hi,lo);

                ML0(hi, lo, (*fo)[7], dnpo[29]); MLA(hi, lo, (*fo)[6], dnpo[27]);
                MLA(hi, lo, (*fo)[5], dnpo[25]); MLA(hi, lo, (*fo)[4], dnpo[23]);
                MLA(hi, lo, (*fo)[3], dnpo[21]); MLA(hi, lo, (*fo)[2], dnpo[19]);
                MLA(hi, lo, (*fo)[1], dnpo[17]); MLA(hi, lo, (*fo)[0], dnpo[15]);
                MLA(hi, lo, (*fe)[0], dnpe[15]); MLA(hi, lo, (*fe)[1], dnpe[17]);
                MLA(hi, lo, (*fe)[2], dnpe[19]); MLA(hi, lo, (*fe)[3], dnpe[21]);
                MLA(hi, lo, (*fe)[4], dnpe[23]); MLA(hi, lo, (*fe)[5], dnpe[25]);
                MLA(hi, lo, (*fe)[6], dnpe[27]); MLA(hi, lo, (*fe)[7], dnpe[29]);
                out16[32 - sb] = scale_mad_to_16bit(hi,lo);
                ++fo;
            }

            ++Dptr; ptr = *Dptr + po;
            ML0(hi, lo, (*fo)[0], ptr[0]);   MLA(hi, lo, (*fo)[1], ptr[14]);
            MLA(hi, lo, (*fo)[2], ptr[12]);  MLA(hi, lo, (*fo)[3], ptr[10]);
            MLA(hi, lo, (*fo)[4], ptr[8]);   MLA(hi, lo, (*fo)[5], ptr[6]);
            MLA(hi, lo, (*fo)[6], ptr[4]);   MLA(hi, lo, (*fo)[7], ptr[2]);
            out16[16] = scale_mad_to_16bit(-hi,-lo);

            out16 += 32;
            phase = (phase + 1) % 16;
        }
    }
}
static void synth_half(struct mad_synth *synth, struct mad_frame const *frame,
                       unsigned int nch, unsigned int ns)
{
    unsigned int phase, s, sb, pe, po;
    register mad_fixed64hi_t hi;
    register mad_fixed64lo_t lo;
    int16_t *out16 = synth->pcm_16bit;

    if (nch == 2) {
        /* ---- ステレオ専用 LR インターリーブ ---- */
        mad_fixed_t const (*sbsampleL)[36][32] = &frame->sbsample[0];
        mad_fixed_t const (*sbsampleR)[36][32] = &frame->sbsample[1];
        mad_fixed_t (*filterL)[2][2][16][8] = &synth->filter[0];
        mad_fixed_t (*filterR)[2][2][16][8] = &synth->filter[1];
        phase = synth->phase;

        for (s = 0; s < ns; ++s) {
            dct32((*sbsampleL)[s], phase >> 1, (*filterL)[0][phase & 1], (*filterL)[1][phase & 1]);
            dct32((*sbsampleR)[s], phase >> 1, (*filterR)[0][phase & 1], (*filterR)[1][phase & 1]);

            pe = phase & ~1;
            po = ((phase - 1) & 0xf) | 1;

            register mad_fixed_t (*feL)[8] = &(*filterL)[0][phase & 1][0];
            register mad_fixed_t (*fxL)[8] = &(*filterL)[0][~phase & 1][0];
            register mad_fixed_t (*foL)[8] = &(*filterL)[1][~phase & 1][0];
            register mad_fixed_t (*feR)[8] = &(*filterR)[0][phase & 1][0];
            register mad_fixed_t (*fxR)[8] = &(*filterR)[0][~phase & 1][0];
            register mad_fixed_t (*foR)[8] = &(*filterR)[1][~phase & 1][0];

            const mad_fixed_t (*Dptr)[32] = &D[0];
            const mad_fixed_t *ptr;

            /* ---- sb=0 (Sample 0) ---- */
            ptr = *Dptr + po;
            // L-ch
            ML0(hi, lo, (*fxL)[0], ptr[0]);  MLA(hi, lo, (*fxL)[1], ptr[14]);
            MLA(hi, lo, (*fxL)[2], ptr[12]); MLA(hi, lo, (*fxL)[3], ptr[10]);
            MLA(hi, lo, (*fxL)[4], ptr[8]);  MLA(hi, lo, (*fxL)[5], ptr[6]);
            MLA(hi, lo, (*fxL)[6], ptr[4]);  MLA(hi, lo, (*fxL)[7], ptr[2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*feL)[0], ptr[0]);  MLA(hi, lo, (*feL)[1], ptr[14]);
            MLA(hi, lo, (*feL)[2], ptr[12]); MLA(hi, lo, (*feL)[3], ptr[10]);
            MLA(hi, lo, (*feL)[4], ptr[8]);  MLA(hi, lo, (*feL)[5], ptr[6]);
            MLA(hi, lo, (*feL)[6], ptr[4]);  MLA(hi, lo, (*feL)[7], ptr[2]);
            out16[0] = scale_mad_to_16bit(hi,lo);

            ptr = *Dptr + po;
            // R-ch
            ML0(hi, lo, (*fxR)[0], ptr[0]);  MLA(hi, lo, (*fxR)[1], ptr[14]);
            MLA(hi, lo, (*fxR)[2], ptr[12]); MLA(hi, lo, (*fxR)[3], ptr[10]);
            MLA(hi, lo, (*fxR)[4], ptr[8]);  MLA(hi, lo, (*fxR)[5], ptr[6]);
            MLA(hi, lo, (*fxR)[6], ptr[4]);  MLA(hi, lo, (*fxR)[7], ptr[2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*feR)[0], ptr[0]);  MLA(hi, lo, (*feR)[1], ptr[14]);
            MLA(hi, lo, (*feR)[2], ptr[12]); MLA(hi, lo, (*feR)[3], ptr[10]);
            MLA(hi, lo, (*feR)[4], ptr[8]);  MLA(hi, lo, (*feR)[5], ptr[6]);
            MLA(hi, lo, (*feR)[6], ptr[4]);  MLA(hi, lo, (*feR)[7], ptr[2]);
            out16[1] = scale_mad_to_16bit(hi,lo);

            /* ---- sb=1..15 ---- */
            for (sb = 1; sb < 16; ++sb) {
                ++feL; ++feR; ++Dptr;
                if (!(sb & 1)) {
                    const mad_fixed_t *dpo = *Dptr + po;
                    const mad_fixed_t *dpe = *Dptr + pe;
                    const mad_fixed_t *dnpo = *Dptr - po;
                    const mad_fixed_t *dnpe = *Dptr - pe;
                    int idx1 = (sb >> 1) * 2;
                    int idx2 = (16 - (sb >> 1)) * 2;

                    /* PCM1 (Index idx1) */
                    // L
                    ML0(hi, lo, (*foL)[0], dpo[0]);  MLA(hi, lo, (*foL)[1], dpo[14]);
                    MLA(hi, lo, (*foL)[2], dpo[12]); MLA(hi, lo, (*foL)[3], dpo[10]);
                    MLA(hi, lo, (*foL)[4], dpo[8]);  MLA(hi, lo, (*foL)[5], dpo[6]);
                    MLA(hi, lo, (*foL)[6], dpo[4]);  MLA(hi, lo, (*foL)[7], dpo[2]);
                    MLN(hi, lo);
                    MLA(hi, lo, (*feL)[7], dpe[2]);  MLA(hi, lo, (*feL)[6], dpe[4]);
                    MLA(hi, lo, (*feL)[5], dpe[6]);  MLA(hi, lo, (*feL)[4], dpe[8]);
                    MLA(hi, lo, (*feL)[3], dpe[10]); MLA(hi, lo, (*feL)[2], dpe[12]);
                    MLA(hi, lo, (*feL)[1], dpe[14]); MLA(hi, lo, (*feL)[0], dpe[0]);
                    out16[idx1] = scale_mad_to_16bit(hi,lo);
                    // R
                    ML0(hi, lo, (*foR)[0], dpo[0]);  MLA(hi, lo, (*foR)[1], dpo[14]);
                    MLA(hi, lo, (*foR)[2], dpo[12]); MLA(hi, lo, (*foR)[3], dpo[10]);
                    MLA(hi, lo, (*foR)[4], dpo[8]);  MLA(hi, lo, (*foR)[5], dpo[6]);
                    MLA(hi, lo, (*foR)[6], dpo[4]);  MLA(hi, lo, (*foR)[7], dpo[2]);
                    MLN(hi, lo);
                    MLA(hi, lo, (*feR)[7], dpe[2]);  MLA(hi, lo, (*feR)[6], dpe[4]);
                    MLA(hi, lo, (*feR)[5], dpe[6]);  MLA(hi, lo, (*feR)[4], dpe[8]);
                    MLA(hi, lo, (*feR)[3], dpe[10]); MLA(hi, lo, (*feR)[2], dpe[12]);
                    MLA(hi, lo, (*feR)[1], dpe[14]); MLA(hi, lo, (*feR)[0], dpe[0]);
                    out16[idx1 + 1] = scale_mad_to_16bit(hi,lo);

                    /* PCM2 (Index idx2) */
                    // L
                    ML0(hi, lo, (*foL)[7], dnpo[29]); MLA(hi, lo, (*foL)[6], dnpo[27]);
                    MLA(hi, lo, (*foL)[5], dnpo[25]); MLA(hi, lo, (*foL)[4], dnpo[23]);
                    MLA(hi, lo, (*foL)[3], dnpo[21]); MLA(hi, lo, (*foL)[2], dnpo[19]);
                    MLA(hi, lo, (*foL)[1], dnpo[17]); MLA(hi, lo, (*foL)[0], dnpo[15]);
                    MLA(hi, lo, (*feL)[0], dnpe[15]); MLA(hi, lo, (*feL)[1], dnpe[17]);
                    MLA(hi, lo, (*feL)[2], dnpe[19]); MLA(hi, lo, (*feL)[3], dnpe[21]);
                    MLA(hi, lo, (*feL)[4], dnpe[23]); MLA(hi, lo, (*feL)[5], dnpe[25]);
                    MLA(hi, lo, (*feL)[6], dnpe[27]); MLA(hi, lo, (*feL)[7], dnpe[29]);
                    out16[idx2] = scale_mad_to_16bit(hi,lo);
                    // R
                    ML0(hi, lo, (*foR)[7], dnpo[29]); MLA(hi, lo, (*foR)[6], dnpo[27]);
                    MLA(hi, lo, (*foR)[5], dnpo[25]); MLA(hi, lo, (*foR)[4], dnpo[23]);
                    MLA(hi, lo, (*foR)[3], dnpo[21]); MLA(hi, lo, (*foR)[2], dnpo[19]);
                    MLA(hi, lo, (*foR)[1], dnpo[17]); MLA(hi, lo, (*foR)[0], dnpo[15]);
                    MLA(hi, lo, (*feR)[0], dnpe[15]); MLA(hi, lo, (*feR)[1], dnpe[17]);
                    MLA(hi, lo, (*feR)[2], dnpe[19]); MLA(hi, lo, (*feR)[3], dnpe[21]);
                    MLA(hi, lo, (*feR)[4], dnpe[23]); MLA(hi, lo, (*feR)[5], dnpe[25]);
                    MLA(hi, lo, (*feR)[6], dnpe[27]); MLA(hi, lo, (*feR)[7], dnpe[29]);
                    out16[idx2 + 1] = scale_mad_to_16bit(hi,lo);
                }
                ++foL; ++foR;
            }

            /* ---- sb=16 (Index: 8) ---- */
            ++Dptr; ptr = *Dptr + po;
            // L
            ML0(hi, lo, (*foL)[0], ptr[0]);  MLA(hi, lo, (*foL)[1], ptr[14]);
            MLA(hi, lo, (*foL)[2], ptr[12]); MLA(hi, lo, (*foL)[3], ptr[10]);
            MLA(hi, lo, (*foL)[4], ptr[8]);  MLA(hi, lo, (*foL)[5], ptr[6]);
            MLA(hi, lo, (*foL)[6], ptr[4]);  MLA(hi, lo, (*foL)[7], ptr[2]);
            out16[8 * 2] = scale_mad_to_16bit(-hi,-lo);
            // R
            ML0(hi, lo, (*foR)[0], ptr[0]);  MLA(hi, lo, (*foR)[1], ptr[14]);
            MLA(hi, lo, (*foR)[2], ptr[12]); MLA(hi, lo, (*foR)[3], ptr[10]);
            MLA(hi, lo, (*foR)[4], ptr[8]);  MLA(hi, lo, (*foR)[5], ptr[6]);
            MLA(hi, lo, (*foR)[6], ptr[4]);  MLA(hi, lo, (*foR)[7], ptr[2]);
            out16[8 * 2 + 1] = scale_mad_to_16bit(-hi,-lo);

            out16 += 32; // 16 samples * 2 channels
            phase = (phase + 1) % 16;
        }
    } else {
        /* ---- モノラル pure C フォールバック (直接16bit出力) ---- */
        mad_fixed_t (*filter)[2][2][16][8] = &synth->filter[0];
        mad_fixed_t const (*sbsample)[36][32] = &frame->sbsample[0]; // 本来 ch=0
        phase = synth->phase;

        for (s = 0; s < ns; ++s) {
            dct32((*sbsample)[s], phase >> 1, (*filter)[0][phase & 1], (*filter)[1][phase & 1]);
            pe = phase & ~1; po = ((phase - 1) & 0xf) | 1;
            register mad_fixed_t (*fe)[8] = &(*filter)[0][phase & 1][0];
            register mad_fixed_t (*fx)[8] = &(*filter)[0][~phase & 1][0];
            register mad_fixed_t (*fo)[8] = &(*filter)[1][~phase & 1][0];
            const mad_fixed_t (*Dptr)[32] = &D[0];
            const mad_fixed_t *ptr;

            /* sb=0 */
            ptr = *Dptr + po;
            ML0(hi, lo, (*fx)[0], ptr[0]);  MLA(hi, lo, (*fx)[1], ptr[14]);
            MLA(hi, lo, (*fx)[2], ptr[12]); MLA(hi, lo, (*fx)[3], ptr[10]);
            MLA(hi, lo, (*fx)[4], ptr[8]);  MLA(hi, lo, (*fx)[5], ptr[6]);
            MLA(hi, lo, (*fx)[6], ptr[4]);  MLA(hi, lo, (*fx)[7], ptr[2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*fe)[0], ptr[0]);  MLA(hi, lo, (*fe)[1], ptr[14]);
            MLA(hi, lo, (*fe)[2], ptr[12]); MLA(hi, lo, (*fe)[3], ptr[10]);
            MLA(hi, lo, (*fe)[4], ptr[8]);  MLA(hi, lo, (*fe)[5], ptr[6]);
            MLA(hi, lo, (*fe)[6], ptr[4]);  MLA(hi, lo, (*fe)[7], ptr[2]);
            out16[0] = scale_mad_to_16bit(hi,lo);

            /* sb=1..15 */
            for (sb = 1; sb < 16; ++sb) {
                ++fe; ++Dptr;
                if (!(sb & 1)) {
                    ptr = *Dptr + po;
                    ML0(hi, lo, (*fo)[0], ptr[0]);   MLA(hi, lo, (*fo)[1], ptr[14]);
                    MLA(hi, lo, (*fo)[2], ptr[12]);  MLA(hi, lo, (*fo)[3], ptr[10]);
                    MLA(hi, lo, (*fo)[4], ptr[8]);   MLA(hi, lo, (*fo)[5], ptr[6]);
                    MLA(hi, lo, (*fo)[6], ptr[4]);   MLA(hi, lo, (*fo)[7], ptr[2]);
                    MLN(hi, lo);
                    ptr = *Dptr + pe;
                    MLA(hi, lo, (*fe)[7], ptr[2]);   MLA(hi, lo, (*fe)[6], ptr[4]);
                    MLA(hi, lo, (*fe)[5], ptr[6]);   MLA(hi, lo, (*fe)[4], ptr[8]);
                    MLA(hi, lo, (*fe)[3], ptr[10]);  MLA(hi, lo, (*fe)[2], ptr[12]);
                    MLA(hi, lo, (*fe)[1], ptr[14]);  MLA(hi, lo, (*fe)[0], ptr[0]);
                    out16[sb >> 1] = scale_mad_to_16bit(hi,lo);

                    ptr = *Dptr - po;
                    ML0(hi, lo, (*fo)[7], ptr[29]);  MLA(hi, lo, (*fo)[6], ptr[27]);
                    MLA(hi, lo, (*fo)[5], ptr[25]);  MLA(hi, lo, (*fo)[4], ptr[23]);
                    MLA(hi, lo, (*fo)[3], ptr[21]);  MLA(hi, lo, (*fo)[2], ptr[19]);
                    MLA(hi, lo, (*fo)[1], ptr[17]);  MLA(hi, lo, (*fo)[0], ptr[15]);
                    ptr = *Dptr - pe;
                    MLA(hi, lo, (*fe)[0], ptr[15]);  MLA(hi, lo, (*fe)[1], ptr[17]);
                    MLA(hi, lo, (*fe)[2], ptr[19]);  MLA(hi, lo, (*fe)[3], ptr[21]);
                    MLA(hi, lo, (*fe)[4], ptr[23]);  MLA(hi, lo, (*fe)[5], ptr[25]);
                    MLA(hi, lo, (*fe)[6], ptr[27]);  MLA(hi, lo, (*fe)[7], ptr[29]);
                    out16[16 - (sb >> 1)] = scale_mad_to_16bit(hi,lo);
                }
                ++fo;
            }

            /* sb=16 */
            ++Dptr; ptr = *Dptr + po;
            ML0(hi, lo, (*fo)[0], ptr[0]);   MLA(hi, lo, (*fo)[1], ptr[14]);
            MLA(hi, lo, (*fo)[2], ptr[12]);  MLA(hi, lo, (*fo)[3], ptr[10]);
            MLA(hi, lo, (*fo)[4], ptr[8]);   MLA(hi, lo, (*fo)[5], ptr[6]);
            MLA(hi, lo, (*fo)[6], ptr[4]);   MLA(hi, lo, (*fo)[7], ptr[2]);
            out16[8] = scale_mad_to_16bit(-hi,-lo);

            out16 += 16;
            phase = (phase + 1) % 16;
        }
    }
}

#elif __OPT_X68K_INTERLEAVED__
/* ===============================================================
 * synth_full
 *
 * nch==2 専用 LR インターリーブ版:
 *   L と R の変数を並べて宣言し、sbループ内で交互に処理する。
 *   L 側の MLA 依存チェーンのストール中に R 側の命令を
 *   GCC スケジューラが埋めやすくなる。
 *
 * nch==1 (モノラル) はフォールバックとして従来のループを使う。
 * =============================================================== */
static
void synth_full(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, s, sb, pe, po;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  if (nch == 2) {
    /* ---- ステレオ専用 LR インターリーブ ---- */
    mad_fixed_t const (*sbsampleL)[36][32], (*sbsampleR)[36][32];
    mad_fixed_t (*filterL)[2][2][16][8], (*filterR)[2][2][16][8];
    mad_fixed_t *pcm1L, *pcm2L, *pcm1R, *pcm2R;
    register mad_fixed_t (*feL)[8], (*fxL)[8], (*foL)[8];
    register mad_fixed_t (*feR)[8], (*fxR)[8], (*foR)[8];
    register mad_fixed_t const (*Dptr)[32], *ptr;

    sbsampleL = &frame->sbsample[0];
    sbsampleR = &frame->sbsample[1];
    filterL   = &synth->filter[0];
    filterR   = &synth->filter[1];
    phase     = synth->phase;
    pcm1L     = synth->pcm.samples[0];
    pcm1R     = synth->pcm.samples[1];

    for (s = 0; s < ns; ++s) {
      /* L/R 両チャンネルの DCT を先に実行 */
      dct32((*sbsampleL)[s], phase >> 1,
	    (*filterL)[0][phase & 1], (*filterL)[1][phase & 1]);
      dct32((*sbsampleR)[s], phase >> 1,
	    (*filterR)[0][phase & 1], (*filterR)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      feL = &(*filterL)[0][ phase & 1][0];
      fxL = &(*filterL)[0][~phase & 1][0];
      foL = &(*filterL)[1][~phase & 1][0];
      feR = &(*filterR)[0][ phase & 1][0];
      fxR = &(*filterR)[0][~phase & 1][0];
      foR = &(*filterR)[1][~phase & 1][0];

      Dptr = &D[0];

      /* ---- sb=0 L ---- */
      ptr = *Dptr + po;
      ML0(hi, lo, (*fxL)[0], ptr[ 0]);
      MLA(hi, lo, (*fxL)[1], ptr[14]);
      MLA(hi, lo, (*fxL)[2], ptr[12]);
      MLA(hi, lo, (*fxL)[3], ptr[10]);
      MLA(hi, lo, (*fxL)[4], ptr[ 8]);
      MLA(hi, lo, (*fxL)[5], ptr[ 6]);
      MLA(hi, lo, (*fxL)[6], ptr[ 4]);
      MLA(hi, lo, (*fxL)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*feL)[0], ptr[ 0]);
      MLA(hi, lo, (*feL)[1], ptr[14]);
      MLA(hi, lo, (*feL)[2], ptr[12]);
      MLA(hi, lo, (*feL)[3], ptr[10]);
      MLA(hi, lo, (*feL)[4], ptr[ 8]);
      MLA(hi, lo, (*feL)[5], ptr[ 6]);
      MLA(hi, lo, (*feL)[6], ptr[ 4]);
      MLA(hi, lo, (*feL)[7], ptr[ 2]);
      *pcm1L++ = SHIFT(MLZ(hi, lo));

      /* ---- sb=0 R ---- */
      ptr = *Dptr + po;
      ML0(hi, lo, (*fxR)[0], ptr[ 0]);
      MLA(hi, lo, (*fxR)[1], ptr[14]);
      MLA(hi, lo, (*fxR)[2], ptr[12]);
      MLA(hi, lo, (*fxR)[3], ptr[10]);
      MLA(hi, lo, (*fxR)[4], ptr[ 8]);
      MLA(hi, lo, (*fxR)[5], ptr[ 6]);
      MLA(hi, lo, (*fxR)[6], ptr[ 4]);
      MLA(hi, lo, (*fxR)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*feR)[0], ptr[ 0]);
      MLA(hi, lo, (*feR)[1], ptr[14]);
      MLA(hi, lo, (*feR)[2], ptr[12]);
      MLA(hi, lo, (*feR)[3], ptr[10]);
      MLA(hi, lo, (*feR)[4], ptr[ 8]);
      MLA(hi, lo, (*feR)[5], ptr[ 6]);
      MLA(hi, lo, (*feR)[6], ptr[ 4]);
      MLA(hi, lo, (*feR)[7], ptr[ 2]);
      *pcm1R++ = SHIFT(MLZ(hi, lo));

      pcm2L = pcm1L + 30;
      pcm2R = pcm1R + 30;

      /* ---- sb=1..15: L と R を交互に処理 ---- */
      for (sb = 1; sb < 16; ++sb) {
        ++feL; ++feR;
        ++Dptr;

        {
          const mad_fixed_t *dpo  = *Dptr + po;
          const mad_fixed_t *dpe  = *Dptr + pe;
          const mad_fixed_t *dnpo = *Dptr - po;
          const mad_fixed_t *dnpe = *Dptr - pe;
          mad_fixed_t resL, resR;

          /* pcm1 L / R */
          ML0(hi, lo, (*foL)[0], dpo[ 0]);
          MLA(hi, lo, (*foL)[1], dpo[14]);
          MLA(hi, lo, (*foL)[2], dpo[12]);
          MLA(hi, lo, (*foL)[3], dpo[10]);
          MLA(hi, lo, (*foL)[4], dpo[ 8]);
          MLA(hi, lo, (*foL)[5], dpo[ 6]);
          MLA(hi, lo, (*foL)[6], dpo[ 4]);
          MLA(hi, lo, (*foL)[7], dpo[ 2]);
          MLN(hi, lo);
          MLA(hi, lo, (*feL)[7], dpe[ 2]);
          MLA(hi, lo, (*feL)[6], dpe[ 4]);
          MLA(hi, lo, (*feL)[5], dpe[ 6]);
          MLA(hi, lo, (*feL)[4], dpe[ 8]);
          MLA(hi, lo, (*feL)[3], dpe[10]);
          MLA(hi, lo, (*feL)[2], dpe[12]);
          MLA(hi, lo, (*feL)[1], dpe[14]);
          MLA(hi, lo, (*feL)[0], dpe[ 0]);
          resL = SHIFT(MLZ(hi, lo));

          ML0(hi, lo, (*foR)[0], dpo[ 0]);
          MLA(hi, lo, (*foR)[1], dpo[14]);
          MLA(hi, lo, (*foR)[2], dpo[12]);
          MLA(hi, lo, (*foR)[3], dpo[10]);
          MLA(hi, lo, (*foR)[4], dpo[ 8]);
          MLA(hi, lo, (*foR)[5], dpo[ 6]);
          MLA(hi, lo, (*foR)[6], dpo[ 4]);
          MLA(hi, lo, (*foR)[7], dpo[ 2]);
          MLN(hi, lo);
          MLA(hi, lo, (*feR)[7], dpe[ 2]);
          MLA(hi, lo, (*feR)[6], dpe[ 4]);
          MLA(hi, lo, (*feR)[5], dpe[ 6]);
          MLA(hi, lo, (*feR)[4], dpe[ 8]);
          MLA(hi, lo, (*feR)[3], dpe[10]);
          MLA(hi, lo, (*feR)[2], dpe[12]);
          MLA(hi, lo, (*feR)[1], dpe[14]);
          MLA(hi, lo, (*feR)[0], dpe[ 0]);
          resR = SHIFT(MLZ(hi, lo));

          *pcm1L++ = resL;
          *pcm1R++ = resR;

          /* pcm2 L / R */
          ML0(hi, lo, (*foL)[7], dnpo[29]);
          MLA(hi, lo, (*foL)[6], dnpo[27]);
          MLA(hi, lo, (*foL)[5], dnpo[25]);
          MLA(hi, lo, (*foL)[4], dnpo[23]);
          MLA(hi, lo, (*foL)[3], dnpo[21]);
          MLA(hi, lo, (*foL)[2], dnpo[19]);
          MLA(hi, lo, (*foL)[1], dnpo[17]);
          MLA(hi, lo, (*foL)[0], dnpo[15]);
          MLA(hi, lo, (*feL)[0], dnpe[15]);
          MLA(hi, lo, (*feL)[1], dnpe[17]);
          MLA(hi, lo, (*feL)[2], dnpe[19]);
          MLA(hi, lo, (*feL)[3], dnpe[21]);
          MLA(hi, lo, (*feL)[4], dnpe[23]);
          MLA(hi, lo, (*feL)[5], dnpe[25]);
          MLA(hi, lo, (*feL)[6], dnpe[27]);
          MLA(hi, lo, (*feL)[7], dnpe[29]);
          resL = SHIFT(MLZ(hi, lo));

          ML0(hi, lo, (*foR)[7], dnpo[29]);
          MLA(hi, lo, (*foR)[6], dnpo[27]);
          MLA(hi, lo, (*foR)[5], dnpo[25]);
          MLA(hi, lo, (*foR)[4], dnpo[23]);
          MLA(hi, lo, (*foR)[3], dnpo[21]);
          MLA(hi, lo, (*foR)[2], dnpo[19]);
          MLA(hi, lo, (*foR)[1], dnpo[17]);
          MLA(hi, lo, (*foR)[0], dnpo[15]);
          MLA(hi, lo, (*feR)[0], dnpe[15]);
          MLA(hi, lo, (*feR)[1], dnpe[17]);
          MLA(hi, lo, (*feR)[2], dnpe[19]);
          MLA(hi, lo, (*feR)[3], dnpe[21]);
          MLA(hi, lo, (*feR)[4], dnpe[23]);
          MLA(hi, lo, (*feR)[5], dnpe[25]);
          MLA(hi, lo, (*feR)[6], dnpe[27]);
          MLA(hi, lo, (*feR)[7], dnpe[29]);
          resR = SHIFT(MLZ(hi, lo));

          *pcm2L-- = resL;
          *pcm2R-- = resR;
        }

        ++foL; ++foR;
      }

      /* ---- sb=16 L ---- */
      ++Dptr;
      ptr = *Dptr + po;
      ML0(hi, lo, (*foL)[0], ptr[ 0]);
      MLA(hi, lo, (*foL)[1], ptr[14]);
      MLA(hi, lo, (*foL)[2], ptr[12]);
      MLA(hi, lo, (*foL)[3], ptr[10]);
      MLA(hi, lo, (*foL)[4], ptr[ 8]);
      MLA(hi, lo, (*foL)[5], ptr[ 6]);
      MLA(hi, lo, (*foL)[6], ptr[ 4]);
      MLA(hi, lo, (*foL)[7], ptr[ 2]);
      *pcm1L = SHIFT(-MLZ(hi, lo));
      pcm1L += 16;

      /* ---- sb=16 R ---- */
      ML0(hi, lo, (*foR)[0], ptr[ 0]);
      MLA(hi, lo, (*foR)[1], ptr[14]);
      MLA(hi, lo, (*foR)[2], ptr[12]);
      MLA(hi, lo, (*foR)[3], ptr[10]);
      MLA(hi, lo, (*foR)[4], ptr[ 8]);
      MLA(hi, lo, (*foR)[5], ptr[ 6]);
      MLA(hi, lo, (*foR)[6], ptr[ 4]);
      MLA(hi, lo, (*foR)[7], ptr[ 2]);
      *pcm1R = SHIFT(-MLZ(hi, lo));
      pcm1R += 16;

      phase = (phase + 1) % 16;
    }

  } else {
    /* ---- モノラル フォールバック ---- */
    mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
    mad_fixed_t const (*sbsample)[36][32];
    register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
    register mad_fixed_t const (*Dptr)[32], *ptr;

    sbsample = &frame->sbsample[0];
    filter   = &synth->filter[0];
    phase    = synth->phase;
    pcm1     = synth->pcm.samples[0];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsample)[s], phase >> 1,
	    (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      fe = &(*filter)[0][ phase & 1][0];
      fx = &(*filter)[0][~phase & 1][0];
      fo = &(*filter)[1][~phase & 1][0];

      Dptr = &D[0];

      ptr = *Dptr + po;
      ML0(hi, lo, (*fx)[0], ptr[ 0]);
      MLA(hi, lo, (*fx)[1], ptr[14]);
      MLA(hi, lo, (*fx)[2], ptr[12]);
      MLA(hi, lo, (*fx)[3], ptr[10]);
      MLA(hi, lo, (*fx)[4], ptr[ 8]);
      MLA(hi, lo, (*fx)[5], ptr[ 6]);
      MLA(hi, lo, (*fx)[6], ptr[ 4]);
      MLA(hi, lo, (*fx)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*fe)[0], ptr[ 0]);
      MLA(hi, lo, (*fe)[1], ptr[14]);
      MLA(hi, lo, (*fe)[2], ptr[12]);
      MLA(hi, lo, (*fe)[3], ptr[10]);
      MLA(hi, lo, (*fe)[4], ptr[ 8]);
      MLA(hi, lo, (*fe)[5], ptr[ 6]);
      MLA(hi, lo, (*fe)[6], ptr[ 4]);
      MLA(hi, lo, (*fe)[7], ptr[ 2]);
      *pcm1++ = SHIFT(MLZ(hi, lo));

      pcm2 = pcm1 + 30;

 
      for (sb = 1; sb < 16; ++sb) {
        ++fe;
        ++Dptr;

        /* D[32 - sb][i] == -D[sb][31 - i] */

        ptr = *Dptr + po;
        ML0(hi, lo, (*fo)[0], ptr[ 0]);
        MLA(hi, lo, (*fo)[1], ptr[14]);
        MLA(hi, lo, (*fo)[2], ptr[12]);
        MLA(hi, lo, (*fo)[3], ptr[10]);
        MLA(hi, lo, (*fo)[4], ptr[ 8]);
        MLA(hi, lo, (*fo)[5], ptr[ 6]);
        MLA(hi, lo, (*fo)[6], ptr[ 4]);
        MLA(hi, lo, (*fo)[7], ptr[ 2]);
        MLN(hi, lo);

        ptr = *Dptr + pe;
        MLA(hi, lo, (*fe)[7], ptr[ 2]);
        MLA(hi, lo, (*fe)[6], ptr[ 4]);
        MLA(hi, lo, (*fe)[5], ptr[ 6]);
        MLA(hi, lo, (*fe)[4], ptr[ 8]);
        MLA(hi, lo, (*fe)[3], ptr[10]);
        MLA(hi, lo, (*fe)[2], ptr[12]);
        MLA(hi, lo, (*fe)[1], ptr[14]);
        MLA(hi, lo, (*fe)[0], ptr[ 0]);

        *pcm1++ = SHIFT(MLZ(hi, lo));

        ptr = *Dptr - pe;
        ML0(hi, lo, (*fe)[0], ptr[31 - 16]);
        MLA(hi, lo, (*fe)[1], ptr[31 - 14]);
        MLA(hi, lo, (*fe)[2], ptr[31 - 12]);
        MLA(hi, lo, (*fe)[3], ptr[31 - 10]);
        MLA(hi, lo, (*fe)[4], ptr[31 -  8]);
        MLA(hi, lo, (*fe)[5], ptr[31 -  6]);
        MLA(hi, lo, (*fe)[6], ptr[31 -  4]);
        MLA(hi, lo, (*fe)[7], ptr[31 -  2]);

        ptr = *Dptr - po;
        MLA(hi, lo, (*fo)[7], ptr[31 -  2]);
        MLA(hi, lo, (*fo)[6], ptr[31 -  4]);
        MLA(hi, lo, (*fo)[5], ptr[31 -  6]);
        MLA(hi, lo, (*fo)[4], ptr[31 -  8]);
        MLA(hi, lo, (*fo)[3], ptr[31 - 10]);
        MLA(hi, lo, (*fo)[2], ptr[31 - 12]);
        MLA(hi, lo, (*fo)[1], ptr[31 - 14]);
        MLA(hi, lo, (*fo)[0], ptr[31 - 16]);

        *pcm2-- = SHIFT(MLZ(hi, lo));

        ++fo;
      }

      ++Dptr;
      ptr = *Dptr + po;
      ML0(hi, lo, (*fo)[0], ptr[ 0]);
      MLA(hi, lo, (*fo)[1], ptr[14]);
      MLA(hi, lo, (*fo)[2], ptr[12]);
      MLA(hi, lo, (*fo)[3], ptr[10]);
      MLA(hi, lo, (*fo)[4], ptr[ 8]);
      MLA(hi, lo, (*fo)[5], ptr[ 6]);
      MLA(hi, lo, (*fo)[6], ptr[ 4]);
      MLA(hi, lo, (*fo)[7], ptr[ 2]);
      *pcm1 = SHIFT(-MLZ(hi, lo));
      pcm1 += 16;

      phase = (phase + 1) % 16;
    }
  }
}

/* ===============================================================
 * synth_half
 *
 * nch==2 専用 LR インターリーブ版:
 *   偶数 sb のみ出力 (!(sb & 1))。
 *   pcm2 = pcm1 + 14、最後 pcm1 += 8。
 *   L/R の dpo/dpe/dnpo/dnpe は共用。
 *
 * nch==1 (モノラル) は pure C フォールバック。
 * =============================================================== */
static
void synth_half(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, s, sb, pe, po;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  if (nch == 2) {
    /* ---- ステレオ専用 LR インターリーブ ---- */
    mad_fixed_t const (*sbsampleL)[36][32], (*sbsampleR)[36][32];
    mad_fixed_t (*filterL)[2][2][16][8], (*filterR)[2][2][16][8];
    mad_fixed_t *pcm1L, *pcm2L, *pcm1R, *pcm2R;
    register mad_fixed_t (*feL)[8], (*fxL)[8], (*foL)[8];
    register mad_fixed_t (*feR)[8], (*fxR)[8], (*foR)[8];
    register mad_fixed_t const (*Dptr)[32], *ptr;

    sbsampleL = &frame->sbsample[0];
    sbsampleR = &frame->sbsample[1];
    filterL   = &synth->filter[0];
    filterR   = &synth->filter[1];
    phase     = synth->phase;
    pcm1L     = synth->pcm.samples[0];
    pcm1R     = synth->pcm.samples[1];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsampleL)[s], phase >> 1,
	    (*filterL)[0][phase & 1], (*filterL)[1][phase & 1]);
      dct32((*sbsampleR)[s], phase >> 1,
	    (*filterR)[0][phase & 1], (*filterR)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      feL = &(*filterL)[0][ phase & 1][0];
      fxL = &(*filterL)[0][~phase & 1][0];
      foL = &(*filterL)[1][~phase & 1][0];
      feR = &(*filterR)[0][ phase & 1][0];
      fxR = &(*filterR)[0][~phase & 1][0];
      foR = &(*filterR)[1][~phase & 1][0];

      Dptr = &D[0];

      /* ---- sb=0 L ---- */
      ptr = *Dptr + po;
      ML0(hi, lo, (*fxL)[0], ptr[ 0]);
      MLA(hi, lo, (*fxL)[1], ptr[14]);
      MLA(hi, lo, (*fxL)[2], ptr[12]);
      MLA(hi, lo, (*fxL)[3], ptr[10]);
      MLA(hi, lo, (*fxL)[4], ptr[ 8]);
      MLA(hi, lo, (*fxL)[5], ptr[ 6]);
      MLA(hi, lo, (*fxL)[6], ptr[ 4]);
      MLA(hi, lo, (*fxL)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*feL)[0], ptr[ 0]);
      MLA(hi, lo, (*feL)[1], ptr[14]);
      MLA(hi, lo, (*feL)[2], ptr[12]);
      MLA(hi, lo, (*feL)[3], ptr[10]);
      MLA(hi, lo, (*feL)[4], ptr[ 8]);
      MLA(hi, lo, (*feL)[5], ptr[ 6]);
      MLA(hi, lo, (*feL)[6], ptr[ 4]);
      MLA(hi, lo, (*feL)[7], ptr[ 2]);
      *pcm1L++ = SHIFT(MLZ(hi, lo));

      /* ---- sb=0 R ---- */
      ptr = *Dptr + po;
      ML0(hi, lo, (*fxR)[0], ptr[ 0]);
      MLA(hi, lo, (*fxR)[1], ptr[14]);
      MLA(hi, lo, (*fxR)[2], ptr[12]);
      MLA(hi, lo, (*fxR)[3], ptr[10]);
      MLA(hi, lo, (*fxR)[4], ptr[ 8]);
      MLA(hi, lo, (*fxR)[5], ptr[ 6]);
      MLA(hi, lo, (*fxR)[6], ptr[ 4]);
      MLA(hi, lo, (*fxR)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*feR)[0], ptr[ 0]);
      MLA(hi, lo, (*feR)[1], ptr[14]);
      MLA(hi, lo, (*feR)[2], ptr[12]);
      MLA(hi, lo, (*feR)[3], ptr[10]);
      MLA(hi, lo, (*feR)[4], ptr[ 8]);
      MLA(hi, lo, (*feR)[5], ptr[ 6]);
      MLA(hi, lo, (*feR)[6], ptr[ 4]);
      MLA(hi, lo, (*feR)[7], ptr[ 2]);
      *pcm1R++ = SHIFT(MLZ(hi, lo));

      pcm2L = pcm1L + 14;
      pcm2R = pcm1R + 14;

      /* ---- sb=1..15 ---- */
      for (sb = 1; sb < 16; ++sb) {
        ++feL; ++feR;
        ++Dptr;

        if (!(sb & 1)) {
          const mad_fixed_t *dpo  = *Dptr + po;
          const mad_fixed_t *dpe  = *Dptr + pe;
          const mad_fixed_t *dnpo = *Dptr - po;
          const mad_fixed_t *dnpe = *Dptr - pe;
          mad_fixed_t resL, resR;

          /* pcm1 L */
          ML0(hi, lo, (*foL)[0], dpo[ 0]);
          MLA(hi, lo, (*foL)[1], dpo[14]);
          MLA(hi, lo, (*foL)[2], dpo[12]);
          MLA(hi, lo, (*foL)[3], dpo[10]);
          MLA(hi, lo, (*foL)[4], dpo[ 8]);
          MLA(hi, lo, (*foL)[5], dpo[ 6]);
          MLA(hi, lo, (*foL)[6], dpo[ 4]);
          MLA(hi, lo, (*foL)[7], dpo[ 2]);
          MLN(hi, lo);
          MLA(hi, lo, (*feL)[7], dpe[ 2]);
          MLA(hi, lo, (*feL)[6], dpe[ 4]);
          MLA(hi, lo, (*feL)[5], dpe[ 6]);
          MLA(hi, lo, (*feL)[4], dpe[ 8]);
          MLA(hi, lo, (*feL)[3], dpe[10]);
          MLA(hi, lo, (*feL)[2], dpe[12]);
          MLA(hi, lo, (*feL)[1], dpe[14]);
          MLA(hi, lo, (*feL)[0], dpe[ 0]);
          resL = SHIFT(MLZ(hi, lo));

          /* pcm1 R */
          ML0(hi, lo, (*foR)[0], dpo[ 0]);
          MLA(hi, lo, (*foR)[1], dpo[14]);
          MLA(hi, lo, (*foR)[2], dpo[12]);
          MLA(hi, lo, (*foR)[3], dpo[10]);
          MLA(hi, lo, (*foR)[4], dpo[ 8]);
          MLA(hi, lo, (*foR)[5], dpo[ 6]);
          MLA(hi, lo, (*foR)[6], dpo[ 4]);
          MLA(hi, lo, (*foR)[7], dpo[ 2]);
          MLN(hi, lo);
          MLA(hi, lo, (*feR)[7], dpe[ 2]);
          MLA(hi, lo, (*feR)[6], dpe[ 4]);
          MLA(hi, lo, (*feR)[5], dpe[ 6]);
          MLA(hi, lo, (*feR)[4], dpe[ 8]);
          MLA(hi, lo, (*feR)[3], dpe[10]);
          MLA(hi, lo, (*feR)[2], dpe[12]);
          MLA(hi, lo, (*feR)[1], dpe[14]);
          MLA(hi, lo, (*feR)[0], dpe[ 0]);
          resR = SHIFT(MLZ(hi, lo));

          *pcm1L++ = resL;
          *pcm1R++ = resR;

          /* pcm2 L */
          ML0(hi, lo, (*foL)[7], dnpo[29]);
          MLA(hi, lo, (*foL)[6], dnpo[27]);
          MLA(hi, lo, (*foL)[5], dnpo[25]);
          MLA(hi, lo, (*foL)[4], dnpo[23]);
          MLA(hi, lo, (*foL)[3], dnpo[21]);
          MLA(hi, lo, (*foL)[2], dnpo[19]);
          MLA(hi, lo, (*foL)[1], dnpo[17]);
          MLA(hi, lo, (*foL)[0], dnpo[15]);
          MLA(hi, lo, (*feL)[0], dnpe[15]);
          MLA(hi, lo, (*feL)[1], dnpe[17]);
          MLA(hi, lo, (*feL)[2], dnpe[19]);
          MLA(hi, lo, (*feL)[3], dnpe[21]);
          MLA(hi, lo, (*feL)[4], dnpe[23]);
          MLA(hi, lo, (*feL)[5], dnpe[25]);
          MLA(hi, lo, (*feL)[6], dnpe[27]);
          MLA(hi, lo, (*feL)[7], dnpe[29]);
          resL = SHIFT(MLZ(hi, lo));

          /* pcm2 R */
          ML0(hi, lo, (*foR)[7], dnpo[29]);
          MLA(hi, lo, (*foR)[6], dnpo[27]);
          MLA(hi, lo, (*foR)[5], dnpo[25]);
          MLA(hi, lo, (*foR)[4], dnpo[23]);
          MLA(hi, lo, (*foR)[3], dnpo[21]);
          MLA(hi, lo, (*foR)[2], dnpo[19]);
          MLA(hi, lo, (*foR)[1], dnpo[17]);
          MLA(hi, lo, (*foR)[0], dnpo[15]);
          MLA(hi, lo, (*feR)[0], dnpe[15]);
          MLA(hi, lo, (*feR)[1], dnpe[17]);
          MLA(hi, lo, (*feR)[2], dnpe[19]);
          MLA(hi, lo, (*feR)[3], dnpe[21]);
          MLA(hi, lo, (*feR)[4], dnpe[23]);
          MLA(hi, lo, (*feR)[5], dnpe[25]);
          MLA(hi, lo, (*feR)[6], dnpe[27]);
          MLA(hi, lo, (*feR)[7], dnpe[29]);
          resR = SHIFT(MLZ(hi, lo));

          *pcm2L-- = resL;
          *pcm2R-- = resR;
        }

        ++foL; ++foR;
      }

      /* ---- sb=16 L ---- */
      ++Dptr;
      ptr = *Dptr + po;
      ML0(hi, lo, (*foL)[0], ptr[ 0]);
      MLA(hi, lo, (*foL)[1], ptr[14]);
      MLA(hi, lo, (*foL)[2], ptr[12]);
      MLA(hi, lo, (*foL)[3], ptr[10]);
      MLA(hi, lo, (*foL)[4], ptr[ 8]);
      MLA(hi, lo, (*foL)[5], ptr[ 6]);
      MLA(hi, lo, (*foL)[6], ptr[ 4]);
      MLA(hi, lo, (*foL)[7], ptr[ 2]);
      *pcm1L = SHIFT(-MLZ(hi, lo));
      pcm1L += 8;

      /* ---- sb=16 R ---- */
      ML0(hi, lo, (*foR)[0], ptr[ 0]);
      MLA(hi, lo, (*foR)[1], ptr[14]);
      MLA(hi, lo, (*foR)[2], ptr[12]);
      MLA(hi, lo, (*foR)[3], ptr[10]);
      MLA(hi, lo, (*foR)[4], ptr[ 8]);
      MLA(hi, lo, (*foR)[5], ptr[ 6]);
      MLA(hi, lo, (*foR)[6], ptr[ 4]);
      MLA(hi, lo, (*foR)[7], ptr[ 2]);
      *pcm1R = SHIFT(-MLZ(hi, lo));
      pcm1R += 8;

      phase = (phase + 1) % 16;
    }

  } else {
    /* ---- モノラル pure C フォールバック ---- */
    unsigned int ch;
    for (ch = 0; ch < nch; ++ch) {
      mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
      mad_fixed_t const (*sbsample)[36][32];
      register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
      register mad_fixed_t const (*Dptr)[32], *ptr;

      sbsample = &frame->sbsample[ch];
      filter   = &synth->filter[ch];
      phase    = synth->phase;
      pcm1     = synth->pcm.samples[ch];

      for (s = 0; s < ns; ++s) {
        dct32((*sbsample)[s], phase >> 1,
              (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

        pe = phase & ~1;
        po = ((phase - 1) & 0xf) | 1;

        fe = &(*filter)[0][ phase & 1][0];
        fx = &(*filter)[0][~phase & 1][0];
        fo = &(*filter)[1][~phase & 1][0];

        Dptr = &D[0];

        ptr = *Dptr + po;
        ML0(hi, lo, (*fx)[0], ptr[ 0]);
        MLA(hi, lo, (*fx)[1], ptr[14]);
        MLA(hi, lo, (*fx)[2], ptr[12]);
        MLA(hi, lo, (*fx)[3], ptr[10]);
        MLA(hi, lo, (*fx)[4], ptr[ 8]);
        MLA(hi, lo, (*fx)[5], ptr[ 6]);
        MLA(hi, lo, (*fx)[6], ptr[ 4]);
        MLA(hi, lo, (*fx)[7], ptr[ 2]);
        MLN(hi, lo);
        ptr = *Dptr + pe;
        MLA(hi, lo, (*fe)[0], ptr[ 0]);
        MLA(hi, lo, (*fe)[1], ptr[14]);
        MLA(hi, lo, (*fe)[2], ptr[12]);
        MLA(hi, lo, (*fe)[3], ptr[10]);
        MLA(hi, lo, (*fe)[4], ptr[ 8]);
        MLA(hi, lo, (*fe)[5], ptr[ 6]);
        MLA(hi, lo, (*fe)[6], ptr[ 4]);
        MLA(hi, lo, (*fe)[7], ptr[ 2]);
        *pcm1++ = SHIFT(MLZ(hi, lo));

        pcm2 = pcm1 + 14;

        for (sb = 1; sb < 16; ++sb) {
          ++fe;
          ++Dptr;

          if (!(sb & 1)) {
            ptr = *Dptr + po;
            ML0(hi, lo, (*fo)[0], ptr[ 0]);
            MLA(hi, lo, (*fo)[1], ptr[14]);
            MLA(hi, lo, (*fo)[2], ptr[12]);
            MLA(hi, lo, (*fo)[3], ptr[10]);
            MLA(hi, lo, (*fo)[4], ptr[ 8]);
            MLA(hi, lo, (*fo)[5], ptr[ 6]);
            MLA(hi, lo, (*fo)[6], ptr[ 4]);
            MLA(hi, lo, (*fo)[7], ptr[ 2]);
            MLN(hi, lo);
            ptr = *Dptr + pe;
            MLA(hi, lo, (*fe)[7], ptr[ 2]);
            MLA(hi, lo, (*fe)[6], ptr[ 4]);
            MLA(hi, lo, (*fe)[5], ptr[ 6]);
            MLA(hi, lo, (*fe)[4], ptr[ 8]);
            MLA(hi, lo, (*fe)[3], ptr[10]);
            MLA(hi, lo, (*fe)[2], ptr[12]);
            MLA(hi, lo, (*fe)[1], ptr[14]);
            MLA(hi, lo, (*fe)[0], ptr[ 0]);
            *pcm1++ = SHIFT(MLZ(hi, lo));

            ptr = *Dptr - po;
            ML0(hi, lo, (*fo)[7], ptr[29]);
            MLA(hi, lo, (*fo)[6], ptr[27]);
            MLA(hi, lo, (*fo)[5], ptr[25]);
            MLA(hi, lo, (*fo)[4], ptr[23]);
            MLA(hi, lo, (*fo)[3], ptr[21]);
            MLA(hi, lo, (*fo)[2], ptr[19]);
            MLA(hi, lo, (*fo)[1], ptr[17]);
            MLA(hi, lo, (*fo)[0], ptr[15]);
            ptr = *Dptr - pe;
            MLA(hi, lo, (*fe)[0], ptr[15]);
            MLA(hi, lo, (*fe)[1], ptr[17]);
            MLA(hi, lo, (*fe)[2], ptr[19]);
            MLA(hi, lo, (*fe)[3], ptr[21]);
            MLA(hi, lo, (*fe)[4], ptr[23]);
            MLA(hi, lo, (*fe)[5], ptr[25]);
            MLA(hi, lo, (*fe)[6], ptr[27]);
            MLA(hi, lo, (*fe)[7], ptr[29]);
            *pcm2-- = SHIFT(MLZ(hi, lo));
          }

          ++fo;
        }

        ++Dptr;
        ptr = *Dptr + po;
        ML0(hi, lo, (*fo)[0], ptr[ 0]);
        MLA(hi, lo, (*fo)[1], ptr[14]);
        MLA(hi, lo, (*fo)[2], ptr[12]);
        MLA(hi, lo, (*fo)[3], ptr[10]);
        MLA(hi, lo, (*fo)[4], ptr[ 8]);
        MLA(hi, lo, (*fo)[5], ptr[ 6]);
        MLA(hi, lo, (*fo)[6], ptr[ 4]);
        MLA(hi, lo, (*fo)[7], ptr[ 2]);
        *pcm1 = SHIFT(-MLZ(hi, lo));
        pcm1 += 8;

        phase = (phase + 1) % 16;
      }
    }
  }
}

#elif __OPT_X68K_INLINE_SYNTH__

/*
 * synth_full / synth_half - MC68060 最適化版
 *
 * 修正履歴:
 *   v1: 初版
 *   v2: FIR16_PCM1 の fe アクセス順バグ修正
 *   v3: インラインアセンブラ出力制約バグ修正
 *       "=d"(result) は GCC が d0..d7 を自由に選ぶため
 *       asr.l #2,d0 (d0固定) と矛盾 → move.l d0,%[result] で明示コピー
 *   v4: synth_half 追加
 *
 * 共通マクロ FIR16_PCM1 / FIR16_PCM2 を synth_full と synth_half で共用。
 * synth_half の pcm2 側は fo/fe の順序が synth_full と逆だが加算は可換なので
 * FIR16_PCM2 の引数順を入れ替えて呼ぶだけでよい。
 */

/* ---------------------------------------------------------------
 * FIR16_PCM1: pcm1 書き込み用 16-tap FIR (synth_full/half 共用)
 *
 *   sum = -( fo[0]*D[po+ 0] + fo[1]*D[po+14] + fo[2]*D[po+12]
 *           + fo[3]*D[po+10] + fo[4]*D[po+ 8] + fo[5]*D[po+ 6]
 *           + fo[6]*D[po+ 4] + fo[7]*D[po+ 2] )
 *         + fe[7]*D[pe+ 2] + fe[6]*D[pe+ 4] + fe[5]*D[pe+ 6]
 *         + fe[4]*D[pe+ 8] + fe[3]*D[pe+10] + fe[2]*D[pe+12]
 *         + fe[1]*D[pe+14] + fe[0]*D[pe+ 0]
 *
 * バイトオフセット (mad_fixed_t = 4 bytes):
 *   fo[n] = n*4(%[fo]),  fe[n] = n*4(%[fe])
 *   D[po+k] = k*4(%[dpo]),  D[pe+k] = k*4(%[dpe])
 * --------------------------------------------------------------- */
#define FIR16_PCM1(fo_ptr, fe_ptr, dpo, dpe, result)           \
__asm__ __volatile__ (                                          \
    /* --- odd part: neg(fo · D[po]) --- */                     \
    "move.l  (%[p1fo]),d0\n\t"     /* fo[0] */                  \
    "move.l  (%[p1a]),d1\n\t"      /* D[po+0] */                \
    "move.l  4(%[p1fo]),d2\n\t"    /* fo[1] */                  \
    "move.l  56(%[p1a]),d3\n\t"    /* D[po+14] */               \
    "muls.l  d1,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  8(%[p1fo]),d4\n\t"    /* fo[2] */                  \
    "move.l  48(%[p1a]),d5\n\t"    /* D[po+12] */               \
    "add.l   d2,d0\n\t"                                         \
    "muls.l  d5,d4\n\t"                                         \
    "move.l  12(%[p1fo]),d2\n\t"   /* fo[3] */                  \
    "move.l  40(%[p1a]),d3\n\t"    /* D[po+10] */               \
    "add.l   d4,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  16(%[p1fo]),d4\n\t"   /* fo[4] */                  \
    "move.l  32(%[p1a]),d5\n\t"    /* D[po+8] */                \
    "add.l   d2,d0\n\t"                                         \
    "muls.l  d5,d4\n\t"                                         \
    "move.l  20(%[p1fo]),d2\n\t"   /* fo[5] */                  \
    "move.l  24(%[p1a]),d3\n\t"    /* D[po+6] */                \
    "add.l   d4,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  24(%[p1fo]),d4\n\t"   /* fo[6] */                  \
    "move.l  16(%[p1a]),d5\n\t"    /* D[po+4] */                \
    "add.l   d2,d0\n\t"                                         \
    "muls.l  d5,d4\n\t"                                         \
    "move.l  28(%[p1fo]),d2\n\t"   /* fo[7] */                  \
    "move.l  8(%[p1a]),d3\n\t"     /* D[po+2] */                \
    "add.l   d4,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "add.l   d2,d0\n\t"                                         \
    "neg.l   d0\n\t"               /* MLN */                    \
    /* --- even part: fe[7..0] · D[pe+2,4,6,8,10,12,14,0] --- */\
    "move.l  28(%[p1fe]),d1\n\t"   /* fe[7] */                  \
    "move.l  8(%[p1b]),d2\n\t"     /* D[pe+2] */                \
    "move.l  24(%[p1fe]),d3\n\t"   /* fe[6] */                  \
    "move.l  16(%[p1b]),d4\n\t"    /* D[pe+4] */                \
    "muls.l  d2,d1\n\t"                                         \
    "muls.l  d4,d3\n\t"                                         \
    "move.l  20(%[p1fe]),d5\n\t"   /* fe[5] */                  \
    "move.l  24(%[p1b]),d6\n\t"    /* D[pe+6] */                \
    "add.l   d3,d1\n\t"                                         \
    "muls.l  d6,d5\n\t"                                         \
    "move.l  16(%[p1fe]),d2\n\t"   /* fe[4] */                  \
    "move.l  32(%[p1b]),d3\n\t"    /* D[pe+8] */                \
    "add.l   d5,d1\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  12(%[p1fe]),d5\n\t"   /* fe[3] */                  \
    "move.l  40(%[p1b]),d6\n\t"    /* D[pe+10] */               \
    "add.l   d2,d1\n\t"                                         \
    "muls.l  d6,d5\n\t"                                         \
    "move.l  8(%[p1fe]),d2\n\t"    /* fe[2] */                  \
    "move.l  48(%[p1b]),d3\n\t"    /* D[pe+12] */               \
    "add.l   d5,d1\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  4(%[p1fe]),d5\n\t"    /* fe[1] */                  \
    "move.l  56(%[p1b]),d6\n\t"    /* D[pe+14] */               \
    "add.l   d2,d1\n\t"                                         \
    "muls.l  d6,d5\n\t"                                         \
    "move.l  (%[p1fe]),d2\n\t"     /* fe[0] */                  \
    "move.l  (%[p1b]),d3\n\t"      /* D[pe+0] */                \
    "add.l   d5,d1\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "add.l   d2,d1\n\t"                                         \
    "add.l   d1,d0\n\t"                                         \
    "asr.l   #2,d0\n\t"                                         \
    "move.l  d0,%[result]\n\t"                                  \
    : [result] "=d" (result)                                    \
    : [p1fo] "a" (fo_ptr),                                      \
      [p1fe] "a" (fe_ptr),                                      \
      [p1a]  "a" (dpo),                                         \
      [p1b]  "a" (dpe)                                          \
    : "d0","d1","d2","d3","d4","d5","d6","cc"                   \
)

/* ---------------------------------------------------------------
 * FIR16_PCM2: pcm2 書き込み用 16-tap FIR (synth_full/half 共用)
 *
 * synth_full の呼び出し:
 *   FIR16_PCM2(*fo, *fe, *Dptr-pe, *Dptr-po, result)
 *   sum = fe[0..7]·D[-pe+15..29] + fo[7..0]·D[-po+29..15]
 *
 * synth_half の呼び出し (fo/fe が逆順だが加算は可換):
 *   FIR16_PCM2(*fo, *fe, *Dptr-po, *Dptr-pe, result)
 *   ※ 第3引数に dnpo、第4引数に dnpe を渡す
 *
 * マクロ内部は「第1引数[7..0]·第3引数オフセット + 第2引数[0..7]·第4引数オフセット」
 * として統一。引数の組み合わせで両方に対応。
 *
 * バイトオフセット: ptr[15]=+60, ptr[17]=+68, ..., ptr[29]=+116
 * --------------------------------------------------------------- */
/* 制約シンボル名は p2fo/p2fe/p2a/p2b で固定し、マクロ引数名と切り離す */
#define FIR16_PCM2(fo_ptr, fe_ptr, dn1, dn2, result)           \
__asm__ __volatile__ (                                          \
    /* --- fo[7..0] · p2a[29,27,...,15] --- */                  \
    "move.l  28(%[p2fo]),d0\n\t"   /* fo[7] */                  \
    "move.l  116(%[p2a]),d1\n\t"   /* dn1[29] */                \
    "move.l  24(%[p2fo]),d2\n\t"   /* fo[6] */                  \
    "move.l  108(%[p2a]),d3\n\t"   /* dn1[27] */                \
    "muls.l  d1,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  20(%[p2fo]),d4\n\t"   /* fo[5] */                  \
    "move.l  100(%[p2a]),d5\n\t"   /* dn1[25] */                \
    "add.l   d2,d0\n\t"                                         \
    "muls.l  d5,d4\n\t"                                         \
    "move.l  16(%[p2fo]),d2\n\t"   /* fo[4] */                  \
    "move.l  92(%[p2a]),d3\n\t"    /* dn1[23] */                \
    "add.l   d4,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  12(%[p2fo]),d4\n\t"   /* fo[3] */                  \
    "move.l  84(%[p2a]),d5\n\t"    /* dn1[21] */                \
    "add.l   d2,d0\n\t"                                         \
    "muls.l  d5,d4\n\t"                                         \
    "move.l  8(%[p2fo]),d2\n\t"    /* fo[2] */                  \
    "move.l  76(%[p2a]),d3\n\t"    /* dn1[19] */                \
    "add.l   d4,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  4(%[p2fo]),d4\n\t"    /* fo[1] */                  \
    "move.l  68(%[p2a]),d5\n\t"    /* dn1[17] */                \
    "add.l   d2,d0\n\t"                                         \
    "muls.l  d5,d4\n\t"                                         \
    "move.l  (%[p2fo]),d2\n\t"     /* fo[0] */                  \
    "move.l  60(%[p2a]),d3\n\t"    /* dn1[15] */                \
    "add.l   d4,d0\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "add.l   d2,d0\n\t"                                         \
    /* --- fe[0..7] · p2b[15,17,...,29] --- */                  \
    "move.l  (%[p2fe]),d1\n\t"     /* fe[0] */                  \
    "move.l  60(%[p2b]),d2\n\t"    /* dn2[15] */                \
    "move.l  4(%[p2fe]),d3\n\t"    /* fe[1] */                  \
    "move.l  68(%[p2b]),d4\n\t"    /* dn2[17] */                \
    "muls.l  d2,d1\n\t"                                         \
    "muls.l  d4,d3\n\t"                                         \
    "move.l  8(%[p2fe]),d5\n\t"    /* fe[2] */                  \
    "move.l  76(%[p2b]),d6\n\t"    /* dn2[19] */                \
    "add.l   d3,d1\n\t"                                         \
    "muls.l  d6,d5\n\t"                                         \
    "move.l  12(%[p2fe]),d2\n\t"   /* fe[3] */                  \
    "move.l  84(%[p2b]),d3\n\t"    /* dn2[21] */                \
    "add.l   d5,d1\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  16(%[p2fe]),d5\n\t"   /* fe[4] */                  \
    "move.l  92(%[p2b]),d6\n\t"    /* dn2[23] */                \
    "add.l   d2,d1\n\t"                                         \
    "muls.l  d6,d5\n\t"                                         \
    "move.l  20(%[p2fe]),d2\n\t"   /* fe[5] */                  \
    "move.l  100(%[p2b]),d3\n\t"   /* dn2[25] */                \
    "add.l   d5,d1\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "move.l  24(%[p2fe]),d5\n\t"   /* fe[6] */                  \
    "move.l  108(%[p2b]),d6\n\t"   /* dn2[27] */                \
    "add.l   d2,d1\n\t"                                         \
    "muls.l  d6,d5\n\t"                                         \
    "move.l  28(%[p2fe]),d2\n\t"   /* fe[7] */                  \
    "move.l  116(%[p2b]),d3\n\t"   /* dn2[29] */                \
    "add.l   d5,d1\n\t"                                         \
    "muls.l  d3,d2\n\t"                                         \
    "add.l   d2,d1\n\t"                                         \
    "add.l   d1,d0\n\t"                                         \
    "asr.l   #2,d0\n\t"                                         \
    "move.l  d0,%[result]\n\t"                                  \
    : [result] "=d" (result)                                    \
    : [p2fo] "a" (fo_ptr),                                      \
      [p2fe] "a" (fe_ptr),                                      \
      [p2a]  "a" (dn1),                                         \
      [p2b]  "a" (dn2)                                          \
    : "d0","d1","d2","d3","d4","d5","d6","cc"                   \
)

/* ===============================================================
 * synth_full
 * =============================================================== */
static
void synth_full(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, ch, s, sb, pe, po;
  mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
  mad_fixed_t const (*sbsample)[36][32];
  register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
  register mad_fixed_t const (*Dptr)[32], *ptr;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  for (ch = 0; ch < nch; ++ch) {
    sbsample = &frame->sbsample[ch];
    filter   = &synth->filter[ch];
    phase    = synth->phase;
    pcm1     = synth->pcm.samples[ch];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsample)[s], phase >> 1,
	    (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      fe = &(*filter)[0][ phase & 1][0];
      fx = &(*filter)[0][~phase & 1][0];
      fo = &(*filter)[1][~phase & 1][0];

      Dptr = &D[0];

      /* ---- sb=0: pcm1[0] (fx使用、Cのまま) ---- */
      ptr = *Dptr + po;
      ML0(hi, lo, (*fx)[0], ptr[ 0]);
      MLA(hi, lo, (*fx)[1], ptr[14]);
      MLA(hi, lo, (*fx)[2], ptr[12]);
      MLA(hi, lo, (*fx)[3], ptr[10]);
      MLA(hi, lo, (*fx)[4], ptr[ 8]);
      MLA(hi, lo, (*fx)[5], ptr[ 6]);
      MLA(hi, lo, (*fx)[6], ptr[ 4]);
      MLA(hi, lo, (*fx)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*fe)[0], ptr[ 0]);
      MLA(hi, lo, (*fe)[1], ptr[14]);
      MLA(hi, lo, (*fe)[2], ptr[12]);
      MLA(hi, lo, (*fe)[3], ptr[10]);
      MLA(hi, lo, (*fe)[4], ptr[ 8]);
      MLA(hi, lo, (*fe)[5], ptr[ 6]);
      MLA(hi, lo, (*fe)[6], ptr[ 4]);
      MLA(hi, lo, (*fe)[7], ptr[ 2]);
      *pcm1++ = SHIFT(MLZ(hi, lo));

      pcm2 = pcm1 + 30;

      /* ---- sb=1..15 ---- */
      for (sb = 1; sb < 16; ++sb) {
        ++fe;
        ++Dptr;

        /* pcm1: neg(fo·D[po]) + fe[7..0]·D[pe+2,4,...,0] */
        /* pcm2: fo[7..0]·D[-po+29..15] + fe[0..7]·D[-pe+15..29] */
        {
          const mad_fixed_t *dpo  = *Dptr + po;
          const mad_fixed_t *dpe  = *Dptr + pe;
          const mad_fixed_t *dnpo = *Dptr - po;
          const mad_fixed_t *dnpe = *Dptr - pe;
          mad_fixed_t result;
          FIR16_PCM1(*fo, *fe, dpo, dpe, result);
          *pcm1++ = result;
          FIR16_PCM2(*fo, *fe, dnpo, dnpe, result);
          *pcm2-- = result;
        }

        ++fo;
      }

      /* ---- sb=16: pcm1[16] (Cのまま) ---- */
      ++Dptr;
      ptr = *Dptr + po;
      ML0(hi, lo, (*fo)[0], ptr[ 0]);
      MLA(hi, lo, (*fo)[1], ptr[14]);
      MLA(hi, lo, (*fo)[2], ptr[12]);
      MLA(hi, lo, (*fo)[3], ptr[10]);
      MLA(hi, lo, (*fo)[4], ptr[ 8]);
      MLA(hi, lo, (*fo)[5], ptr[ 6]);
      MLA(hi, lo, (*fo)[6], ptr[ 4]);
      MLA(hi, lo, (*fo)[7], ptr[ 2]);
      *pcm1 = SHIFT(-MLZ(hi, lo));
      pcm1 += 16;

      phase = (phase + 1) % 16;
    }
  }
}

/* ===============================================================
 * synth_half
 *
 * synth_full との差分:
 *   - sb ループで偶数 sb のみ pcm1/pcm2 を書く (!(sb & 1))
 *   - pcm2 = pcm1 + 14  (fullは +30)
 *   - 最後 pcm1 += 8    (fullは +16)
 *   - pcm2 の FIR: Cコードでは fo が先・fe が後の順だが
 *     加算は可換なので FIR16_PCM2 の dn1/dn2 引数を入れ替えて対応
 *       dn1 = *Dptr - po  (fo側)
 *       dn2 = *Dptr - pe  (fe側)
 * =============================================================== */
static
void synth_half(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, ch, s, sb, pe, po;
  mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
  mad_fixed_t const (*sbsample)[36][32];
  register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
  register mad_fixed_t const (*Dptr)[32], *ptr;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  for (ch = 0; ch < nch; ++ch) {
    sbsample = &frame->sbsample[ch];
    filter   = &synth->filter[ch];
    phase    = synth->phase;
    pcm1     = synth->pcm.samples[ch];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsample)[s], phase >> 1,
	    (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      fe = &(*filter)[0][ phase & 1][0];
      fx = &(*filter)[0][~phase & 1][0];
      fo = &(*filter)[1][~phase & 1][0];

      Dptr = &D[0];

      /* ---- sb=0: pcm1[0] (fx使用、Cのまま) ---- */
      ptr = *Dptr + po;
      ML0(hi, lo, (*fx)[0], ptr[ 0]);
      MLA(hi, lo, (*fx)[1], ptr[14]);
      MLA(hi, lo, (*fx)[2], ptr[12]);
      MLA(hi, lo, (*fx)[3], ptr[10]);
      MLA(hi, lo, (*fx)[4], ptr[ 8]);
      MLA(hi, lo, (*fx)[5], ptr[ 6]);
      MLA(hi, lo, (*fx)[6], ptr[ 4]);
      MLA(hi, lo, (*fx)[7], ptr[ 2]);
      MLN(hi, lo);
      ptr = *Dptr + pe;
      MLA(hi, lo, (*fe)[0], ptr[ 0]);
      MLA(hi, lo, (*fe)[1], ptr[14]);
      MLA(hi, lo, (*fe)[2], ptr[12]);
      MLA(hi, lo, (*fe)[3], ptr[10]);
      MLA(hi, lo, (*fe)[4], ptr[ 8]);
      MLA(hi, lo, (*fe)[5], ptr[ 6]);
      MLA(hi, lo, (*fe)[6], ptr[ 4]);
      MLA(hi, lo, (*fe)[7], ptr[ 2]);
      *pcm1++ = SHIFT(MLZ(hi, lo));

      pcm2 = pcm1 + 14;  /* half: +14 (fullは +30) */

      /* ---- sb=1..15 ---- */
      for (sb = 1; sb < 16; ++sb) {
        ++fe;
        ++Dptr;

        if (!(sb & 1)) {
          /* 偶数 sb のみ出力 */

          /* pcm1/pcm2 両方計算。Dptr からの加減算を先にポインタへ。 */
          {
            const mad_fixed_t *dpo  = *Dptr + po;
            const mad_fixed_t *dpe  = *Dptr + pe;
            const mad_fixed_t *dnpo = *Dptr - po;
            const mad_fixed_t *dnpe = *Dptr - pe;
            mad_fixed_t result;
            FIR16_PCM1(*fo, *fe, dpo, dpe, result);
            *pcm1++ = result;
            /* pcm2: Cコードは fo先だが加算可換、FIR16_PCM2 と同一引数順で正しい */
            FIR16_PCM2(*fo, *fe, dnpo, dnpe, result);
            *pcm2-- = result;
          }
        }

        ++fo;
      }

      /* ---- sb=16: pcm1[8] (Cのまま) ---- */
      ++Dptr;
      ptr = *Dptr + po;
      ML0(hi, lo, (*fo)[0], ptr[ 0]);
      MLA(hi, lo, (*fo)[1], ptr[14]);
      MLA(hi, lo, (*fo)[2], ptr[12]);
      MLA(hi, lo, (*fo)[3], ptr[10]);
      MLA(hi, lo, (*fo)[4], ptr[ 8]);
      MLA(hi, lo, (*fo)[5], ptr[ 6]);
      MLA(hi, lo, (*fo)[6], ptr[ 4]);
      MLA(hi, lo, (*fo)[7], ptr[ 2]);
      *pcm1 = SHIFT(-MLZ(hi, lo));
      pcm1 += 8;  /* half: +8 (fullは +16) */

      phase = (phase + 1) % 16;
    }
  }
}

#else

/*
 * NAME:	synth->full()
 * DESCRIPTION:	perform full frequency PCM synthesis
 */
 
static
void synth_full(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, ch, s, sb, pe, po;
  mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
  mad_fixed_t const (*sbsample)[36][32];
  register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
  register mad_fixed_t const (*Dptr)[32], *ptr;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  for (ch = 0; ch < nch; ++ch) {
    sbsample = &frame->sbsample[ch];
    filter   = &synth->filter[ch];
    phase    = synth->phase;
    pcm1     = synth->pcm.samples[ch];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsample)[s], phase >> 1,
	    (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      /* calculate 32 samples */

      fe = &(*filter)[0][ phase & 1][0];
      fx = &(*filter)[0][~phase & 1][0];
      fo = &(*filter)[1][~phase & 1][0];

      Dptr = &D[0];

      ptr = *Dptr + po;
      ML0(hi, lo, (*fx)[0], ptr[ 0]);
      MLA(hi, lo, (*fx)[1], ptr[14]);
      MLA(hi, lo, (*fx)[2], ptr[12]);
      MLA(hi, lo, (*fx)[3], ptr[10]);
      MLA(hi, lo, (*fx)[4], ptr[ 8]);
      MLA(hi, lo, (*fx)[5], ptr[ 6]);
      MLA(hi, lo, (*fx)[6], ptr[ 4]);
      MLA(hi, lo, (*fx)[7], ptr[ 2]);
      MLN(hi, lo);

      ptr = *Dptr + pe;
      MLA(hi, lo, (*fe)[0], ptr[ 0]);
      MLA(hi, lo, (*fe)[1], ptr[14]);
      MLA(hi, lo, (*fe)[2], ptr[12]);
      MLA(hi, lo, (*fe)[3], ptr[10]);
      MLA(hi, lo, (*fe)[4], ptr[ 8]);
      MLA(hi, lo, (*fe)[5], ptr[ 6]);
      MLA(hi, lo, (*fe)[6], ptr[ 4]);
      MLA(hi, lo, (*fe)[7], ptr[ 2]);

      *pcm1++ = SHIFT(MLZ(hi, lo));

      pcm2 = pcm1 + 30;

      for (sb = 1; sb < 16; ++sb) {
	++fe;
	++Dptr;

	/* D[32 - sb][i] == -D[sb][31 - i] */

	ptr = *Dptr + po;
	ML0(hi, lo, (*fo)[0], ptr[ 0]);
	MLA(hi, lo, (*fo)[1], ptr[14]);
	MLA(hi, lo, (*fo)[2], ptr[12]);
	MLA(hi, lo, (*fo)[3], ptr[10]);
	MLA(hi, lo, (*fo)[4], ptr[ 8]);
	MLA(hi, lo, (*fo)[5], ptr[ 6]);
	MLA(hi, lo, (*fo)[6], ptr[ 4]);
	MLA(hi, lo, (*fo)[7], ptr[ 2]);
	MLN(hi, lo);

	ptr = *Dptr + pe;
	MLA(hi, lo, (*fe)[7], ptr[ 2]);
	MLA(hi, lo, (*fe)[6], ptr[ 4]);
	MLA(hi, lo, (*fe)[5], ptr[ 6]);
	MLA(hi, lo, (*fe)[4], ptr[ 8]);
	MLA(hi, lo, (*fe)[3], ptr[10]);
	MLA(hi, lo, (*fe)[2], ptr[12]);
	MLA(hi, lo, (*fe)[1], ptr[14]);
	MLA(hi, lo, (*fe)[0], ptr[ 0]);

	*pcm1++ = SHIFT(MLZ(hi, lo));

	ptr = *Dptr - pe;
	ML0(hi, lo, (*fe)[0], ptr[31 - 16]);
	MLA(hi, lo, (*fe)[1], ptr[31 - 14]);
	MLA(hi, lo, (*fe)[2], ptr[31 - 12]);
	MLA(hi, lo, (*fe)[3], ptr[31 - 10]);
	MLA(hi, lo, (*fe)[4], ptr[31 -  8]);
	MLA(hi, lo, (*fe)[5], ptr[31 -  6]);
	MLA(hi, lo, (*fe)[6], ptr[31 -  4]);
	MLA(hi, lo, (*fe)[7], ptr[31 -  2]);

	ptr = *Dptr - po;
	MLA(hi, lo, (*fo)[7], ptr[31 -  2]);
	MLA(hi, lo, (*fo)[6], ptr[31 -  4]);
	MLA(hi, lo, (*fo)[5], ptr[31 -  6]);
	MLA(hi, lo, (*fo)[4], ptr[31 -  8]);
	MLA(hi, lo, (*fo)[3], ptr[31 - 10]);
	MLA(hi, lo, (*fo)[2], ptr[31 - 12]);
	MLA(hi, lo, (*fo)[1], ptr[31 - 14]);
	MLA(hi, lo, (*fo)[0], ptr[31 - 16]);

	*pcm2-- = SHIFT(MLZ(hi, lo));

	++fo;
      }

      ++Dptr;

      ptr = *Dptr + po;
      ML0(hi, lo, (*fo)[0], ptr[ 0]);
      MLA(hi, lo, (*fo)[1], ptr[14]);
      MLA(hi, lo, (*fo)[2], ptr[12]);
      MLA(hi, lo, (*fo)[3], ptr[10]);
      MLA(hi, lo, (*fo)[4], ptr[ 8]);
      MLA(hi, lo, (*fo)[5], ptr[ 6]);
      MLA(hi, lo, (*fo)[6], ptr[ 4]);
      MLA(hi, lo, (*fo)[7], ptr[ 2]);

      *pcm1 = SHIFT(-MLZ(hi, lo));
      pcm1 += 16;
      

      phase = (phase + 1) % 16;

    }
  }
}


/*
 * NAME:	synth->half()
 * DESCRIPTION:	perform half frequency PCM synthesis
 */
static
void synth_half(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, ch, s, sb, pe, po;
  mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
  mad_fixed_t const (*sbsample)[36][32];
  register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
  register mad_fixed_t const (*Dptr)[32], *ptr;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  for (ch = 0; ch < nch; ++ch) {
    sbsample = &frame->sbsample[ch];
    filter   = &synth->filter[ch];
    phase    = synth->phase;
    pcm1     = synth->pcm.samples[ch];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsample)[s], phase >> 1,
	    (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      /* calculate 16 samples */

      fe = &(*filter)[0][ phase & 1][0];
      fx = &(*filter)[0][~phase & 1][0];
      fo = &(*filter)[1][~phase & 1][0];

      Dptr = &D[0];

      ptr = *Dptr + po;
      ML0(hi, lo, (*fx)[0], ptr[ 0]);
      MLA(hi, lo, (*fx)[1], ptr[14]);
      MLA(hi, lo, (*fx)[2], ptr[12]);
      MLA(hi, lo, (*fx)[3], ptr[10]);
      MLA(hi, lo, (*fx)[4], ptr[ 8]);
      MLA(hi, lo, (*fx)[5], ptr[ 6]);
      MLA(hi, lo, (*fx)[6], ptr[ 4]);
      MLA(hi, lo, (*fx)[7], ptr[ 2]);
      MLN(hi, lo);

      ptr = *Dptr + pe;
      MLA(hi, lo, (*fe)[0], ptr[ 0]);
      MLA(hi, lo, (*fe)[1], ptr[14]);
      MLA(hi, lo, (*fe)[2], ptr[12]);
      MLA(hi, lo, (*fe)[3], ptr[10]);
      MLA(hi, lo, (*fe)[4], ptr[ 8]);
      MLA(hi, lo, (*fe)[5], ptr[ 6]);
      MLA(hi, lo, (*fe)[6], ptr[ 4]);
      MLA(hi, lo, (*fe)[7], ptr[ 2]);

      *pcm1++ = SHIFT(MLZ(hi, lo));

      pcm2 = pcm1 + 14;

      for (sb = 1; sb < 16; ++sb) {
	++fe;
	++Dptr;

	/* D[32 - sb][i] == -D[sb][31 - i] */

	if (!(sb & 1)) {
	  ptr = *Dptr + po;
	  ML0(hi, lo, (*fo)[0], ptr[ 0]);
	  MLA(hi, lo, (*fo)[1], ptr[14]);
	  MLA(hi, lo, (*fo)[2], ptr[12]);
	  MLA(hi, lo, (*fo)[3], ptr[10]);
	  MLA(hi, lo, (*fo)[4], ptr[ 8]);
	  MLA(hi, lo, (*fo)[5], ptr[ 6]);
	  MLA(hi, lo, (*fo)[6], ptr[ 4]);
	  MLA(hi, lo, (*fo)[7], ptr[ 2]);
	  MLN(hi, lo);

	  ptr = *Dptr + pe;
	  MLA(hi, lo, (*fe)[7], ptr[ 2]);
	  MLA(hi, lo, (*fe)[6], ptr[ 4]);
	  MLA(hi, lo, (*fe)[5], ptr[ 6]);
	  MLA(hi, lo, (*fe)[4], ptr[ 8]);
	  MLA(hi, lo, (*fe)[3], ptr[10]);
	  MLA(hi, lo, (*fe)[2], ptr[12]);
	  MLA(hi, lo, (*fe)[1], ptr[14]);
	  MLA(hi, lo, (*fe)[0], ptr[ 0]);

	  *pcm1++ = SHIFT(MLZ(hi, lo));

	  ptr = *Dptr - po;
	  ML0(hi, lo, (*fo)[7], ptr[31 -  2]);
	  MLA(hi, lo, (*fo)[6], ptr[31 -  4]);
	  MLA(hi, lo, (*fo)[5], ptr[31 -  6]);
	  MLA(hi, lo, (*fo)[4], ptr[31 -  8]);
	  MLA(hi, lo, (*fo)[3], ptr[31 - 10]);
	  MLA(hi, lo, (*fo)[2], ptr[31 - 12]);
	  MLA(hi, lo, (*fo)[1], ptr[31 - 14]);
	  MLA(hi, lo, (*fo)[0], ptr[31 - 16]);

	  ptr = *Dptr - pe;
	  MLA(hi, lo, (*fe)[0], ptr[31 - 16]);
	  MLA(hi, lo, (*fe)[1], ptr[31 - 14]);
	  MLA(hi, lo, (*fe)[2], ptr[31 - 12]);
	  MLA(hi, lo, (*fe)[3], ptr[31 - 10]);
	  MLA(hi, lo, (*fe)[4], ptr[31 -  8]);
	  MLA(hi, lo, (*fe)[5], ptr[31 -  6]);
	  MLA(hi, lo, (*fe)[6], ptr[31 -  4]);
	  MLA(hi, lo, (*fe)[7], ptr[31 -  2]);

	  *pcm2-- = SHIFT(MLZ(hi, lo));
	}

	++fo;
      }

      ++Dptr;

      ptr = *Dptr + po;
      ML0(hi, lo, (*fo)[0], ptr[ 0]);
      MLA(hi, lo, (*fo)[1], ptr[14]);
      MLA(hi, lo, (*fo)[2], ptr[12]);
      MLA(hi, lo, (*fo)[3], ptr[10]);
      MLA(hi, lo, (*fo)[4], ptr[ 8]);
      MLA(hi, lo, (*fo)[5], ptr[ 6]);
      MLA(hi, lo, (*fo)[6], ptr[ 4]);
      MLA(hi, lo, (*fo)[7], ptr[ 2]);

      *pcm1 = SHIFT(-MLZ(hi, lo));
      pcm1 += 8;

      phase = (phase + 1) % 16;
    }
  }
}

#endif

#endif

/*
 * NAME:	synth->quarter()
 * DESCRIPTION:	perform quarter frequency PCM synthesis
 */
static
void synth_quarter(struct mad_synth *synth, struct mad_frame const *frame,
		unsigned int nch, unsigned int ns)
{
  unsigned int phase, ch, s, sb, pe, po;
  mad_fixed_t *pcm1, *pcm2, (*filter)[2][2][16][8];
  mad_fixed_t const (*sbsample)[36][32];
  register mad_fixed_t (*fe)[8], (*fx)[8], (*fo)[8];
  register mad_fixed_t const (*Dptr)[32], *ptr;
  register mad_fixed64hi_t hi;
  register mad_fixed64lo_t lo;

  for (ch = 0; ch < nch; ++ch) {
    sbsample = &frame->sbsample[ch];
    filter   = &synth->filter[ch];
    phase    = synth->phase;
    pcm1     = synth->pcm.samples[ch];

    for (s = 0; s < ns; ++s) {
      dct32((*sbsample)[s], phase >> 1,
	    (*filter)[0][phase & 1], (*filter)[1][phase & 1]);

      pe = phase & ~1;
      po = ((phase - 1) & 0xf) | 1;

      /* calculate 8 samples */

      fe = &(*filter)[0][ phase & 1][0];
      fx = &(*filter)[0][~phase & 1][0];
      fo = &(*filter)[1][~phase & 1][0];

      Dptr = &D[0];

      ptr = *Dptr + po;
      ML0(hi, lo, (*fx)[0], ptr[ 0]);
      MLA(hi, lo, (*fx)[1], ptr[14]);
      MLA(hi, lo, (*fx)[2], ptr[12]);
      MLA(hi, lo, (*fx)[3], ptr[10]);
      MLA(hi, lo, (*fx)[4], ptr[ 8]);
      MLA(hi, lo, (*fx)[5], ptr[ 6]);
      MLA(hi, lo, (*fx)[6], ptr[ 4]);
      MLA(hi, lo, (*fx)[7], ptr[ 2]);
      MLN(hi, lo);

      ptr = *Dptr + pe;
      MLA(hi, lo, (*fe)[0], ptr[ 0]);
      MLA(hi, lo, (*fe)[1], ptr[14]);
      MLA(hi, lo, (*fe)[2], ptr[12]);
      MLA(hi, lo, (*fe)[3], ptr[10]);
      MLA(hi, lo, (*fe)[4], ptr[ 8]);
      MLA(hi, lo, (*fe)[5], ptr[ 6]);
      MLA(hi, lo, (*fe)[6], ptr[ 4]);
      MLA(hi, lo, (*fe)[7], ptr[ 2]);

      *pcm1++ = SHIFT(MLZ(hi, lo));

      pcm2 = pcm1 + 6;

      for (sb = 1; sb < 16; ++sb) {
	++fe;
	++Dptr;

	/* D[32 - sb][i] == -D[sb][31 - i] */

	if ((sb % 4) == 0) {
	  ptr = *Dptr + po;
	  ML0(hi, lo, (*fo)[0], ptr[ 0]);
	  MLA(hi, lo, (*fo)[1], ptr[14]);
	  MLA(hi, lo, (*fo)[2], ptr[12]);
	  MLA(hi, lo, (*fo)[3], ptr[10]);
	  MLA(hi, lo, (*fo)[4], ptr[ 8]);
	  MLA(hi, lo, (*fo)[5], ptr[ 6]);
	  MLA(hi, lo, (*fo)[6], ptr[ 4]);
	  MLA(hi, lo, (*fo)[7], ptr[ 2]);
	  MLN(hi, lo);

	  ptr = *Dptr + pe;
	  MLA(hi, lo, (*fe)[7], ptr[ 2]);
	  MLA(hi, lo, (*fe)[6], ptr[ 4]);
	  MLA(hi, lo, (*fe)[5], ptr[ 6]);
	  MLA(hi, lo, (*fe)[4], ptr[ 8]);
	  MLA(hi, lo, (*fe)[3], ptr[10]);
	  MLA(hi, lo, (*fe)[2], ptr[12]);
	  MLA(hi, lo, (*fe)[1], ptr[14]);
	  MLA(hi, lo, (*fe)[0], ptr[ 0]);

	  *pcm1++ = SHIFT(MLZ(hi, lo));

	  ptr = *Dptr - po;
	  ML0(hi, lo, (*fo)[7], ptr[31 -  2]);
	  MLA(hi, lo, (*fo)[6], ptr[31 -  4]);
	  MLA(hi, lo, (*fo)[5], ptr[31 -  6]);
	  MLA(hi, lo, (*fo)[4], ptr[31 -  8]);
	  MLA(hi, lo, (*fo)[3], ptr[31 - 10]);
	  MLA(hi, lo, (*fo)[2], ptr[31 - 12]);
	  MLA(hi, lo, (*fo)[1], ptr[31 - 14]);
	  MLA(hi, lo, (*fo)[0], ptr[31 - 16]);

	  ptr = *Dptr - pe;
	  MLA(hi, lo, (*fe)[0], ptr[31 - 16]);
	  MLA(hi, lo, (*fe)[1], ptr[31 - 14]);
	  MLA(hi, lo, (*fe)[2], ptr[31 - 12]);
	  MLA(hi, lo, (*fe)[3], ptr[31 - 10]);
	  MLA(hi, lo, (*fe)[4], ptr[31 -  8]);
	  MLA(hi, lo, (*fe)[5], ptr[31 -  6]);
	  MLA(hi, lo, (*fe)[6], ptr[31 -  4]);
	  MLA(hi, lo, (*fe)[7], ptr[31 -  2]);

	  *pcm2-- = SHIFT(MLZ(hi, lo));
	}

	++fo;
      }

      ++Dptr;

      ptr = *Dptr + po;
      ML0(hi, lo, (*fo)[0], ptr[ 0]);
      MLA(hi, lo, (*fo)[1], ptr[14]);
      MLA(hi, lo, (*fo)[2], ptr[12]);
      MLA(hi, lo, (*fo)[3], ptr[10]);
      MLA(hi, lo, (*fo)[4], ptr[ 8]);
      MLA(hi, lo, (*fo)[5], ptr[ 6]);
      MLA(hi, lo, (*fo)[6], ptr[ 4]);
      MLA(hi, lo, (*fo)[7], ptr[ 2]);

      *pcm1 = SHIFT(-MLZ(hi, lo));
      pcm1 += 4;

      phase = (phase + 1) % 16;
    }
  }
}

/*
 * NAME:	synth->frame()
 * DESCRIPTION:	perform PCM synthesis of frame subband samples
 */
void mad_synth_frame(struct mad_synth *synth, struct mad_frame const *frame)
{
  unsigned int nch, ns;
  void (*synth_frame)(struct mad_synth *, struct mad_frame const *,
		      unsigned int, unsigned int);

  nch = MAD_NCHANNELS(&frame->header);
  ns  = MAD_NSBSAMPLES(&frame->header);

  synth->pcm.samplerate = frame->header.samplerate;
  synth->pcm.channels   = nch;
  synth->pcm.length     = 32 * ns;

  synth_frame = synth_full;

  if (frame->options & MAD_OPTION_HALFSAMPLERATE) {
    synth->pcm.samplerate /= 2;
    synth->pcm.length     /= 2;

    synth_frame = synth_half;
  } else if (frame->options & MAD_OPTION_QUARTERSAMPLERATE) {
    synth->pcm.samplerate /= 4;
    synth->pcm.length     /= 4;

    synth_frame = synth_quarter;
  }

  synth_frame(synth, frame, nch, ns);

  synth->phase = (synth->phase + ns) % 16;
}
