dnl Copyright (C) 1993-2002 Free Software Foundation, Inc.
dnl This file is free software, distributed under the terms of the GNU
dnl General Public License.  As a special exception to the GNU General
dnl Public License, this file may be distributed as part of a program
dnl that contains a configuration script generated by Autoconf, under
dnl the same distribution terms as the rest of that program.

dnl From Bruno Haible, Marcus Daniels.

AC_PREREQ(2.13)

AC_DEFUN([CL_ABORT],
[CL_PROTO([abort], [
CL_PROTO_RET([
#include <stdlib.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
], [int abort();], cl_cv_proto_abort_ret, int, void)
CL_PROTO_RET([
#include <stdlib.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
], [$cl_cv_proto_abort_ret abort();], cl_cv_proto_abort_vol, [], [__volatile__])
], [extern $cl_cv_proto_abort_vol $cl_cv_proto_abort_ret abort (void);])
AC_DEFINE_UNQUOTED(RETABORTTYPE,$cl_cv_proto_abort_ret)
AC_DEFINE_UNQUOTED(ABORT_VOLATILE,$cl_cv_proto_abort_vol)
])
