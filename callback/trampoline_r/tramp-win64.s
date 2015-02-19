/* Trampoline for win64 CPU */

/*
 * Copyright 2004 Bruno Haible, <bruno@clisp.org>
 * Copyright 2015 Reini Urban, <rurban@cpanel.net>
 *
 * This is free software distributed under the GNU General Public Licence
 * described in the file COPYING. Contact the author if you don't have this
 * or can't live with it. There is ABSOLUTELY NO WARRANTY, explicit or implied,
 * on this software.
 */

/* Available registers: %rax, %rcx, %rdx, %r8, %r9. */
 
.globl tramp
	.type	tramp,@function
tramp:
	movabsq	$0x7355471143622155, %r10
	movabsq	$0xBABEBEC0DEA0FFAB, %rax
	jmp	*%rax
.Lfe1:
	.size	tramp,.Lfe1-tramp
