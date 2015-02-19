	.text
.globl ___vacall
___vacall:
LFB2:
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	pushq	%rbx
LCFI2:
	subq	$264, %rsp
LCFI3:
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movq	%r9, -256(%rbp)
	movq	%rdi, %r10
	movq	%r10, -72(%rbp)
	movq	%rsi, %r10
	movq	%r10, -64(%rbp)
	movq	%rdx, %r10
	movq	%r10, -56(%rbp)
	movq	%rcx, %r10
	movq	%r10, -48(%rbp)
	movq	%r8, %r10
	movq	%r10, -40(%rbp)
	movq	%r9, %r10
	movq	%r10, -32(%rbp)
	movapd	%xmm0, %xmm8
	movsd	%xmm8, -144(%rbp)
	movapd	%xmm1, %xmm8
	movsd	%xmm8, -136(%rbp)
	movapd	%xmm2, %xmm8
	movsd	%xmm8, -128(%rbp)
	movapd	%xmm3, %xmm8
	movsd	%xmm8, -120(%rbp)
	movapd	%xmm4, %xmm8
	movsd	%xmm8, -112(%rbp)
	movapd	%xmm5, %xmm8
	movsd	%xmm8, -104(%rbp)
	movapd	%xmm6, %xmm8
	movsd	%xmm8, -96(%rbp)
	movapd	%xmm7, %xmm8
	movsd	%xmm8, -88(%rbp)
	movl	$0, -208(%rbp)
	leaq	16(%rbp), %r10
	movq	%r10, -200(%rbp)
	movq	$0, -192(%rbp)
	movl	$0, -184(%rbp)
	leaq	-208(%rbp), %r10
	addq	$136, %r10
	movq	%r10, -80(%rbp)
	leaq	-208(%rbp), %r10
	addq	$64, %r10
	movq	%r10, -152(%rbp)
	movq	_vacall_function@GOTPCREL(%rip), %r10
	movq	(%r10), %r11
	leaq	-208(%rbp), %r10
	movq	%r10, %rdi
	call	*%r11
	movl	-184(%rbp), %r10d
	testl	%r10d, %r10d
	je	L66
	movl	-184(%rbp), %r10d
	cmpl	$1, %r10d
	jne	L4
	movzbl	-168(%rbp), %r10d
	movsbq	%r10b,%r10
	movq	%r10, %rax
	jmp	L66
L4:
	movl	-184(%rbp), %r10d
	cmpl	$2, %r10d
	jne	L6
	movzbl	-168(%rbp), %r10d
	movsbq	%r10b,%r10
	movq	%r10, %rax
	jmp	L66
L6:
	movl	-184(%rbp), %r10d
	cmpl	$3, %r10d
	jne	L8
	movzbl	-168(%rbp), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %rax
	jmp	L66
L8:
	movl	-184(%rbp), %r10d
	cmpl	$4, %r10d
	jne	L10
	movzwl	-168(%rbp), %r10d
	movswq	%r10w,%r10
	movq	%r10, %rax
	jmp	L66
L10:
	movl	-184(%rbp), %r10d
	cmpl	$5, %r10d
	jne	L12
	movzwl	-168(%rbp), %r10d
	movzwl	%r10w, %r10d
	movq	%r10, %rax
	jmp	L66
L12:
	movl	-184(%rbp), %r10d
	cmpl	$6, %r10d
	jne	L14
	movl	-168(%rbp), %r10d
	movslq	%r10d,%r10
	movq	%r10, %rax
	jmp	L66
L14:
	movl	-184(%rbp), %r10d
	cmpl	$7, %r10d
	jne	L16
	movl	-168(%rbp), %r10d
	mov	%r10d, %r10d
	movq	%r10, %rax
	jmp	L66
L16:
	movl	-184(%rbp), %r10d
	cmpl	$8, %r10d
	jne	L18
	movq	-168(%rbp), %r10
	movq	%r10, %rax
	jmp	L66
L18:
	movl	-184(%rbp), %r10d
	cmpl	$9, %r10d
	jne	L20
	movq	-168(%rbp), %r10
	movq	%r10, %rax
	jmp	L66
L20:
	movl	-184(%rbp), %r10d
	cmpl	$10, %r10d
	jne	L22
	movq	-168(%rbp), %r10
	movq	%r10, %rax
	jmp	L66
L22:
	movl	-184(%rbp), %r10d
	cmpl	$11, %r10d
	jne	L24
	movq	-168(%rbp), %r10
	movq	%r10, %rax
	jmp	L66
L24:
	movl	-184(%rbp), %r10d
	cmpl	$12, %r10d
	jne	L26
	movl	-168(%rbp), %r10d
	movl	%r10d, -260(%rbp)
	movss	-260(%rbp), %xmm0
	jmp	L66
L26:
	movl	-184(%rbp), %r10d
	cmpl	$13, %r10d
	jne	L28
	movq	-168(%rbp), %r10
	movq	%r10, -272(%rbp)
	movsd	-272(%rbp), %xmm0
	jmp	L66
L28:
	movl	-184(%rbp), %r10d
	cmpl	$14, %r10d
	jne	L30
	movq	-168(%rbp), %r10
	movq	%r10, %rax
	jmp	L66
L30:
	movl	-184(%rbp), %r10d
	cmpl	$15, %r10d
	jne	L66
	movl	-208(%rbp), %r10d
	andl	$1, %r10d
	testb	%r10b, %r10b
	je	L33
	movq	-192(%rbp), %r10
	movq	%r10, %rax
	jmp	L66
L33:
	movl	-208(%rbp), %r10d
	andl	$1024, %r10d
	testl	%r10d, %r10d
	je	L66
	movq	-176(%rbp), %r10
	testq	%r10, %r10
	je	L66
	movq	-176(%rbp), %r10
	cmpq	$16, %r10
	ja	L66
	movq	-192(%rbp), %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %rax
	movq	-176(%rbp), %r10
	cmpq	$1, %r10
	jbe	L38
	movq	-192(%rbp), %r10
	incq	%r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$8, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L38:
	movq	-176(%rbp), %r10
	cmpq	$2, %r10
	jbe	L40
	movq	-192(%rbp), %r10
	addq	$2, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$16, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L40:
	movq	-176(%rbp), %r10
	cmpq	$3, %r10
	jbe	L42
	movq	-192(%rbp), %r10
	addq	$3, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$24, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L42:
	movq	-176(%rbp), %r10
	cmpq	$4, %r10
	jbe	L44
	movq	-192(%rbp), %r10
	addq	$4, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$32, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L44:
	movq	-176(%rbp), %r10
	cmpq	$5, %r10
	jbe	L46
	movq	-192(%rbp), %r10
	addq	$5, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$40, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L46:
	movq	-176(%rbp), %r10
	cmpq	$6, %r10
	jbe	L48
	movq	-192(%rbp), %r10
	addq	$6, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$48, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L48:
	movq	-176(%rbp), %r10
	cmpq	$7, %r10
	jbe	L50
	movq	-192(%rbp), %r10
	addq	$7, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$56, %r11
	movq	%rax, %r10
	orq	%r11, %r10
	movq	%r10, %rax
L50:
	movq	-176(%rbp), %r10
	cmpq	$8, %r10
	jbe	L66
	movq	-192(%rbp), %r10
	addq	$8, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %rdx
	movq	-176(%rbp), %r10
	cmpq	$9, %r10
	jbe	L53
	movq	-192(%rbp), %r10
	addq	$9, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$8, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L53:
	movq	-176(%rbp), %r10
	cmpq	$10, %r10
	jbe	L55
	movq	-192(%rbp), %r10
	addq	$10, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$16, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L55:
	movq	-176(%rbp), %r10
	cmpq	$11, %r10
	jbe	L57
	movq	-192(%rbp), %r10
	addq	$11, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$24, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L57:
	movq	-176(%rbp), %r10
	cmpq	$12, %r10
	jbe	L59
	movq	-192(%rbp), %r10
	addq	$12, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$32, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L59:
	movq	-176(%rbp), %r10
	cmpq	$13, %r10
	jbe	L61
	movq	-192(%rbp), %r10
	addq	$13, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$40, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L61:
	movq	-176(%rbp), %r10
	cmpq	$14, %r10
	jbe	L63
	movq	-192(%rbp), %r10
	addq	$14, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$48, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L63:
	movq	-176(%rbp), %r10
	cmpq	$15, %r10
	jbe	L66
	movq	-192(%rbp), %r10
	addq	$15, %r10
	movzbl	(%r10), %r10d
	movzbl	%r10b, %r10d
	movq	%r10, %r11
	salq	$56, %r11
	movq	%rdx, %r10
	orq	%r11, %r10
	movq	%r10, %rdx
L66:
	addq	$264, %rsp
	popq	%rbx
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
.globl ___vacall.eh
___vacall.eh:
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
	.set L$set$5,LCFI3-LCFI1
	.long L$set$5
	.byte	0x83
	.byte	0x3
	.align 3
LEFDE1:
	.subsections_via_symbols
