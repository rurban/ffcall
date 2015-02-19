	.text
.globl ___vacall_r
___vacall_r:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	pushq	%r13
LCFI2:
	pushq	%r12
LCFI3:
	pushq	%rbx
LCFI4:
	subq	$264, %rsp
LCFI5:
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -256(%rbp)
	movq	%r8, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	%rdi, %r11
	movq	%r11, -88(%rbp)
	movq	%rsi, %r11
	movq	%r11, -80(%rbp)
	movq	%rdx, %r11
	movq	%r11, -72(%rbp)
	movq	%rcx, %r11
	movq	%r11, -64(%rbp)
	movq	%r8, %r11
	movq	%r11, -56(%rbp)
	movq	%r9, %r11
	movq	%r11, -48(%rbp)
	movapd	%xmm0, %xmm8
	movsd	%xmm8, -160(%rbp)
	movapd	%xmm1, %xmm8
	movsd	%xmm8, -152(%rbp)
	movapd	%xmm2, %xmm8
	movsd	%xmm8, -144(%rbp)
	movapd	%xmm3, %xmm8
	movsd	%xmm8, -136(%rbp)
	movapd	%xmm4, %xmm8
	movsd	%xmm8, -128(%rbp)
	movapd	%xmm5, %xmm8
	movsd	%xmm8, -120(%rbp)
	movapd	%xmm6, %xmm8
	movsd	%xmm8, -112(%rbp)
	movapd	%xmm7, %xmm8
	movsd	%xmm8, -104(%rbp)
	movl	$0, -224(%rbp)
	leaq	16(%rbp), %r11
	movq	%r11, -216(%rbp)
	movq	$0, -208(%rbp)
	movl	$0, -200(%rbp)
	leaq	-224(%rbp), %r11
	addq	$136, %r11
	movq	%r11, -96(%rbp)
	leaq	-224(%rbp), %r11
	addq	$64, %r11
	movq	%r11, -168(%rbp)
	movq	%r10, %r11
	movq	(%r11), %r13
	movq	%r10, %r11
	movq	8(%r11), %r12
	leaq	-224(%rbp), %r11
	movq	%r11, %rsi
	movq	%r12, %rdi
	call	*%r13
	movl	-200(%rbp), %r11d
	testl	%r11d, %r11d
	je	L66
	movl	-200(%rbp), %r11d
	cmpl	$1, %r11d
	jne	L4
	movzbl	-184(%rbp), %r11d
	movsbq	%r11b,%r11
	movq	%r11, %rax
	jmp	L66
L4:
	movl	-200(%rbp), %r11d
	cmpl	$2, %r11d
	jne	L6
	movzbl	-184(%rbp), %r11d
	movsbq	%r11b,%r11
	movq	%r11, %rax
	jmp	L66
L6:
	movl	-200(%rbp), %r11d
	cmpl	$3, %r11d
	jne	L8
	movzbl	-184(%rbp), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %rax
	jmp	L66
L8:
	movl	-200(%rbp), %r11d
	cmpl	$4, %r11d
	jne	L10
	movzwl	-184(%rbp), %r11d
	movswq	%r11w,%r11
	movq	%r11, %rax
	jmp	L66
L10:
	movl	-200(%rbp), %r11d
	cmpl	$5, %r11d
	jne	L12
	movzwl	-184(%rbp), %r11d
	movzwl	%r11w, %r11d
	movq	%r11, %rax
	jmp	L66
L12:
	movl	-200(%rbp), %r11d
	cmpl	$6, %r11d
	jne	L14
	movl	-184(%rbp), %r11d
	movslq	%r11d,%r11
	movq	%r11, %rax
	jmp	L66
L14:
	movl	-200(%rbp), %r11d
	cmpl	$7, %r11d
	jne	L16
	movl	-184(%rbp), %r11d
	mov	%r11d, %r11d
	movq	%r11, %rax
	jmp	L66
L16:
	movl	-200(%rbp), %r11d
	cmpl	$8, %r11d
	jne	L18
	movq	-184(%rbp), %r11
	movq	%r11, %rax
	jmp	L66
L18:
	movl	-200(%rbp), %r11d
	cmpl	$9, %r11d
	jne	L20
	movq	-184(%rbp), %r11
	movq	%r11, %rax
	jmp	L66
L20:
	movl	-200(%rbp), %r11d
	cmpl	$10, %r11d
	jne	L22
	movq	-184(%rbp), %r11
	movq	%r11, %rax
	jmp	L66
L22:
	movl	-200(%rbp), %r11d
	cmpl	$11, %r11d
	jne	L24
	movq	-184(%rbp), %r11
	movq	%r11, %rax
	jmp	L66
L24:
	movl	-200(%rbp), %r11d
	cmpl	$12, %r11d
	jne	L26
	movl	-184(%rbp), %r11d
	movl	%r11d, -276(%rbp)
	movss	-276(%rbp), %xmm0
	jmp	L66
L26:
	movl	-200(%rbp), %r11d
	cmpl	$13, %r11d
	jne	L28
	movq	-184(%rbp), %r11
	movq	%r11, -288(%rbp)
	movsd	-288(%rbp), %xmm0
	jmp	L66
L28:
	movl	-200(%rbp), %r11d
	cmpl	$14, %r11d
	jne	L30
	movq	-184(%rbp), %r11
	movq	%r11, %rax
	jmp	L66
L30:
	movl	-200(%rbp), %r11d
	cmpl	$15, %r11d
	jne	L66
	movl	-224(%rbp), %r11d
	andl	$1, %r11d
	testb	%r11b, %r11b
	je	L33
	movq	-208(%rbp), %r11
	movq	%r11, %rax
	jmp	L66
L33:
	movl	-224(%rbp), %r11d
	andl	$1024, %r11d
	testl	%r11d, %r11d
	je	L66
	movq	-192(%rbp), %r11
	testq	%r11, %r11
	je	L66
	movq	-192(%rbp), %r11
	cmpq	$16, %r11
	ja	L66
	movq	-208(%rbp), %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %rax
	movq	-192(%rbp), %r11
	cmpq	$1, %r11
	jbe	L38
	movq	-208(%rbp), %r11
	incq	%r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$8, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L38:
	movq	-192(%rbp), %r11
	cmpq	$2, %r11
	jbe	L40
	movq	-208(%rbp), %r11
	addq	$2, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$16, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L40:
	movq	-192(%rbp), %r11
	cmpq	$3, %r11
	jbe	L42
	movq	-208(%rbp), %r11
	addq	$3, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$24, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L42:
	movq	-192(%rbp), %r11
	cmpq	$4, %r11
	jbe	L44
	movq	-208(%rbp), %r11
	addq	$4, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$32, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L44:
	movq	-192(%rbp), %r11
	cmpq	$5, %r11
	jbe	L46
	movq	-208(%rbp), %r11
	addq	$5, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$40, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L46:
	movq	-192(%rbp), %r11
	cmpq	$6, %r11
	jbe	L48
	movq	-208(%rbp), %r11
	addq	$6, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$48, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L48:
	movq	-192(%rbp), %r11
	cmpq	$7, %r11
	jbe	L50
	movq	-208(%rbp), %r11
	addq	$7, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$56, %r12
	movq	%rax, %r11
	orq	%r12, %r11
	movq	%r11, %rax
L50:
	movq	-192(%rbp), %r11
	cmpq	$8, %r11
	jbe	L66
	movq	-208(%rbp), %r11
	addq	$8, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %rdx
	movq	-192(%rbp), %r11
	cmpq	$9, %r11
	jbe	L53
	movq	-208(%rbp), %r11
	addq	$9, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$8, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L53:
	movq	-192(%rbp), %r11
	cmpq	$10, %r11
	jbe	L55
	movq	-208(%rbp), %r11
	addq	$10, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$16, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L55:
	movq	-192(%rbp), %r11
	cmpq	$11, %r11
	jbe	L57
	movq	-208(%rbp), %r11
	addq	$11, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$24, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L57:
	movq	-192(%rbp), %r11
	cmpq	$12, %r11
	jbe	L59
	movq	-208(%rbp), %r11
	addq	$12, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$32, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L59:
	movq	-192(%rbp), %r11
	cmpq	$13, %r11
	jbe	L61
	movq	-208(%rbp), %r11
	addq	$13, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$40, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L61:
	movq	-192(%rbp), %r11
	cmpq	$14, %r11
	jbe	L63
	movq	-208(%rbp), %r11
	addq	$14, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$48, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L63:
	movq	-192(%rbp), %r11
	cmpq	$15, %r11
	jbe	L66
	movq	-208(%rbp), %r11
	addq	$15, %r11
	movzbl	(%r11), %r11d
	movzbl	%r11b, %r11d
	movq	%r11, %r12
	salq	$56, %r12
	movq	%rdx, %r11
	orq	%r12, %r11
	movq	%r11, %rdx
L66:
	addq	$264, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	leave
	ret
LFE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl ___vacall_r.eh
___vacall_r.eh:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB2-.
	.set L$set$2,LFE2-LFB2
	.quad L$set$2
	.byte	0x0
	.byte	0x4
	.set L$set$3,LCFI0-LFB2
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xd
	.byte	0x6
	.byte	0x4
	.set L$set$5,LCFI5-LCFI1
	.long L$set$5
	.byte	0x83
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.align 3
LEFDE1:
	.subsections_via_symbols
