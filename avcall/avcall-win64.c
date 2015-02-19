#ifndef _avcall_win64_c				/*-*- C -*-*/
#define _avcall_win64_c
/**
  Copyright 1993 Bill Triggs, <Bill.Triggs@inrialpes.fr>
  Copyright 1995-1999, 2004 Bruno Haible, <bruno@clisp.org>
  Copyright 2015 Reini Urban, <rurban@cpanel.net>

  This is free software distributed under the GNU General Public
  Licence described in the file COPYING. Contact the author if
  you don't have this or can't live with it. There is ABSOLUTELY
  NO WARRANTY, explicit or implied, on this software.
**/
/*----------------------------------------------------------------------
  !!! THIS ROUTINE MUST BE COMPILED gcc -O -fno-omit-frame-pointer !!!

  Foreign function interface for the Window x86_64 ABI (a.k.a. win64)
  with mingw64-gcc or Microsoft Visual Studio or ICC.

  This calls a C function with an argument list built up using macros
  defined in av_call.h.

  win64 Argument Passing Conventions are documented in
  https://en.wikipedia.org/wiki/X86_calling_conventions#Microsoft_x64_calling_convention
  x86_64 Argument Passing Conventions are documented in
  http://www.x86-64.org/abi.pdf.

  RCX, RDX, R8, R9 for the first four integer or pointer arguments (in
  that order), and XMM0, XMM1, XMM2, XMM3 are used for floating point
  arguments. Additional arguments are pushed onto the stack (right to
  left). Integer return values (similar to x86) are returned in RAX if
  64 bits or less. Floating point return values are returned in
  XMM0. Parameters less than 64 bits long are not zero extended; the
  high bits are not zeroed.

  When compiling for the x64 architecture in a Windows context
  (whether using Microsoft or non-Microsoft tools), there is only one
  calling convention — the one described here, so that stdcall,
  thiscall, cdecl, fastcall, etc., are now all one and the same.  Note
  the differences to the unix64 and unix64_sse conventions.  But
  starting with Visual Studio 2013, Microsoft introduced the
  __vectorcall calling convention which extends this win64 convention.
  And Visual Studio 2008 stores floating point numbers in XMM6 and XMM7
  (as well as XMM8 through XMM15), so we must preserve XMM6 and XMM7.

  In the Microsoft x64 calling convention, it's the caller's
  responsibility to allocate 32 bytes of "shadow space" on the stack
  right before calling the function (regardless of the actual number
  of parameters used), and to pop the stack after the call. The shadow
  space is used to spill RCX, RDX, R8, and R9,[13] but must be made
  available to all functions, even those with fewer than four
  parameters.

  In contrast unix64_sse, our x86_64 calling convention:

    Up to six words are passed in integer registers (%rdi, %rsi, %rdx, %rcx,
    %r8, %r9). Up to 8 float/double arguments are passed in SSE registers
    (%xmm0..%xmm7). Varargs functions expect an upper bound for the number
    of SSE register arguments in %al (in the range 0..8). All arguments
    are passed on the stack with word alignment. Structure args are passed
    as true structures embedded in the argument stack. 
  
    Unlike the win64 calling convention, a shadow space is not provided;
    on function entry, the return address is adjacent to the seventh
    integer argument on the stack.
  
    Integers are returned in %rax, %rdx. Float/double values are returned
    in %xmm0, %xmm1. To return a structure, the called function copies the
    value to space pointed to by its first argument, and all other arguments
    are shifted down by one.
  ----------------------------------------------------------------------*/
#include "avcall.h.in"

#define RETURN(TYPE,VAL)	(*(TYPE*)l->raddr = (TYPE)(VAL))

register __avword iarg1 __asm__("rcx");
register __avword iarg2 __asm__("rdx");
register __avword iarg3 __asm__("r8");
register __avword iarg4 __asm__("r9");

register double farg1 __asm__("xmm0");
register double farg2 __asm__("xmm1");
register double farg3 __asm__("xmm2");
register double farg4 __asm__("xmm3");

int
__builtin_avcall(av_alist* l)
{
  register __avword*	sp	__asm__("rsp");	/* C names for registers */
  register __avword	iret	__asm__("rax");
  register __avword	iret2	__asm__("rdx");
  register double	dret	__asm__("xmm0");

  __avword* argframe = (sp -= __AV_ALIST_WORDS); /* make room for argument list */
  int arglen = l->aptr - l->args;
  int farglen = l->faptr - l->fargs;
  __avword i, i2;

  for (i = 0; i < arglen; i++)		/* push function args onto stack */
    argframe[i] = l->args[i];

  /* put 4 integer args into registers */
  iarg1 = l->iargs[0];
  iarg2 = l->iargs[1];
  iarg3 = l->iargs[2];
  iarg4 = l->iargs[3];

  /* Call function.  It's OK to pass 4 values in SSE registers even if the
     called function takes less than 4 float/double arguments. Similarly
     for the integer arguments. */
  if (l->rtype == __AVfloat) {
    *(float*)l->raddr =
      (*(float(*)())l->func)(farglen > 0 ? l->fargs[0] : 0.0,
                             farglen > 1 ? l->fargs[1] : 0.0,
                             farglen > 2 ? l->fargs[2] : 0.0,
                             farglen > 3 ? l->fargs[3] : 0.0);
  } else
  if (l->rtype == __AVdouble) {
    *(double*)l->raddr =
      (*(double(*)())l->func)(farglen > 0 ? l->fargs[0] : 0.0,
                              farglen > 1 ? l->fargs[1] : 0.0,
                              farglen > 2 ? l->fargs[2] : 0.0,
                              farglen > 3 ? l->fargs[3] : 0.0);
  } else {
    i = (*l->func)(farglen > 0 ? l->fargs[0] : 0.0,
                   farglen > 1 ? l->fargs[1] : 0.0,
                   farglen > 2 ? l->fargs[2] : 0.0,
                   farglen > 3 ? l->fargs[3] : 0.0);
    i2 = iret2;

    /* save return value */
    if (l->rtype == __AVvoid) {
    } else
    if (l->rtype == __AVword) {
      RETURN(__avword, i);
    } else
    if (l->rtype == __AVchar) {
      RETURN(char, i);
    } else
    if (l->rtype == __AVschar) {
      RETURN(signed char, i);
    } else
    if (l->rtype == __AVuchar) {
      RETURN(unsigned char, i);
    } else
    if (l->rtype == __AVshort) {
      RETURN(short, i);
    } else
    if (l->rtype == __AVushort) {
      RETURN(unsigned short, i);
    } else
    if (l->rtype == __AVint) {
      RETURN(int, i);
    } else
    if (l->rtype == __AVuint) {
      RETURN(unsigned int, i);
    } else
    if (l->rtype == __AVlong) {
      RETURN(long, i);
    } else
    if (l->rtype == __AVulong) {
      RETURN(unsigned long, i);
    } else
    if (l->rtype == __AVlonglong) {
      RETURN(long long, i);
    } else
    if (l->rtype == __AVulonglong) {
      RETURN(unsigned long long, i);
    } else
  /* see above
    if (l->rtype == __AVfloat) {
    } else
    if (l->rtype == __AVdouble) {
    } else
  */
    if (l->rtype == __AVvoidp) {
      RETURN(void*, i);
    } else
    if (l->rtype == __AVstruct) {
      if (l->flags & __AV_PCC_STRUCT_RETURN) {
        /* pcc struct return convention: need a  *(TYPE*)l->raddr = *(TYPE*)i;  */
        if (l->rsize == sizeof(char)) {
          RETURN(char, *(char*)i);
        } else
        if (l->rsize == sizeof(short)) {
          RETURN(short, *(short*)i);
        } else
        if (l->rsize == sizeof(int)) {
          RETURN(int, *(int*)i);
        } else
        if (l->rsize == sizeof(long)) {
          RETURN(long, *(long*)i);
        } else {
          int n = (l->rsize + sizeof(__avword)-1)/sizeof(__avword);
          while (--n >= 0)
            ((__avword*)l->raddr)[n] = ((__avword*)i)[n];
        }
      } else {
        /* normal struct return convention */
        if (l->flags & __AV_REGISTER_STRUCT_RETURN) {
          if (l->rsize == sizeof(char)) {
            RETURN(char, i);
          } else
          if (l->rsize == sizeof(short)) {
            RETURN(short, i);
          } else
          if (l->rsize == sizeof(int)) {
            RETURN(int, i);
          } else
          if (l->rsize == sizeof(long)) {
            RETURN(long, i);
          } else
          if (l->rsize == 2*sizeof(__avword)) {
            ((__avword*)l->raddr)[0] = i;
            ((__avword*)l->raddr)[1] = i2;
          }
        }
      }
    }
  }
  sp += __AV_ALIST_WORDS;
  return 0;
}

#endif /*_avcall_win64_c */
