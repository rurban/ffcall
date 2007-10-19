dnl Copyright (C) 1993-2007 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible, Marcus Daniels, Sam Steingold.

AC_PREREQ(2.13)

dnl without AC_MSG_...:   with AC_MSG_... and caching:
dnl   AC_TRY_CPP          CL_CPP_CHECK
dnl   AC_TRY_COMPILE      CL_COMPILE_CHECK
dnl   AC_TRY_LINK         CL_LINK_CHECK
dnl   AC_TRY_RUN          CL_RUN_CHECK - would require cross-compiling support
dnl Usage:
dnl AC_TRY_CPP(INCLUDES,
dnl            ACTION-IF-FOUND [, ACTION-IF-NOT-FOUND])
dnl CL_CPP_CHECK(ECHO-TEXT, CACHE-ID,
dnl              INCLUDES,
dnl              ACTION-IF-FOUND [, ACTION-IF-NOT-FOUND])
dnl AC_TRY_xxx(INCLUDES, FUNCTION-BODY,
dnl            ACTION-IF-FOUND [, ACTION-IF-NOT-FOUND])
dnl CL_xxx_CHECK(ECHO-TEXT, CACHE-ID,
dnl              INCLUDES, FUNCTION-BODY,
dnl              ACTION-IF-FOUND [, ACTION-IF-NOT-FOUND])

dnl 3 next macros avoid aclocal warnings about wrong macro order
AC_DEFUN([CL_MODULE_COMMON_CHECKS],
[AC_REQUIRE([AC_PROG_CC])dnl
AC_REQUIRE([AC_PROG_CPP])dnl
AC_REQUIRE([AC_GNU_SOURCE])dnl
AC_REQUIRE([AC_USE_SYSTEM_EXTENSIONS])dnl
AC_REQUIRE([AC_HEADER_STDC])dnl
AC_REQUIRE([AC_HEADER_TIME])dnl
])

AC_DEFUN([CL_FFCALL_COMMON_LIBTOOL],
[AC_REQUIRE([AM_DISABLE_SHARED])dnl
AC_REQUIRE([AM_PROG_LIBTOOL])dnl
])

AC_DEFUN([CL_FFCALL_COMMON_TRAMPOLINE],
[AC_REQUIRE([CL_VOID])dnl
AC_REQUIRE([CL_STDC_HEADERS])dnl
AC_REQUIRE([CL_GETPAGESIZE])dnl
AC_REQUIRE([CL_MACH_VM])dnl
AC_REQUIRE([CL_OPENFLAGS])dnl
AC_REQUIRE([CL_MMAP])dnl
AC_REQUIRE([CL_MPROTECT])dnl
AC_REQUIRE([CL_SHM_H])dnl
AC_REQUIRE([CL_SHM])dnl
AC_REQUIRE([CL_CODEEXEC])dnl
])

AC_DEFUN([CL_CPP_CHECK],
[AC_MSG_CHECKING(for $1)
AC_CACHE_VAL($2,[
AC_TRY_CPP([$3], $2=yes, $2=no)
])
AC_MSG_RESULT([$]$2)
if test [$]$2 = yes; then
  ifelse([$4], , :, [$4])
ifelse([$5], , , [else
  $5
])dnl
fi
])

AC_DEFUN([CL_COMPILE_CHECK],
[AC_MSG_CHECKING(for $1)
AC_CACHE_VAL($2,[
AC_TRY_COMPILE([$3],[$4], $2=yes, $2=no)
])
AC_MSG_RESULT([$]$2)
if test [$]$2 = yes; then
  ifelse([$5], , :, [$5])
ifelse([$6], , , [else
  $6
])dnl
fi
])

AC_DEFUN([CL_LINK_CHECK],
[AC_MSG_CHECKING(for $1)
AC_CACHE_VAL($2,[
AC_TRY_LINK([$3],[$4], $2=yes, $2=no)
])
AC_MSG_RESULT([$]$2)
if test [$]$2 = yes; then
  ifelse([$5], , :, [$5])
ifelse([$6], , , [else
  $6
])dnl
fi
])

dnl Expands to the "extern ..." prefix used for system declarations.
dnl AC_LANG_EXTERN()
AC_DEFUN([AC_LANG_EXTERN],
[extern
#ifdef __cplusplus
"C"
#endif
])

AC_DEFUN([CL_CC_WORKS],
[AC_CACHE_CHECK(whether CC works at all, cl_cv_prog_cc_works, [
AC_LANG_SAVE()
AC_LANG_C()
AC_TRY_RUN([int main() { exit(0); }],
cl_cv_prog_cc_works=yes, cl_cv_prog_cc_works=no,
AC_TRY_LINK([], [], cl_cv_prog_cc_works=yes, cl_cv_prog_cc_works=no))
AC_LANG_RESTORE()
])
case "$cl_cv_prog_cc_works" in
  *no) echo "Installation or configuration problem: C compiler cannot create executables."; exit 1;;
  *yes) ;;
esac
])

AC_DEFUN([CL_CONFIG_SUBDIRS],
[dnl No AC_CONFIG_AUX_DIR_DEFAULT, so we don't need install.sh.
AC_PROVIDE([AC_CONFIG_AUX_DIR_DEFAULT])
AC_CONFIG_SUBDIRS([$1])dnl
])

AC_DEFUN([CL_CANONICAL_HOST_CPU],
[AC_REQUIRE([AC_CANONICAL_HOST])AC_REQUIRE([AC_PROG_CC])
case "$host_cpu" in
changequote(,)dnl
  i[4567]86 )
    host_cpu_instructionset=i386
    ;;
  alphaev[4-8] | alphaev56 | alphapca5[67] | alphaev6[78] )
    host_cpu_instructionset=alpha
    ;;
  hppa1.0 | hppa1.1 | hppa2.0* | hppa64 )
    host_cpu_instructionset=hppa
    ;;
  rs6000 )
    host_cpu_instructionset=powerpc
    ;;
  c1 | c2 | c32 | c34 | c38 | c4 )
    host_cpu_instructionset=convex
    ;;
  arm* )
    host_cpu_instructionset=arm
    ;;
changequote([,])dnl
  mips )
    AC_CACHE_CHECK([for 64-bit MIPS], cl_cv_host_mips64, [
AC_EGREP_CPP(yes,
[#if defined(_MIPS_SZLONG)
#if (_MIPS_SZLONG == 64)
/* We should also check for (_MIPS_SZPTR == 64), but gcc keeps this at 32. */
  yes
#endif
#endif
], cl_cv_host_mips64=yes, cl_cv_host_mips64=no)
])
if test $cl_cv_host_mips64 = yes; then
  host_cpu_instructionset=mips64
fi
    ;;
dnl On powerpc64 systems, the C compiler may still be generating 32-bit code.
  powerpc64 )
    AC_CACHE_CHECK([for 64-bit PowerPC], cl_cv_host_powerpc64, [
AC_EGREP_CPP(yes,
[#if defined(__powerpc64__) || defined(_ARCH_PPC64)
  yes
#endif
], cl_cv_host_powerpc64=yes, cl_cv_host_powerpc64=no)
])
if test $cl_cv_host_powerpc64 = yes; then
  host_cpu_instructionset=powerpc64
else
  host_cpu_instructionset=powerpc
fi
    ;;
dnl UltraSPARCs running Linux have `uname -m` = "sparc64", but the C compiler
dnl still generates 32-bit code.
  sparc | sparc64 )
    AC_CACHE_CHECK([for 64-bit SPARC], cl_cv_host_sparc64, [
AC_EGREP_CPP(yes,
[#if defined(__sparcv9) || defined(__arch64__)
  yes
#endif
], cl_cv_host_sparc64=yes, cl_cv_host_sparc64=no)
])
if test $cl_cv_host_sparc64 = yes; then
  host_cpu_instructionset=sparc64
else
  host_cpu_instructionset=sparc
fi
    ;;
dnl On x86_64 systems, the C compiler may still be generating 32-bit code.
  x86_64 )
    AC_CACHE_CHECK([for 64-bit x86_64], cl_cv_host_x86_64, [
AC_EGREP_CPP(yes,
[#if defined(__LP64__) || defined(__x86_64__) || defined(__amd64__)
  yes
#endif
], cl_cv_host_x86_64=yes, cl_cv_host_x86_64=no)
])
if test $cl_cv_host_x86_64 = yes; then
  host_cpu_instructionset=x86_64
else
  host_cpu_instructionset=i386
fi
    ;;
  *)
    host_cpu_instructionset=$host_cpu
    ;;
esac
dnl was AC_DEFINE_UNQUOTED(__${host_cpu}__) but KAI C++ 3.2d doesn't like this
cat >> confdefs.h <<EOF
#ifndef __${host_cpu_instructionset}__
#define __${host_cpu_instructionset}__ 1
#endif
EOF
])

AC_DEFUN([CL_CANONICAL_HOST_CPU_FOR_FFCALL],
[AC_REQUIRE([AC_CANONICAL_HOST])AC_REQUIRE([AC_PROG_CC])
case "$host_cpu" in
changequote(,)dnl
  i[4567]86 )
    host_cpu_abi=i386
    ;;
  alphaev[4-8] | alphaev56 | alphapca5[67] | alphaev6[78] )
    host_cpu_abi=alpha
    ;;
  hppa1.0 | hppa1.1 | hppa2.0* | hppa64 )
    host_cpu_abi=hppa
    ;;
  rs6000 )
    host_cpu_abi=powerpc
    ;;
  c1 | c2 | c32 | c34 | c38 | c4 )
    host_cpu_abi=convex
    ;;
  arm* )
    host_cpu_abi=arm
    ;;
changequote([,])dnl
  mips )
    AC_CACHE_CHECK([for 64-bit MIPS], cl_cv_host_mips64, [
AC_EGREP_CPP(yes,
[#if defined(_MIPS_SZLONG)
#if (_MIPS_SZLONG == 64)
/* We should also check for (_MIPS_SZPTR == 64), but gcc keeps this at 32. */
  yes
#endif
#endif
], cl_cv_host_mips64=yes, cl_cv_host_mips64=no)
])
if test $cl_cv_host_mips64 = yes; then
  host_cpu_abi=mips64
else
  AC_CACHE_CHECK([for MIPS with n32 ABI], cl_cv_host_mipsn32, [
dnl Strictly speaking, the MIPS ABI (-32 or -n32) is independent from the CPU
dnl identification (-mips[12] or -mips[34]). But -n32 is commonly used together
dnl with -mips3, and it's easier to test the CPU identification.
AC_EGREP_CPP(yes,
[#if __mips >= 3
  yes
#endif
], cl_cv_host_mipsn32=yes, cl_cv_host_mipsn32=no)
])
if test $cl_cv_host_mipsn32 = yes; then
  host_cpu_abi=mipsn32
else
  host_cpu_abi=mips
fi
fi
    ;;
dnl On powerpc64 systems, the C compiler may still be generating 32-bit code.
  powerpc64 )
    AC_CACHE_CHECK([for 64-bit PowerPC], cl_cv_host_powerpc64, [
AC_EGREP_CPP(yes,
[#if defined(__powerpc64__) || defined(_ARCH_PPC64)
  yes
#endif
], cl_cv_host_powerpc64=yes, cl_cv_host_powerpc64=no)
])
if test $cl_cv_host_powerpc64 = yes; then
  host_cpu_abi=powerpc64
else
  host_cpu_abi=powerpc
fi
    ;;
dnl UltraSPARCs running Linux have `uname -m` = "sparc64", but the C compiler
dnl still generates 32-bit code.
  sparc | sparc64 )
    AC_CACHE_CHECK([for 64-bit SPARC], cl_cv_host_sparc64, [
AC_EGREP_CPP(yes,
[#if defined(__sparcv9) || defined(__arch64__)
  yes
#endif
], cl_cv_host_sparc64=yes, cl_cv_host_sparc64=no)
])
if test $cl_cv_host_sparc64 = yes; then
  host_cpu_abi=sparc64
else
  host_cpu_abi=sparc
fi
    ;;
dnl On x86_64 systems, the C compiler may still be generating 32-bit code.
  x86_64 )
    AC_CACHE_CHECK([for 64-bit x86_64], cl_cv_host_x86_64, [
AC_EGREP_CPP(yes,
[#if defined(__LP64__) || defined(__x86_64__) || defined(__amd64__)
  yes
#endif
], cl_cv_host_x86_64=yes, cl_cv_host_x86_64=no)
])
if test $cl_cv_host_x86_64 = yes; then
  host_cpu_abi=x86_64
else
  host_cpu_abi=i386
fi
    ;;
  *)
    host_cpu_abi=$host_cpu
    ;;
esac
AC_SUBST(host_cpu_abi)
dnl was AC_DEFINE_UNQUOTED(__${host_cpu}__) but KAI C++ 3.2d doesn't like this
cat >> confdefs.h <<EOF
#ifndef __${host_cpu_abi}__
#define __${host_cpu_abi}__ 1
#endif
EOF
])
