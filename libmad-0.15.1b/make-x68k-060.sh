#!/bin/bash

if [ "${XDEV68K_DIR}" == "" ]; then
  echo "error: XDEV68K_DIR environment variable is not defined."
  exit 1
fi

CC=${XDEV68K_DIR}/m68k-toolchain/bin/m68k-elf-gcc
GAS2HAS="${XDEV68K_DIR}/util/x68k_gas2has.pl -cpu 68060 -inc doscall.inc -inc iocscall.inc"
RUN68=${XDEV68K_DIR}/run68/run68x
HAS=${XDEV68K_DIR}/x68k_bin/HAS060.X
AR=${XDEV68K_DIR}/x68k_bin/AR.X

INCLUDE_FLAGS="-I${XDEV68K_DIR}/include/xc -I${XDEV68K_DIR}/include/xdev68k"
_COMMON_FLAGS="-m68060 -msoft-float -O3 -fomit-frame-pointer \
    -finline-functions -finline-limit=10000 \
    -funroll-loops -fpeel-loops -fstrict-aliasing \
    -falign-functions=16 -falign-loops=16 -falign-jumps=16 -falign-labels=16 \
    -fno-builtin -mno-strict-align \
    ${INCLUDE_FLAGS}"
_COMMON_FLAGS="-m68060 -msoft-float -O3 -fomit-frame-pointer \
    -fschedule-insns2 \
    -finline-functions -finline-limit=10000 \
    -funroll-loops -fpeel-loops -fstrict-aliasing \
    -falign-functions=16 -falign-loops=16 \
    -fno-builtin -mno-strict-align \
    ${INCLUDE_FLAGS}"
_COMMON_FLAGS="-m68060 -msoft-float -O3 -fomit-frame-pointer \
    -fno-builtin \
    ${INCLUDE_FLAGS}"
_COMMON_FLAGS="-m68060 -msoft-float -O3 -fomit-frame-pointer \
    -finline-functions -finline-limit=10000 \
    -fno-unroll-loops -fstrict-aliasing \
    -falign-functions=16 -falign-loops=16 \
    ${INCLUDE_FLAGS}"
_COMMON_FLAGS="-m68060 -msoft-float -O3 -fomit-frame-pointer \
    -finline-functions -finline-limit=10000 \
    -funroll-loops -fpeel-loops -fstrict-aliasing \
    -fno-if-conversion \
    -falign-functions=16 -falign-loops=16 \
    -fno-builtin -mno-strict-align \
    ${INCLUDE_FLAGS}"    
_COMMON_FLAGS="-m68060 -msoft-float -mstrict-align -O3 \
    -fomit-frame-pointer -fstrict-aliasing \
    -finline-functions -finline-limit=10000 \
    -falign-functions=16 -falign-loops=16 \
    -fno-unroll-loops -fno-peel-loops -fno-if-conversion \
    ${INCLUDE_FLAGS}"

COMMON_FLAGS="-m68060 -msoft-float -mstrict-align -O3 \
    -fcall-used-d2 -fcall-used-a2 \
    -fomit-frame-pointer -fstrict-aliasing \
    -finline-functions -finline-limit=5000 \
    -falign-functions=16 -falign-loops=16 \
    -fno-unroll-loops -fno-peel-loops -fno-builtin \
    ${INCLUDE_FLAGS}"

_CFLAGS="${COMMON_FLAGS} -Wno-builtin-declaration-mismatch -fcall-used-d2 -fcall-used-a2 \
    -fexec-charset=cp932 -fverbose-asm -fno-defer-pop -D_TIME_T_DECLARED -D_CLOCK_T_DECLARED -Dwint_t=int \
		-DXDEV68K -DFPM_DEFAULT -DOPT_SPEED -DOPT_SSO \
    -D__OPT_X68K_HIMEM__ -D__OPT_X68K_FAST_FRAME_DECODE__ -D__OPT_X68K_FAST_LAYER_DECODE__"
CFLAGS="${COMMON_FLAGS} -Wno-builtin-declaration-mismatch \
    -fexec-charset=cp932 -fverbose-asm \
		-DXDEV68K -DFPM_DEFAULT -DOPT_SPEED -DOPT_SSO \
    -D__OPT_X68K_HIMEM__ -D__OPT_X68K_FAST_FRAME_DECODE__ -D__OPT_X68K_FAST_LAYER_DECODE__ -D__OPT_X68K_16BIT_PCM_DIRECT__"


_LIBS="${XDEV68K_DIR}/lib/xc/CLIB.L ${XDEV68K_DIR}/lib/xc/DOSLIB.L ${XDEV68K_DIR}/lib/xc/IOCSLIB.L ${XDEV68K_DIR}/lib/xc/FLOATFNC.L \
      ${XDEV68K_DIR}/lib/m68k_elf/m68060/libgcc.a"
LIBS="${XDEV68K_DIR}/lib/xc/CLIB.L ${XDEV68K_DIR}/lib/xc/DOSLIB.L ${XDEV68K_DIR}/lib/xc/IOCSLIB.L ${XDEV68K_DIR}/lib/xc/FLOATFNC.L \
      ${XDEV68K_DIR}/lib/m68k_elf/m68000/libgcc.a"

BUILD_DIR=_build060

function do_compile() {
  pushd .
  cd $1
  rm -rf ${BUILD_DIR}
  mkdir -p ${BUILD_DIR}
  for c in $2; do
    echo "compiling ${c}.c in ${1}"
	  ${CC} -S ${CFLAGS} -o ${BUILD_DIR}/${c}.m68k-gas.s ${c}.c
    if [ ! -f ${BUILD_DIR}/${c}.m68k-gas.s ]; then
      return 1
    fi
	  perl ${GAS2HAS} -i ${BUILD_DIR}/${c}.m68k-gas.s -o ${BUILD_DIR}/${c}.s
	  rm -f ${BUILD_DIR}/${c}.m68k-gas.s
	  ${XDEV68K_DIR}/run68/run68 ${HAS} -e -u -w0 ${INCLUDE_FLAGS} ${BUILD_DIR}/${c}.s -o ${BUILD_DIR}/${c}.o
    if [ ! -f ${BUILD_DIR}/${c}.o ]; then
      return 1
    fi
  done
  popd
  return 0
}

function build_libmad() {
  do_compile . "bit decoder fixed frame huffman layer3 layer12 stream synth timer version"
}

build_libmad
